<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Parkings;
use App\Bookings;
use App\referrals;

class IndexController extends Controller
{
    public function register_individual(){
        return view("auth.register_individual");
    }
    public function register_organisation(){
        return view("auth.register_organisation");
    }
    public function register_institution(){
        return view("auth.register_institution");
    }
    public function generatecode(){
        
    }

    public function registerparking(){

        // if(Auth::check()){

        //     $user_id = Auth::user()->id;

        //     return view("auth.register_parking", compact("user_id"));
        // }else
        //     return view("auth.login");

        if(Auth::check()){

            $user_id = Auth::user()->id;

            return view("auth.register_parking", compact("user_id"));
        }else {
            return view("auth.login");
        }

        
    }

    public function addparkingslot(Request $request){

        $inputs = $request->all();
        $address = $inputs["address"];
        $contact = $inputs["contact"];

        $parking = new Parkings;
        $parking->address = $address;
        $parking->contact = $contact;

        $parking->save();

        return redirect("/");


    }

    public function bookparking(Request $request){

        $parkingid = $request->id;
        $parking = Parkings::where("id", $parkingid)->first();

        return view("auth.book_parking", compact("parkingid", "parking"));

    }

    public function bookparkingslot(Request $request){

        $inputs = $request->all();

        $parkingid = $inputs["parkingid"];
        $name = $inputs["name"];
        $contact = $inputs["contact"];
        $email = $inputs["email"];
        $date = $inputs["date"];
        $time = $inputs["time"];
        $duration = $inputs["duration"];


        $booking = new Bookings;
        $booking->parkingid = $parkingid;
        $booking->name = $name;
        $booking->contact = $contact;
        $booking->email = $email;
        $booking->timing = $date . "," . $time;
        $booking->duration = $duration;

        $parking = new Parkings;
        $parking = Parkings::where("id", $parkingid)->first();
        $parking->active = 1;

        $address = $parking->address;
        $addr_slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $address), '-'));;

        $address = 'https://www.google.com/maps/search/?api=1&query=' . $addr_slug;

        $booking->directions = $address;

        $booking->save();
        $parking->save();

        $id = $booking->id;

        // dd($id);

        return redirect("/amount?duration=" . $duration . "&bookingid=" . $id);

    }

    public function slugify($string){
        return strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $string), '-'));
    }

    public function test(Request $request){

        $key1 = $request->key1;
        $key2 = $request->key2;

        dd($key1 . " :: " . $key2);

    }

    public function amount(Request $request){

        $base = 30;
        $duration = $request->duration;
        $bookingid = $request->bookingid;

        $booking = new Bookings;
        $booking = Bookings::where("id", $bookingid)->first();

        // dd($booking->directions);

        $amount = $duration * $base;
        $directions = $booking->directions;

        return view("_particles.amount", compact("amount", "duration", "directions"));


    }

    public function landing_page(){

        $parkings = Parkings::all();

        return view('_particles.landing', compact("parkings"));
    }

    public function ref(Request $request){

        $id = $request->id;

        $ref = new referrals;
        $ref->id = $id;

        $ref->save();


        return view("_particles.ref", compact("id"));
    }


}
