function next() {
    var b = $("#showid").val();
    var a = $("ul.dabanner_bg li").length;
    $("ul.dabanner_bg li").each(function (c, d) {
        if (b == c) {
            d.style.display = "block"
        } else {
            d.style.display = "none"
        }
    });
    $("div.slide-num a").each(function (c, d) {
        if (b == c) {
            d.className = "hover"
        } else {
            d.className = ""
        }
    });
    b = parseInt(b) + 1;
    if (b > a - 1) {
        $("#showid").attr("value", 0)
    } else {
        $("#showid").attr("value", b)
    }
}
function prev() {
    var b = $("#showid").val();
    var a = $("ul.dabanner_bg li").length;
    $("ul.dabanner_bg li").each(function (c, d) {
        if (b == c) {
            d.style.display = "block"
        } else {
            d.style.display = "none"
        }
    });
    $("div.slide-num a").each(function (c, d) {
        if (b == c) {
            d.className = "hover"
        } else {
            d.className = ""
        }
    });
    b = parseInt(b) - 1;
    if (b < 0) {
        $("#showid").attr("value", a - 1)
    } else {
        $("#showid").attr("value", b)
    }
}
function findPromotionProduct(b, a, c) {
    $.ajax({
        url: "/index/ajaxQueryPromotionProducts.jhtml?pageSize=" + b + "&pageNo=" + a + "&random=" + c,
        type: "GET",
        dataType: "json",
        success: function (g) {
            var f = "<dl>";
            for (var e = 0; e < g.productList.length; e++) {
                var d = g.productList[e].name;
                if (d.length > 10) {
                    d = d.substring(0, 9) + "..."
                }
                f += "<dd>";
                f += "<a target='_blank' href='" + attachSite + g.productList[e].staticPath + "'>" + dealProductPath(175, 175, g.productList[e]) + "</a>";
                f += "<p><a href='" + attachSite + g.productList[e].staticPath + "'>" + d + "</a></p><p>¥" + currency(g.productList[e].realPrice, false) + "<i>¥" + currency(g.productList[e].price, false) + "</i></p>";
                f += "</dd>"
            }
            f += "</dl>";
            $("#promotionProduct").html("");
            $("#promotionProduct").html(f);
            $("#promotionProduct img").lazyload({threshold: 200, effect: "fadeIn"})
        }
    })
}
function changeProduct() {
    findPromotionProduct(5, 1, 1)
}
function dealPath(c, a, b) {
    var d = "";
    if (b != null && b.path != null) {
        d += "<img class='lazyload_img' src='/resources/images/tm_bg.png' data-original='" + attachSite + b.path + "' width='" + c + "' height='" + a + "'>"
    } else {
        d += "<img src='http://dummyimage.com/" + c + "x" + a + "/ededed/fff'>"
    }
    return d
}
function dealProductPath(c, a, b) {
    var d = "";
    if (b != null && b.image != null) {
        d += "<img class='lazyload_img' src='/resources/images/tm_bg.png' data-original='" + attachSite + b.image + "' width='" + c + "' height='" + a + "'>"
    } else {
        d += "<img src='http://dummyimage.com/" + c + "x" + a + "/ededed/fff'>"
    }
    return d
}
function dealSubString(d, a) {
    var e = 0;
    var c = "";
    for (var b = 0; b < d.length; b++) {
        if (d.charCodeAt(b) > 128) {
            e += 2
        } else {
            e++
        }
        c += d.charAt(b);
        if (e >= a) {
            return c + "..."
        }
    }
    return c
}
function dealTitle(a) {
    var b = "";
    if (a != null && a.title) {
        b += a.title
    }
    return b
}
function dealsubStrTitle(a) {
    var b = "";
    if (a != null && a.title) {
        b += dealSubString(a.title, 20)
    }
    return b
}
function dealPrice(b) {
    var a = "";
    if (b != null && b.price) {
        a += currency(b.price, true)
    }
    return a
}
function dealHref(a) {
    var b = "";
    if (a != null && a.url != null) {
        b += a.url
    } else {
        b = "index.jhtml"
    }
    return b
}
function dealhrefAndTitle(a) {
    return "<a href='" + dealHref(a) + "' target='_blank' title='" + dealTitle(a) + "'>" + dealsubStrTitle(a) + "</a>"
}
function show() {
    var b = $("#showid").val();
    var a = $("ul.dabanner_bg li").length;
    if (b != null && b != "") {
        $("ul.dabanner_bg li").each(function (c, d) {
            if (b == c) {
                d.style.display = "block"
            } else {
                d.style.display = "none"
            }
        });
        $("div.slide-num a").each(function (c, d) {
            if (b == c) {
                d.className = "hover"
            } else {
                d.className = ""
            }
        });
        b = parseInt(b) + 1;
        if (b > a - 1) {
            $("#showid").attr("value", 0)
        } else {
            $("#showid").attr("value", b)
        }
    }
}
function indexBannerInit() {
    var b = 5000;
    var a = setInterval("show()", b);
    $("div.slide-num a").bind("click", function () {
        $("#showid").attr("value", $(this).index());
        clearTimeout(a);
        show();
        a = setInterval("show()", b)
    });
    $("div.bannerbg a").bind("mouseover", function () {
        clearTimeout(a)
    });
    $("div.bannerbg a").bind("mouseout", function () {
        a = setInterval("show()", b)
    })
}
function addFavorite2() {
    var a = window.location;
    var d = document.title;
    var b = navigator.userAgent.toLowerCase();
    if (b.indexOf("360se") > -1) {
        alert("由于360浏览器功能限制，请按 Ctrl+D 手动收藏�?")
    } else {
        if (b.indexOf("msie 8") > -1) {
            window.external.AddToFavoritesBar(a, d)
        } else {
            if (document.all) {
                try {
                    window.external.addFavorite(a, d)
                } catch (c) {
                    alert("您的浏览器不支持,请按 Ctrl+D 手动收藏!")
                }
            } else {
                if (window.sidebar) {
                    window.sidebar.addPanel(d, a, "")
                } else {
                    alert("您的浏览器不支持,请按 Ctrl+D 手动收藏!")
                }
            }
        }
    }
}
$(function (a) {
    a(".topgg .close").click(function () {
        a(".topgg").hide();
        a.ajax({
            url: "/index/adShow.jhtml?isAdShow=false", type: "GET", dataType: "text", success: function (b) {
            }
        })
    })
});
$(function (b) {
    function a(c) {
        b(c + " .pro-img").hover(function () {
            var d = this;
            b(d).stop().animate({marginLeft: "-5px"}, 250, function () {
                b(d).animate({marginLeft: "-5px"}, 250)
            })
        }, function () {
            var d = this;
            b(d).stop().animate({marginLeft: "0px"}, 250, function () {
            })
        })
    }

    jQuery("#adPosition1F li").bind("mouseenter", function () {
        var d = b(this);
        var e = d.index();
        var g = d.attr("productCategoryId");
        var h = d.attr("productCount");
        var f = d.attr("adPositionId");
        var c = d.attr("adCount");
        b.ajax({
            url: "/index/ajaxQueryProductAndAds.jhtml?productCategoryId=" + g + "&productCount=" + h + "&adPositionId=" + f + "&adCount=" + c,
            type: "GET",
            dataType: "json",
            success: function (l) {
                var k = "<div class='louf-pro-list'>";
                k += "<dl>";
                k += "<dd class='height500'><i><a href='" + l.adList[0].url + "' target='_blank'>" + dealPath(195, 503, l.adList[0]) + "</a></i></dd>";
                for (var j = 0; j < l.productList.length; j++) {
                    if (j < 4) {
                        k += "<dd><p class='pro-title'><a href='" + attachSite + l.productList[j].staticPath + "'>" + l.productList[j].name + "</a></p> <p class='pro-sale'>¥" + currency(l.productList[j].realPrice, false) + "</p><p class='pro-img'><a href='" + attachSite + "" + l.productList[j].staticPath + "'>" + dealProductPath(175, 175, l.productList[j]) + "</a></p></dd>"
                    } else {
                        k += "<dd class='height220'><p class='pro-title'><a href='" + attachSite + l.productList[j].staticPath + "'>" + l.productList[j].name + "</a></p><p class='pro-sale'>¥" + currency(l.productList[j].realPrice, false) + "</p><p class='pro-img'><a href='" + attachSite + l.productList[j].staticPath + "'>" + dealProductPath(160, 160, l.productList[j]) + "</a></p></dd>"
                    }
                }
                k += "</dl>";
                k += "</div>";
                b("#1fproduct").children().eq(e).html("");
                b("#1fproduct").children().eq(e).html(k);
                b("#1fproduct img").lazyload({threshold: 200, effect: "fadeIn"});
                a("#1fproduct")
            }
        })
    });
    jQuery("#adPosition2F li").bind("mouseenter", function () {
        var d = b(this);
        var e = d.index();
        var g = d.attr("productCategoryId");
        var h = d.attr("productCount");
        var f = d.attr("adPositionId");
        var c = d.attr("adCount");
        b.ajax({
            url: "/index/ajaxQueryProductAndAds.jhtml?productCategoryId=" + g + "&productCount=" + h + "&adPositionId=" + f + "&adCount=" + c,
            type: "GET",
            dataType: "json",
            success: function (l) {
                var k = "<div class='louf-pro-list'>";
                k += "<dl>";
                k += "<dd class='height500'><i><a href='" + l.adList[0].url + "' target='_blank'>" + dealPath(195, 503, l.adList[0]) + "</a></i></dd>";
                for (var j = 0; j < l.productList.length; j++) {
                    if (j < 4) {
                        k += "<dd><p class='pro-title'><a href='" + attachSite + l.productList[j].staticPath + "'>" + l.productList[j].name + "</a></p> <p class='pro-sale'>¥" + currency(l.productList[j].realPrice, false) + "</p><p class='pro-img'><a href='" + attachSite + "" + l.productList[j].staticPath + "'>" + dealProductPath(175, 175, l.productList[j]) + "</a></p></dd>"
                    } else {
                        k += "<dd class='height220'><p class='pro-title'><a href='" + attachSite + l.productList[j].staticPath + "'>" + l.productList[j].name + "</a></p><p class='pro-sale'>¥" + currency(l.productList[j].realPrice, false) + "</p><p class='pro-img'><a href='" + attachSite + l.productList[j].staticPath + "'>" + dealProductPath(160, 160, l.productList[j]) + "</a></p></dd>"
                    }
                }
                k += "</dl>";
                k += "</div>";
                b("#2fproduct").children().eq(e).html("");
                b("#2fproduct").children().eq(e).html(k);
                b("#2fproduct img").lazyload({threshold: 200, effect: "fadeIn"});
                a("#2fproduct")
            }
        })
    });
    jQuery("#adPosition3F li").bind("mouseenter", function () {
        var d = b(this);
        var e = d.index();
        var g = d.attr("productCategoryId");
        var h = d.attr("productCount");
        var f = d.attr("adPositionId");
        var c = d.attr("adCount");
        b.ajax({
            url: "/index/ajaxQueryProductAndAds.jhtml?productCategoryId=" + g + "&productCount=" + h + "&adPositionId=" + f + "&adCount=" + c,
            type: "GET",
            dataType: "json",
            success: function (l) {
                var k = "<div class='louf-pro-list'>";
                k += "<dl>";
                for (var j = 0; j < l.adList.length; j++) {
                    k += "<dd><i><a href='" + l.adList[j].url + "' target='_blank'>" + dealPath(195, 280, l.adList[j]) + "</a></i></dd>"
                }
                for (var j = 0; j < l.productList.length; j++) {
                    k += "<dd class='height220'><p class='pro-title'><a href='" + attachSite + l.productList[j].staticPath + "'>" + l.productList[j].name + "</a></p><p class='pro-sale'>¥" + currency(l.productList[j].realPrice, false) + "</p><p class='pro-img'><a href='" + attachSite + l.productList[j].staticPath + "'>" + dealProductPath(160, 160, l.productList[j]) + "</a></p></dd>"
                }
                k += "</dl>";
                k += "</div>";
                b("#3fproduct").children().eq(e).html("");
                b("#3fproduct").children().eq(e).html(k);
                b("#3fproduct img").lazyload({threshold: 200, effect: "fadeIn"});
                a("#3fproduct")
            }
        })
    });
    jQuery("#adPosition4F li").bind("mouseenter", function () {
        var d = b(this);
        var e = d.index();
        var g = d.attr("productCategoryId");
        var h = d.attr("productCount");
        var f = d.attr("adPositionId");
        var c = d.attr("adCount");
        b.ajax({
            url: "/index/ajaxQueryProductAndAds.jhtml?productCategoryId=" + g + "&productCount=" + h + "&adPositionId=" + f + "&adCount=" + c,
            type: "GET",
            dataType: "json",
            success: function (l) {
                var k = "<div class='louf-pro-list'>";
                k += "<dl>";
                for (var j = 0; j < l.adList.length; j++) {
                    k += "<dd><i><a href='" + l.adList[j].url + "' target='_blank'>" + dealPath(195, 280, l.adList[j]) + "</a></i></dd>"
                }
                for (var j = 0; j < l.productList.length; j++) {
                    k += "<dd class='height220'><p class='pro-title'><a href='" + attachSite + l.productList[j].staticPath + "'>" + l.productList[j].name + "</a></p><p class='pro-sale'>¥" + currency(l.productList[j].realPrice, false) + "</p><p class='pro-img'><a href='" + attachSite + l.productList[j].staticPath + "'>" + dealProductPath(160, 160, l.productList[j]) + "</a></p></dd>"
                }
                k += "</dl>";
                k += "</div>";
                b("#4fproduct").children().eq(e).html("");
                b("#4fproduct").children().eq(e).html(k);
                b("#4fproduct img").lazyload({threshold: 200, effect: "fadeIn"});
                a("#4fproduct")
            }
        })
    });
    jQuery("#adPosition5F li").bind("mouseenter", function () {
        var d = b(this);
        var e = d.index();
        var g = d.attr("productCategoryId");
        var h = d.attr("productCount");
        var f = d.attr("adPositionId");
        var c = d.attr("adCount");
        b.ajax({
            url: "/index/ajaxQueryProductAndAds.jhtml?productCategoryId=" + g + "&productCount=" + h + "&adPositionId=" + f + "&adCount=" + c,
            type: "GET",
            dataType: "json",
            success: function (l) {
                var k = "<div class='louf-pro-list'>";
                k += "<dl>";
                for (var j = 0; j < l.adList.length; j++) {
                    if (j == 0) {
                        k += "<dd class='width390'><i><a href='" + l.adList[j].url + "' target='_blank'>" + dealPath(390, 280, l.adList[j]) + "</a></i></dd>"
                    } else {
                        if (j == 4) {
                            k += "<dd class='height220 width390'><i><a href='" + l.adList[j].url + "' target='_blank'>" + dealPath(390, 220, l.adList[j]) + "</a></i></dd>"
                        } else {
                            k += "<dd><i><a href='" + l.adList[j].url + "' target='_blank'>" + dealPath(195, 280, l.adList[j]) + "</a></i></dd>"
                        }
                    }
                }
                for (var j = 0; j < l.productList.length; j++) {
                    k += "<dd class='height220'><p class='pro-title'><a href='" + attachSite + l.productList[j].staticPath + "'>" + l.productList[j].name + "</a></p><p class='pro-sale'>¥" + currency(l.productList[j].realPrice, false) + "</p><p class='pro-img'><a href='" + attachSite + l.productList[j].staticPath + "'>" + dealProductPath(160, 160, l.productList[j]) + "</a></p></dd>"
                }
                k += "</dl>";
                k += "</div>";
                b("#5fproduct").children().eq(e).html("");
                b("#5fproduct").children().eq(e).html(k);
                b("#5fproduct img").lazyload({threshold: 200, effect: "fadeIn"});
                a("#5fproduct")
            }
        })
    });
    jQuery("#adPosition6F li").bind("mouseenter", function () {
        var d = b(this);
        var e = d.index();
        var g = d.attr("productCategoryId");
        var h = d.attr("productCount");
        var f = d.attr("adPositionId");
        var c = d.attr("adCount");
        b.ajax({
            url: "/index/ajaxQueryProductAndAds.jhtml?productCategoryId=" + g + "&productCount=" + h + "&adPositionId=" + f + "&adCount=" + c,
            type: "GET",
            dataType: "json",
            success: function (l) {
                var k = "<div class='louf-pro-list'>";
                k += "<dl>";
                for (var j = 0; j < l.adList.length; j++) {
                    if (j == 0) {
                        k += "<dd class='width390'><i><a href='" + l.adList[j].url + "' target='_blank'>" + dealPath(390, 280, l.adList[j]) + "</a></i></dd>"
                    } else {
                        if (j == 4) {
                            k += "<dd class='height220 width390'><i><a href='" + l.adList[j].url + "' target='_blank'>" + dealPath(390, 220, l.adList[j]) + "</a></i></dd>"
                        } else {
                            k += "<dd><i><a href='" + l.adList[j].url + "' target='_blank'>" + dealPath(195, 280, l.adList[j]) + "</a></i></dd>"
                        }
                    }
                }
                for (var j = 0; j < l.productList.length; j++) {
                    k += "<dd class='height220'><p class='pro-title'><a href='" + attachSite + l.productList[j].staticPath + "'>" + l.productList[j].name + "</a></p><p class='pro-sale'>¥" + currency(l.productList[j].realPrice, false) + "</p><p class='pro-img'><a href='" + attachSite + l.productList[j].staticPath + "'>" + dealProductPath(160, 160, l.productList[j]) + "</a></p></dd>"
                }
                k += "</dl>";
                k += "</div>";
                b("#6fproduct").children().eq(e).html("");
                b("#6fproduct").children().eq(e).html(k);
                b("#6fproduct img").lazyload({threshold: 200, effect: "fadeIn"});
                a("#6fproduct")
            }
        })
    })
});
var leftsecond = 0;
function loadPromotionTime(a) {
    $.ajax({
        url: "/index/promotionTime.jhtml?promotionId=" + a, type: "GET", dataType: "json", success: function (b) {
            leftsecond = b.leftsecond;
            if (b.show == 0) {
                $("#remainTime").html("")
            } else {
                if (b.show == 1) {
                    setInterval("indexShowTime()", "1000");
                    $("#startOfStop").html("结束")
                } else {
                    setInterval("indexShowTime()", "1000");
                    $("#startOfStop").html("�?�?")
                }
            }
        }
    })
}
function indexShowTime() {
    if (!leftsecond || leftsecond < 0) {
        leftsecond = 0
    }
    var f = parseInt(leftsecond / 3600 / 24);
    var e = parseInt((leftsecond / 3600) % 24);
    var a = parseInt((leftsecond / 60) % 60);
    var c = parseInt(leftsecond % 60);
    var b = (f * 24) + e;
    if (b < 10) {
        jQuery("#H").html("0" + b)
    } else {
        jQuery("#H").html(b)
    }
    if (a < 10) {
        jQuery("#M").html("0" + a)
    } else {
        jQuery("#M").html(a)
    }
    if (c < 10) {
        jQuery("#S").html("0" + c)
    } else {
        jQuery("#S").html(c)
    }
    --leftsecond
}
function indexAdCenter() {
    var d = $("#mask_div");
    if (d.length == 0) {
        $("body").append("<div id='mask_div' style='display:none'></div>");
        d = $("#mask_div")
    }
    d.css({
        margin: "0",
        padding: "0",
        border: "none",
        width: "100%",
        height: "100%",
        background: "#000",
        opacity: "0.6",
        "z-index": "1000",
        position: "fixed",
        top: "0",
        left: "0"
    });
    d.fadeIn("slow");
    var c = $("#ad");
    var b = ($(window).width() - c.width()) / 2;
    var a = ($(window).height() - c.height()) / 2;
    c.css({left: b + "px", top: a + "px", "z-index": "10000"});
    c.show("slow")
}
$(function (b) {
    var a = b.cookie("isShowIndexAd");
    if (!a && b("#ad").length > 0) {
        indexAdCenter()
    }
    b("#ad").find("a").click(function () {
        b("#ad").hide();
        if (b("#commonPucCookieId").is(":hidden")) {
            b("#mask_div").hide()
        } else {
            b("#mask_div").show()
        }
        b.cookie("isShowIndexAd", true, {expires: 1})
    });
    b(window).bind("scroll", function () {
        if (b("#ad").length > 0 && b("#ad").is(":visible")) {
            indexAdCenter()
        }
    })
});