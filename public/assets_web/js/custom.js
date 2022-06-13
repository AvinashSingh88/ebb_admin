$(function() {
    "use strict";

    function home_func() {
        var duration = 0.4;
        var ys_position = 30;
        var yd_position = 0;
        var watermark = $(".memor_para .watermark");
        var titlesmall = $(".memor_para .t_small");
        var title = $(".memor_para .mb-5.title");
        var readmore = $(".memor_para .Read_more");
        setTimeout(function() {
            $(".memor_para .watermark").css("display", "flex");
            $(".memor_para .t_small").css("display", "block");
            $(".memor_para .mb-5.title, .memor_para .Read_more").show();
            TweenMax.fromTo(watermark, duration, {
                opacity: 0,
                y: ys_position
            }, {
                opacity: 1,
                y: yd_position,
                delay: 0.5,
                ease: Linear.easeOut
            });
            TweenMax.fromTo(titlesmall, duration, {
                opacity: 0,
                y: ys_position
            }, {
                opacity: 1,
                y: yd_position,
                delay: 0.9,
                ease: Linear.easeOut
            });
            TweenMax.staggerFromTo(title, duration, {
                opacity: 0,
                y: ys_position
            }, {
                opacity: 1,
                y: yd_position,
                delay: 1.1,
                ease: Linear.easeOut
            }, 0.2);
            TweenMax.fromTo(readmore, duration, {
                opacity: 0,
                y: ys_position
            }, {
                opacity: 1,
                y: yd_position,
                delay: 1.4,
                ease: Linear.easeOut
            })
        }, 500)
    }

    function work_func() {
        var duration = 0.4;
        var ys_position = 30;
        var yd_position = 0;
        var work_title = $(".work-introduction .title-color");
        var w_title = $(".work-introduction .mb-5.title");
        var readmore = $(".work-introduction .Read_more");
        var work_list = $(".work-introduction .services_layout ul li");
        setTimeout(function() {
            $(".work-introduction .title-color, .work-introduction .mb-5.title, .work-introduction .Read_more").show();
            $(".work-introduction .services_layout ul li").css("display", "inline-block");
            TweenMax.fromTo(work_title, duration, {
                opacity: 0,
                y: ys_position
            }, {
                opacity: 1,
                y: yd_position,
                delay: 0.5,
                ease: Linear.easeOut
            });
            TweenMax.staggerFromTo(w_title, duration, {
                opacity: 0,
                y: ys_position
            }, {
                opacity: 1,
                y: yd_position,
                delay: 0.9,
                ease: Linear.easeOut
            }, 0.2);
            TweenMax.fromTo(readmore, duration, {
                opacity: 0,
                y: ys_position
            }, {
                opacity: 1,
                y: yd_position,
                delay: 1.1,
                ease: Linear.easeOut
            });
            TweenMax.staggerFromTo(work_list, duration, {
                opacity: 0,
                x: "-=100"
            }, {
                opacity: 1,
                x: 0,
                delay: 0.9,
                ease: Linear.easeOut
            }, 0.4)
        }, 500)
    }

    function service_func() {
        var duration = 0.4;
        var ys_position = 30;
        var yd_position = 0;
        var service_tsm = $(".service-introduction .service_tsm");
        var s_title = $(".service-introduction .mb-5.title");
        var service_list = $(".service-introduction .services_layout ul li");
        setTimeout(function() {
            $(".service-introduction .service_tsm, .service-introduction .mb-5.title").show();
            $(".service-introduction .services_layout ul li").css("display", "inline-block");
            TweenMax.fromTo(service_tsm, duration, {
                opacity: 0,
                y: ys_position
            }, {
                opacity: 1,
                y: yd_position,
                delay: 0.5,
                ease: Linear.easeOut
            });
            TweenMax.staggerFromTo(s_title, duration, {
                opacity: 0,
                y: ys_position
            }, {
                opacity: 1,
                y: yd_position,
                delay: 0.9,
                ease: Linear.easeOut
            }, 0.2);
            TweenMax.staggerFromTo(service_list, duration, {
                opacity: 0,
                x: "-=100"
            }, {
                opacity: 1,
                x: 0,
                delay: 1.1,
                ease: Linear.easeOut
            }, 0.4)
        }, 500)
    }
    $(window).on("load", function() {
        $("#preloader").fadeOut(600);
        $(".preloader-bg").delay(400).fadeOut(600);
        setTimeout(function() {
            $(".fadeIn-element").delay(600).css({
                display: "none"
            }).fadeIn(800)
        }, 0)
    });


    $("#memorres").fullpage({
        slidesNavigation: !0,
        autoScrolling: !0,
        onSlideLeave: function(anchorLink, index, slideIndex, direction, nextSlideIndex, nextSlide) {
            if (direction === 'right' && nextSlideIndex === 1 || direction === 'left' && nextSlideIndex === 1) {
                work_func();
                $(".Homepage_About .about_tsm, .Homepage_About .large_intro_text, .Homepage_About .mb-5.title, .Homepage_About .Read_more").hide()
            } else if (direction === 'right' && nextSlideIndex === 2) {
                service_func();
                $(".Homepage_About .about_tsm, .Homepage_About .large_intro_text, .Homepage_About .mb-5.title, .Homepage_About .Read_more").hide()
            } else if (direction === 'left' && nextSlideIndex === 0) {
                home_func();
                $(".Homepage_About .about_tsm, .Homepage_About .large_intro_text, .Homepage_About .mb-5.title, .Homepage_About .Read_more").hide()
            }
        },

    });

    function showNavIndex() {
        var slideLength = jQuery('#memorres .fp-slidesNav > ul > li').length;
        jQuery('.fp-slidesNav > ul > li > a > span').each(function(index) {
            jQuery(this).attr('data-slide', (index + 1));
            if (slideLength <= 5) {
                if ((index + 1) === 1) {
                    jQuery(this).append('<label class="indexactive">0' + (index + 1) + '</label>')
                } else {
                    jQuery(this).append('<label>0' + (index + 1) + '</label>')
                }
            }
        })
    }
    showNavIndex();

    function animateIndex() {
        var target = jQuery('.fp-slidesNav > ul > li').find('a.active');
        jQuery('.fp-slidesNav > ul > li > a > span > label').removeClass('indexactive');
        jQuery(target).find('span > label').addClass('indexactive')
    }
    $('#memorres').bind('DOMMouseScroll', function(e) {
        if (e.originalEvent.detail > 0) {
            $.fn.fullpage.moveSlideRight()
        } else {
            $.fn.fullpage.moveSlideLeft()
        }
        return !1
    });

    $(".popup-photo").magnificPopup({
        type: "image",
        gallery: {
            enabled: !0,
            tPrev: "",
            tNext: "",
            tCounter: "%curr% / %total%"
        },
        removalDelay: 300,
        mainClass: "mfp-fade"
    });

    if (navigator.userAgent.match(/Android/i) || navigator.userAgent.match(/webOS/i) || navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i) || navigator.userAgent.match(/iPod/i) || navigator.userAgent.match(/BlackBerry/) || navigator.userAgent.match(/Windows Phone/i) || navigator.userAgent.match(/ZuneWP7/i)) {
        $('#fullpage .section').css('min-height', 'auto')
    }
});

