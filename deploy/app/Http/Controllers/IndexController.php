<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;
use App\Products;
use App\Cart;
use App\ProductGallery;
use App\Categories;
use App\ProductTag;
use App\Order;
use Auth;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Intervention\Image\Facades\Image;
use Session;

use Illuminate\Support\Facades\Input; 
use Redirect;


class IndexController extends Controller
{
    public function index(){

        $products = new Products;
        $products = Products::all();

        if(Auth::check()){

            $user_id = Auth::user()->id;
            $cart_id = $user_id;

            $cart = Cart::where("id", $cart_id)->first();
            if(!$cart){
                $cart = new Cart;
                $cart->id = $cart_id;
                $cart->user_id = $user_id;
                $cart->save();
            }
            $products_str = $cart->product_ids;

            $cart_count = substr_count($products_str, ",");

            Session::put('cart_count', $cart_count);

            return view("_particles.index", compact('products', 'cart_count'));

        }else{

            return view("_particles.index",  compact('products'));
        }

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


    public function products(Request $request){

        $category = $request->category;
        $products = Products::where("category", "LIKE", $category )->get();

        return view("_particles.products", compact("products", "category"));
    }

    public function product(Request $request){

        $id = $request->id;
        $product = Products::where("id", $id)->first();

        $product_gallery_images = ProductGallery::where("product_id", $product->id)->orderBy("image_name")->get();

        return view("_particles.single-product", compact("product", "product_gallery_images"));
    }

    public function search(Request $request){

        $key = $request->key;
        $category = ucfirst($key);

        $products = Products::where("category", "LIKE", "%" . $key . "%")
                            ->orWhere("tags", "LIKE", "%" . $key . "%")
                            ->orWhere("name", "LIKE", "%" . $key . "%")
                            ->get();


        return view("_particles.products", compact("products", "category"));
    }

    public function hpworlds(){

        $products = Products::where("hp_store", 1)->get();

        return view("_particles.hp");

    }

    public function asus(){

        $products = Products::where("asus_store", 1)->get();
        
        return view("_particles.asus");
    }

    public function xiaomi(){

        $products = Products::where("mi_store", 1)->get();

        return view("_particles.mi", compact("products"));
    }
    
    public function cart(){

        if(Auth::check()){

            $user_id = Auth::user()->id;
            $cart_id = $user_id;

            $cart = Cart::where("id", $cart_id)->first();

            $product_ids = explode(",", $cart->product_ids);
            array_shift($product_ids);

            $products = Products::whereIn("id", $product_ids)->get();

        }

        return view("_particles.cart", compact("products", "cart"));

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
            $product_ids = explode(",", $cart->product_ids);
            array_shift($product_ids);

            $products = Products::whereIn("id", $product_ids)->get();
            

            // print_r(count($products));
            return view("_particles.cart", compact("products", "cart"));
        }
     
    }


    public function precheckout(Request $request){

        $cart_id = $request->cart_id;

        $products = Products::where("cart_id", $cart_id)->get();
        return view("_particles.precheckout", compact("products", "cart_id"));
    }

    public function checkout(Request $request){

        // dd($request);
        $cart_id = $request->cart_id;
        $cart = Cart::where("id", $cart_id)->first();

        $name = $request->name;
        $contact = $request->contact;
        $address = $request->address;
        $zip = $request->zip;
        $city = $request->checkout_city;
        $order_id = "cas_" . substr(md5(microtime()),rand(0,26),4);
        $product_ids = $cart->product_ids;

        $order = new Order;
        $order->id = $order_id;
        $order->product_ids = $product_ids;
        $order->name = $name;
        $order->contact = $contact;
        $order->address = $address;
        $order->zip = $zip;
        $order->city = $city;

        $order->save();
        $order_details = Order::where("id", $order_id)->first();

        $products = Products::where("cart_id", $cart_id)->get();        

        return view("_particles.checkout", compact("products", "cart_id", "order_id", "order_details"));
    }

    public function payment_success(Request $request){

        // dd($request);

        $order_id = $request->order_id;
        $payment_id = $request->razorpay_payment_id;

        $order = Order::where("id", $order_id)->first();
        $order->payment_id = $payment_id;
        $order->status = 1;
        $order->save();

    }

    public function dashboard(){

        $products = new Products;
        $products = Products::paginate(50);

    
        return view("_particles.dashboard", compact('products'));

    }

    public function addCategories(){

        $categories = Categories::all();
        return view("_particles.addcategories", compact("categories"));
    }

    public function pushAddCategories(Request $request){


        $name = $request->has("name") ? $request->name : "0";
        $slug = $request->has("slug") ? $request->slug : "as";

        $category = new Categories;
        $category->category_name = $name;
        $category->category_slug = $slug;
        $category->status = 1;
        $category->save();

        return redirect("/addcategories");
    }

    public function addTags(){

        $tags = ProductTag::all();
        return view("_particles.addtags", compact("tags"));
    }

    public function pushAddTags(Request $request){

        $name = $request->has("name") ? $request->name : "0";
        $slug = $request->has("slug") ? $request->slug : "as";

        $tag = new ProductTag;
        $tag->tag_name = $name;
        $tag->tag_slug = $slug;
        $tag->status = 1;
        $tag->save();

        return redirect("/addtags");
    }
    
