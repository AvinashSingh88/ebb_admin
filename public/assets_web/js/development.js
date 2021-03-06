
        $(".request-call-back").click(function(e) {
            e.preventDefault();
            // var data = $(this).serialize();
            var name = $('#names').val();
            var mobile = $("input[name=mobile]").val();
            var email = $('#emails').val();

            var url = '{{ url('insertCallRequest') }}';
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $.ajax({
                url: url,
                method: 'POST',
                data: {
                    name: name,
                    mobile: mobile,
                    email: email,
                },
                success: function(response) {
                    toastr.info(response.message);
                    $('#names').val('');
                    $("input[name=mobile]").val('');
                    $('#emails').val('');
                },
                error: function(error) {
                    console.log(error)
                }

            });
        });

        $(document).ready(function() {
            $.ajax({
                type: "GET",
                url: "{{url('getcatWiseBrands')}}",
                success: function(response) {
                    $('#catewisebrands').html(response);
                }
            });

        });




        function showAddToCartModals(showAddToCartModals) {
            $('#addToCart').modal('show');
            let id = $(showAddToCartModals).attr('id');
            $('#userid').html(id);
            $.ajax({
                url: '{{route('cart.showCartModal')}}',
                type: 'post',
                data: 'id=' + id + '&_token={{csrf_token()}}',
                success: function(respons) {
                    // $('#concontractid').html(JSON.parse(respons)[0].contractorID);
                    $('#addToCart-modal-body').html(respons);
                    // console.log(JSON.parse(respons)[0].contractorID);
                }
            })
        }


        function showCategoryWiseBrand(showCategoryWiseBrand) {

            let address_id = $(showCategoryWiseBrand).attr('id');
            let datas = "";
            $.ajax({
                url: '{{url('getcategorybrands')}}',
                type: 'post',
                data: 'address_id=' + address_id + '&_token={{csrf_token()}}',
                success: function(respons) {

                    if (respons == '') {

                    } else {

                        //  console.log(respons);
                        $.each(respons, function(i) {
                            datas += '<div class="item"><div class="product-box"><div class="box-elech"><img src="' + respons[i].brand_id + '" alt=""></div><div class="pro_img_mens"><img src="' + respons[i].image + '" alt=""></div><div class="discrptions"><h5>  ' + respons[i].title + '</h5><h6 id="title"></h6></div><div class="discrptions_button"><h5><a href="product-detail.php">View Detail-cat-' + respons[i].category_id + '</a></h5></div></div></div>';

                            console.log(datas);


                        });

                    }
                    $("#cat-list .catbrandslistss").html(datas);
                    $('#onloadactivecatbrand').addClass('d-none');
                }
            })
        }



        $(document).ready(function() {
            getVariantPrice();

        });

        $('#option-choice-form input').on('change', function() {
            getVariantPrice();

        });

        function getVariantPrice() {
            if ($('#option-choice-form input[name=quantity]').val() > 0 && checkAddToCartValidity()) {
                $.ajax({
                    type: "POST",
                    url: '{{ route('products.variant_price') }}',
                    data: $('#option-choice-form').serializeArray(),
                    success: function(data) {
                        console.log(data);
                        $('.product-gallery-thumb .carousel-box').each(function(i) {
                            if ($(this).data('variation') && data.variation == $(this).data('variation')) {
                                $('.product-gallery-thumb').slick('slickGoTo', i);
                            }
                        })

                        $('#option-choice-form #chosen_price_div').removeClass('d-none');
                        $('#option-choice-form #chosen_price_div #chosen_price').html(data.price);
                        //    $('#option-choice-form #chosen_price_div').removeClass('d-none');
                        //    $('#option-choice-form #chosen_price_div #chosen_price').html(data.price);
                        $('#show_total_price').removeClass('d-none');
                        $('#total_price').html(data.price);
                        $('#total_product_price').val(data.total_price);
                        $('#available-quantity').html(data.quantity);
                        $('.input-number').prop('max', data.max_limit);
                        if (parseInt(data.in_stock) == 0 && data.digital == 0) {
                            $('.bulk-order-buttons').addClass('d-none');
                            $('.addtocartbut').addClass('d-none');
                            $('.out-of-stock').removeClass('d-none');
                        } else {
                            $('.bulk-order-buttons').removeClass('d-none');
                            $('.addtocartbut').removeClass('d-none');
                            $('.out-of-stock').addClass('d-none');
                        }
                    }
                });
            }
        }

        function checkAddToCartValidity() {
            var names = {};
            $('#option-choice-form input:radio').each(function() { // find unique names
                names[$(this).attr('name')] = true;
            });
            var count = 0;
            $.each(names, function() { // then count them
                count++;
            });

            if ($('#option-choice-form input:radio:checked').length == count) {
                return true;
            }

            return false;
        }

        function updateNavCart(view, count) {
            $('.cart-count').html(count);
            $('#cart_items').html(view);
        }

        function addToCart() {
            if (checkAddToCartValidity()) {
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $.ajax({
                    type: "POST",
                    url: '{{ route('cart.addToCart') }}',
                    data: $('#option-choice-form').serializeArray(),
                    success: function(data) {

                        // $('#addToCart-modal-body').html(null);
                        // $('.c-preloader').hide();
                        // $('#modal-size').removeClass('modal-lg');
                        // $('#addToCart-modal-body').html(data.modal_view);
                        // AIZ.extra.plusMinus();
                        toastr.info(data.status);
                        updateNavCart(data.nav_cart_view, data.cart_count);
                    }
                });
            } else {
                AIZ.plugins.notify('warning', "{{ translate('Please choose all the options') }}");
            }
        }

        $(document).ready(function() {
            loadcart();

            function loadcart() {
                $.ajax({
                    method: "GET",
                    url: '{{url('load-cart-data')}}',
                    success: function(response) {
                        //   console.log(response.count);  
                        $('.cart_count').html('');
                        $('.cart_count').html(response.count);
                        $('.cart_amount').html('');
                        $('.cart_amount').html(response.cart_amount);
                    }
                });
            }

            $('.delete-cart-item').click(function(e) {
                e.preventDefault();
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                var id = $(this).closest('.product_data').find('.prod_id').val();

                $.ajax({
                    method: "POST",
                    url: '{{ route('cart.removeFromCart') }}',
                    data: {
                        'id': id,
                    },
                    success: function(data) {
                        // toastr.info("Removed from Cart!");
                        updateNavCart(data.nav_cart_view, data.cart_count);
                        $('#cart-summary').html(data.cart_view);
                    }
                });
            });
        });
		
		$(document).on('click', '.button-plus', function(e) {
			e.preventDefault();
				$.ajaxSetup({
					headers: {
						'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
					}
				});
			var quantity = $(this).closest('.product_data').find('.qty').val();			
			var id = $(this).closest('.product_data').find('.prod_id').val();			
			 $.ajax({
				url: '{{route('cart.updateQuantity')}}',
				method: "POST",
				data: {
                       'quantity':quantity,
                       'id':id,
                    },
				success: function (response) {
					// alert(response.status);
					 // toastr.info(response.status);
					 updateNavCart(response.nav_cart_view,response.cart_count);
					 $('#cart-summary').html(response.cart_view);
                     loadcart();
				}
			});
		});
		
		$(document).on('click', '.add_cart_button_plus', function(e) {
			e.preventDefault();
				$.ajaxSetup({
					headers: {
						'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
					}
				});
			var quantity = $(this).closest('.product_data').find('.input-number').val();			
			var id = $(this).closest('.product_data').find('.prod_id').val();
				
			 $.ajax({
				url: '{{route('cart.updateCartPlus')}}',
				method: "POST",
				data: {
                       'quantity':quantity,
                       'id':id,
                    },
					
				success: function (response) {
					toastr.info(response.status);
					 updateNavCart(response.nav_cart_view,response.cart_count);
					 $('#cart-summary').html(response.cart_view);
                     loadcart();
				}
			});
		});

            $(document).on('click', '.button-plus', function(e) {
                e.preventDefault();
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                var quantity = $(this).closest('.product_data').find('.qty').val();
                var id = $(this).closest('.product_data').find('.prod_id').val();
                $.ajax({
                    url: '{{route('cart.updateQuantity')}}',
                    method: "POST",
                    data: {
                        'quantity': quantity,
                        'id': id,
                    },
                    success: function(response) {
                        // alert(response.status);
                        // toastr.info(response.status);
                        updateNavCart(response.nav_cart_view, response.cart_count);
                        $('#cart-summary').html(response.cart_view);
                        loadcart();
                    }
                });
            });

            $(document).on('click', '.button-minus', function(e) {
                e.preventDefault();
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                var quantity = $(this).closest('.product_data').find('.qty').val();
                var id = $(this).closest('.product_data').find('.prod_id').val();
                $.ajax({
                    url: '{{route('cart.updateQuantity')}}',
                    method: "POST",
                    data: {
                        'quantity': quantity,
                        'id': id,
                    },
                    success: function(response) {
                        // alert(response.status);
                        // toastr.info(response.status);
                        updateNavCart(response.nav_cart_view, response.cart_count);
                        $('#cart-summary').html(response.cart_view);
                        loadcart();
                    }
                });
            });






            
            if ($('#lang-change').length > 0) {
                $('#lang-change .dropdown-menu a').each(function() {
                    $(this).on('click', function(e) {
                        e.preventDefault();
                        var $this = $(this);
                        var locale = $this.data('flag');
                        $.post('{{ route('language.change') }}', {
                                _token: AIZ.data.csrf,
                                locale: locale
                            },
                            function(data) {
                                location.reload();
                            });

                    });
                });
            }

            if ($('#currency-change').length > 0) {
                $('#currency-change .dropdown-menu a').each(function() {
                    $(this).on('click', function(e) {
                        e.preventDefault();
                        var $this = $(this);
                        var currency_code = $this.data('currency');
                        $.post('{{ route('currency.change') }}', {
                                _token: AIZ.data.csrf,
                                currency_code: currency_code
                            },
                            function(data) {
                                location.reload();
                            });

                    });
                });
            }







        });

        $('#search').on('keyup', function() {
            search();
        });

        $('#search').on('focus', function() {
            search();
        });

        function search() {
            var searchKey = $('#search').val();
            if (searchKey.length > 0) {
                $('body').addClass("typed-search-box-shown");

                $('.typed-search-box').removeClass('d-none');
                $('.search-preloader').removeClass('d-none');
                $.post('{{ route('search.ajax') }}', {
                        _token: AIZ.data.csrf,
                        search: searchKey
                    },
                    function(data) {
                        if (data == '0') {
                            // $('.typed-search-box').addClass('d-none');
                            $('#search-content').html(null);
                            $('.typed-search-box .search-nothing').removeClass('d-none').html('Sorry, nothing found for <strong>"' + searchKey + '"</strong>');
                            $('.search-preloader').addClass('d-none');

                        } else {
                            $('.typed-search-box .search-nothing').addClass('d-none').html(null);
                            $('#search-content').html(data);
                            $('.search-preloader').addClass('d-none');
                        }
                    });
            } else {
                $('.typed-search-box').addClass('d-none');
                $('body').removeClass("typed-search-box-shown");
            }
        }
    