// custom select js start here


var x, i, j, l, ll, selElmnt, a, b, c;

x = document.getElementsByClassName("custom-select");
l = x.length;
for (i = 0; i < l; i++) {
    selElmnt = x[i].getElementsByTagName("select")[0];
    ll = selElmnt.length;

    a = document.createElement("DIV");
    a.setAttribute("class", "select-selected");
    a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
    x[i].appendChild(a);

    b = document.createElement("DIV");
    b.setAttribute("class", "select-items select-hide");
    for (j = 1; j < ll; j++) {

        c = document.createElement("DIV");
        c.innerHTML = selElmnt.options[j].innerHTML;
        c.addEventListener("click", function(e) {

            var y, i, k, s, h, sl, yl;
            s = this.parentNode.parentNode.getElementsByTagName("select")[0];
            sl = s.length;
            h = this.parentNode.previousSibling;
            for (i = 0; i < sl; i++) {
                if (s.options[i].innerHTML == this.innerHTML) {
                    s.selectedIndex = i;
                    h.innerHTML = this.innerHTML;
                    y = this.parentNode.getElementsByClassName("same-as-selected");
                    yl = y.length;
                    for (k = 0; k < yl; k++) {
                        y[k].removeAttribute("class");
                    }
                    this.setAttribute("class", "same-as-selected");
                    break;
                }
            }
            h.click();
        });
        b.appendChild(c);
    }
    x[i].appendChild(b);
    a.addEventListener("click", function(e) {

        e.stopPropagation();
        closeAllSelect(this);
        this.nextSibling.classList.toggle("select-hide");
        this.classList.toggle("select-arrow-active");
    });
}

function closeAllSelect(elmnt) {

    var x, y, i, xl, yl, arrNo = [];
    x = document.getElementsByClassName("select-items");
    y = document.getElementsByClassName("select-selected");
    xl = x.length;
    yl = y.length;
    for (i = 0; i < yl; i++) {
        if (elmnt == y[i]) {
            arrNo.push(i)
        } else {
            y[i].classList.remove("select-arrow-active");
        }
    }
    for (i = 0; i < xl; i++) {
        if (arrNo.indexOf(i)) {
            x[i].classList.add("select-hide");
        }
    }
}

document.addEventListener("click", closeAllSelect);
 
