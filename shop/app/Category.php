<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = [
        'name', 'slug', 'img',
    ];

    public function products(){
        return $this->hasMany(\App\Product::class);
    }

    
    public function getImgAttribute($value){//создаем мутатора (get имя колонки Attribute)
       //$value-  из БД
        return $value ? $value : asset('/images/noimg.jpg');
    }

    public function setSlugAttribute($value)
    {
        $this->attributes['slug'] = \Str::slug( empty($value) ? $this->name : $value,'-');
    }

    public function setImgAttribute($img)
    {
        $fName = $img->getClientOriginalName();
        $img->move(public_path('uploads'),$fName);
        $this->attributes['img'] ='/uploads/'.$fName;
    }
}
