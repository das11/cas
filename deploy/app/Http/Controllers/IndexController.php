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
use Redirect;


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
                 * After checking if product id already exists in that cart
                 */

                $product_ids = $cart->product_ids;
                $id_str = "," . $id;

                // print_r("str : " . $product_ids);
                // print_r("id : " . $id_str);

                if(strpos($product_ids, $id_str) !== false){

                    // print_r("\nexists");
                }else{
                    $cart->product_ids .= "," . $id;
                    $cart->save();
                    // print_r("\ndoesnt exist");
                }

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
            

            // print_r(count($products));
            return view("_particles.cart", compact("products", "cart"));
        }
     
    }


    public function checkout(Request $request){

        $cart_id = $request->cart_id;

        $products = Products::where("cart_id", $cart_id)->get();
        return view("_particles.checkout", compact("products"));
    }


    public function dashboard(){

        $products = new Products;
        $products = Products::all();

    
        return view("_particles.dashboard", compact('products'));

    }
    
    public function addProduct(){

        return view("_particles.addproduct");
    }
    
    public function pushAddProduct(Request $request){


        $inputs = $request->all();
        
        $name = $inputs["name"];
        $price = $inputs["price"];
        $online = $inputs["online"];
        $description = $inputs["description"];
        $availability = $inputs["availability"];
        $featured_image = $inputs["featured_image"];
        if(strcmp($online,"Available")==0)
            $online=1;
        else
            $online=0;

        if(strcmp($availability,"Available")==0)
            $availability=1;
        else
            $availability=0;

        $products = new Products;
        $products->name = $name;
        $products->price = $price;
        $products->online = $online;
        $products->description = $description;
        $products->availability = $availability;


        $featured_image = $request->file("featured_image");
        $image_slug = str_slug($inputs['name'], "-");

        // dd($request->file("featured_image"));
        // print_r("slug : " .$image_slug);

        if($featured_image){

            $hardPath = 'upload/featured_image/';
            $tempPath = substr($image_slug,0,100).'_'.time();
        
            // print_r("path : " . $hardPath.$tempPath);
            $img = Image::make($featured_image);
            $img->save($hardPath.$tempPath.'-b.jpg');
            $img->fit(300, 300)->save($hardPath.$tempPath. '-s.jpg');

            $products->featured_image = $tempPath;
             

        }


        $products->save();

        
        return redirect("/dashboard");
       
    }

    public function editProduct(Request $request){

        $id = $request->id;

        $product = new Products;
        $product = Products::where("id", $id)->first();

        return view("_particles.editproduct", compact("product"));

    }

    public function pushEditProduct(Request $request){


        $inputs = $request->all();
        
        $id = $inputs["productid"];
        $name = $inputs["name"];
        $price = $inputs["price"];
        $online = $inputs["online"];
        $description = $inputs["description"];
        $availability = $inputs["availability"];
        $featured_image = $inputs["featured_image"];
        if(strcmp($online,"Available")==0)
            $online=1;
        else
            $online=0;

        if(strcmp($availability,"Available")==0)
            $availability=1;
        else
            $availability=0;

        $products = Products::where("id", $id)->first();
        $products->name = $name;
        $products->price = $price;
        $products->online = $online;
        $products->description = $description;
        $products->availability = $availability;


        $featured_image = $request->file("featured_image");
        $image_slug = str_slug($inputs['name'], "-");

        // dd($request->file("featured_image"));
        // print_r("slug : " .$image_slug);

        if($featured_image){

            $hardPath = 'upload/featured_image/';
            $tempPath = substr($image_slug,0,100).'_'.time();
        
            // print_r("path : " . $hardPath.$tempPath);
            $img = Image::make($featured_image);
            $img->save($hardPath.$tempPath.'-b.jpg');
            $img->fit(300, 300)->save($hardPath.$tempPath. '-s.jpg');

            $products->featured_image = $tempPath;
             

        }


        $products->save();

        
        return redirect("/dashboard");


    }
    
   

}