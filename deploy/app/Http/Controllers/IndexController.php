<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Products;
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
             // return redirect('/dashboard');
            //  echo "Auth Passed";
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

    public function addToCart($id)
    {
        $product = Products::find($id);
 
        if(!$product) {
 
            abort(404);
 
        }
 
        $cart = session()->get('cart');
 
        // if cart is empty then this the first product
        if(!$cart) {
 
            $cart = [
                    $id => [
                        "name" => $product->name,
                        "quantity" => 1,
                        "price" => $product->price,
                        "featured_image" => $product->featured_image
                    ]
            ];
 
            session()->put('cart', $cart);
 
            return redirect()->back()->with('success', 'Product added to cart successfully!');
        }
 
        // if cart not empty then check if this product exist then increment quantity
        if(isset($cart[$id])) {
 
            $cart[$id]['quantity']++;
 
            session()->put('cart', $cart);
 
            return redirect()->back()->with('success', 'Product added to cart successfully!');
 
        }
 
        // if item not exist in cart then add to cart with quantity = 1
        $cart[$id] = [
            "name" => $product->name,
            "quantity" => 1,
            "price" => $product->price,
            "featured_image" => $product->featured_image
        ];
 
        session()->put('cart', $cart);
 
        return redirect()->back()->with('success', 'Product added to cart successfully!');
    }
    
    public function addProduct(){
        return view("_particles.addproduct");

    }
    
    
    public function dashboard(){
        return view("_particles.dashboard");

    }
    

    
   

}