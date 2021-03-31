<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    public function category(){
        return $this->belongsTo(\App\Category::class,'category_id','id','category');
    }
    public function review(){
        return $this->hasMany(\App\Review::class);
    }
    public function getImgAttribute($value){
         return $value ? $value : asset('/images/noimg.jpg');
     }

}
