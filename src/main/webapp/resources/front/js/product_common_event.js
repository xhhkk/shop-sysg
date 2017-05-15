/**
 * Created by Administrator on 17-3-20.
 */
function changeDiv(a) {
    if (a == "first") {
        jQuery("#firstGoodsList").show();
        jQuery("#secondGoodsList").hide();
        jQuery("#second").addClass("cdq");
        jQuery("#second").removeClass("dq");
        jQuery("#first").addClass("dq");
        jQuery("#first").removeClass("cdq");
        jQuery("#cartInfoDiv").html("");
        jQuery("#cartInfoDiv").remove();
        jQuery("#outDiv").remove()
    } else {
        if (a == "second") {
            jQuery("#firstGoodsList").hide();
            jQuery("#secondGoodsList").show();
            jQuery("#second").addClass("dq");
            jQuery("#second").removeClass("cdq");
            jQuery("#first").addClass("cdq");
            jQuery("#first").removeClass("dq");
            jQuery("#cartInfoDiv").html("");
            jQuery("#cartInfoDiv").remove();
            jQuery("#outDiv").remove()
        }
    }
}
function setPriceVal() {
    if (jQuery("#startMoney").val() != null && jQuery("#startMoney").val() != "") {
        jQuery("#startPrice").val(jQuery("#startMoney").val());
        jQuery("#flagVal").val(1)
    }
    if (jQuery("#endMoney").val() != null && jQuery("#endMoney").val() != "") {
        jQuery("#endPrice").val(jQuery("#endMoney").val());
        jQuery("#flagVal").val(1)
    }
    if (jQuery("#price").val() != null && jQuery("#price").val() != "" && jQuery("#price").val() != "null-null") {
        var b = jQuery("#price").val();
        var a = b.split("-");
        jQuery("#startPrice").val(a[0]);
        jQuery("#endPrice").val(a[1])
    }
}
$().ready(function () {
    var g = $("#productForm");
    var e = $("#startMoney");
    var a = $("#endMoney");
    e.add(a).focus(function () {
        $(this).siblings("button").show()
    });
    var d = $("#sort a");
    var f = $("#orderType");
    d.click(function () {
        f.val($(this).attr("orderType"));
        setPriceVal();
        setDivFlag();
        g.submit();
        return false
    });
    $("#cbStockValid").change(function () {
        if ($("#cbStockValid:checked").length > 0) {
            $("#isStockValid").val("1")
        } else {
            $("#isStockValid").val("0")
        }
        setPriceVal();
        setDivFlag();
        g.submit();
        return false
    });
    var h = $("#priceDiv a");
    h.click(function () {
        var k = $(this).html();
        var j = k.indexOf("�?");
        if (j > 0) {
            var l = k.substring(0, j).split("-");
            jQuery("#startPrice").val(l[0]);
            jQuery("#endPrice").val(l[1]);
            jQuery("#price").val(k.substring(0, j))
        } else {
            jQuery("#price").val("");
            jQuery("#startPrice").val("");
            jQuery("#endPrice").val("")
        }
        $("#flagVal").val(0);
        $("#pageNo").val("1");
        setDivFlag();
        g.submit();
        return false
    });
    var b = $("#sure");
    b.click(function () {
        jQuery("#startPrice").val(jQuery("#startMoney").val());
        jQuery("#endPrice").val(jQuery("#endMoney").val());
        jQuery("#flagVal").val(1);
        jQuery("#price").val("null-null");
        $("#pageNo").val("1");
        setDivFlag();
        g.submit();
        return false
    });
    var i = $("#brandDiv a");
    i.click(function () {
        jQuery("#bId").val($(this).attr("id"));
        $("#pageNo").val("1");
        setPriceVal();
        setDivFlag();
        g.submit();
        return false
    });
    var c = $("#attributeDiv a");
    c.click(function () {
        var m = $(this).attr("propertyIndex");
        var k = "|" + $(this).attr("propertyIndex") + ":" + $(this).attr("id") + "|";
        var l = jQuery("#attributeValues").attr("value");
        if (l.indexOf("|" + m + ":") > -1) {
            var j = new RegExp("\\|" + m + ":.*?\\|", "g");
            if ($(this).attr("id").length == 0) {
                jQuery("#attributeValues").val(l.replace(j, ""))
            } else {
                jQuery("#attributeValues").val(l.replace(j, k))
            }
        } else {
            if ($(this).attr("id").length == 0) {
            } else {
                jQuery("#attributeValues").val(l + k)
            }
        }
        $("#pageNo").val("1");
        setPriceVal();
        setDivFlag();
        g.submit();
        return false
    });
    $(".category_div a").click(function () {
        $("#categoryId").val($(this).parent().attr("pcid"));
        $("#pageNo").val("1");
        $("#startPrice").val("");
        $("#endPrice").val("");
        $("#price").val("null-null");
        $("#attributeValues").val("");
        setDivFlag();
        g.submit();
        return false
    });
    $(".btn_all_category").click(function () {
        $("#categoryId").val("");
        $("#pageNo").val("1");
        $("#startPrice").val("");
        $("#endPrice").val("");
        $("#price").val("null-null");
        $("#attributeValues").val("");
        setDivFlag();
        g.submit();
        return false
    });
    if ($(".pro_wantbuy").length > 0) {
        list1Interval();
        setInterval("list1Interval()", 60 * 1000)
    }
    if ($(".pro_wantbuy1").length > 0) {
        list2Interval();
        setInterval("list2Interval()", 60 * 1000)
    }
});
function list1Interval() {
    $(".pro_wantbuy").each(function (b) {
        var a = parseInt($(this).attr("countDown"));
        var c = formatCountDown(a);
        $(this).html("<span>预售�?</span>剩余" + c);
        $(this).attr("countDown", a - 60 * 1000)
    })
}
function list2Interval() {
    $(".pro_wantbuy1").each(function (b) {
        var a = parseInt($(this).attr("countDown"));
        var c = formatCountDown(a);
        $(this).html("<i>剩余" + c + "</i>预售�?");
        $(this).attr("countDown", a - 60 * 1000)
    })
}
function formatCountDown(f) {
    f = f / 1000;
    if (f < 0) {
        f = 0
    }
    var e = Math.floor(f / (3600 * 24));
    var a = Math.floor(f % (3600 * 24) / 3600);
    var c = Math.floor(f % 3600 / 60);
    var d = Math.floor(f % 60);
    var b = "";
    if (e != 0) {
        b = b + e + "�?"
    }
    b = b + +a + "�?" + c + "�?";
    return b
}
function resetConditions() {
    jQuery("#bId").val("");
    jQuery("#startPrice").val("");
    jQuery("#endPrice").val("");
    jQuery("#price").val("null-null");
    jQuery("#attributeValues").val("");
    setDivFlag();
    jQuery("#productForm").submit()
}
function setDivFlag() {
    if (jQuery("#firstGoodsList").length > 0 && jQuery("#firstGoodsList").is(":visible") == true) {
        jQuery("#divFlag").val("first")
    } else {
        if (jQuery("#secondGoodsList").length > 0 && jQuery("#secondGoodsList").is(":visible") == true) {
            jQuery("#divFlag").val("second")
        }
    }
}
function getPageNo(a) {
    if (a != null) {
        jQuery("#pageNo").attr("value", a);
        setDivFlag();
        jQuery("#productForm").submit()
    }
}
function getSPageNo() {
    var a = jQuery("#sPageNo").attr("value");
    var c = /^\d+(\.\d+)?$/;
    if (!c.test(a)) {
        showMessageDiv("只能输入数字", "只能输入数字")
    }
    if (a != null) {
        var b = jQuery("#finalPageNum").val();
        if (a > b) {
            a = b
        }
        jQuery("#pageNo").attr("value", a);
        setDivFlag();
        jQuery("#productForm").submit()
    }
}
function ajaxRecentlyProduct(b, a) {
    $.ajax({
        url: "/product/findRecentlyViewedProduct.jhtml",
        type: "POST",
        data: {tplName: b, count: a},
        dataType: "html",
        cache: false,
        success: function (c) {
            $("#recentlyBrowseDiv").html(c)
        }
    })
}
function browseProduct(a, c, b) {
    $.ajax({
        url: "/product/findOtherSalesProduct.jhtml",
        type: "POST",
        data: {productId: a, tplName: c, count: b},
        dataType: "html",
        cache: false,
        success: function (d) {
            $("#browseFinalBuy").html(d)
        }
    })
}
function hostSalesProduct(a, c, b) {
    $.ajax({
        url: "/product/findHotSalesProduct.jhtml",
        type: "POST",
        data: {productId: a, tplName: c, count: b},
        dataType: "html",
        cache: false,
        success: function (d) {
            $("#hostSalesProduct").html(d)
        }
    })
}
function newSaleProducts(b, c, a) {
    $.ajax({
        url: "/product/findNewSaleProducts.jhtml",
        type: "POST",
        data: {categoryId: b, tplName: c, count: a},
        dataType: "html",
        cache: false,
        success: function (d) {
            $("#newSaleProducts").html(d)
        }
    })
}
function merchantNewSaleProducts(b, a, c) {
    $.ajax({
        url: "/product/findMerchantNewSaleProducts.jhtml",
        type: "POST",
        data: {tplName: b, count: a, merchantId: c},
        dataType: "html",
        cache: false,
        success: function (d) {
            $("#newSaleProducts").html(d)
        }
    })
}
function IsNum(d) {
    var c = jQuery(d).val();
    var b = /^\d+$/;
    if (c.constructor === String) {
        var a = b.test(c);
        if (!a) {
            jQuery(d).val(1)
        }
    }
}
function IsMoney(d) {
    var c = jQuery(d).val();
    var b = /^[1-9][0-9]*(\.\d*)?$|^0(\.\d*)?$/;
    if (c.constructor === String) {
        var a = b.test(c);
        if (!a) {
            jQuery(d).val("")
        }
    }
};