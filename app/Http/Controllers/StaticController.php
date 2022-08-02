<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request; 

class StaticController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     * 
     * 
     */


     public function advertise()
     {

        return view('frontend.advertise');


     }

     public function enquiry()
     {

        return view('frontend.enquiry');


     }

     public function seller()
     {

        return view('frontend.become_seller');


     }
     public function helpcenter()
     {

        return view('frontend.help_center');


     }
     public function appointment()
     {

        return view('frontend.appointment');


     }
     public function aboutus()
     {

        return view('frontend.about_us');


     }
     
     public function residentilal()
     {

        return view('frontend.residentilal');


     }
     public function commercial()
     {

        return view('frontend.commercial');


     }
     public function architect()
     {

        return view('frontend.architect');


     }
     public function interior()
     {

        return view('frontend.interior');


     }
     public function building()
     {

        return view('frontend.building');


     }

     public function blog()
     {

        return view('frontend.blog');


     }

     public function news()
     {

        return view('frontend.news_media');


     }

     public function talkto()
     {

        return view('frontend.talk_to');


     }

     public function plumber()
     {

        return view('frontend.plumber_electrician');


     }
     public function salespartner()
     {

        return view('frontend.sales_partner');


     }
     public function material()
     {

        return view('frontend.material_supplier');


     }
     public function labour()
     {

        return view('frontend.labour_suppllier');


     }
     public function engineerarchitect()
     {

        return view('frontend.engineer_architect');


     }
     public function career()
     {

        return view('frontend.career');


     } 
     
     public function contact()
     {

        return view('frontend.contact_us');


     }
     public function addformdata(Request $request)
     {

         $data =array(
            "full_name"=>$request->fullname,
            "email"=>$request->email,
            "phone_no"=>$request->phoneno,
            "messege"=>$request->message,
            "form_type"=>$request->form_type,
         );

      $ins = \DB::table('form_data')->insert($data);
      
      
      return redirect()->back();


     }



     public function addenquiryformdata(Request $request)
     {

         $data =array(
            "full_name"=>$request->fullname,
            "email"=>$request->email,
            "phone_no"=>$request->phoneno,
            "messege"=>$request->message,
            "form_type"=>$request->form_type,
            "enquiry_type"=>$request->input_field,

         );

      $ins = \DB::table('form_data')->insert($data);
      
      return redirect()->back();
        

     }

     public function addcareerformdata(Request $request)
     {
       $name="";
      if ($request->hasFile('imagefile')) {
         $image = $request->file('imagefile');
         $name = time().'.'.$image->getClientOriginalExtension();
         $destinationPath = public_path('/uploads');
         $image->move($destinationPath, $name);

     }

         $data =array(
            "fullname"=>$request->fullname,
            "email"=>$request->email,
            "phone_no"=>$request->phoneno,
            "address"=>$request->address,
            "city"=>$request->city,
            "apply_post"=>$request->post_apply,
            "enrollment_type"=>$request->enrollment_type,
            "images"=>$name,
            "messege"=>$request->message,
         );

      $ins = \DB::table('career_form')->insert($data);
      
      return redirect()->back();
        

     }




     
         
}