$('.cart_buttons1').on('click', function() {
    $('.cart_buttons1').removeClass('active');
    $('.cart-add1').addClass('active');
});
$('.cart_icons1').on('click', function() {
    $('.cart-add1').removeClass('active');
    $('.cart_buttons1').addClass('active');
});
//
$('.cart_buttons2').on('click', function() {
    $('.cart_buttons2').removeClass('active');
    $('.cart-add2').addClass('active');
});
$('.cart_icons2').on('click', function() {
    $('.cart-add2').removeClass('active');
    $('.cart_buttons2').addClass('active');
});
//
$('.cart_buttons3').on('click', function() {
    $('.cart_buttons3').removeClass('active');
    $('.cart-add3').addClass('active');
});
$('.cart_icons3').on('click', function() {
    $('.cart-add3').removeClass('active');
    $('.cart_buttons3').addClass('active');
});
//
$('.cart_buttons4').on('click', function() {
    $('.cart_buttons4').removeClass('active');
    $('.cart-add4').addClass('active');
});
$('.cart_icons4').on('click', function() {
    $('.cart-add4').removeClass('active');
    $('.cart_buttons4').addClass('active');
});
//
$('.cart_buttons5').on('click', function() {
    $('.cart_buttons5').removeClass('active');
    $('.cart-add5').addClass('active');
});
$('.cart_icons5').on('click', function() {
    $('.cart-add5').removeClass('active');
    $('.cart_buttons5').addClass('active');
});
//
$('.cart_buttons6').on('click', function() {
    $('.cart_buttons6').removeClass('active');
    $('.cart-add6').addClass('active');
});
$('.cart_icons6').on('click', function() {
    $('.cart-add6').removeClass('active');
    $('.cart_buttons6').addClass('active');
});
//
$('.cart_buttons7').on('click', function() {
    $('.cart_buttons7').removeClass('active');
    $('.cart-add7').addClass('active');
});
$('.cart_icons7').on('click', function() {
    $('.cart-add7').removeClass('active');
    $('.cart_buttons7').addClass('active');
});
//
$('.cart_buttons8').on('click', function() {
    $('.cart_buttons8').removeClass('active');
    $('.cart-add8').addClass('active');
});
$('.cart_icons8').on('click', function() {
    $('.cart-add8').removeClass('active');
    $('.cart_buttons8').addClass('active');
});
//
$('.cart_buttons9').on('click', function() {
    $('.cart_buttons9').removeClass('active');
    $('.cart-add9').addClass('active');
});
$('.cart_icons9').on('click', function() {
    $('.cart-add9').removeClass('active');
    $('.cart_buttons9').addClass('active');
});
//
$('.cart_buttons10').on('click', function() {
    $('.cart_buttons10').removeClass('active');
    $('.cart-add10').addClass('active');
});
$('.cart_icons10').on('click', function() {
    $('.cart-add10').removeClass('active');
    $('.cart_buttons10').addClass('active');
});
//
$('.cart_buttons11').on('click', function() {
    $('.cart_buttons11').removeClass('active');
    $('.cart-add11').addClass('active');
});
$('.cart_icons11').on('click', function() {
    $('.cart-add11').removeClass('active');
    $('.cart_buttons11').addClass('active');
});
//
$('.cart_buttons12').on('click', function() {
    $('.cart_buttons12').removeClass('active');
    $('.cart-add12').addClass('active');
});
$('.cart_icons12').on('click', function() {
    $('.cart-add12').removeClass('active');
    $('.cart_buttons12').addClass('active');
});
//
$('.cart_buttons13').on('click', function() {
    $('.cart_buttons13').removeClass('active');
    $('.cart-add13').addClass('active');
});
$('.cart_icons13').on('click', function() {
    $('.cart-add13').removeClass('active');
    $('.cart_buttons13').addClass('active');
});
//
$('.cart_buttons14').on('click', function() {
    $('.cart_buttons14').removeClass('active');
    $('.cart-add14').addClass('active');
});
$('.cart_icons14').on('click', function() {
    $('.cart-add14').removeClass('active');
    $('.cart_buttons14').addClass('active');
});
//
$('.cart_buttons15').on('click', function() {
    $('.cart_buttons15').removeClass('active');
    $('.cart-add15').addClass('active');
});
$('.cart_icons15').on('click', function() {
    $('.cart-add15').removeClass('active');
    $('.cart_buttons15').addClass('active');
});
//
$('.cart_buttons16').on('click', function() {
    $('.cart_buttons16').removeClass('active');
    $('.cart-add16').addClass('active');
});
$('.cart_icons16').on('click', function() {
    $('.cart-add16').removeClass('active');
    $('.cart_buttons16').addClass('active');
});
//
$('.cart_buttons17').on('click', function() {
    $('.cart_buttons17').removeClass('active');
    $('.cart-add17').addClass('active');
});
$('.cart_icons17').on('click', function() {
    $('.cart-add17').removeClass('active');
    $('.cart_buttons17').addClass('active');
});
//
$('.cart_buttons18').on('click', function() {
    $('.cart_buttons18').removeClass('active');
    $('.cart-add18').addClass('active');
});
$('.cart_icons18').on('click', function() {
    $('.cart-add18').removeClass('active');
    $('.cart_buttons18').addClass('active');
});
//
$('.cart_buttons19').on('click', function() {
    $('.cart_buttons19').removeClass('active');
    $('.cart-add19').addClass('active');
});
$('.cart_icons19').on('click', function() {
    $('.cart-add19').removeClass('active');
    $('.cart_buttons19').addClass('active');
});
//
$('.cart_buttons20').on('click', function() {
    $('.cart_buttons20').removeClass('active');
    $('.cart-add20').addClass('active');
});
$('.cart_icons20').on('click', function() {
    $('.cart-add20').removeClass('active');
    $('.cart_buttons20').addClass('active');
});
//
$('.cart_buttons21').on('click', function() {
    $('.cart_buttons21').removeClass('active');
    $('.cart-add21').addClass('active');
});
$('.cart_icons21').on('click', function() {
    $('.cart-add21').removeClass('active');
    $('.cart_buttons21').addClass('active');
});
//
$('.cart_buttons22').on('click', function() {
    $('.cart_buttons22').removeClass('active');
    $('.cart-add22').addClass('active');
});
$('.cart_icons22').on('click', function() {
    $('.cart-add22').removeClass('active');
    $('.cart_buttons22').addClass('active');
});
//
$('.cart_buttons23').on('click', function() {
    $('.cart_buttons23').removeClass('active');
    $('.cart-add23').addClass('active');
});
$('.cart_icons23').on('click', function() {
    $('.cart-add23').removeClass('active');
    $('.cart_buttons23').addClass('active');
});
//
$('.cart_buttons24').on('click', function() {
    $('.cart_buttons24').removeClass('active');
    $('.cart-add24').addClass('active');
});
$('.cart_icons24').on('click', function() {
    $('.cart-add24').removeClass('active');
    $('.cart_buttons24').addClass('active');
});
//
$('.cart_buttons25').on('click', function() {
    $('.cart_buttons25').removeClass('active');
    $('.cart-add25').addClass('active');
});
$('.cart_icons25').on('click', function() {
    $('.cart-add25').removeClass('active');
    $('.cart_buttons25').addClass('active');
});
//
$('.cart_buttons26').on('click', function() {
    $('.cart_buttons26').removeClass('active');
    $('.cart-add26').addClass('active');
});
$('.cart_icons26').on('click', function() {
    $('.cart-add26').removeClass('active');
    $('.cart_buttons26').addClass('active');
});
//
$('.cart_buttons27').on('click', function() {
    $('.cart_buttons27').removeClass('active');
    $('.cart-add27').addClass('active');
});
$('.cart_icons27').on('click', function() {
    $('.cart-add27').removeClass('active');
    $('.cart_buttons27').addClass('active');
});
//
$('.cart_buttons28').on('click', function() {
    $('.cart_buttons28').removeClass('active');
    $('.cart-add28').addClass('active');
});
$('.cart_icons28').on('click', function() {
    $('.cart-add28').removeClass('active');
    $('.cart_buttons28').addClass('active');
});
//
$('.cart_buttons29').on('click', function() {
    $('.cart_buttons29').removeClass('active');
    $('.cart-add29').addClass('active');
});
$('.cart_icons29').on('click', function() {
    $('.cart-add29').removeClass('active');
    $('.cart_buttons29').addClass('active');
});
//
$('.cart_buttons30').on('click', function() {
    $('.cart_buttons30').removeClass('active');
    $('.cart-add30').addClass('active');
});
$('.cart_icons30').on('click', function() {
    $('.cart-add30').removeClass('active');
    $('.cart_buttons30').addClass('active');
});
//
$('.cart_buttons31').on('click', function() {
    $('.cart_buttons31').removeClass('active');
    $('.cart-add31').addClass('active');
});
$('.cart_icons31').on('click', function() {
    $('.cart-add31').removeClass('active');
    $('.cart_buttons31').addClass('active');
});
//
$('.cart_buttons32').on('click', function() {
    $('.cart_buttons32').removeClass('active');
    $('.cart-add32').addClass('active');
});
$('.cart_icons32').on('click', function() {
    $('.cart-add32').removeClass('active');
    $('.cart_buttons32').addClass('active');
});

