<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {

        

        if($data["usertype"] == "individual"){
            $type_str = "I";

        }elseif($data["usertype"] == "organisation"){
            switch($data["type"]){
                case "pvt" : {
                    $type_str = "1";
                    break;
                }
                case "ltd" : {
                    $type_str = "2";
                    break;
                }
                case "proprietorship" : {
                    $type_str = "3";
                    break;
                }
                case "partnership" : {
                    $type_str = "4";
                    break;
                }
                case "llp" : {
                    $type_str = "5";
                    break;
                }
                case "ngo" : {
                    $type_str = "6";
                    break;
                }
                case "trust" : {
                    $type_str = "7";
                    break;
                }
            }
        }elseif($data["usertype"] == "institute"){
            switch($data["type"]){
                case "school" : {
                    $type_str = "8";
                    break;
                }
                case "college" : {
                    $type_str = "9";
                    break;
                }
                case "university" : {
                    $type_str = "0";
                    break;
                }
                case "pvt" : {
                    $type_str = "x";
                    break;
                }
            }
        }

        // dd($data);

        $name_str = substr($data["name"], 0, 3);

        $rand_str = substr(md5(microtime()),rand(0,26),4);

        $year_str = date("Y");
        $year_str = substr($year_str, 2,3);

        $code = $name_str . $type_str . $rand_str . $year_str;

        $code = strtoupper($code);


        

        return User::create([
            'name' =>  $data['name'],
            'email' => $data['email'],
            // 'contact' => empty($data['contact']) ? "0" : $data['contact'],
            // 'usertype' => $data['usertype'],
            'password' => Hash::make($data['password']),
            // 'code' => $code,
            // 'type' => empty($data['type']) ? "0" : $data['type'],
            // 'spoc_name' => empty($data['spoc_name']) ? "0" : $data['spoc_name'],
            // 'spoc_email' => empty($data['spoc_email']) ? "0" : $data['spoc_email'],
            // 'spoc_contact' =>empty($data['spoc_contact']) ? "0" : $data['spoc_contact'],
        ]);
    }
}
