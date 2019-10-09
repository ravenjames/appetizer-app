<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Date extends Model
{
    public function day() {
    	return $this->belongsTo("App\Day");
    } 
}