$(".ulines-dps .ukine1 ").on("click", function() {
    $(".backtabs-dp ul li ").removeClass("active");
    $(".ukine1").addClass("active");
});
$(".ulines-dps .ukine2 ").on("click", function() {
    $(".backtabs-dp ul li ").removeClass("active");
    $(".ukine2").addClass("active");
});
$(".ulines-dps .ukine3 ").on("click", function() {
    $(".backtabs-dp ul li ").removeClass("active");
    $(".ukine3").addClass("active");
});
$(".ulines-dps .ukine4 ").on("click", function() {
    $(".backtabs-dp ul li ").removeClass("active");
    $(".ukine4").addClass("active");
});
$(".ulines-dps .ukine5 ").on("click", function() {
    $(".backtabs-dp ul li ").removeClass("active");
    $(".ukine5").addClass("active");
});
$(".ulines-dps .ukine6 ").on("click", function() {
    $(".backtabs-dp ul li ").removeClass("active");
    $(".ukine6").addClass("active");
});
$(".ulines-dps .ukine8 ").on("click", function() {
    $(".backtabs-dp ul li ").removeClass("active2");
    $(".ukine8").addClass("active2");
});
$(".ulines-dps .ukine9 ").on("click", function() {
    $(".backtabs-dp ul li ").removeClass("active2");
    $(".ukine9").addClass("active2");
});



$(".ukine1a ").on("click", function() {
    $(".backtabs-dp ul li ").removeClass('active3');
    $(".ukine1a").addClass('active3');

});
$(".ukine2a ").on("click", function() {
    $(".backtabs-dp ul li ").removeClass('active3');
    $(".ukine2a").addClass('active3');

});
$(".ukine3a ").on("click", function() {
    $(".backtabs-dp ul li ").removeClass('active3');
    $(".ukine3a").addClass('active3');

});
$(".ukine4a ").on("click", function() {
    $(".backtabs-dp ul li ").removeClass('active3');
    $(".ukine4a").addClass('active3');

});
$(".ukine1b").on("click", function() {
    $(".backtabs-dp ul li ").removeClass('active4');
    $(".ukine1b").addClass('active4');

});
$(".ukine2b ").on("click", function() {
    $(".backtabs-dp ul li ").removeClass('active4');
    $(".ukine2b").addClass('active4');

});
$(".ukine3b ").on("click", function() {
    $(".backtabs-dp ul li ").removeClass('active4');
    $(".ukine3b").addClass('active4');

});
$(".ukine4b ").on("click", function() {
    $(".backtabs-dp ul li ").removeClass('active4');
    $(".ukine4b").addClass('active4');

});


$(window).on('scroll', function() {
    if ($(window).scrollTop() >= 95 && !$('header-1-top').hasClass('fixed')) {
        $('.pt-2.pb-2.search-bar').addClass('fixed');
    } else if ($(window).scrollTop() < 95 && $('header-1-top').hasClass('fixed')) {
        $('.pt-2.pb-2.search-bar').removeClass('fixed')
    }
});

$(document).ready(function() {
    // grab the initial top offset of the navigation 
    var stickyNavTop = $('.pt-2.pb-2.search-bar').offset().top;

    // our function that decides weather the navigation bar should have "fixed" css position or not.
    var stickyNav = function() {
        var scrollTop = $(window).scrollTop(); // our current vertical position from the top

        // if we've scrolled more than the navigation, change its position to fixed to stick to top,
        // otherwise change it back to relative
        if (scrollTop > stickyNavTop) {
            $('.pt-2.pb-2.search-bar').addClass('sticky');
        } else {
            $('.pt-2.pb-2.search-bar').removeClass('sticky');
        }
    };

    stickyNav();
    // and run it again every time you scroll
    $(window).scroll(function() {
        stickyNav();
    });
});

$(function() {
    var Accordion = function(el, multiple) {
        this.el = el || {};
        this.multiple = multiple || false;

        var links = this.el.find('.article-title');
        links.on('click', {
            el: this.el,
            multiple: this.multiple
        }, this.dropdown)
    }

    Accordion.prototype.dropdown = function(e) {
        var $el = e.data.el;
        $this = $(this),
            $next = $this.next();

        $next.slideToggle();
        $this.parent().toggleClass('open');

        if (!e.data.multiple) {
            $el.find('.accordion-content').not($next).slideUp().parent().removeClass('open');
        };
    }
    var accordion = new Accordion($('.accordion-container'), false);
});

$(document).on('click', function(event) {
    if (!$(event.target).closest('#accordion').length) {
        $(this.parent).toggleClass('open');
    }
});
//quantity
$(document).ready(function() {

    var quantitiy = 0;
    $('.quantity-right-plus').click(function(e) {

        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quantity').val());

        // If is not undefined

        $('#quantity').val(quantity + 1);


        // Increment

    });

    $('.quantity-left-minus').click(function(e) {
        // Stop acting like a button
        e.preventDefault();
        // Get the field name
        var quantity = parseInt($('#quantity').val());

        // If is not undefined

        // Increment
        if (quantity > 0) {
            $('#quantity').val(quantity - 1);
        }
    });

});
//quantitiy end js



