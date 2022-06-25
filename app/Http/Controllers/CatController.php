<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Category_wise_brand;

class CatController extends Controller
{
    public function subCatbyCat($catslug){
        $categories = Category::where('level', 0)->orderBy('order_level', 'desc')->get();
        $subcategories = Category::where('slug', $catslug)->first();
        $getCatId = $subcategories->id;
        $subcatlist = Category::where('parent_id','=',$getCatId)->get( );
        $firstFiveSubcat = Category::where('parent_id','=',$getCatId)->orderBy('id', 'desc')->limit(5)->get();
        $exceptFiveSubcat = Category::where('parent_id','=',$getCatId)->orderBy('id', 'desc')->take(15)->skip(5)->get();
        $catwisebrands = Category_wise_brand::where('category_id','=',$getCatId)->get();
        // dd($subcategories);
        // die;
        return view('frontend.sub_category', compact('exceptFiveSubcat','firstFiveSubcat','subcatlist', 'categories','subcategories','catwisebrands'));
    }
}
