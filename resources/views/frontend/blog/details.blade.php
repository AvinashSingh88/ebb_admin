@extends('frontend.master')

@section('meta_title'){{ $blog->meta_title }}@stop

@section('meta_description'){{ $blog->meta_description }}@stop

@section('meta_keywords'){{ $blog->meta_keywords }}@stop

@section('meta')
    <!-- Schema.org markup for Google+ -->
    <meta itemprop="name" content="{{ $blog->meta_title }}">
    <meta itemprop="description" content="{{ $blog->meta_description }}">
    <meta itemprop="image" content="{{ uploaded_asset($blog->meta_img) }}">

    <!-- Twitter Card data -->
    <meta name="twitter:card" content="summary">
    <meta name="twitter:site" content="@publisher_handle">
    <meta name="twitter:title" content="{{ $blog->meta_title }}">
    <meta name="twitter:description" content="{{ $blog->meta_description }}">
    <meta name="twitter:creator" content="@author_handle">
    <meta name="twitter:image" content="{{ uploaded_asset($blog->meta_img) }}">

    <!-- Open Graph data -->
    <meta property="og:title" content="{{ $blog->meta_title }}" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="{{ route('blog.details', $blog->slug) }}" />
    <meta property="og:image" content="{{ uploaded_asset($blog->meta_img) }}" />
    <meta property="og:description" content="{{ $blog->meta_description }}" />
    <meta property="og:site_name" content="{{ env('APP_NAME') }}" />
	@if (get_setting('facebook_comment') == 1)
        <div id="fb-root"></div>
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v9.0&appId={{ env('FACEBOOK_APP_ID') }}&autoLogAppEvents=1" nonce="ji6tXwgZ"></script>
    @endif
@endsection

@section('content')
<section class="pageTitle" style="background-image:url({{static_asset('assets_web/img/banner/blog-banner-designs.png')}});    height: 246px;">
         <div class="container">  </div>
      </section>
      <!--top banner end -->
      <div class="service-pros animated animate__fadeInUp wow product-categorys ulines-dps-para ">
         <div class="container">
            <div class="row">
               <div class="col-md-12 breadmcrumsize">
                  <nav aria-label="breadcrumb">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                        <li class="breadcrumb-item"><a href="blog.php">Blog</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Blog1  </li>
                     </ol>
                  </nav>
               </div>
            </div>
         </div>
         <div class="container details-product product-catpro ">
            <div class="row">
               <div class="col-xl-12 col-wd-9gdot5  mb-5">
                  <div class="main-container fl-wrap fix-container-init blog-pages">
				  	<div class="blog-detail-banners mb-3">
										<img src="{{ uploaded_asset($blog->banner) }}" alt="">
										</div>
				      <div class="section-title">
                        <div class="deals" class="mb-1">
                           <h3 class="mb-0"> Blog Details</h3>
                        </div>
                        <div class="deals">
                           <hr>
                        </div>
						<p class="mb-3">{{$blog->title}}</p>
                     </div>
					   <div class="single-post-header fl-wrap mt-3">
                                            
                                            <div class="author-link float-left">
												{{--<a href="javascript:void(0);">
													<img src="img/auth3.jpg" alt="" class="mx-2"> 
													<span>By Mark Rose</span>
												</a>--}}
											</div>
                                            <span class="post-date float-left"><i class="fa fa-clock"></i> Updated {{date('d-M-Y',strtotime($blog->created_at))}}</span>
												{{--<ul class="post-opt float-right"> 
                                                <li><i class="fa fa-comments"></i> 4 </li>
                                                <li><i class="fa fa-eye"></i>  980 </li>
                                            </ul>--}}
                                        </div>
                
									
										<div class="single-post-content_text">
                                                {!! $blog->description !!}
												
												
												
												
                                                     <h4 class="mb_head my-2 mt-3 mb-3">Comments</h4>
										  @if (get_setting('facebook_comment') == 1)
                    <div>
                        <div class="fb-comments" data-href="{{ route("blog",$blog->slug) }}" data-width="" data-numposts="5"></div>
                    </div>
                    @endif
						
										  </div>
										    
                  </div>
               
               </div>
            </div>
            <!-- End Brand Carousel -->
         </div>
      </div>
@endsection