<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    public function getImgAttribute($value){//создаем мутатора (get имя колонки Attribute)
        //$value-  из БД
         return $value ? $value : asset('/images/noimg.jpg');
     }
}
