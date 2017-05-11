$().ready(function () {
    function c() {
        var f = $("#keyword").val();
        if (f != null && $.trim(f) != "" && f != "请输入您要购买的商品名称...") {
            $.ajax({
                type: "POST",
                url: "/index/findWordByKey.jhtml",
                data: "keyword=" + f,
                cache: true,
                dataType: "html",
                success: function (g) {
                    if (g != "") {
                        var h = $("#submitForm");
                        $(".search_result_pop").html(g);
                        $(".search_result_pop").show();
                        $(".search_result_pop").find(".wordClick").click(function () {
                            $("#keyword").val($(this).find("span").attr("wordName"));
                            if ($(this).find(".ctg_span").length > 0) {
                                var i = $(this).find(".ctg_span").attr("categoryId");
                                $("#search_category").val(i)
                            }
                            h.submit()
                        }).mouseover(function () {
                            $(this).addClass("selected")
                        }).mouseout(function () {
                            $(this).removeClass("selected")
                        });
                        $(".search_result_pop").find(".close").click(function () {
                            $(".search_result_pop").hide()
                        })
                    }
                }
            })
        } else {
            $(".search_result_pop").hide()
        }
    }

    $("#keyword").focus(function () {
        var f = $("#keyword").val();
        if (f == "请输入您要购买的商品名称...") {
            $("#keyword").attr("value", "")
        }
        c()
    });
    $("#keyword").blur(function () {
        var f = $("#keyword").val();
        if (f == null || $.trim(f) == "") {
            $("#keyword").attr("value", "请输入您要购买的商品名称...")
        }
    });
    $("#search_keyword").click(function () {
        var f = $("#keyword").val();
        var g = $("#submitForm");
        if (f != null && $.trim(f) != "" && f != "请输入您要购买的商品名称...") {
            $("#tagIds").val("");
            g.submit()
        }
    });
    var b = 0;
    $(".search_result_pop").mouseover(function () {
        if (b) {
            clearInterval(b)
        }
    }).mouseout(function () {
        b = setTimeout("$('.search_result_pop').hide();", 1000)
    });
    $("#keyword").mouseover(function () {
        if (b) {
            clearInterval(b)
        }
    }).mouseout(function () {
        b = setTimeout("$('.search_result_pop').hide();", 1000)
    });
    var e = -1;
    var d = -1;
    $("#keyword").keyup(function a(f) {
        if ($("#keyword").val() == "") {
            $(".search_result_pop").hide();
            return
        } else {
            var g = $(".search_result_pop").find(".wordClick").length;
            if ((f.keyCode == 38 || f.keyCode == 40)) {
                if (g > 0) {
                    d = e;
                    if (f.keyCode == 38) {
                        if (e == -1) {
                            e = g - 1
                        } else {
                            e = e - 1;
                            if (e < 0) {
                                e = g - 1
                            }
                        }
                        if (e != -1) {
                            $("#wordListId_" + e).addClass("selected");
                            $("#keyword").val($("#wordListId_" + e).find("span").attr("wordName"))
                        }
                        if (d != -1) {
                            $("#wordListId_" + d).removeClass("selected")
                        }
                    }
                    if (f.keyCode == 40) {
                        if (e == g - 1) {
                            e = 0
                        } else {
                            e = e + 1;
                            if (e > g - 1) {
                                e = 0
                            }
                        }
                        if (e != -1) {
                            $("#wordListId_" + e).addClass("selected");
                            $("#keyword").val($("#wordListId_" + e).find("span").attr("wordName"))
                        }
                        if (d != -1) {
                            $("#wordListId_" + d).removeClass("selected")
                        }
                    }
                }
            } else {
                if (f.keyCode == 27) {
                    e = -1;
                    d = -1;
                    $(".search_result_pop").hide()
                } else {
                    c();
                    e = -1;
                    d = -1
                }
            }
        }
    })
});