<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Category_wise_brand;
use App\Models\Category_wise_offer;

class CatController extends Controller
{
    public function subCatbyCat($catslug){
        $categories = Category::where('type', 1)->where('parent_id', 0)->orderBy('order_level', 'ASC')->get();
        $subcategories = Category::where('slug', $catslug)->first();
        $getCatId = $subcategories->id;
        $subcatlist = Category::where('parent_id','=',$getCatId)->orderBy('order_level', 'ASC')->get( );
        $firstFiveSubcat = Category::where('parent_id','=',$getCatId)->orderBy('order_level', 'asc')->limit(5)->get();
        $exceptFiveSubcat = Category::where('parent_id','=',$getCatId)->orderBy('order_level', 'asc')->take(15)->skip(5)->get();
        $catwisebrands = Category_wise_brand::where('category_id','=',$getCatId)->get();
        $catwiseoffers = Category_wise_offer::where('category_id','=',$getCatId)->get();
        // dd($subcategories);
        // die;
        return view('frontend.sub_category', compact('exceptFiveSubcat','firstFiveSubcat','subcatlist', 'categories','subcategories','catwisebrands','catwiseoffers'));
    }


}