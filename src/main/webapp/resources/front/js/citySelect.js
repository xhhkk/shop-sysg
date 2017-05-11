$.fn.citySelect = function (callBack, defaultCity) {
    if (this.length < 1) {
        return
    }
    var Dsy = function () {
        this.Items = {}
    };
    Dsy.prototype.add = function (id, iArray) {
        this.Items[id] = iArray
    };
    Dsy.prototype.Exists = function (id) {
        if (typeof(this.Items[id]) == "undefined") {
            return false
        }
        return true
    };
    var dsy = new Dsy();
    var spanClick = function () {
        $(".in_choice_md ul").hide();
        $(".in_choice_md b").removeClass("click");
        $(this).siblings("ul").show();
        $(this).addClass("click")
    };
    var liClick = function () {
        var areaName = $(this).attr("alt");
        var areaId = $(this).attr("areaId");
        var $span = $(this).parents("span");
        $span.find("input").val(areaId + "|" + areaName);
        $span.find("b").text(areaName);
        $span.find("li").removeClass("active");
        $(this).parent().addClass("active");
        var spanIndex = $span.index(".in_choice_md span");
        var itemKey = "0";
        $(".in_choice_md span").each(function (i, n) {
            if (i <= spanIndex) {
                var inputIndex = $.inArray($(n).find("input").val(), dsy.Items[itemKey]);
                itemKey += "_" + inputIndex
            }
        });
        if ((dsy.Items[itemKey] && spanIndex == 2) || spanIndex == 3) {
            $("#Street").show()
        } else {
            $("#Street").hide()
        }
        if (spanIndex == $(".in_choice_md span:visible").length - 1) {
            $(".in_choice_md b").unbind("click").bind("click", spanClick);
            callBack(areaId)
        } else {
            var key = "0";
            $(".in_choice_md span").each(function (i, n) {
                if (i > spanIndex) {
                    $(n).find("b").text($(n).attr("alt")).unbind("click");
                    $(n).find("input").val($(n).attr("alt"));
                    $(n).find("ul").empty()
                } else {
                    var inputIndex = $.inArray($(n).find("input").val(), dsy.Items[key]);
                    key += "_" + inputIndex;
                    $(n).find("b").unbind("click").bind("click", spanClick)
                }
                if (i == spanIndex + 1) {
                    $(n).find("b").addClass("click");
                    $(n).find("ul").html(drawHtml(key)).show();
                    $(".in_choice_md a").unbind("click").bind("click", liClick)
                } else {
                    $(n).find("b").removeClass("click");
                    $(n).find("ul").hide()
                }
            })
        }
    };
    var drawHtml = function (key) {
        var areas = dsy.Items[key];
        var html = "";
        $.each(areas, function (i, n) {
            var area = n.split("|");
            html += '<li><a href="javascript:;" areaId="' + area[0] + '" alt="' + area[1] + '" title="' + area[1] + '">' + area[1] + "</a></li>"
        });
        return html
    };
    var cityInit = function () {
        if (dsy.Items.length == 0) {
            return false
        }
        $(".in_choice_md span").each(function (i, n) {
            $(n).find("b").text($(n).attr("alt")).removeClass("click");
            $(n).find("input").val($(n).attr("alt"))
        });
        $(".in_choice_md ul").empty().hide();
        if (!defaultCity) {
            defaultCity = ""
        }
        var key = "0";
        var spanIndex = 0;
        while (true) {
            var curSpan = $(".in_choice_md span").eq(spanIndex);
            curSpan.find("ul").html(drawHtml(key));
            var areas = dsy.Items[key];
            var isFind = false;
            $.each(areas, function (i, n) {
                var area = n.split("|");
                if (defaultCity.indexOf(area[1]) != -1) {
                    curSpan.find("b").text(area[1]).bind("click", spanClick);
                    curSpan.find("input").val(n);
                    curSpan.find("ul a[areaId='" + area[0] + "']").parent().addClass("active");
                    key = key + "_" + i;
                    spanIndex++;
                    isFind = true
                }
            });
            if (!isFind) {
                curSpan.find("ul").show();
                curSpan.find("b").addClass("click");
                break
            }
        }
        $(".in_choice_md a").unbind("click").bind("click", liClick)
    };
    var loadArea = function (param) {
        $.ajax({
            type: "POST",
            url: "/index/getProvince.jhtml",
            data: "param=" + param,
            cache: true,
            dataType: "text",
            success: function (html) {
                if (html != "") {
                    var obj = eval("(" + html + ")");
                    for (var key in obj) {
                        var s = obj[key];
                        var ss = s.split(",");
                        dsy.add(key, ss)
                    }
                    cityInit()
                }
            }
        })
    };
    loadArea(",")
};