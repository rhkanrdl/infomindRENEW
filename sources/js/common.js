

$(window).on("scroll", function(){
    if ($(window).scrollTop() > 0) {
        $( "body.main #header" ).addClass("fit");
    } else {
        $( "body.main #header" ).removeClass("fit");
    }
});


$(document).ready(function() {


    
    $( "#main-menu" ).on("mouseenter", function() {
        $( "#header" ).addClass("on");
        $( this ).addClass("on");
      });

      
    $( "#main-menu" ).on("mouseleave", function() {
        $( "#header" ).removeClass("on");
        $( this ).removeClass("on");
      });


      
      $( "button.allmenu" ).on("click", function() {
        $( "#header" ).toggleClass("on");
        $( "#main-menu" ).toggleClass("on");
      });


      
      $( "#main-menu .close" ).on("click", function() {
        $( "#header" ).toggleClass("on");
        $( "#main-menu" ).toggleClass("on");
      });


    $('.main-slider').slick({
        autoplay:true,
        speed: 1000,
        dots: true,
        infinite: true,
        nextArrow:$('.dm-next'),
        prevArrow:$('.dm-prev')
    });


  




    $('.business-slider').slick({
      autoplay:true,
      mobileFirst: true,
      autoplaySpeed:700,
      speed: 1000,
      arrows: false,
      infinite: true,
      responsive: [
        {
          breakpoint: 1200,
          settings: "unslick"
      }
        ]
    });

    $(window).on('resize orientationchange', function() {
      $('.business-slider').slick('resize');
    });





    $('.main-slider div').each(function() {
        $(this).css("background", "url('" + $(this).find("img").attr("src") + "') no-repeat top / cover");
    });




    $('body.main .news p.img').each(function() {
      $(this).css("background", "url('" + $(this).find("img").attr("src") + "') no-repeat top / cover");
  });

});