//slider product details
//initiate the plugin and pass the id of the div containing gallery images
$("#zoom_03").elevateZoom({
    gallery: 'gallery_01',
    cursor: 'pointer',
    easing: true,
    galleryActiveClass: 'active',
    imageCrossfade: true,
    loadingIcon: 'img/spin.svg'
});

//pass the images to Fancybox
$("#zoom_03").bind("click", function(e) {
    var ez = $('#zoom_03').data('elevateZoom');
    $.fancybox(ez.getGalleryList());
    return false;
});




//lightbox 

$('.backtabs-dp_servicespros2 .ulines-dps .ukine1b').on('click', function() {
    $('.ukine').removeClass('active4');
    $('.ukine1b').addClass('active4');
});
$('.backtabs-dp_servicespros2 .ulines-dps .ukine2b').on('click', function() {
    $('.ukine').removeClass('active4');
    $('.ukine2b').addClass('active4');
});
$('.backtabs-dp_servicespros2 .ulines-dps .ukine3b').on('click', function() {
    $('.ukine').removeClass('active4');
    $('.ukine3b').addClass('active4');
});
$('.backtabs-dp_servicespros2 .ulines-dps .ukine5ab').on('click', function() {
    $('.ukine').removeClass('active5');
    $('.ukine5ab').addClass('active5');
});
$('.backtabs-dp_servicespros2 .ulines-dps .ukine6ab').on('click', function() {
    $('.ukine').removeClass('active5');
    $('.ukine6ab').addClass('active5');
});
$('input#isactive').on('click', function() {
    $('#shwdivcmp').toggle()
});
$('.wof_filter_button_wrapper').on('click', function() {
    $('.wof-collection-main-wrapper').toggle()
});
$('.wof_sort_by_button_wrapper').on('click', function() {
    $('.sort-by-dropdown-content').toggle()
});




$('.fa.ulines3es0').on('click', function() {
    $('.fa.ulines3es0').toggleClass('actvics');
    $('.fa.ulines3es0').toggleClass('actvics');
    $('.ulines-dps-frost00').toggle();
    $('.ulines-dps-frost.ulines3es0').toggle()
});
$('.fa.ulines3es1').on('click', function() {
    $('.fa.ulines3es1').toggleClass('actvics');
    $('.ulines3es01').toggle();
    $('.ulines-dps-frost.ulines3es1').toggle()
});
$('.fa.ulines3es2').on('click', function() {
    $('.fa.ulines3es2').toggleClass('actvics');
    $('.ulines3es02').toggle();
    $('.ulines-dps-frost.ulines3es2').toggle()
});
$('.fa.ulines3es3').on('click', function() {
    $('.fa.ulines3es3').toggleClass('actvics');
    $('.ulines3es03').toggle();
    $('.ulines-dps-frost.ulines3es3').toggle()
});
$('.fa.ulines3es4').on('click', function() {
    $('.fa.ulines3es4').toggleClass('actvics');
    $('.ulines3es04').toggle();
    $('.ulines-dps-frost.ulines3es4').toggle()
});
$('.fa.ulines3es5').on('click', function() {
    $('.fa.ulines3es5').toggleClass('actvics');
    $('.ulines3es05').toggle();
    $('.ulines-dps-frost.ulines3es5').toggle()
});
$('.fa.ulines3es6').on('click', function() {
    $('.fa.ulines3es6').toggleClass('actvics');
    $('.ulines3es06').toggle();
    $('.ulines-dps-frost.ulines3es6').toggle()
});
$('.fa.ulines3es7').on('click', function() {
    $('.fa.ulines3es7').toggleClass('actvics');
    $('.ulines3es07').toggle();
    $('.ulines-dps-frost.ulines3es7').toggle()
});
$('.fa.ulines3es8').on('click', function() {
    $('.fa.ulines3es8').toggleClass('actvics');
    $('.ulines3es08').toggle();
    $('.ulines-dps-frost.ulines3es8').toggle()
});
$('.fa.ulines3es9').on('click', function() {
    $('.fa.ulines3es9').toggleClass('actvics');
    $('.ulines3es09').toggle();
    $('.ulines-dps-frost.ulines3es9').toggle()
});
$('.fa.ulines3es10').on('click', function() {
    $('.fa.ulines3es10').toggleClass('actvics');
    $('.ulines3es010').toggle();
    $('.ulines-dps-frost.ulines3es10').toggle()
});
$('.fa.ulines3es11').on('click', function() {
    $('.fa.ulines3es11').toggleClass('actvics');
    $('.ulines3es011').toggle();
    $('.ulines-dps-frost.ulines3es11').toggle()
});
$('.fa.ulines3es12').on('click', function() {
    $('.fa.ulines3es12').toggleClass('actvics');
    $('.ulines3es012').toggle();
    $('.ulines-dps-frost.ulines3es12').toggle()
});
$('.fa.ulines3es13').on('click', function() {
    $('.fa.ulines3es13').toggleClass('actvics');
    $('.ulines3es013').toggle();
    $('.ulines-dps-frost.ulines3es13').toggle()
});
$('.fa.ulines3es14').on('click', function() {
    $('.fa.ulines3es14').toggleClass('actvics');
    $('.ulines3es014').toggle();
    $('.ulines-dps-frost.ulines3es14').toggle()
});
$('.fa.ulines3es15').on('click', function() {
    $('.fa.ulines3es15').toggleClass('actvics');
    $('.ulines3es015').toggle();
    $('.ulines-dps-frost.ulines3es15').toggle()
});
$('.fa.ulines3es16').on('click', function() {
    $('.fa.ulines3es16').toggleClass('actvics');
    $('.ulines3es016').toggle();
    $('.ulines-dps-frost.ulines3es16').toggle()
});
$('.fa.ulines3es17').on('click', function() {
    $('.fa.ulines3es17').toggleClass('actvics');
    $('.ulines3es017').toggle();
    $('.ulines-dps-frost.ulines3es17').toggle()
});
$('.fa.ulines3es18').on('click', function() {
    $('.fa.ulines3es18').toggleClass('actvics');
    $('.ulines3es018').toggle();
    $('.ulines-dps-frost.ulines3es18').toggle()
});
$('.fa.ulines3es19').on('click', function() {
    $('.fa.ulines3es19').toggleClass('actvics');
    $('.ulines3es019').toggle();
    $('.ulines-dps-frost.ulines3es19').toggle()
});
$('.fa.ulines3es20').on('click', function() {
    $('.fa.ulines3es20').toggleClass('actvics');
    $('.ulines3es020').toggle();
    $('.ulines-dps-frost.ulines3es20').toggle()
});

