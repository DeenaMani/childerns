function photoswipe(){if($("#gallery").length){var f=[],e=$(".pswp")[0];$(".filtr-item").each(function(t){var i=$(this),e=i.find(".gallery-item"),r=i.find(".gallery-item h3"),l=i.find(".pswp-caption"),n="<h4>"+$.trim(r.html())+"</h4>",a=$.trim(l.html()),o={src:e.attr("href"),w:1920,h:700};0<l.length&&(o.title=$.trim(n+a)),f.push(o)}),$(".filtr-item").on("click",function(t){t.preventDefault();var i={index:parseInt($(this).attr("data-index"))-1,showHideOpacity:!0};new PhotoSwipe(e,PhotoSwipeUI_Default,f,i).init()})}}function ourWorkDataFilteration(){if(window.Shuffle&&$(".filtr-container").length){var t=new window.Shuffle(document.querySelector(".filtr-container"),{itemSelector:".filtr-item",sizer:".gallery-nav"});$(".gallery-nav .control").on("click",function(){t.filter($(this).attr("data-filter")),$(".gallery-nav .control").removeClass("filtr-active"),$(this).addClass("filtr-active")})}}!function(t){"use strict";photoswipe(),ourWorkDataFilteration();t("#lightSlider").lightSlider({gallery:!0,item:1,thumbItem:5,slideMargin:0,speed:500,auto:!0,loop:!0})}(jQuery);