<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Intervention\Image\Facades\Image;

use Illuminate\Support\Facades\Input; 


class IndexController extends Controller
{
    public function index(){
        return view("_particles.index");
    }
    public function login(){
        return view("_particles.login");
    }
    
    public function signup(){
        return view("_particles.signup");
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
    
    
    

    

    

    
   

}