$('.fa.ulines3es21').on('click', function() {
    $('.fa.ulines3es21').toggleClass('actvics');
    $('.ulines3es021').toggle();
    $('.ulines-dps-frost.ulines3es21').toggle()
});
$('.fa.ulines3es22').on('click', function() {
    $('.fa.ulines3es22').toggleClass('actvics');
    $('.ulines3es022').toggle();
    $('.ulines-dps-frost.ulines3es22').toggle()
});
$('.fa.ulines3es23').on('click', function() {
    $('.fa.ulines3es23').toggleClass('actvics');
    $('.ulines3es023').toggle();
    $('.ulines-dps-frost.ulines3es23').toggle()
});
$('.fa.ulines3es24').on('click', function() {
    $('.fa.ulines3es24').toggleClass('actvics');
    $('.ulines3es024').toggle();
    $('.ulines-dps-frost.ulines3es24').toggle()
});
$('.fa.ulines3es25').on('click', function() {
    $('.fa.ulines3es25').toggleClass('actvics');
    $('.ulines3es025').toggle();
    $('.ulines-dps-frost.ulines3es25').toggle()
});
$('.fa.ulines3es26').on('click', function() {
    $('.fa.ulines3es26').toggleClass('actvics');
    $('.ulines-dps-frost026').toggle();
    $('.ulines-dps-frost.ulines3es26').toggle()
});
$('.fa.ulines3es27').on('click', function() {
    $('.fa.ulines3es27').toggleClass('actvics');
    $('.ulines-dps-frost027').toggle();
    $('.ulines-dps-frost.ulines3es27').toggle()
});
$('.fa.ulines3es28').on('click', function() {
    $('.fa.ulines3es28').toggleClass('actvics');
    $('.ulines-dps-frost028').toggle();
    $('.ulines-dps-frost.ulines3es28').toggle()
});
$('.fa.ulines3es29').on('click', function() {
    $('.fa.ulines3es29').toggleClass('actvics');
    $('.ulines-dps-frost029').toggle();
    $('.ulines-dps-frost.ulines3es29').toggle()
});
$('.fa.ulines3es30').on('click', function() {
    $('.fa.ulines3es30').toggleClass('actvics');
    $('.ulines-dps-frost030').toggle();
    $('.ulines-dps-frost.ulines3es30').toggle()
});

$('.fa.ulines3es31').on('click', function() {
    $('.fa.ulines3es31').toggleClass('actvics');
    $('.ulines-dps-frost031').toggle();
    $('.ulines-dps-frost.ulines3es31').toggle()
});
$('.fa.ulines3es32').on('click', function() {
    $('.fa.ulines3es32').toggleClass('actvics');
    $('.ulines-dps-frost032').toggle();
    $('.ulines-dps-frost.ulines3es32').toggle()
});
$('.fa.ulines3es33').on('click', function() {
    $('.fa.ulines3es33').toggleClass('actvics');
    $('.ulines-dps-frost033').toggle();
    $('.ulines-dps-frost.ulines3es33').toggle()
});
$('.fa.ulines3es34').on('click', function() {
    $('.fa.ulines3es34').toggleClass('actvics');
    $('.ulines-dps-frost034').toggle();
    $('.ulines-dps-frost.ulines3es34').toggle()
});
$('.fa.ulines3es35').on('click', function() {
    $('.fa.ulines3es35').toggleClass('actvics');
    $('.ulines-dps-frost035').toggle();
    $('.ulines-dps-frost.ulines3es35').toggle()
});
$('.fa.ulines3es36').on('click', function() {
    $('.fa.ulines3es36').toggleClass('actvics');
    $('.ulines-dps-frost036').toggle();
    $('.ulines-dps-frost.ulines3es36').toggle()
});
$('.fa.ulines3es37').on('click', function() {
    $('.fa.ulines3es37').toggleClass('actvics');
    $('.ulines-dps-frost037').toggle();
    $('.ulines-dps-frost.ulines3es37').toggle()
});
$('.fa.ulines3es38').on('click', function() {
    $('.fa.ulines3es38').toggleClass('actvics');
    $('.ulines-dps-frost038').toggle();
    $('.ulines-dps-frost.ulines3es38').toggle()
});
$('.fa.ulines3es39').on('click', function() {
    $('.fa.ulines3es39').toggleClass('actvics');
    $('.ulines-dps-frost039').toggle();
    $('.ulines-dps-frost.ulines3es39').toggle()
});
$('.fa.ulines3es40').on('click', function() {
    $('.fa.ulines3es40').toggleClass('actvics');
    $('.ulines-dps-frost040').toggle();
    $('.ulines-dps-frost.ulines3es40').toggle()
});
$('.fa.ulines3es41').on('click', function() {
    $('.fa.ulines3es41').toggleClass('actvics');
    $('.ulines-dps-frost041').toggle();
    $('.ulines-dps-frost.ulines3es41').toggle()
});
$('.fa.ulines3es42').on('click', function() {
    $('.fa.ulines3es42').toggleClass('actvics');
    $('.ulines-dps-frost042').toggle();
    $('.ulines-dps-frost.ulines3es42').toggle()
});
$('.fa.ulines3es43').on('click', function() {
    $('.fa.ulines3es43').toggleClass('actvics');
    $('.ulines-dps-frost043').toggle();
    $('.ulines-dps-frost.ulines3es43').toggle()
});
$('.fa.ulines3es44').on('click', function() {
    $('.fa.ulines3es44').toggleClass('actvics');
    $('.ulines-dps-frost044').toggle();
    $('.ulines-dps-frost.ulines3es44').toggle()
});
$('.fa.ulines3es45').on('click', function() {
    $('.fa.ulines3es45').toggleClass('actvics');
    $('.ulines-dps-frost045').toggle();
    $('.ulines-dps-frost.ulines3es45').toggle()
});
$('.fa.ulines3es46').on('click', function() {
    $('.fa.ulines3es46').toggleClass('actvics');
    $('.ulines-dps-frost046').toggle();
    $('.ulines-dps-frost.ulines3es46').toggle()
});
$('.fa.ulines3es47').on('click', function() {
    $('.fa.ulines3es47').toggleClass('actvics');
    $('.ulines-dps-frost047').toggle();
    $('.ulines-dps-frost.ulines3es47').toggle()
});
$('.fa.ulines3es48').on('click', function() {
    $('.fa.ulines3es48').toggleClass('actvics');
    $('.ulines-dps-frost048').toggle();
    $('.ulines-dps-frost.ulines3es48').toggle()
});
$('.fa.ulines3es49').on('click', function() {
    $('.fa.ulines3es49').toggleClass('actvics');
    $('.ulines-dps-frost049').toggle();
    $('.ulines-dps-frost.ulines3es49').toggle()
});
$('.fa.ulines3es50').on('click', function() {
    $('.fa.ulines3es50').toggleClass('actvics');
    $('.ulines-dps-frost050').toggle();
    $('.ulines-dps-frost.ulines3es50').toggle()
});
$('.fa.ulines3es51').on('click', function() {
    $('.fa.ulines3es51').toggleClass('actvics');
    $('.ulines-dps-frost051').toggle();
    $('.ulines-dps-frost.ulines3es51').toggle()
});


