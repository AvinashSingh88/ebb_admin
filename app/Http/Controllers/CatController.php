<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class CatController extends Controller
{
    public function subCatbyCat($catslug){
        $categories = Category::where('level', 0)->orderBy('order_level', 'desc')->get();
        $subcategories = Category::where('slug', $catslug)->first();
        $getCatId = $subcategories->id;
        $subcatlist = Category::where('parent_id','=',$getCatId)->paginate(12);
        return view('frontend.sub_category', compact('subcatlist', 'categories','subcategories'));
    }
}
