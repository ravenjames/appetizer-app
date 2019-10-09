<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Date;


class IndexController extends Controller
{
    public function welcome() {

    	$dates = Date::all();

    	return view('welcome', compact("dates"));
    }

    public function submit(Request $request) {
    	//dd($request, $request->dateFrom, getdate(strtotime($request->dateFrom))["mday"]);
    	$daysKeyValue = explode(",", $request->days);
    	$dates = Date::all();
        $exist = false;


    	foreach($dates as $indiv_date) {
    		$indiv_date->calendar_event = null;
    		$indiv_date->highlighted = 0;
    		$indiv_date->save();
    	}

    	for($i=$request->dateFrom; $i <= $request->dateTo; $i++) {

			$date = Date::find($i);

			foreach($daysKeyValue as $key => $day) {
				if($date->day_id == $day) {
					$exist = true;
				}
			}

			if($exist) {
				$date->calendar_event = $request->event;
				$date->highlighted = 1;
				$date->save();
				$exist = false;
			}
		}

		return Date::all();
    }
}