    public function addProduct(){

        $categories = Categories::all();
        $tags = ProductTag::all();

        return view("_particles.addproduct", compact("categories", "tags"));
    }
    
    public function pushAddProduct(Request $request){


        $inputs = $request->all();
        
        $name = $inputs["name"];
        $price = $inputs["price"];
        $online = $inputs["online"];
        $description = $inputs["description"];
        $availability = $inputs["availability"];
        $store = $inputs["store"];
        $category = $inputs["category"];
        $tag = $inputs["tag"];

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
        $products->category = $category;
        $tag = implode(",",$inputs["tag"]);

       

        // dd($request->file("featured_image"));
        // print_r("slug : " .$image_slug);

        
        if($request->has("featured_image")){

            $featured_image = $request->file("featured_image");
            $image_slug = str_slug($inputs['name'], "-");

            $hardPath = 'upload/featured_image/';
            $tempPath = substr($image_slug,0,100).'_'.time();
        
            // print_r("path : " . $hardPath.$tempPath);
            $img = Image::make($featured_image);
            $img->save($hardPath.$tempPath.'-b.jpg');
            $img->fit(300, 300)->save($hardPath.$tempPath. '-s.jpg');

            $products->featured_image = $tempPath;
             

        }

        if($store != "0"){
            $products->$store = true;
        }

        $products->save();
        $product_id = $products->id;

        /**
         * Fetch and Push images for Gallery
         */
        
        $product_gallery_files = $request->file('gallery_file');
        $file_count = count($product_gallery_files);
         
        if($request->hasFile('gallery_file'))
        {
            $image_slug = str_slug($inputs['name'], "-");
            foreach($product_gallery_files as $file) {
                
                $product_gallery = new ProductGallery;

                $hardPath = 'upload/gallery/';            
                $tempPath = substr($image_slug,0,100).'_'.rand(0,9999).'-b.jpg';
                
                $product_img = Image::make($file);
                $product_img->save($hardPath.$tempPath);
                

                $product_gallery->product_id = $product_id;
                $product_gallery->image_name = $tempPath;
                $product_gallery->save();
                    
            }
        }

        

        
        return redirect("/dashboard");
       
    }

    public function editProduct(Request $request){

        $id = $request->id;

        $product = new Products;
        $product = Products::where("id", $id)->first();

        $categories = Categories::all();
        $tags = ProductTag::all();
        $selectedTags = $product->tags;

        $product_gallery_images = ProductGallery::where("product_id", $product->id)->orderBy("image_name")->get();

        return view("_particles.editproduct", compact("product", "categories", "tags", "selectedTags", "product_gallery_images"));

    }

    public function pushEditProduct(Request $request){


        $inputs = $request->all();
        
        $id = $inputs["productid"];
        $name = $inputs["name"];
        $price = $inputs["price"];
        $online = $inputs["online"];
        $description = $inputs["description"];
        $availability = $inputs["availability"];
        $store = $inputs["store"];
        $category = $inputs["category"];
        $tag = implode(",",$inputs["tag"]);

        // dd($request);

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
        $products->category = $category;
        $products->tags = $tag;

        // dd($request->file("featured_image"));
        // print_r("slug : " .$image_slug);

        if($request->has("featured_image")){

            $featured_image = $request->file("featured_image");
            $image_slug = str_slug($inputs['name'], "-");

            $hardPath = 'upload/featured_image/';
            $tempPath = substr($image_slug,0,100).'_'.time();
        
            // print_r("path : " . $hardPath.$tempPath);
            $img = Image::make($featured_image);
            $img->save($hardPath.$tempPath.'-b.jpg');
            $img->fit(300, 300)->save($hardPath.$tempPath. '-s.jpg');

            $products->featured_image = $tempPath;
             

        }

        if($store != "0"){
            $products->$store = true;
        }

        $products->save();
        $product_id = $products->id;


         /**
         * Fetch and Push images for Gallery
         */
        
        $product_gallery_files = $request->file('gallery_file');
        $file_count = count($product_gallery_files);
         
        if($request->hasFile('gallery_file'))
        {
            $image_slug = str_slug($inputs['name'], "-");
            foreach($product_gallery_files as $file) {
                
                $product_gallery = new ProductGallery;

                $hardPath = 'upload/gallery/';            
                $tempPath = substr($image_slug,0,100).'_'.rand(0,9999).'-b.jpg';
                
                $product_img = Image::make($file);
                $product_img->save($hardPath.$tempPath);
                

                $product_gallery->product_id = $product_id;
                $product_gallery->image_name = $tempPath;
                $product_gallery->save();
                    
            }
        }

        return redirect("/dashboard");
    }


    public function orders(Request $request){

        $orders = new Order;
        $orders = Order::paginate(50);

        return view("_particles.orders", compact("orders"));
    }
    
    public function editOrder(Request $request){

        $id = $request->id;
        $order = Order::where("id", $id)->first();
        
        $product_ids = explode(",", $order->product_ids);
        array_shift($product_ids);
        $products = Products::find($product_ids);

        $total_price = 10000;

        return view("_particles.editorder", compact("products", "order", "total_price"));

    }

}