$('.img00').on('click', function() {
    $('.demo').hide();
    $('.img000').show();
});
$('.img01').on('click', function() {
    $('.demo').hide();
    $('.img001').show();
});
$('.img02').on('click', function() {
    $('.demo').hide();
    $('.img002').show();
});
$('.img03').on('click', function() {
    $('.demo').hide();
    $('.img003').show();
});
$('.img04').on('click', function() {
    $('.demo').hide();
    $('.img004').show();
});
$('.img05').on('click', function() {
    $('.demo').hide();
    $('.img005').show();
});
$('.img06').on('click', function() {
    $('.demo').hide();
    $('.img006').show();
});
$('.img07').on('click', function() {
    $('.demo').hide();
    $('.img007').show();
});
$('.img08').on('click', function() {
    $('.demo').hide();
    $('.img008').show();
});
$('.img09').on('click', function() {
    $('.demo').hide();
    $('.img009').show();
});
$('.img010').on('click', function() {
    $('.demo').hide();
    $('.img0010').show();
});
$('.img03').on('click', function() {
    $('.demo').hide();
    $('.img003').show();
});
$('.img011').on('click', function() {
    $('.demo').hide();
    $('.img0011').show();
});
$('.img012').on('click', function() {
    $('.demo').hide();
    $('.img0012').show();
});
$('.img013').on('click', function() {
    $('.demo').hide();
    $('.img0013').show();
});
$('.img014').on('click', function() {
    $('.demo').hide();
    $('.img0014').show();
});
$('.img015').on('click', function() {
    $('.demo').hide();
    $('.img0015').show();
});
$('.img016').on('click', function() {
    $('.demo').hide();
    $('.img0016').show();
});
$('.img017').on('click', function() {
    $('.demo').hide();
    $('.img0017').show();
});
$('.img018').on('click', function() {
    $('.demo').hide();
    $('.img0018').show();
});
$('.img019').on('click', function() {
    $('.demo').hide();
    $('.img0019').show();
});
$('.img020').on('click', function() {
    $('.demo').hide();
    $('.img0020').show();
});
$('.img021').on('click', function() {
    $('.demo').hide();
    $('.img0021').show();
});
$('.img022').on('click', function() {
    $('.demo').hide();
    $('.img0022').show();
});
$('.img023').on('click', function() {
    $('.demo').hide();
    $('.img0023').show();
});
$('.img024').on('click', function() {
    $('.demo').hide();
    $('.img0024').show();
});
$('.img025').on('click', function() {
    $('.demo').hide();
    $('.img0025').show();
});
$('.img026').on('click', function() {
    $('.demo').hide();
    $('.img0026').show();
});
$('.img027').on('click', function() {
    $('.demo').hide();
    $('.img0027').show();
});
$('.img028').on('click', function() {
    $('.demo').hide();
    $('.img0028').show();
});
$('.img029').on('click', function() {
    $('.demo').hide();
    $('.img0029').show();
});
$('.img030').on('click', function() {
    $('.demo').hide();
    $('.img0030').show();
});
$('.img031').on('click', function() {
    $('.demo').hide();
    $('.img0031').show();
});
$('.img032').on('click', function() {
    $('.demo').hide();
    $('.img0032').show();
});
$('.img033').on('click', function() {
    $('.demo').hide();
    $('.img0033').show();
});
$('.img034').on('click', function() {
    $('.demo').hide();
    $('.img0034').show();
});
$('.img035').on('click', function() {
    $('.demo').hide();
    $('.img0035').show();
});
$('.img036').on('click', function() {
    $('.demo').hide();
    $('.img0036').show();
});
$('.img037').on('click', function() {
    $('.demo').hide();
    $('.img0037').show();
});
$('.img038').on('click', function() {
    $('.demo').hide();
    $('.img0038').show();
});
$('.img039').on('click', function() {
    $('.demo').hide();
    $('.img0039').show();
});
$('.img040').on('click', function() {
    $('.demo').hide();
    $('.img0040').show();
});
$('.img041').on('click', function() {
    $('.demo').hide();
    $('.img0041').show();
});
$('.img042').on('click', function() {
    $('.demo').hide();
    $('.img0042').show();
});
$('.img043').on('click', function() {
    $('.demo').hide();
    $('.img0043').show();
});
$('.img044').on('click', function() {
    $('.demo').hide();
    $('.img0044').show();
});
$('.img045').on('click', function() {
    $('.demo').hide();
    $('.img0045').show();
});
$('.img046').on('click', function() {
    $('.demo').hide();
    $('.img0046').show();
});
$('.img047').on('click', function() {
    $('.demo').hide();
    $('.img0047').show();
});
$('.img048').on('click', function() {
    $('.demo').hide();
    $('.img0048').show();
});
$('.img049').on('click', function() {
    $('.demo').hide();
    $('.img0049').show();
});
$('.img050').on('click', function() {
    $('.demo').hide();
    $('.img0050').show();
});
$('.img051').on('click', function() {
    $('.demo').hide();
    $('.img0051').show();
});


