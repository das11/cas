<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Products;
use App\Cart;
use Auth;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Intervention\Image\Facades\Image;

use Illuminate\Support\Facades\Input; 


class IndexController extends Controller
{
    public function index(){

        $products = new Products;
        $products = Products::all();
        
        return view("_particles.index",  compact('products'));
    }

    public function login(){
        if(Auth::check())
        { 

            return redirect('/');
        }
        else
        {
            return view("_particles.login");
        }
        
    }

    public function postLogin(Request $request)
    {
        

        //echo bcrypt('123456');
        //exit; 
        
        $this->validate($request, [
            'email' => 'required|email', 'password' => 'required',
        ]);


        $credentials = $request->only('email', 'password');

         
        
         if (Auth::attempt($credentials, $request->has('remember'))) {

           /* if(Auth::user()->usertype=='banned'){
                \Auth::logout();
                return array("errors" => 'You account has been banned!');
            }*/

            // return $this->handleUserWasAuthenticated($request);
            return $this->login($request);
        }

       // return array("errors" => 'The email or the password is invalid. Please try again.');
        //return redirect('/admin');
       return redirect('/login')->withErrors('The email or the password is invalid. Please try again.');
        
    }
    
    public function signup(){
        return view("_particles.signup");
    }

    public function post_signup(Request $request){

        // $data = \Input::except(array('_token'));

        $inputs = $request->all();

        $email = $inputs["email"];
        $pass = $inputs["password"];
        $first_name = $inputs["first_name"];
        $last_name = $inputs["last_name"];
        $contact = $inputs["contact"];
       


        echo $email . " \n " . $pass;

        $user = new User;
        $user->email = $email;
        $user->password = bcrypt($pass);
        $user->first_name = $first_name;
        $user->last_name = $last_name;
        $user->contact = $contact; // Statically set to Author for Sprint-1 


        $user->save();
        
            \Session::flash('flash_message', 'Register successfully...');

            return redirect("/login");

    }


    public function products(){
        return view("_particles.products");
    }

    public function hpworlds(){
        return view("_particles.hp");

    }

    public function asus(){
        return view("_particles.asus");
    }

    public function xiaomi(){
        return view("_particles.mi");
    }
    
    public function cart(){
        return view("_particles.cart");

    }

    public function addToCart(Request $request)
    {

        // Get current product id to be added to cart
        $id = $request->id;
        $product = Products::find($id);

        if(Auth::check()){

            $user_id = Auth::user()->id;
            $cart_id = $user_id;

            $cart = Cart::where("id", $cart_id)->first();
            /**
             * If cart doesnt exist, create one for the user and append the product
             */
            if($cart === null){
                
                $cart = new Cart;
                $cart->id = $user_id;
                $cart->user_id = $user_id;
                print_r($id);
                $cart->product_ids .= $id;
                $cart->save();

            }else{

                /**
                 * If cart exists, just append product to cart
                 */

                $cart->product_ids .= "," . $id;
                $cart->save();

            }

            /**
             * Push cart_id to product added rn for logging
             */
            $product->cart_id = $cart_id;
            $product->save();

            /**
             * Fetch all products in the cart
             */
            $products = Products::where("cart_id", $cart_id)->get();
            

            return view("_particles.cart", compact("products"));
        }
 
        
    }
    
    public function addProduct(){
        return view("_particles.addproduct");

    }
    
    
    public function dashboard(){
        return view("_particles.dashboard");

    }
    

    
   

}