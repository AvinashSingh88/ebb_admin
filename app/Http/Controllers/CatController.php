<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;

class CatController extends Controller
{
    public function subCatbyCat($catslug){
        $subcategories = Category::where('slug', '=', $catslug)
    }
}
