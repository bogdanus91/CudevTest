<?php

namespace App\Listeners\Users;

use Illuminate\Auth\Events\Login;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Auth;
class UpdateLoggedinat
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  Login  $event
     * @return void
     */
    public function handle(Login $event)
    {
 	$user=Auth::user()->id;

  	$date=Carbon::now();
 	 	DB::table('lastlogins')->insert(
    	['logins' => $date, 'user_id' => $user]
		);
 
 
 

 
    }
}
