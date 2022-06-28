<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category_wise_brand;
class WebsiteController extends Controller
{
	public function header(Request $request)
	{
		return view('backend.website_settings.header');
	}
	public function footer(Request $request)
	{	
		$lang = $request->lang;
		return view('backend.website_settings.footer', compact('lang'));
	}
	public function pages(Request $request)
	{
		return view('backend.website_settings.pages.index');
	}
	public function appearance(Request $request)
	{
		return view('backend.website_settings.appearance');
	}
	public function addCategoryWiseBrands()
	{
		return view('backend.website_settings.category_wise_brands.create');
	}
	public function uploadCatWiseBrands(Request $request)
	{
		$request->validate([
            'category_id'=>'required',
            'brand_id'=>'required|max:16',
            'title'=>'required',
            'url'=>'required',
        ]);
       
        $addcard = Category_wise_brand::create([
           "category_id" => "$request->category_id",
            "brand_id" => "$request->brand_id",
            "title" => "$request->title",
            "url" => "$request->url",
            "image" => "$request->thumbnail_img",
        ]);
        if ($addcard) {
			flash(translate('Category wise Brand has been inserted successfully!'))->success();
            return redirect()->back();
        }
		
    }
	public function edit_cat_wise(Request $request, $id)
     {
        $catwisebrandid = Category_wise_brand::findOrFail($id);
        return view('backend.website_settings.category_wise_brands.edit_cat',compact('catwisebrandid'));
        
     }
	public function editcatwisebrand(Request $request){
	
       $editdetails = Category_wise_brand::where('id', $request->cid)
                            ->update([
                                    'category_id' => $request->category_id,
                                    'brand_id' => $request->brand_id,
                                    'title' => $request->title,
                                    'image' => $request->image,
                                    'url' => $request->url,
                                ]);
        if ($editdetails) {
            flash(translate('Updated Successfully!'))->success();
            return redirect()->back();
        }
        
	}
	public function categoryWiseBrandList()
	{
		$catwisebrandlist = Category_wise_brand::get();
		return view('backend.website_settings.category_wise_brands.list', compact('catwisebrandlist'));
	}
}