
$(document).ready(function(){
    $('.banner-carousel').owlCarousel({
        loop:true,
        responsiveClass:true,
        autoplay:true,
        items: 1,
        animateOut: 'fadeOut',
        animateIn: 'fadeIn',
        autoplayTimeout:4000,
        autoplayHoverPause:true,
        nav: true,
        dots: true,
         navText:[
        "<i class='fa fa-angle-left'></i>",
        "<i class='fa fa-angle-right'></i>"
        ],
    })
});


$(document).ready(function() {

    $('.photo').magnificPopup({
        type: 'image',
        delegate: 'a',
        gallery: {
            enabled: true
        }
    });

});

$(document).ready(function() {

    $('.video').magnificPopup({
        type: 'iframe',
        delegate: '.video-play',

    });

});
