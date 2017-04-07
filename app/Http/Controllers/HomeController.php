<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\DB;
use View;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
     $id=Auth::user()->id;
     $dates = DB::table('lastlogins')->where('user_id', $id)->orderby('logins','desc')->limit(5)->get();
    return view('home', ['dates' => $dates]);
    }
}
