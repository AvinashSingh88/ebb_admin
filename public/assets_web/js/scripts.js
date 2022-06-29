
$(".testimonial-slider").owlCarousel({
    items: 1,
    itemsDesktop: [1000, 1],
    itemsDesktopSmall: [979, 1],
    itemsTablet: [768, 1],
    pagination: true,
    navigation: false,
    navigationText: ["", ""],
    slideSpeed: 1000,
    singleItem: true,
    autoPlay: true
});

$(".Queen_Sizeopt1").on("click", function() {
    $(".finish-btn").removeClass('active_active');
    $(".Queen_Sizeopt1").addClass('active_active');

});
$(".Queen_Sizeopt2").on("click", function() {
    $(".finish-btn").removeClass('active_active');
    $(".Queen_Sizeopt2").addClass('active_active');

});
$(".Queen_Sizeopt3").on("click", function() {
    $(".finish-btn").removeClass('active_active');
    $(".Queen_Sizeopt3").addClass('active_active');

});
$(".Queen_Sizeopt4").on("click", function() {
    $(".finish-btn").removeClass('active_active');
    $(".Queen_Sizeopt4").addClass('active_active');

});
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

$('.backtabs-dp_servicespros2 .ulines-dps .ukine4b').on('click', function() {
    $('.ukine').removeClass('active4');
    $('.ukine4b').addClass('active4');
});

$('.backtabs-dp_servicespros2 .ulines-dps .ukine5b').on('click', function() {
    $('.ukine').removeClass('active4');
    $('.ukine5b').addClass('active4');
});

$('.backtabs-dp_servicespros2 .ulines-dps .ukine6b').on('click', function() {
    $('.ukine').removeClass('active4');
    $('.ukine6b').addClass('active4');
});

$('.backtabs-dp_servicespros2 .ulines-dps .ukine7b').on('click', function() {
    $('.ukine').removeClass('active4');
    $('.ukine7b').addClass('active4');
});
$('.backtabs-dp_servicespros2 .ulines-dps .ukine8b').on('click', function() {
    $('.ukine').removeClass('active4');
    $('.ukine8b').addClass('active4');
});
$('.backtabs-dp_servicespros2 .ulines-dps .ukine5ab').on('click', function() {
    $('.ukine').removeClass('active5');
    $('.ukine5ab').addClass('active5');
});
$('.backtabs-dp_servicespros2 .ulines-dps .ukine6ab').on('click', function() {
    $('.ukine').removeClass('active5');
    $('.ukine6ab').addClass('active5');
});

$('.multiselect').multiSelect({
    buttonTitle: function(options, select) {
        var selected = '';
        options.each(function() {
            selected += $(this).text() + ', ';
        });
        return selected.substr(0, selected.length - 2);
    },
});
$(".top_ul li").hover(function() {
    $(this).addClass("width_menu active2");

}, function() {
    $(this).removeClass("width_menu active2");
});



$(document).on("change keyup blur", "#chDiscount", function() {
    var main = $('#cBalance').val();
    var disc = $('#chDiscount').val();
    var dec = (disc / 100).toFixed(2); //its convert 10 into 0.10
    var mult = main * dec; // gives the value for subtract from main value
    var discont = main - mult;
    $('#result').val(discont);
});






window.onload = function() {
    slideOne();
    slideTwo();
};

let sliderOne = document.getElementById("slider-1");
let sliderTwo = document.getElementById("slider-2");
let displayValOne = document.getElementById("range1");
let displayValTwo = document.getElementById("range2");
let minGap = 0;
let sliderTrack = document.querySelector(".slider-track");
let sliderMaxValue = document.getElementById('slider-1').max;

function slideOne() {
    if (parseInt(sliderTwo.value) - parseInt(sliderOne.value) <= minGap) {
        sliderOne.value = parseInt(sliderTwo.value) - minGap;
    }
    displayValOne.textContent = sliderOne.value;
    fillColor();
}

function slideTwo() {
    if (parseInt(sliderTwo.value) - parseInt(sliderOne.value) <= minGap) {
        sliderTwo.value = parseInt(sliderOne.value) + minGap;
    }
    displayValTwo.textContent = sliderTwo.value;
    fillColor();
}

function fillColor() {
    percent1 = (sliderOne.value / sliderMaxValue) * 100;
    percent2 = (sliderTwo.value / sliderMaxValue) * 100;
    sliderTrack.style.background = `linear-gradient(to right, #dadae5 ${percent1}% , #3264fe ${percent1}% , #3264fe ${percent2}%, #dadae5 ${percent2}%)`;
};

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

function clean0(timeto0) {
    if (timeto0 < 10) {
        var timeto0 = '0' + timeto0;
    } else {
        var timeto0 = timeto0;
    }
    return timeto0;
}
setInterval(showCountdown, 1000);

function showCountdown() {
    var fecha = document.getElementById("dateEnd").value;
    if (fecha != '') {
        var countDownDate = new Date(fecha).getTime();

        // Update the count down every 1 second
        var x = setInterval(function() {

            // Get todays date and time
            var now = new Date().getTime();

            // Find the distance between now an the count down date
            var distance = countDownDate - now;

            // Time calculations for days, hours, minutes and seconds
            var days = Math.floor(distance / (1000 * 60 * 60 * 24));
            var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((distance % (1000 * 60)) / 1000);
            //  var days = clean0(days);
            var days = clean0(fecha);
            var hours = clean0(hours);
            var minutes = clean0(minutes);
            var seconds = clean0(seconds);

            // Output the result in an element with id="demo"
            document.getElementById("Days").innerHTML = "<span class='box'>" + days +
                "</span><small></small> ";
            document.getElementById("Hours").innerHTML = "<span class='box'>" + hours +
                "</span><small>H</small> ";
            document.getElementById("Minutes").innerHTML = "<span class='box'>" + minutes +
                "</span><small>M</small> ";
            document.getElementById("Seconds").innerHTML = "<span class='box'>" + seconds +
                "</span><small>S</small> ";

            // If the count down is over, write some text 
            if (distance < 0) {
                clearInterval(x);
                document.getElementById("demo").innerHTML = "EXPIRED";
            }

        }, 1000);
    } else {
        document.getElementById("demo").innerHTML = "EXPIRED";
    }
};