//tabs 

$(".col-tabs-1 ").on("click", function() {
    $(".div-tab-dps ul li ").removeClass('active');
    $(".col-tabs-1").addClass('active');

});

$(".col-tabs-2 ").on("click", function() {
    $(".div-tab-dps ul li ").removeClass('active');
    $(".col-tabs-2").addClass('active');

});

$(".col-tabs-3 ").on("click", function() {
    $(".div-tab-dps ul li ").removeClass('active');
    $(".col-tabs-3").addClass('active');

});

$(".col-tabs-4 ").on("click", function() {
    $(".div-tab-dps ul li ").removeClass('active');
    $(".col-tabs-4").addClass('active');

});
////////////////////////////////////////////////
$(".col-tabs_pol-1 ").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-1").addClass('active');

});

$(".col-tabs_pol-2 ").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-2").addClass('active');

});

$(".col-tabs_pol-3 ").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-3").addClass('active');

});

$(".col-tabs_pol-4 ").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-4").addClass('active');

});
$(".col-tabs_pol-5 ").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-5").addClass('active');

});
$(".col-tabs_pol-6 ").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-6").addClass('active');

});
$(".col-tabs_pol-7 ").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-7").addClass('active');

});
$(".col-tabs_pol-8 ").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-8").addClass('active');

});
$(".col-tabs_pol-9 ").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-9").addClass('active');

});
$(".col-tabs_pol-10 ").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-10").addClass('active');

});
$(".col-tabs_pol-11").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-11").addClass('active');

});
$(".col-tabs_pol-12").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-12").addClass('active');

});
$(".col-tabs_pol-13").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-13").addClass('active');

});
$(".col-tabs_pol-14").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-14").addClass('active');

});
$(".col-tabs_pol-15").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-15").addClass('active');

});
$(".col-tabs_pol-16").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-16").addClass('active');

});
$(".col-tabs_pol-17").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-17").addClass('active');

});
$(".col-tabs_pol-18").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-18").addClass('active');

});
$(".col-tabs_pol-19").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-19").addClass('active');

});
$(".col-tabs_pol-20").on("click", function() {
    $(".div-tab-dps_pol ul li ").removeClass('active');
    $(".col-tabs_pol-20").addClass('active');

});
////////////////////////////////////////////////////
$(".col-tabs-1a ").on("click", function() {
    $(".div-tab-dpsa ul li ").removeClass('active');
    $(".col-tabs-1a").addClass('active');

});

$(".col-tabs-2a ").on("click", function() {
    $(".div-tab-dpsa ul li ").removeClass('active');
    $(".col-tabs-2a").addClass('active');

});

$(".col-tabs-3a ").on("click", function() {
    $(".div-tab-dpsa ul li ").removeClass('active');
    $(".col-tabs-3a").addClass('active');

});

$(".col-tabs-4a ").on("click", function() {
    $(".div-tab-dpsa ul li ").removeClass('active');
    $(".col-tabs-4a").addClass('active');

});

// Open the Modal
function openModal() {
    document.getElementById("myModal00").style.display = "block";
}

// Close the Modal
function closeModal() {
    document.getElementById("myModal00").style.display = "none";
}

var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
    showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
    showSlides(slideIndex = n);
}

function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("demo");
    var captionText = document.getElementById("caption");
    if (n > slides.length) { slideIndex = 1 };
    if (n < 1) { slideIndex = slides.length };
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    };
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    };

};









///////////////////////////profiles//////////////////////////



  $(".widthedits").click(function(){
  $(".inputsd1").show();
  $(".widthedits1").show();
  $(".inputsd").hide();
  $(".widthedits").hide();
});
   $(".widthedits1").click(function(){
  $(".inputsd").show();
  $(".widthedits").show();
  $(".inputsd1").hide();
  $(".widthedits1").hide();
});
    
   $(".widthedits3").click(function(){
  $(".inputsd4").show();
  $(".widthedits4").show();
  $(".inputsd3").hide();
  $(".widthedits3").hide();
});
   $(".widthedits4").click(function(){
  $(".inputsd3").show();
  $(".widthedits3").show();
  $(".inputsd4").hide();
  $(".widthedits4").hide();
});





// header toggle function starts here

$(document).on('click','#SignInlogin',function() {
    $('.tab-more2').toggleClass('active');
});

// header toggle function starts here





// Password Match
$('#uconfirm_password').on('change', function() {
    var password = $("#upassword").val();
    var confirmPassword = $("#uconfirm_password").val();
    if (password != confirmPassword) {

        $("#passtext").removeClass("invisible");
        $("#uconfirm_password").removeClass("is-valid");
        $("#uconfirm_password").addClass("is-invalid");
    } else {
        $("#passtext").addClass("invisible");
        $("#uconfirm_password").removeClass("is-invalid");
        $("#uconfirm_password").addClass("is-valid");
    }
});












