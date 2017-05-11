Sy.ns("Sy.show.cart.event");
(function (c) {
    var j = 0;
    c.init = function () {
        e();
        d();
        g();
        b();
        c.btnBindFun($(document))
    };
    function e() {
        $.ajax({
            url: "/index/showQQ.jhtml", type: "GET", dataType: "json", cache: false, success: function (k) {
                if (k.showQQ) {
                    $("#preSalesQQ").removeClass("mui-mbar-tab-logo-afterwork").addClass("mui-mbar-tab-logo-prof");
                    $("#afterSalesQQ").removeClass("mui-mbar-tab-logo-afterwork2").addClass("mui-mbar-tab-logo-prof2")
                } else {
                    $("#preSalesQQ").removeClass("mui-mbar-tab-logo-prof1").addClass("mui-mbar-tab-logo-afterwork");
                    $("#afterSalesQQ").removeClass("mui-mbar-tab-logo-prof2").addClass("mui-mbar-tab-logo-afterwork2")
                }
            }
        })
    }

    function g() {
        var k = $(window).height();
        $(".roll-right").css("height", k);
        $(".mui-mbar").css("height", k);
        $(".mui-mbar-tabs").css("height", k);
        $(".mui-mbar-tabs-mask").css("height", k);
        var m = k - 123;
        $(".tm-mcList").css("height", m);
        var l = $(".mui-mbar-mask").outerHeight(true);
        if (l >= k) {
            $(".mui-mbar-mask").css("top", 0)
        } else {
            $(".mui-mbar-mask").css("top", k / 4)
        }
    }

    function b() {
        $(window).resize(function () {
            if (j > 0) {
                var k = $(".cart-full-list").find("div.cart-list-div").first().outerHeight(true);
                var l = $(window).height() - 123;
                if (j * k > l) {
                    $(".cart-full").addClass("cart-full-scroll");
                    $(".cart-full-scroll").css("height", l)
                } else {
                    $(".cart-full").removeClass("cart-full-scroll");
                    $(".cart-full").removeAttr("style")
                }
            }
            g()
        });
        $(".mui-mbar-tab-logo-btop").hide();
        $(window).scroll(function () {
            if ($(window).scrollTop() > 0) {
                $(".mui-mbar-tab-logo-btop").fadeIn(400)
            } else {
                $(".mui-mbar-tab-logo-btop").fadeOut(200)
            }
        });
        $(".roll_top").click(function () {
            $("html,body").animate({scrollTop: "0px"}, 200)
        });
        $(".mui-mbar-tab-logo").live({
            mouseenter: function () {
                $(this).parents("div.mui-mbar-tab").find("div.mui-mbar-tab-tip").first().show()
            }, mouseleave: function () {
                $(this).parents("div.mui-mbar-tab").find("div.mui-mbar-tab-tip").first().hide()
            }
        });
        $(".mui-mbar-tab-cart").toggle(function () {
            i()
        }, function () {
            f()
        });
        $(".tm-mcCartBtn").click(function () {
            $(".mui-mbar-tab-cart").click()
        })
    }

    function i() {
        $(".roll-right").bind("click", function (k) {
            k.stopPropagation()
        });
        $("body").bind("click", function () {
            $(".mui-mbar-tab-cart").click()
        });
        $(".mui-mbar").stop().animate({right: "0"}, "show")
    }

    function f() {
        $(".roll-right").unbind("click");
        $("body").unbind("click");
        $(".mui-mbar").stop().animate({right: "-322px"}, "show")
    }

    function d() {
        var k;
        clearTimeout(k);
        k = setTimeout(function () {
            $.ajax({
                url: "/cart/getCommonCart.jhtml",
                type: "GET",
                dataType: "json",
                cache: false,
                success: function (q) {
                    var m = q.cartTotalSize;
                    var p = q.cartTotalPrice;
                    var n = q.cartTotalSelectSize;
                    $(".tm-mcCheckedNum").html(n);
                    $(".tm-mcTotalFeeWrap").html("￥" + p);
                    $("#cartCount").html(m);
                    $("#viewCartCount").html(m);
                    var r = "";
                    $(".tm-mcList").empty();
                    j = q.cartItems.length;
                    if (q.cartItems.length > 0) {
                        r += '<div class="cart-full">';
                        r += '  <div class="cart-full-list">';
                        jQuery.each(q.cartItems, function (s, t) {
                            r += '    <div class="cart-list-div';
                            if (!t.isMarketable) {
                                r += " ednock"
                            }
                            r += '">';
                            r += '	 <ul class="cart-list">';
                            r += '	  <li class="cart-list-img">';
                            r += '	    <a href="/products/content/' + t.product + '.html" target="_blank"><img src="' + attachSite + t.image + '"></a>';
                            r += "	   </li>";
                            r += '	  <li class="cart-list-proInfo">';
                            r += '	      <dl><a class="cart-list-proname" href="/products/content/' + t.product + '.html" target="_blank">' + t.name + "</a></dl>";
                            r += "		   <dl>" + t.specificaDepict + "&nbsp;</dl>";
                            r += "		   <dl>";
                            r += '		      <span class="g-num">';
                            r += '			  <span class="price">';
                            r += currency(t.productPrice, true);
                            r += "</span>";
                            r += "			   ×" + t.quantity + "</span>";
                            if (!t.isMarketable) {
                                r += '  <span class="cart-ps-fs ps-sx">失效</span>'
                            } else {
                                if (t.activeType > 0) {
                                    r += '  <span class="cart-ps-fs ps-zt">活动</span>'
                                }
                            }
                            r += "		   </dl>";
                            r += "	   </li>";
                            r += "	   </ul>";
                            r += '	  <span class="cart-del"></span>';
                            r += '<input type="hidden" name="cartItemId" value="' + t.id + '" />';
                            r += '<input type="hidden" name="cartId" value="' + t.cart + '" />';
                            r += "	</div>"
                        });
                        r += " </div>";
                        r += "</div>";
                        $(".tm-mcList").append(r);
                        h();
                        $(".tm-mcCashier").empty();
                        $(".tm-mcCashier").append(' <a class="tm-mcGo" href="/cart/list.jhtml">去购物车结算</a>');
                        var l = $(".cart-full-list").find("div.cart-list-div").first().outerHeight(true);
                        var o = $(window).height() - 123;
                        if (q.cartItems.length * l > o) {
                            $(".cart-full").addClass("cart-full-scroll");
                            $(".cart-full-scroll").css("height", o)
                        } else {
                            $(".cart-full").removeClass("cart-full-scroll");
                            $(".cart-full").removeAttr("style")
                        }
                    } else {
                        r += '<div class="cart-null">';
                        r += ' <div  class="cart-nullico">';
                        r += '   <span class="cart-null-ico"></span>';
                        r += "   </div>";
                        r += '  <div class="cart-null-txt">';
                        r += "     <p>购物车内暂时没有商品，</p>";
                        r += "	  <p>去挑选喜欢的商品吧！</p>";
                        r += "  </div>";
                        r += "</div>";
                        $(".tm-mcList").append(r);
                        $(".tm-mcCashier").empty();
                        $(".tm-mcCashier").append(" <div class='tm-mcnullCart'>去购物车结算</div>")
                    }
                }
            })
        }, 1000)
    }

    function h() {
        $(".cart-del").unbind("click").bind("click", function () {
            var l = $(this);
            var k = l.parents("div.cart-list-div");
            var m = k.find("input[name='cartItemId']").val();
            var n = k.find("input[name='cartId']").val();
            $.ajax({
                url: "/cart/deleteCartItem.jhtml",
                type: "POST",
                data: {cartId: n, cartItemId: m},
                dataType: "json",
                cache: false,
                success: function (o) {
                    if (o.result == 1) {
                        l.parents(".cart-list-div").hide("fast", function () {
                            d()
                        })
                    } else {
                        showMessageDiv("error", "删除购物车的商品项异常")
                    }
                }
            })
        })
    }

    function a(t) {
        var n = $(t);
        var s = $(".mui-mbar-tab-cart");
        n.prop("disabled", true);
        n.data("click", true);
        var v = n.closest("li");
        var p = v.find("input[name='product']").val();
        var o = v.find("input[name='quantityProduct']").val();
        var u = $("#specification").find("dl");
        var l = $("#specification").find(".selected");
        var r = "";
        if (u.length != l.length) {
            n.data("click", false);
            n.prop("disabled", false);
            showMessageDiv("warn", "请勾选您要的商品规格信息");
            return
        }
        if (u.length > 0) {
            for (var q = 0; q < l.length; q++) {
                r += l.eq(q).attr("val");
                if (q < (l.length - 1)) {
                    r += ","
                }
            }
        }
        var z = n.offset().left + n.width() / 2;
        var w = n.offset().top + n.height() / 2;
        var m = s.offset().left - s.width() + 10;
        var k = s.offset().top + s.height() / 4;
        if (n.data("click")) {
            if ($("#floatCart").length <= 0) {
                $("body").append('<div id="floatCart"><img src="/resources/images/cart_add_float.png" width="30" height="30" /></div>')
            }
            if (/^[0-9]*$/.test(o) && parseInt(o) > 0) {
                $.ajax({
                    url: "/cart/add.jhtml",
                    type: "POST",
                    data: {productId: p, quantity: o, specification: r},
                    dataType: "json",
                    cache: false,
                    success: function (x) {
                        if (x.type == "success") {
                            var y = $("#floatCart");
                            if (!y.is(":animated")) {
                                y.css({left: z, top: w}).animate({left: m, top: k}, 400, function () {
                                    y.fadeOut(400, function () {
                                        y.remove()
                                    })
                                })
                            }
                            d()
                        } else {
                            showMessageDiv(x.type, x.content)
                        }
                    }
                })
            }
            n.data("click", false);
            n.prop("disabled", false);
            $(".addCart").prop("disabled", false)
        }
    }

    c.btnBindFun = function (k) {
        k.find(".addCart").live("click", function () {
            if ($("#address").length > 0 && $("input[name='rd_receiver']:checked").length > 0) {
                a(this)
            } else {
                Sy.shop.top.receiver.local()
            }
        });
        k.find(".snapCart").live("click", function () {
            if ($.checkLogin()) {
                if ($("#address").length > 0 && $("input[name='rd_receiver']:checked").length > 0) {
                    a(this)
                } else {
                    Sy.shop.top.receiver.local()
                }
            } else {
                var l = location.href;
                $("#redirectURL").val(l);
                $("#div_login_reg").show()
            }
        });
        k.find(".addTicket").live("click", function () {
            if ($.checkLogin()) {
                var o = $(this).closest("li");
                var m = o.find("input[name='product']").val();
                var n = o.find("input[name='quantityProduct']").val();
                $.ajax({
                    url: "/member/order/updateMemberOrderData.jhtml",
                    type: "POST",
                    data: {productId: m, quantity: n},
                    dataType: "json",
                    cache: false,
                    async: false,
                    success: function (p) {
                        window.location.href = "/member/order/ticket.jhtml"
                    }
                })
            } else {
                var l = location.href;
                $("#redirectURL").val(l);
                $("#div_login_reg").show()
            }
        });
        k.find(".addGroups").live("click", function () {
            if ($.checkLogin()) {
                var n = $(this);
                var t = $(this).closest("li");
                var p = t.find("input[name='product']").val();
                var o = t.find("input[name='quantityProduct']").val();
                var s = $("#specification").find("dl");
                var m = $("#specification").find(".selected");
                var u = $("#grouponId").val();
                var r = "";
                if (s.length != m.length) {
                    n.data("click", false);
                    n.prop("disabled", false);
                    showMessageDiv("warn", "请勾选您要的商品规格信息");
                    return
                }
                if (s.length > 0) {
                    for (var q = 0; q < m.length; q++) {
                        r += m.eq(q).attr("val");
                        if (q < (m.length - 1)) {
                            r += ","
                        }
                    }
                }
                $.ajax({
                    url: "/member/order/updateMemberOrderData.jhtml",
                    type: "POST",
                    data: {productId: p, quantity: o, grouponId: u, specification: r},
                    dataType: "json",
                    cache: false,
                    async: false,
                    success: function (v) {
                        window.location.href = "/member/order/groups.jhtml"
                    }
                })
            } else {
                var l = location.href;
                $("#redirectURL").val(l);
                $("#div_login_reg").show()
            }
        })
    }
})(Sy.show.cart.event);
$().ready(function () {
    Sy.show.cart.event.init()
});