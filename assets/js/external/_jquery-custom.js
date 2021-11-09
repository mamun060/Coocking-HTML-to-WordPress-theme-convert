jQuery(document).ready(function(e) {
    "use strict";
    var t = e(window).width();
    e("#btt").on("click", function(t) {
        t.stopPropagation();
        e("body, html").animate({
            scrollTop: 0
        }, 400)
    });
    if (t > 1024) {
        e("#subpage-header").parallax("50%", .3);
        e("#hungry-testimonials").parallax("50%", .3);
        e("#hungry-slogan-01").parallax("50%", .3, -400);
        e("#hungry-slogan-02").parallax("50%", .3);
        e("#hungry-blog").parallax("50%", .1, -400)
    }
    e(".customtlt").textillate({
        selector: ".header-texts",
        loop: true,
        minDisplayTime: 6e3,
        initialDelay: 0,
        autoStart: true,
        "in": {
            effect: "flipInX",
            delayScale: 1.8,
            delay: 45,
            sync: false,
            shuffle: false,
            reverse: false
        },
        out: {
            effect: "bounceOut",
            delayScale: 1.8,
            delay: 45,
            sync: false,
            shuffle: false,
            reverse: true
        }
    });
    e(".hungry-gallery").imagesLoaded(function() {
        e(".hungry-gallery").masonry({
            columnWidth: ".hungry-gallery-item",
            itemSelector: ".hungry-gallery-item",
            gutter: 20
        })
    });
    // e.localScroll({
    //     duration: 1200,
    //     hash: true,
    //     offset: {
    //         top: -80
    //     }
    // });
    e("html").niceScroll({
        cursorcolor: "#000",
        cursoropacitymin: .4,
        cursoropacitymax: 1,
        cursorborder: "1px solid transparent",
        cursorborderradius: "6px",
        zindex: 9999,
        scrollspeed: 200
    });
    e(".header-social-icon-tooltip").tooltipster({
        animation: "grow",
        speed: 400,
        delay: 0,
        position: "bottom"
    });
    e(".special-tooltip").tooltipster({
        animation: "grow",
        speed: 400,
        delay: 0,
        position: "top"
    });
    e(".team-tooltip").tooltipster({
        animation: "fade",
        speed: 400,
        delay: 0,
        position: "top"
    });
    if (t > 768) {
        (new WOW).init()
    }
    if (t > 767) {
        e(".lightbox").colorbox({
            rel: "lightbox",
            transition: "fade",
            opacity: .9,
            speed: 500,
            previous: "&#xf104;",
            next: "&#xf105;",
            current: "{current} / {total}",
            close: "&#xf00d;",
            slideshow: false,
            slideshowStart: "&#xf04b;",
            slideshowStop: "&#xf04d;",
            slideshowAuto: false
        });
        e(".lightbox-gallery").colorbox({
            rel: "lightbox-gallery",
            transition: "fade",
            opacity: .9,
            speed: 500,
            previous: "&#xf104;",
            next: "&#xf105;",
            current: "{current} / {total}",
            close: "&#xf00d;",
            slideshow: false,
            slideshowStart: "&#xf04b;",
            slideshowStop: "&#xf04d;",
            slideshowAuto: false
        })
    }
    if (t > 1024) {
        e(".sf-menu").superfish({
            delay: 250,
            animation: {
                opacity: "show"
            },
            speed: 250,
            cssArrows: false
        })
    }
    if (t > 1024) {
        if (e("body, html").scrollTop() > 10) {
            e(".site-navbar").addClass("short")
        }
    }
    e(window).scroll(function() {
        var t = e(window).width();
        if (t > 1024) {
            if (e(this).scrollTop() > 10) {
                e(".site-navbar").addClass("short")
            } else {
                e(".site-navbar").removeClass("short")
            }
        }
        if (e(this).scrollTop() > 500) {
            e("#btt").fadeIn(500)
        } else {
            e("#btt").fadeOut(500)
        }
    });
    e(window).resize(function() {
        var t = e(window).width();
        if (t < 1025) {
            e(".sf-menu").superfish("destroy");
            if (e(".site-navbar").hasClass("short")) {
                e(".site-navbar").removeClass("short")
            }
        }
        if (t > 1007) {
            e(".sf-menu").superfish({
                delay: 250,
                animation: {
                    opacity: "show"
                },
                speed: 250,
                cssArrows: false
            });
            if (e("body, html").scrollTop() > 10 && !e(".site-navbar").hasClass("short")) {
                e(".site-navbar").addClass("short")
            }
        }
    });
    e(".mobile-nav").on("click", function(t) {
        t.stopPropagation();
        var n = e(window).width();
        if (n < 1025) {
            e(".main-navigation").slideDown(800)
        }
    });
    e(".mobile-close, .sf-menu li a").on("click", function(t) {
        t.stopPropagation();
        var n = e(window).width();
        if (n < 1025) {
            e(".main-navigation").slideUp(800)
        }
    });
    if (jQuery.ui) {
        if (t > 1024) {
            e("#res_date").datepicker({
                dateFormat: "DD, d MM, yy",
                beforeShowDay: function(e) {
                    var t = e.getDay();
                    return [t != 3]
                }
            })
        }
    }
    e("#hungry-reservarion-form-outcome").hide();
    e("#hungry-reservation-form").validate({
        rules: {
            res_name: {
                required: true
            },
            res_email: {
                required: true,
                email: true
            },
            res_phone: {
                required: true,
                number: true
            },
            res_amount: {
                required: true
            },
            res_date: {
                required: true
            },
            res_time: {
                required: true
            }
        },
        messages: {
            res_name: "Please provide a name!",
            res_email: {
                required: "Please provide an email address!",
                email: "Please enter a valid email address!"
            },
            res_phone: {
                required: "Please provide a contact number!",
                number: "Please enter a valid contact number!"
            },
            res_amount: "Please select the size of your party!",
            res_date: {
                required: "Please choose a date!"
            },
            res_time: "Please choose a time!"
        },
        submitHandler: function(t) {
            var n = e("input#res_name").val();
            var r = e("input#res_email").val();
            var i = e("input#res_phone").val();
            var s = e("select#res_amount").val();
            var o = e("input#res_date").val();
            var u = e("select#res_time").val();
            var a = e("textarea#res_message").val();
            e.ajax({
                type: "post",
                url: "php/process-reservation.php",
                data: "res_name=" + n + "&res_email=" + r + "&res_phone=" + i + "&res_amount=" + s + "&res_date=" + o + "&res_time=" + u + "&res_message=" + a,
                success: function(t) {
                    e("#hungry-reservation-form-outcome").html(t);
                    e("#hungry_reservarion_form_outcome").slideDown(2e3)
                }
            })
        }
    })
});
jQuery(window).load(function() {
    jQuery("#hungry-preloader-container").fadeOut("slow")
})