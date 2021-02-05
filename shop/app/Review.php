<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    public function user(){
        return $this->belongsTo(\App\User::class);
     // return $this->belongsTo(\App\User::class,'user_id','id','user');
        //belongsTo() - осущ связь
    }
}
