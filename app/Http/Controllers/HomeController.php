<?php


namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\Category;
use App\Models\FlashDeal;
use App\Models\Brand;
use App\Models\Product;
use App\Models\PickupPoint;
use App\Models\CustomerPackage;
use App\Models\User;
use App\Models\Seller;
use App\Models\Shop;
use App\Models\Order;
use App\Models\BusinessSetting;
use App\Models\Coupon;
use App\Models\Address;
use App\Models\Customer_payment_card;
use App\Models\Category_wise_brand;
use App\Models\Enquiry;
use App\Models\Blog;
use App\Models\ProductQuoteEnquiry;
use App\Models\CallRequest;
use Cookie;
use Illuminate\Support\Str;
use App\Mail\SecondEmailVerifyMailManager;
use App\Models\AffiliateConfig;
use Mail;
use Illuminate\Auth\Events\PasswordReset;
use Cache;


class HomeController extends Controller
{
    /**
     * Show the application frontend home.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $featured_categories = Cache::rememberForever('featured_categories', function () {
        //     return Category::where('featured', 1)->get();
        // });

        // $todays_deal_products = Cache::rememberForever('todays_deal_products', function () {
        //     return filter_products(Product::where('published', 1)->where('todays_deal', '1'))->get();
        // });

        $categories = Category::where('level', 0)->orderBy('order_level', 'desc')->get();

        $categories_id = json_decode(get_setting('home_categories'));

        $cat_wise_brands = Category::whereIn('id', $categories_id)->get();

        $allblogs = Blog::limit(4)->get();
        $servicesoffered = Category::where('level', 0)->where('type', 2)->orderBy('order_level', 'desc')->get();

        return view('frontend.index', compact('categories', 'cat_wise_brands', 'allblogs', 'servicesoffered'));
    }



    public function login()
    {
        if (Auth::check()) {
            return redirect()->route('home');
        }
        $categories = Category::where('level', 0)->orderBy('order_level', 'desc')->get();
        return view('frontend.user_login', compact('categories'));
    }

    public function registration(Request $request)
    {
        if (Auth::check()) {
            return redirect()->route('home');
        }

        if ($request->has('referral_code') && addon_is_activated('affiliate_system')) {
            try {
                $affiliate_validation_time = AffiliateConfig::where('type', 'validation_time')->first();
                $cookie_minute = 30 * 24;
                if ($affiliate_validation_time) {
                    $cookie_minute = $affiliate_validation_time->value * 60;
                }

                Cookie::queue('referral_code', $request->referral_code, $cookie_minute);
                $referred_by_user = User::where('referral_code', $request->product_referral_code)->first();

                $affiliateController = new AffiliateController;
                $affiliateController->processAffiliateStats($referred_by_user->id, 1, 0, 0, 0);
            } catch (\Exception $e) {
            }
        }
        $categories = Category::where('level', 0)->orderBy('order_level', 'desc')->get();
        return view('frontend.user_registration', compact('categories'));
    }

    public function cart_login(Request $request)
    {
        $user = null;
        if ($request->get('phone') != null) {
            $user = User::whereIn('user_type', ['customer', 'seller'])->where('phone', "+{$request['country_code']}{$request['phone']}")->first();
        } elseif ($request->get('email') != null) {
            $user = User::whereIn('user_type', ['customer', 'seller'])->where('email', $request->email)->first();
        }

        if ($user != null) {
            if (Hash::check($request->password, $user->password)) {
                if ($request->has('remember')) {
                    auth()->login($user, true);
                } else {
                    auth()->login($user, false);
                }
            } else {
                flash(translate('Invalid email or password!'))->warning();
            }
        } else {
            flash(translate('Invalid email or password!'))->warning();
        }
        return back();
    }

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the customer/seller dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function dashboard()
    {
        if (Auth::user()->user_type == 'customer') {
            return view('frontend.user.customer.dashboard');
        } else {
            abort(404);
        }
    }

    public function profile(Request $request)
    {
        $address = Address::where('user_id', Auth::user()->id)->first();
        // dd($address);die;
        if (Auth::user()->user_type == 'delivery_boy') {
            return view('delivery_boys.frontend.profile');
        } else {
            return view('frontend.user.profile', compact('address'));
        }
    }
    public function editProfile()
    {
        return view('frontend.user.edit_profile');
    }
    public function myAddressBook()
    {
        $userid = Auth::user()->id;
        $myaddress = Address::where('user_id', $userid)->get();
        return view('frontend.user.my-addressbook', compact('myaddress'));
    }
    public function bankDetail()
    {
        return view('frontend.user.mybankdetail');
    }
    public function updateProfile(Request $request)
    {
        $request->validate([
            'first_name' => 'required',
            'last_name' => 'required',
            'phone' => 'required',
            'email' => 'required',
            // 'file' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:1024|dimensions:width=500,height=500',
            'file' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:1024',
        ]);
        // dd($request);die;
        if ($request->hasfile('file')) {
            $file = $request->file('file');
            $extenstion = $file->getClientOriginalExtension();
            $filename = 'user-ava-' . time() . '.' . $extenstion;
            $file->move(public_path('uploads/user'), $filename);
        }
        //  dd($filename);die;
        $userid = Auth::user()->id;
        $name = $request->first_name . ' ' . $request->last_name;
        $upate_profile_details = User::where('id', $userid)
            ->update([
                'first_name' => $request->first_name,
                'last_name' => $request->last_name,
                'name' => $name,
                'phone' => $request->phone,
                'email' => $request->email,
                'email' => $request->email,
                'gender' => $request->gender,
                'avatar' => $filename,
            ]);
        if ($upate_profile_details) {
            return redirect()->back()->with(session()->flash('alert-success', 'Profile Updated Successfully!.'));
        }
        return redirect()->back()->with(session()->flash('alert-danger', 'Something went wrong. Please try again.'));
    }
    public function updateAddressDetails(Request $request)
    {
        $request->validate([
            'first_name' => 'required',
            'last_name' => 'required',
            'phone' => 'required',
            'pin' => 'required',
            'area' => 'required',
            'house_no' => 'required',
            'user_id' => 'required',
            'state' => 'required',
            'city' => 'required',
        ]);
        $userid = Auth::user()->id;
        $name = $request->first_name . ' ' . $request->last_name;
        $upate_profile_details = Address::where('id', $request->id)->where('user_id', $request->user_id)
            ->update([
                'first_name' => $request->first_name,
                'last_name' => $request->last_name,
                'phone' => $request->phone,
                'state' => $request->state,
                'city' => $request->city,
                'address' => $request->address,
                'house_no' => $request->house_no,
                'area' => $request->area,
                'pin' => $request->pin,
            ]);
        if ($upate_profile_details) {
            return redirect()->back()->with(session()->flash('alert-success', 'Address Updated Successfully!.'));
        }
        return redirect()->back()->with(session()->flash('alert-danger', 'Something went wrong. Please try again.'));
    }
    public function addAddress(Request $request)
    {
        $request->validate([
            'first_name' => 'required',
            'last_name' => 'required',
            'phone' => 'required',
            'pin' => 'required',
            'house_no' => 'required',
            'area' => 'required',
            'city' => 'required',
            'state' => 'required',
            'address_type' => 'required',

        ]);
        $addresspost = Address::create([
            "first_name" => "$request->first_name",
            "last_name" => "$request->last_name",
            "phone" => "$request->phone",
            "pin" => "$request->pin",
            "house_no" => "$request->house_no",
            "area" => "$request->area",
            "address" => "$request->address",
            "city" => "$request->city",
            "state" => "$request->state",
            "address_type" => "$request->address_type",
            "user_id" => Auth::user()->id,
        ]);
        if ($addresspost) {
            return redirect()->back()->with(session()->flash('alert-success', 'Address Added Successfully!.'));
        }
        return redirect()->back()->with(session()->flash('alert-danger', 'Something went wrong. Please try again.'));
    }
    public function managePayments()
    {
        $userid = Auth::user()->id;
        $mypaymentcard = Customer_payment_card::where('user_id', $userid)->get();
        return view('frontend.user.manage-payments', compact('mypaymentcard'));
    }
    public function addPaymentCards(Request $request)
    {
        // dd($request);
        // die;
        $request->validate([
            'credit_debit' => 'required',
            'card_no' => 'required|max:16',
            'expiry_month' => 'required',
            'expiry_year' => 'required',
        ]);

        $addcard = Customer_payment_card::create([
            "credit_debit" => "$request->credit_debit",
            "card_no" => "$request->card_no",
            "expiry_month" => "$request->expiry_month",
            "expiry_year" => "$request->expiry_year",
            "user_id" => Auth::user()->id,
        ]);
        if ($addcard) {
            return redirect()->back()->with(session()->flash('alert-success', 'Payment Card Added Successfully!.'));
        }
        return redirect()->back()->with(session()->flash('alert-danger', 'Something went wrong. Please try again.'));
    }
    public function changePassword()
    {
        return view('frontend.user.change-password');
    }
    public function userPasswordChange(Request $request)
    {
        $request->validate([
            // 'old_password' => 'required',
            'new_password' => 'required',
            'confirm_password' => 'required',
        ]);
        $userid = Auth::user()->id;
        if ($request->new_password === $request->confirm_password) {

            $uppassdata = User::where('id', '=', $userid)
                ->update([
                    'password' => Hash::make($request->new_password),
                ]);
            if ($uppassdata) {
                return redirect()->back()->with(session()->flash('alert-success', 'Congratulations! You have successfully changed your password.'));
            } else {
                return redirect()->back()->with(session()->flash('alert-danger', 'Something went wrong. Please! try again later.'));
            }
            // } else {
            //     return redirect()->back()->with(session()->flash('alert-warning', 'Please! enter correct old password.'));
            // }

        } else {
            return redirect()->back()->with(session()->flash('alert-warning', 'New Password and Confirm Password not matched.'));
        }
        return redirect()->back()->with(session()->flash('alert-danger', 'Something went wrong. Please! try again later.'));
    }

    public function setDefaultAddress(Request $request)
    {
        $request->validate([
            'userid' => 'required',
            'address_id' => 'required',
        ]);


        $update = Address::where('user_id', '=', $request->userid)->update(['set_default' => '0']);

        $addressid = Address::where('id', '=', $request->address_id)->where('user_id', '=', $request->userid)
            ->update([
                'set_default' => '1',
            ]);
        if ($update && $addressid) {
            return redirect()->back()->with(session()->flash('alert-success', 'Default Address Set'));
        } else {
            return redirect()->back()->with(session()->flash('alert-danger', 'Something went wrong. Please! try again later.'));
        }
        return redirect()->back()->with(session()->flash('alert-danger', 'Something went wrong. Please! try again later.'));
    }
    public function removeMyAddress(Request $request)
    {
        $request->validate([
            'userid' => 'required',
            'address_id' => 'required',
        ]);
        $addressdelete = Address::where('id', '=', $request->address_id)->where('user_id', '=', $request->userid)->delete();
        if ($addressdelete) {
            return redirect()->back()->with(session()->flash('alert-success', 'Address Removed Successfully'));
        } else {
            return redirect()->back()->with(session()->flash('alert-danger', 'Something went wrong. Please try again.'));
        }
    }

    //Address Details Get start
    public function getaddressdetails(Request $request)
    {
        $address_id = $request->post('address_id');
        $addressesss = Address::where('id', $address_id)->get()->toJson();
        return $addressesss;
    }
    public function getcategorybrands(Request $request)
    {
        $address_id = $request->post('address_id');
        $catebrabddetailsss = Category_wise_brand::where('category_id', $address_id)->get();
        foreach ($catebrabddetailsss as $cat) {
            $brand = \App\Models\Brand::find($cat->brand_id);
            $cat->brand_id = uploaded_asset($brand->logo);
            $cat->image = uploaded_asset($cat->image);
        }
        return $catebrabddetailsss;
    }

    //Address Details Get End
    public function userProfileUpdate(Request $request)
    {
        $user = Auth::user();
        $user->name = $request->name;
        $user->address = $request->address;
        $user->country = $request->country;
        $user->city = $request->city;
        $user->postal_code = $request->postal_code;
        $user->phone = $request->phone;

        if ($request->new_password != null && ($request->new_password == $request->confirm_password)) {
            $user->password = Hash::make($request->new_password);
        }

        $user->avatar_original = $request->photo;

        $seller = $user->seller;

        if ($seller) {
            $seller->cash_on_delivery_status = $request->cash_on_delivery_status;
            $seller->bank_payment_status = $request->bank_payment_status;
            $seller->bank_name = $request->bank_name;
            $seller->bank_acc_name = $request->bank_acc_name;
            $seller->bank_acc_no = $request->bank_acc_no;
            $seller->bank_routing_no = $request->bank_routing_no;

            $seller->save();
        }

        $user->save();

        flash(translate('Your Profile has been updated successfully!'))->success();
        return back();
    }

    public function makeEnquiry(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required',
            'message' => 'required',
            'user_type' => 'required',
        ]);

        $addcard = Enquiry::create([
            "name" => "$request->name",
            "phone" => "$request->phone",
            "email" => "$request->email",
            "message" => "$request->message",
            "user_type" => "$request->user_type",
        ]);
        if ($addcard) {
            return redirect()->back()->with(session()->flash('alert-success', 'Thank you for enquiry with us!.'));
        }
        return redirect()->back()->with(session()->flash('alert-danger', 'Something went wrong. Please try again.'));
    }

    public function flash_deal_details($slug)
    {
        $flash_deal = FlashDeal::where('slug', $slug)->first();
        // dd($flash_deal);
        if ($flash_deal != null)
            return view('frontend.flash_deal_details', compact('flash_deal'));
        else {
            abort(404);
        }
    }

    public function load_featured_section()
    {
        return view('frontend.partials.featured_products_section');
    }

    public function load_best_selling_section()
    {
        return view('frontend.partials.best_selling_section');
    }

    public function load_auction_products_section()
    {
        // if (!addon_is_activated('auction')) {
        //     return;
        // }
        // return view('auction.frontend.auction_products_section');
    }

    public function load_home_categories_section()
    {
        return view('frontend.partials.home_categories_section');
    }

    public function load_best_sellers_section()
    {
        return view('frontend.partials.best_sellers_section');
    }

    public function trackOrder(Request $request)
    {
        if ($request->has('order_code')) {
            $ocode = $request->order_code;
            $order = Order::where('code', $request->order_code)->first();
            if ($order != null) {
                return view('frontend.track_order', compact('order', 'ocode'));
            }
        }
        return view('frontend.track_order');
    }

    public function product(Request $request, $slug)
    {
        $detailedProduct  = Product::with('category', 'reviews', 'brand', 'stocks', 'user', 'user.shop')->where('auction_product', 0)->where('slug', $slug)->where('approved', 1)->first();
        $categories = Category::where('level', 0)->orderBy('order_level', 'desc')->get();
        if ($detailedProduct != null && $detailedProduct->published) {
            if ($request->has('product_referral_code') && addon_is_activated('affiliate_system')) {

                $affiliate_validation_time = AffiliateConfig::where('type', 'validation_time')->first();
                $cookie_minute = 30 * 24;
                if ($affiliate_validation_time) {
                    $cookie_minute = $affiliate_validation_time->value * 60;
                }
                Cookie::queue('product_referral_code', $request->product_referral_code, $cookie_minute);
                Cookie::queue('referred_product_id', $detailedProduct->id, $cookie_minute);

                $referred_by_user = User::where('referral_code', $request->product_referral_code)->first();

                $affiliateController = new AffiliateController;
                $affiliateController->processAffiliateStats($referred_by_user->id, 1, 0, 0, 0);
            }
            if ($detailedProduct->digital == 1) {
                return view('frontend.digital_product_details', compact('detailedProduct', 'categories'));
            } else {
                return view('frontend.product_details', compact('detailedProduct', 'categories'));
            }
        }
        abort(404);
    }

    public function bulkOrder(Request $request, $slug)
    {
        $detailedProduct  = Product::with('category', 'reviews', 'brand', 'stocks', 'user', 'user.shop')->where('auction_product', 0)->where('slug', $slug)->where('approved', 1)->first();
        $categories = Category::where('level', 0)->orderBy('order_level', 'desc')->get();
        if ($detailedProduct != null && $detailedProduct->published) {
            if ($request->has('product_referral_code') && addon_is_activated('affiliate_system')) {

                $affiliate_validation_time = AffiliateConfig::where('type', 'validation_time')->first();
                $cookie_minute = 30 * 24;
                if ($affiliate_validation_time) {
                    $cookie_minute = $affiliate_validation_time->value * 60;
                }
                Cookie::queue('product_referral_code', $request->product_referral_code, $cookie_minute);
                Cookie::queue('referred_product_id', $detailedProduct->id, $cookie_minute);

                $referred_by_user = User::where('referral_code', $request->product_referral_code)->first();

                $affiliateController = new AffiliateController;
                $affiliateController->processAffiliateStats($referred_by_user->id, 1, 0, 0, 0);
            }
            if ($detailedProduct->digital == 1) {
                return view('frontend.digital_product_details', compact('detailedProduct', 'categories'));
            } else {
                return view('frontend.bulk_order_details', compact('detailedProduct', 'categories'));
            }
        }
        abort(404);
    }

    // public function shop($slug)
    // {
    //     $shop  = Shop::where('slug', $slug)->first();
    //     if ($shop != null) {
    //         $seller = Seller::where('user_id', $shop->user_id)->first();
    //         if ($seller->verification_status != 0) {
    //             return view('frontend.seller_shop', compact('shop'));
    //         } else {
    //             return view('frontend.seller_shop_without_verification', compact('shop', 'seller'));
    //         }
    //     }
    //     abort(404);
    // }

    public function filter_shop($slug, $type)
    {
        $shop  = Shop::where('slug', $slug)->first();
        if ($shop != null && $type != null) {
            return view('frontend.seller_shop', compact('shop', 'type'));
        }
        abort(404);
    }

    public function all_categories(Request $request)
    {
        $categories = Category::where('level', 0)->where('type', '1')->orderBy('order_level', 'asc')->get();
        return view('frontend.all_category', compact('categories'));
    }
    public function all_brands(Request $request)
    {
        $categories = Category::all();
        return view('frontend.all_brand', compact('categories'));
    }
    public function all_service_category(Request $request)
    {
        $servicecategories = Category::where('level', 0)->where('type', '2')->orderBy('order_level', 'asc')->get();
        return view('frontend.all_service_category', compact('servicecategories'));
    }

    public function show_product_upload_form(Request $request)
    {
        $seller = Auth::user()->seller;
        if (addon_is_activated('seller_subscription')) {
            if ($seller->seller_package && $seller->seller_package->product_upload_limit > $seller->user->products()->count()) {
                $categories = Category::where('parent_id', 0)
                    ->where('digital', 0)
                    ->with('childrenCategories')
                    ->get();
                return view('frontend.user.seller.product_upload', compact('categories'));
            } else {
                flash(translate('Upload limit has been reached. Please upgrade your package.'))->warning();
                return back();
            }
        }
        $categories = Category::where('parent_id', 0)
            ->where('digital', 0)
            ->with('childrenCategories')
            ->get();
        return view('frontend.user.seller.product_upload', compact('categories'));
    }

    public function show_product_edit_form(Request $request, $id)
    {
        $product = Product::findOrFail($id);
        $lang = $request->lang;
        $tags = json_decode($product->tags);
        $categories = Category::where('parent_id', 0)
            ->where('digital', 0)
            ->with('childrenCategories')
            ->get();
        return view('frontend.user.seller.product_edit', compact('product', 'categories', 'tags', 'lang'));
    }

    public function seller_product_list(Request $request)
    {
        $search = null;
        $products = Product::where('user_id', Auth::user()->id)->where('digital', 0)->orderBy('created_at', 'desc');
        if ($request->has('search')) {
            $search = $request->search;
            $products = $products->where('name', 'like', '%' . $search . '%');
        }
        $products = $products->paginate(10);
        return view('frontend.user.seller.products', compact('products', 'search'));
    }

    public function home_settings(Request $request)
    {
        return view('home_settings.index');
    }

    public function top_10_settings(Request $request)
    {
        foreach (Category::all() as $key => $category) {
            if (is_array($request->top_categories) && in_array($category->id, $request->top_categories)) {
                $category->top = 1;
                $category->save();
            } else {
                $category->top = 0;
                $category->save();
            }
        }

        foreach (Brand::all() as $key => $brand) {
            if (is_array($request->top_brands) && in_array($brand->id, $request->top_brands)) {
                $brand->top = 1;
                $brand->save();
            } else {
                $brand->top = 0;
                $brand->save();
            }
        }

        flash(translate('Top 10 categories and brands have been updated successfully'))->success();
        return redirect()->route('home_settings.index');
    }

    public function variant_price(Request $request)
    {
        $product = Product::find($request->id);
        $str = '';
        $quantity = 0;
        $tax = 0;
        $max_limit = 0;

        if ($request->has('color')) {
            $str = $request['color'];
        }

        if (json_decode($product->choice_options) != null) {
            foreach (json_decode($product->choice_options) as $key => $choice) {
                if ($str != null) {
                    $str .= '-' . str_replace(' ', '', $request['attribute_id_' . $choice->attribute_id]);
                } else {
                    $str .= str_replace(' ', '', $request['attribute_id_' . $choice->attribute_id]);
                }
            }
        }

        $product_stock = $product->stocks->where('variant', $str)->first();
        $price = $product_stock->price;
        $sku = $product_stock->sku;

        if ($product->wholesale_product) {
            $wholesalePrice = $product_stock->wholesalePrices->where('min_qty', '<=', $request->quantity)->where('max_qty', '>=', $request->quantity)->first();
            if ($wholesalePrice) {
                $price = $wholesalePrice->price;
            }
        }

        $quantity = $product_stock->qty;
        $max_limit = $product_stock->qty;

        if ($quantity >= 1 && $product->min_qty <= $quantity) {
            $in_stock = 1;
        } else {
            $in_stock = 0;
        }

        //Product Stock Visibility
        if ($product->stock_visibility_state == 'text') {
            if ($quantity >= 1 && $product->min_qty < $quantity) {
                $quantity = translate('In Stock');
            } else {
                $quantity = translate('Out Of Stock');
            }
        }

        //discount calculation
        $discount_applicable = false;

        if ($product->discount_start_date == null) {
            $discount_applicable = true;
        } elseif (
            strtotime(date('d-m-Y H:i:s')) >= $product->discount_start_date &&
            strtotime(date('d-m-Y H:i:s')) <= $product->discount_end_date
        ) {
            $discount_applicable = true;
        }

        if ($discount_applicable) {
            if ($product->discount_type == 'percent') {
                $price -= ($price * $product->discount) / 100;
            } elseif ($product->discount_type == 'amount') {
                $price -= $product->discount;
            }
        }

        // taxes
        foreach ($product->taxes as $product_tax) {
            if ($product_tax->tax_type == 'percent') {
                $tax += ($price * $product_tax->tax) / 100;
            } elseif ($product_tax->tax_type == 'amount') {
                $tax += $product_tax->tax;
            }
        }

        $price += $tax;

        return array(
            'price' => single_price($price * $request->quantity),
            'total_price' => $price * $request->quantity,
            'sku' => $sku,
            'quantity' => $quantity,
            'digital' => $product->digital,
            'variation' => $str,
            'max_limit' => $max_limit,
            'in_stock' => $in_stock
        );
    }

    public function sellerpolicy()
    {
        return view("frontend.policies.sellerpolicy");
    }

    public function returnpolicy()
    {
        return view("frontend.policies.returnpolicy");
    }

    public function supportpolicy()
    {
        return view("frontend.policies.supportpolicy");
    }

    public function terms()
    {
        return view("frontend.policies.terms");
    }

    public function privacypolicy()
    {
        return view("frontend.policies.privacypolicy");
    }

    public function get_pick_up_points(Request $request)
    {
        $pick_up_points = PickupPoint::all();
        return view('frontend.partials.pick_up_points', compact('pick_up_points'));
    }

    public function get_category_items(Request $request)
    {
        $category = Category::findOrFail($request->id);
        return view('frontend.partials.category_elements', compact('category'));
    }

    public function premium_package_index()
    {
        $customer_packages = CustomerPackage::all();
        return view('frontend.user.customer_packages_lists', compact('customer_packages'));
    }

    public function seller_digital_product_list(Request $request)
    {
        $products = Product::where('user_id', Auth::user()->id)->where('digital', 1)->orderBy('created_at', 'desc')->paginate(10);
        return view('frontend.user.seller.digitalproducts.products', compact('products'));
    }
    public function show_digital_product_upload_form(Request $request)
    {
        $seller = Auth::user()->seller;
        if (addon_is_activated('seller_subscription')) {
            if ($seller->seller_package && $seller->seller_package->product_upload_limit > $seller->user->products()->count()) {
                $categories = Category::where('digital', 1)->get();
                return view('frontend.user.seller.digitalproducts.product_upload', compact('categories'));
            } else {
                flash(translate('Upload limit has been reached. Please upgrade your package.'))->warning();
                return back();
            }
        }
        $categories = Category::where('digital', 1)->get();
        return view('frontend.user.seller.digitalproducts.product_upload', compact('categories'));
    }

    public function show_digital_product_edit_form(Request $request, $id)
    {
        $categories = Category::where('digital', 1)->get();
        $lang = $request->lang;
        $product = Product::find($id);
        return view('frontend.user.seller.digitalproducts.product_edit', compact('categories', 'product', 'lang'));
    }

    // Ajax call
    public function new_verify(Request $request)
    {
        $email = $request->email;
        if (isUnique($email) == '0') {
            $response['status'] = 2;
            $response['message'] = 'Email already exists!';
            return json_encode($response);
        }

        $response = $this->send_email_change_verification_mail($request, $email);
        return json_encode($response);
    }


    // Form request
    public function update_email(Request $request)
    {
        $email = $request->email;
        if (isUnique($email)) {
            $this->send_email_change_verification_mail($request, $email);
            flash(translate('A verification mail has been sent to the mail you provided us with.'))->success();
            return back();
        }

        // <!-- flash(translate('Email already exists!'))->warning(); -->
        flash('alert-warning', 'Email already exists!');
        return back();
    }

    public function send_email_change_verification_mail($request, $email)
    {
        $response['status'] = 0;
        $response['message'] = 'Unknown';

        $verification_code = Str::random(32);

        $array['subject'] = 'Email Verification';
        $array['from'] = env('MAIL_FROM_ADDRESS');
        $array['content'] = 'Verify your account';
        $array['link'] = route('email_change.callback') . '?new_email_verificiation_code=' . $verification_code . '&email=' . $email;
        $array['sender'] = Auth::user()->name;
        $array['details'] = "Email Second";

        $user = Auth::user();
        $user->new_email_verificiation_code = $verification_code;
        $user->save();

        try {
            Mail::to($email)->queue(new SecondEmailVerifyMailManager($array));

            $response['status'] = 1;
            $response['message'] = translate("Your verification mail has been Sent to your email.");
        } catch (\Exception $e) {
            // return $e->getMessage();
            $response['status'] = 0;
            $response['message'] = $e->getMessage();
        }

        return $response;
    }

    public function email_change_callback(Request $request)
    {
        if ($request->has('new_email_verificiation_code') && $request->has('email')) {
            $verification_code_of_url_param =  $request->input('new_email_verificiation_code');
            $user = User::where('new_email_verificiation_code', $verification_code_of_url_param)->first();

            if ($user != null) {

                $user->email = $request->input('email');
                $user->new_email_verificiation_code = null;
                $user->save();

                auth()->login($user, true);

                // <!-- flash(translate('Email Changed successfully'))->success(); -->
                flash('alert-success', 'Email already exists!');
                return redirect()->route('dashboard');
            }
        }

        // <!-- flash(translate('Email was not verified. Please resend your mail!'))->error(); -->
        // flash('alert-danger', 'Email was not verified. Please resend your mail!');
        return redirect()->route('dashboard')->with(session()->flash('alert-danger', 'Email was not verified. Please resend your mail.'));
        // return redirect()->route('dashboard');
    }

    public function reset_password_with_code(Request $request)
    {
        if (($user = User::where('email', $request->email)->where('verification_code', $request->code)->first()) != null) {
            if ($request->password == $request->password_confirmation) {
                $user->password = Hash::make($request->password);
                $user->email_verified_at = date('Y-m-d h:m:s');
                $user->save();
                event(new PasswordReset($user));
                auth()->login($user, true);

                // flash(translate('Password updated successfully'))->success();
                flash('alert-danger', 'Password updated successfully!');


                if (auth()->user()->user_type == 'admin' || auth()->user()->user_type == 'staff') {
                    return redirect()->route('admin.dashboard');
                }
                return redirect()->route('home');
            } else {
                return redirect()->route('password.request')->with(session()->flash('alert-danger', 'Password and confirm password did not match.'));
            }
        } else {
            // <!-- flash("Verification code mismatch")->error(); -->
            return redirect()->route('password.request')->with(session()->flash('alert-danger', 'Verification code mismatch.'));
        }
    }


    public function all_flash_deals()
    {
        $today = strtotime(date('Y-m-d H:i:s'));

        $data['all_flash_deals'] = FlashDeal::where('status', 1)
            ->where('start_date', "<=", $today)
            ->where('end_date', ">", $today)
            ->orderBy('created_at', 'desc')
            ->get();

        return view("frontend.flash_deal.all_flash_deal_list", $data);
    }

    public function all_seller(Request $request)
    {
        $shops = Shop::whereIn('user_id', verified_sellers_id())
            ->paginate(15);

        return view('frontend.shop_listing', compact('shops'));
    }

    public function all_coupons(Request $request)
    {
        $coupons = Coupon::where('start_date', '<=', strtotime(date('d-m-Y')))->where('end_date', '>=', strtotime(date('d-m-Y')))->paginate(15);
        return view('frontend.coupons', compact('coupons'));
    }

    public function inhouse_products(Request $request)
    {
        $products = filter_products(Product::where('added_by', 'admin'))->with('taxes')->paginate(12)->appends(request()->query());
        return view('frontend.inhouse_products', compact('products'));
    }

    public function productRequestQuote(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required|min:11|numeric',
            'price_range' => 'required|numeric',
            'message' => 'required',
            'category' => 'required',
        ]);
        //    dd($request->name);
        //    die;
        $add_product_request_enquiry = ProductQuoteEnquiry::create([
            "name" => "$request->name",
            "email" => "$request->email",
            "phone" => "$request->phone",
            "price_range" => "$request->price_range",
            "message" => "$request->message",
            "category" => "$request->category",
            "type" => "$request->type",
        ]);
        if ($add_product_request_enquiry) {
            return redirect()->back()->with(session()->flash('alert-success', 'Thank you for enquiry with us!.'));
        }
        return redirect()->back()->with(session()->flash('alert-danger', 'Something went wrong. Please try again.'));
    }
    public function insertCallRequest(Request $request)
    {
        $add_product_request_enquiry = CallRequest::create([
            "name" => "$request->name",
            "email" => "$request->email",
            "mobile" => "$request->mobile",

        ]);
        response()->json(['status' => "Call Request sent successfully"]);
    }

    public function getcatWiseBrands()
    {
        $output = '

        <p>hi Rana sharma</p>

        ';
        return $output;
    }
    public function verifyEmail()
    {

        return view('frontend.emailverify');
    }
    public function verifyOtpOfEmail(Request $request)
    {
        if (session()->get('user_email') != null) {
            $this->validate($request, [
                'otp' => 'required|min:6|max:6',
                'email' => 'required',
            ]);
            $email_in_session = session()->get('user_email');

            $getstoredotp = User::where('email', $email_in_session)->first();
            $getstoredotp = $getstoredotp->verification_code;
            // dd($getstoredotp->verification_code);die;
            $email = $request->email;
            $otp = $request->otp;
            $email_in_session = session()->get('user_email');
            $otp_in_session = session()->get('ver_code');
            if ($email == $email_in_session && $otp == $otp_in_session && $otp == $getstoredotp) {
                $otp_verification = User::where('email', $email_in_session)
                    ->update([
                        'email_verified_at' => date('Y-m-d H:m:s'),
                        'is_verified' => 1,

                    ]);
                session()->forget(['user_email', 'ver_code']);
                if ($otp_verification) {
                    return redirect('users/login')->with(session()->flash('alert-success', 'Thank your! Your OTP is Verified.'));
                }
                return redirect()->back()->with(session()->flash('alert-danger', 'Something went wrong.'));
            } else {
                return redirect()->back()->with(session()->flash('alert-danger', 'That is not the OTP that we have sent. Please check and try again.'));
            }
        } else {
            return redirect('users/login')->back()->with(session()->flash('alert-success', 'Thank your! Your OTP is Verified.'));
        }
    }

    public function checkLogin(Request $request)
    {
        $request->validate([
            'login_password' => 'required',
        ]);
        $getPassword = User::where('id', Auth::user()->id)->first();
        $getPass = $getPassword->password;

        if (!Hash::check($request->login_password, $getPass)) {
            return response()->json(['success' => false, 'message' => 'Login Fail, pls check password']);
        } else {
            // return response()->json(['status'=>'2']);
            return response()->json(['success' => true, 'message' => 'Login Success!']);
        }
    }

    public function moreSeller()
    {
        return view('frontend.more_seller');
    }

    public function relatedProduct($id)
    {

        $product = Product::find($id);
        $related_category_products = array();
        if ($product->category_id != null) {
            $related_category_products =  Product::where(['category_id' => $product->category_id, 'brand_id' => $product->brand_id])->orderBy('unit_price', 'asc')->get();
        }


        return view('frontend.more_seller', ['products' => $related_category_products, 'pro' => $product]);
    }
}
