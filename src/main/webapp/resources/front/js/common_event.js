function closePublicDiv() {
    jQuery("#cartInfoDiv").remove();
    jQuery("#outDiv").remove()
}
function goCartList(a) {
    window.location.href = "/cart/list.jhtml"
}
function ajaxCount(a) {
    $.ajax({
        url: "/index/ajaxCount.jhtml", type: "GET", dataType: "text", cache: false, success: function (b) {
            jQuery("#msgCount").html(b)
        }
    })
}
function addFavorite(e, f, a) {
    if ($.checkLogin()) {
        $.ajax({
            url: "/member/favorite/add.jhtml?id=" + e,
            type: "POST",
            dataType: "json",
            cache: false,
            success: function (g) {
                showMessageDiv(g.type, g.content)
            }
        })
    } else {
        var c = location.href;
        var b = f + a;
        if (c.indexOf("?") > 0) {
            var d = c.substring(c.indexOf("?"), c.length);
            b += d
        }
        $("#redirectURL").val(b);
        $("#div_login_reg").show()
    }
}
function dealStrLen(e, a, b) {
    if (a != null && a != "") {
        if (e != null && e != "" && e != "null") {
            var d = e.length;
            if (d > a) {
                var c = e.substring(0, a);
                return c + b
            } else {
                return e
            }
        } else {
            return e
        }
    } else {
        if (b != null && b != "" && b != "null") {
            return e + b
        } else {
            return e
        }
    }
};