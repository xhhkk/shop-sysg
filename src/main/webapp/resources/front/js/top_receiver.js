Sy.ns("Sy.shop.top.receiver");
(function (f) {
    f.default_city = "";
    function d() {
        $.ajax({
            url: "/common/getAddrByIp.jhtml", type: "GET", dataType: "json", cache: false, success: function (g) {
                if (g.city == "") {
                    f.default_city = "湖南省郴州市"
                } else {
                    f.default_city = g.city
                }
                e()
            }
        })
    }

    function c() {
        $.ajax({
            url: "/index/getMemberReceivers.jhtml",
            type: "GET",
            dataType: "json",
            cache: false,
            success: function (j) {
                var i = "";
                var k = "";
                var g = false;
                if (typeof(j.receiverId) != "undefined") {
                    g = true
                }
                $.each(j.receivers, function (l, m) {
                    if ((g && j.receiverId == m.id) || (!g && m.isDefault == true)) {
                        i += "<li class='member_addr'><label><input type='radio' name='rd_receiver' checked receiverId='" + m.id + "' value='" + m.area + "'>" + m.areaName + "</label><em>" + m.address + "</em></li>";
                        k = m.areaName
                    } else {
                        i += "<li class='member_addr'><label><input type='radio' name='rd_receiver' receiverId='" + m.id + "' value='" + m.area + "'>" + m.areaName + "</label><em>" + m.address + "</em></li>"
                    }
                });
                if (j.area) {
                    if (g && j.receiverId == 0) {
                        i += "<li class='member_addr'><label><input type='radio' checked name='rd_receiver' receiverId='0' value='" + j.area.id + "'>" + j.area.fullName + "</label></li>";
                        k = j.area.fullName
                    } else {
                        i += "<li class='member_addr'><label><input type='radio' name='rd_receiver' receiverId='0' value='" + j.area.id + "'>" + j.area.fullName + "</label></li>"
                    }
                }
                i += "<li class='other_addr'><label></label><a style='cursor:pointer;'>送到其他地址</a></li>";
                $("#address").append(i);
                if ($(".product_psdz").length > 0) {
                    var h = i.replace(new RegExp("name='rd_receiver'", "gm"), "name='psdz_receiver'");
                    $(".product_psdz ul").html(h);
                    if (k != "") {
                        $(".product_psdz b").html(k)
                    } else {
                        $(".product_psdz b").html("当前没有选中配送地址")
                    }
                    $(".product_psdz span").click(function () {
                        $(".product_psdz span").toggleClass("active")
                    })
                }
                if (k != "") {
                    $("#add").html("<a href='javascript:;'><i></i>" + k + "</a>")
                } else {
                    $("#add").html("<a href='javascript:;'><i></i>当前没有选中配送地址</a>");
                    $(".jing-tips").show("fast")
                }
                if (j.store) {
                    $(".serv_dian").text("服务门店：" + j.store.name)
                } else {
                    b()
                }
                $(".other_addr").click(function () {
                    b()
                });
                $(window).bind("scroll", function () {
                    var l = $("#commonPucCookieId");
                    if (l.is(":visible")) {
                        b()
                    }
                });
                $(".member_addr").click(function () {
                    var m = $(this).find("input");
                    var l = window.location.href;
                    window.location.href = "/index/chageArea.jhtml?areaId=" + m.val() + "&url=" + encodeURIComponent(l) + "&receiverId=" + m.attr("receiverId")
                })
            }
        })
    }

    function b() {
        var j = $("#mask_div");
        if (j.length == 0) {
            $("body").append("<div id='mask_div' style='display:none'></div>");
            j = $("#mask_div")
        }
        j.css({
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
        j.fadeIn();
        var i = $("#commonPucCookieId");
        var h = ($(window).width() - i.width()) / 2;
        var g = ($(window).height() - i.height()) / 2;
        i.css({left: h + "px", top: g + "px", "z-index": "9999"});
        i.show()
    }

    function a() {
        var g = window.location.href;
        if (g != null && g != "" && g.length > 0) {
            var h = $("#selectAreaId").val();
            if (h == "") {
                alert("请选择区域或街道")
            } else {
                window.location.href = "/index/delivery.jhtml?areaId=" + h + "&url=" + encodeURIComponent(g)
            }
        }
    }

    function e() {
        $("#commonPucCookieId").citySelect(function (g) {
            $("#selectAreaId").val(g);
            $.ajax({
                type: "POST",
                url: "/index/getStore.jhtml",
                data: "areaId=" + g,
                cache: true,
                dataType: "json",
                success: function (h) {
                    if (h != "") {
                        $(".in_choice_txt").text("服务门店：" + h.store.at3);
                        $(".psfw").text("配送范围：" + h.store.fullName);
                        $(".hours-red2").text(h.areaRemark)
                    }
                }
            })
        }, f.default_city);
        $("#commonPucCookieId").find(".select_default").click(function () {
            $("#mask_div").hide();
            $("#commonPucCookieId").hide()
        });
        $("#commonPucCookieId").find(".go_shoping").click(function () {
            a()
        });
        $("#commonPucCookieId").find(".close").click(function () {
            $("#mask_div").hide();
            $("#commonPucCookieId").hide()
        })
    }

    f.init = function () {
        d();
        c()
    };
    f.local = function () {
        b()
    }
})(Sy.shop.top.receiver);
$(function (a) {
    Sy.shop.top.receiver.init()
});