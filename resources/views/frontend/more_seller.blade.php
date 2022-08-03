@extends('frontend.master')

@section('content')

<!-- form end here -->
<section class="pageTitle product-detail_banner" style="background-image:url(https://orrish.org/ebb_dev/public/assets_web/img/orderbanner.png)">
   <div class="container"> </div>
</section>
    <section class="bannerslid mb-5 pt-5 animated animate__fadeInUp wow">
    <div class="container">
        <div class="table-crack-border">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table aiz-table mb-0 footable footable-1 breakpoint-lg brdrnone">
  <tr>
    <td colspan="2" class="allsettertxt">More Sellers Product</th>
    <td colspan="2"><h5 class="fr"><img src="{{ static_asset('assets_web/img/sellerimg.jpg') }}" class="sellerproImg"><span class="sellerproTitle">{{$pro->name}}<br /><span class="starrating">4.1 <i class="fa-solid fa-star"></i></span><span class="sellerprocount">(340)</span></span></h5> </th>
  </tr>
  <tr class="footable-header">
    <th>Product Name</th>
    <th class="thwidth">Price</th>
    <th>Delivery</th>
    <th>&nbsp;</th>
  </tr>

  @foreach ($products as $item)


  <tr>
    <td><span><strong>{{$item->name}}</strong> </span><br/>
     <ul>
        @if ($item->cash_on_delivery == 1)
        <li>Cash On Delivery available</li>
        @endif

<li>7 Days Replacement Policy</li>
</ul></td>
    <td><strong class="pricestrong">₹ {{$item->unit_price -$item->discount  }}</strong> @if ($item->discount)
        <strike>₹ {{$item->unit_price }}</strike> <span class="starrating">{{$item->discount}} Off</span><br />
    @endif
   <ul>
    <li>10% off on SBI Credit Card, up to ₹750. On orders of ₹5000 and above</li>
<li class="collapseli">10% off on SBI Credit Card EMI Transactions, up to ₹1500. On orders of ₹5000 and above</li>
<li class="collapseli">5% Cashback on Flipkart Axis Bank Card</li>
<li class="collapseli">Get extra ₹1200 off (price inclusive of discount)</li>
<li class="collapseli">Get Google Nest hub at just ₹4999</li>
<li class="collapseli">Google Nest mini- attach 1999</li>
<li class="collapseli">Sign up for Flipkart Pay Later and get Flipkart Gift Card worth up to ₹500*</li>
<span class="showoffer">6 more offers</span>
<span class="hideoffer">Hide more offers</span>
</ul>

    </td>
    <td><span class="deltxt">Usually delivered in 3 days Enter pincode for exact delivery dates/charges</span></td>
    <td><button onclick="addToCart()" class="addtocartbut addtocartn"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i> Add to Cart</button> <button onclick="addToCart()" class="bulk-order-buttons bulkcartn"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i> Buy Now</button></td>
  </tr>
  @endforeach


</table>
</div>
		</div>
