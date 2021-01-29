<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Category;
use App\Product;
use App\Http\Requests\StoreCategory;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Category::all();
        $products = Product::all();
        return view('admin.category.index', compact('categories','products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        /*
        GET|HEAD  
        | admin/categoy/create 
        | category.create        
        | App\Http\Controllers\Admin\CategoryController@create
        */
        return view('admin.category.create'); 
        // return view('admin.category.create', ['category'=>new Category]); 
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreCategory $request)
    {
        // $validatedData = $request->validate([
        //     'name' => 'required|unique:categories|max:64',
        //     'slug' => 'required|unique:categories|max:128',
        //     'file' => 'nullable|mimes:jpeg,bmp,png',
        // ]);

        // dd($request->all());
        // dd($request->file);


        // $category = new Category();
        // $category->name=$request->name;
        // $category->slug=$request->slug;
        // $img = $request->file('file');
        // // dd($img);
        // if ($img) {
        //     $fName = $img->getClientOriginalName();
        //     $img->move(public_path('uploads'),$fName);
        //     $category->img ='/uploads/'.$fName;
        // }
        // $category->save();

        $category = Category::create($request->all());

        return redirect(route('category.index'))->with('success','Category '.$category->name.' was added!');//
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $category = Category::findOrFail($id);
        // findOrFail - найди или выдать ошибку
        return view('admin.category.edit',compact('category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */   
    public function update(StoreCategory $request, $id)
    {
        $category = Category::findOrFail($id);
        $category->update($request->all());
        return redirect(route('category.index'))->with('success','Category '.$category->name.' was updated!');//
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Category::findOrFail($id)->delete();
        return back();
    }
}
