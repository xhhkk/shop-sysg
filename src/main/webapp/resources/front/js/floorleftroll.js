$(function () {
    $(".floor-box ul li").hover(function () {
        $(this).find(".num").hide().siblings(".word").css({display: "block", background: "#CB1C39", color: "white"})
    }, function () {
        $(this).find(".num").css({
            display: "block",
            background: "white",
            color: "#666"
        }).siblings(".word").hide().css({display: "none", background: "", color: ""})
    });
    $(window).scroll(function () {
        var j = $(document).scrollTop();
        var n = $(window).height();
        var c = $("#1F").offset().top;
        var m = $("#2F").offset().top;
        var i = $("#3F").offset().top;
        var g = $("#4F").offset().top;
        var b = $("#5F").offset().top;
        var l = $("#6F").offset().top;
        var d = $("#6F").outerHeight(true);
        var a = $(".nr-five").outerHeight(true);
        var k = l + d + a;
        var h = $(".floor-box").offset().top;
        var f = $(".floor-box").outerHeight(true);
        var o = h + n;
        var e = $(".footer").offset().top;
        if ((j + a + f) > e || o < c + 400) {
            if ($(".floor-box").is(":visible")) {
                $(".floor-box").hide()
            }
        } else {
            if ($(".floor-box").is(":hidden")) {
                $(".floor-box").show()
            }
        }
        if ($(".floor-box").is(":visible")) {
            if (c < o && h < m) {
                $(".floor-box ul li").eq(0).find(".num").hide().siblings(".word").css("display", "block");
                $(".floor-box ul li").eq(0).siblings("li").find(".num").css("display", "block").siblings(".word").hide()
            } else {
                if (h <= i) {
                    $(".floor-box ul li").eq(1).find(".num").hide().siblings(".word").css("display", "block");
                    $(".floor-box ul li").eq(1).siblings("li").find(".num").css("display", "block").siblings(".word").hide()
                } else {
                    if (h <= g) {
                        $(".floor-box ul li").eq(2).find(".num").hide().siblings(".word").css("display", "block");
                        $(".floor-box ul li").eq(2).siblings("li").find(".num").css("display", "block").siblings(".word").hide()
                    } else {
                        if (h <= b) {
                            $(".floor-box ul li").eq(3).find(".num").hide().siblings(".word").css("display", "block");
                            $(".floor-box ul li").eq(3).siblings("li").find(".num").css("display", "block").siblings(".word").hide()
                        } else {
                            if (h <= l) {
                                $(".floor-box ul li").eq(4).find(".num").hide().siblings(".word").css("display", "block");
                                $(".floor-box ul li").eq(4).siblings("li").find(".num").css("display", "block").siblings(".word").hide()
                            } else {
                                if (h + f <= k) {
                                    $(".floor-box ul li").eq(5).find(".num").hide().siblings(".word").css("display", "block");
                                    $(".floor-box ul li").eq(5).siblings("li").find(".num").css("display", "block").siblings(".word").hide()
                                }
                            }
                        }
                    }
                }
            }
        }
    })
});