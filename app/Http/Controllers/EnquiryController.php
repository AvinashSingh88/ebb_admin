<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Enquiry;
use App\Models\ProductQuoteEnquiry;

class EnquiryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $sort_search = null;
        $enquiry = Enquiry::orderBy('created_at', 'desc');
        
        if ($request->search != null){
            $enquiry = $enquiry->where('phone', 'like', '%'.$request->search.'%');
            $sort_search = $request->search;
        }

        $enquiry = $enquiry->paginate(15);

        return view('backend.enquiry.category_enquiry.index', compact('enquiry','sort_search'));
    }

   
    public function destroy($id)
    {
        Enquiry::find($id)->delete();
        
        return redirect('admin/enquiry');
    }
	
	public function productEnquiry(Request $request)
    {
        $sort_search = null;
        $product_enquiry = ProductQuoteEnquiry::orderBy('created_at', 'desc');
        
        if ($request->search != null){
            $product_enquiry = $product_enquiry->where('phone', 'like', '%'.$request->search.'%');
            $sort_search = $request->search;
        }

        $product_enquiry = $product_enquiry->paginate(15);

        return view('backend.enquiry.product_enquiry.index', compact('product_enquiry','sort_search'));
    }
    public function productEnq()
    {
        $sort_search = null;
        $product_enquiry = ProductQuoteEnquiry::orderBy('created_at', 'desc');
        
        if ($request->search != null){
            $product_enquiry = $product_enquiry->where('phone', 'like', '%'.$request->search.'%');
            $sort_search = $request->search;
        }

        $product_enquiry = $product_enquiry->paginate(15);

        return view('backend.enquiry.product_enquiry.index', compact('product_enquiry','sort_search'));
    }
	public function show($id)
    {
        
    }


   
}