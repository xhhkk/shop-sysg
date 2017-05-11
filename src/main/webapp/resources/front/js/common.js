Sy = {version: "1.0"};
Sy.ns = function () {
    var a = arguments, o = null, i, j, d, rt;
    for (i = 0; i < a.length; ++i) {
        d = a[i].split(".");
        rt = d[0];
        eval("if (typeof " + rt + ' == "undefined"){' + rt + " = {};}; o = " + rt + ";");
        for (j = 1; j < d.length; ++j) {
            o[d[j]] = o[d[j]] || {};
            o = o[d[j]]
        }
    }
};
var shopxx = {base: "", locale: "zh_CN"};
var setting = {
    priceScale: "2",
    priceRoundType: "roundHalfUp",
    currencySign: "��",
    currencyUnit: "Ԫ",
    uploadImageExtension: "jpg,jpeg,bmp,gif,png",
    uploadFlashExtension: "swf,flv",
    uploadMediaExtension: "swf,flv,mp3,wav,avi,rm,rmvb",
    uploadFileExtension: "zip,rar,7z,doc,docx,xls,xlsx,ppt,pptx"
};
var messages = {
    "shop.message.success": "�����ɹ�",
    "shop.message.error": "��������",
    "shop.dialog.ok": "ȷ&nbsp;&nbsp;��",
    "shop.dialog.cancel": "ȡ&nbsp;&nbsp;��",
    "shop.dialog.deleteConfirm": "��ȷ��Ҫɾ����",
    "shop.dialog.clearConfirm": "��ȷ��Ҫ�����",
    "shop.validate.required": "����",
    "shop.validate.email": "E-mail��ʽ����",
    "shop.validate.url": "��ַ��ʽ����",
    "shop.validate.date": "���ڸ�ʽ����",
    "shop.validate.dateISO": "���ڸ�ʽ����",
    "shop.validate.pointcard": "���ÿ���ʽ����",
    "shop.validate.number": "ֻ������������",
    "shop.validate.digits": "ֻ�����������������",
    "shop.validate.minlength": "���Ȳ�����С��{0}",
    "shop.validate.maxlength": "���Ȳ��������{0}",
    "shop.validate.rangelength": "���ȱ�����{0}-{1}֮��",
    "shop.validate.min": "������С��{0}",
    "shop.validate.max": "���������{0}",
    "shop.validate.range": "������{0}-{1}֮��",
    "shop.validate.accept": "�����׺����",
    "shop.validate.equalTo": "�������벻һ��",
    "shop.validate.remote": "�������",
    "shop.validate.integer": "ֻ������������",
    "shop.validate.positive": "ֻ������������",
    "shop.validate.negative": "ֻ�������븺��",
    "shop.validate.decimal": "��ֵ����������Χ",
    "shop.validate.pattern": "��ʽ����",
    "shop.validate.extension": "�ļ���ʽ����",
    "shop.validate.pattern": "��ʽ����ȷ"
};
function getQueryString(a) {
    var b = new RegExp("(^|&)" + a + "=([^&]*)(&|$)", "i");
    var c = window.location.search.substr(1).match(b);
    if (c != null) {
        return unescape(c[2])
    }
    return null
}
function addCookie(c, d, b) {
    if (arguments.length > 1 && c != null) {
        if (b == null) {
            b = {}
        }
        if (d == null) {
            b.expires = -1
        }
        if (typeof b.expires == "number") {
            var e = b.expires;
            var a = b.expires = new Date();
            a.setTime(a.getTime() + e * 1000)
        }
        document.cookie = encodeURIComponent(String(c)) + "=" + encodeURIComponent(String(d)) + (b.expires ? "; expires=" + b.expires.toUTCString() : "") + (b.path ? "; path=" + b.path : "") + (b.domain ? "; domain=" + b.domain : ""), (b.secure ? "; secure" : "")
    }
}
function getCookie(a) {
    if (a != null) {
        var b = new RegExp("(?:^|; )" + encodeURIComponent(String(a)) + "=([^;]*)").exec(document.cookie);
        return b ? decodeURIComponent(b[1]) : null
    }
}
function removeCookie(b, a) {
    addCookie(b, null, a)
}
function currency(d, c, a) {
    if (d != null) {
        var b;
        if (setting.priceRoundType == "roundHalfUp") {
            b = (Math.round(d * Math.pow(10, setting.priceScale)) / Math.pow(10, setting.priceScale)).toFixed(setting.priceScale)
        } else {
            if (setting.priceRoundType == "roundUp") {
                b = (Math.ceil(d * Math.pow(10, setting.priceScale)) / Math.pow(10, setting.priceScale)).toFixed(setting.priceScale)
            } else {
                b = (Math.floor(d * Math.pow(10, setting.priceScale)) / Math.pow(10, setting.priceScale)).toFixed(setting.priceScale)
            }
        }
        if (c) {
            b = setting.currencySign + b
        }
        if (a) {
            b += setting.currencyUnit
        }
        return b
    }
}
function message(b) {
    if (b != null) {
        var a = messages[b] != null ? messages[b] : b;
        if (arguments.length == 1) {
            return a
        } else {
            if ($.isArray(arguments[1])) {
                $.each(arguments[1], function (c, d) {
                    a = a.replace(new RegExp("\\{" + c + "\\}", "g"), d)
                });
                return a
            } else {
                $.each(Array.prototype.slice.apply(arguments).slice(1), function (c, d) {
                    a = a.replace(new RegExp("\\{" + c + "\\}", "g"), d)
                });
                return a
            }
        }
    }
}
Sy.ns("Sy.tools");
(function (b) {
    var a = {
        11: "����",
        12: "���",
        13: "�ӱ�",
        14: "ɽ��",
        15: "���ɹ�",
        21: "����",
        22: "����",
        23: "������ ",
        31: "�Ϻ�",
        32: "����",
        33: "�㽭",
        34: "����",
        35: "����",
        36: "����",
        37: "ɽ��",
        41: "����",
        42: "���� ",
        43: "����",
        44: "�㶫",
        45: "����",
        46: "����",
        50: "����",
        51: "�Ĵ�",
        52: "����",
        53: "����",
        54: "���� ",
        61: "����",
        62: "����",
        63: "�ຣ",
        64: "����",
        65: "�½�",
        71: "̨��",
        81: "���",
        82: "����",
        91: "���� "
    };
    b.cidInfo = function (c) {
        var f = 0;
        var g = "";
        if (!/^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/.test(c)) {
            return {type: "error", message: "�Ƿ�����"}
        }
        c = c.replace(/x$/i, "a");
        if (a[parseInt(c.substr(0, 2))] == null) {
            return {type: "error", message: "�Ƿ�����"}
        }
        sBirthday = c.substr(6, 4) + "-" + Number(c.substr(10, 2)) + "-" + Number(c.substr(12, 2));
        var h = new Date(sBirthday.replace(/-/g, "/"));
        if (sBirthday != (h.getFullYear() + "-" + (h.getMonth() + 1) + "-" + h.getDate())) {
            return {type: "error", message: "�Ƿ�����"}
        }
        for (var e = 17; e >= 0; e--) {
            f += (Math.pow(2, e) % 11) * parseInt(c.charAt(17 - e), 11)
        }
        if (f % 11 != 1) {
            return {type: "error", message: "�Ƿ�֤��"}
        }
        return {
            type: "success",
            city: a[parseInt(c.substr(0, 2))],
            birthday: sBirthday,
            sex: c.substr(16, 1) % 2 ? "0" : "1"
        }
    }
})(Sy.tools);
(function (c) {
    var d = 100;
    c.checkLogin = function () {
        var e = false;
        c.ajax({
            url: shopxx.base + "/login/check.jhtml",
            type: "GET",
            dataType: "json",
            cache: false,
            async: false,
            success: function (f) {
                e = f
            }
        });
        return e
    };
    c.redirectLogin = function (g, f) {
        var e = shopxx.base + "/login.jhtml";
        if (g != null) {
            e += "?redirectUrl=" + encodeURIComponent(g)
        }
        if (f != null) {
            c.message("warn", f);
            setTimeout(function () {
                location.href = e
            }, 1000)
        } else {
            location.href = e
        }
    };
    var a;
    var b;
    c.message = function () {
        var e = {};
        if (c.isPlainObject(arguments[0])) {
            e = arguments[0]
        } else {
            if (typeof arguments[0] === "string" && typeof arguments[1] === "string") {
                e.type = arguments[0];
                e.content = arguments[1]
            } else {
                return false
            }
        }
        if (e.type == null || e.content == null) {
            return false
        }
        if (a == null) {
            a = c('<div class="xxMessage"><div class="messageContent message' + e.type + 'Icon"></div></div>');
            if (!window.XMLHttpRequest) {
                a.append('<iframe class="messageIframe"></iframe>')
            }
            a.appendTo("body")
        }
        a.children("div").removeClass("messagewarnIcon messageerrorIcon messagesuccessIcon").addClass("message" + e.type + "Icon").html(e.content);
        a.css({"margin-left": -parseInt(a.outerWidth() / 2), "z-index": d++}).show();
        clearTimeout(b);
        b = setTimeout(function () {
            a.hide()
        }, 3000);
        return a
    };
    c(document).ajaxSend(function (h, g, f) {
        if (!f.crossDomain && f.type != null && f.type.toLowerCase() == "post") {
            var e = getCookie("token");
            if (e != null) {
                g.setRequestHeader("token", e)
            }
        }
    });
    c(document).ajaxComplete(function (j, i, h) {
        var e = i.getResponseHeader("loginStatus");
        var g = i.getResponseHeader("tokenStatus");
        if (e == "accessDenied") {
            c.redirectLogin(location.href, "���¼���ٽ��в���")
        } else {
            if (g == "accessDenied") {
                var f = getCookie("token");
                if (f != null) {
                    c.extend(h, {global: false, headers: {token: f}});
                    c.ajax(h)
                }
            }
        }
    })
})(jQuery);
$().ready(function () {
    $("form").submit(function () {
        var b = $(this);
        if (b.attr("method") != null && b.attr("method").toLowerCase() == "post" && b.find("input[name='token']").size() == 0) {
            var a = getCookie("token");
            if (a != null) {
                b.append('<input type="hidden" name="token" value="' + a + '" />')
            }
        }
    })
});
if ($.validator != null) {
    $.extend($.validator.messages, {
        required: message("shop.validate.required"),
        email: message("shop.validate.email"),
        url: message("shop.validate.url"),
        date: message("shop.validate.date"),
        dateISO: message("shop.validate.dateISO"),
        pointcard: message("shop.validate.pointcard"),
        number: message("shop.validate.number"),
        digits: message("shop.validate.digits"),
        minlength: $.validator.format(message("shop.validate.minlength")),
        maxlength: $.validator.format(message("shop.validate.maxlength")),
        rangelength: $.validator.format(message("shop.validate.rangelength")),
        min: $.validator.format(message("shop.validate.min")),
        max: $.validator.format(message("shop.validate.max")),
        range: $.validator.format(message("shop.validate.range")),
        accept: message("shop.validate.accept"),
        equalTo: message("shop.validate.equalTo"),
        remote: message("shop.validate.remote"),
        integer: message("shop.validate.integer"),
        positive: message("shop.validate.positive"),
        negative: message("shop.validate.negative"),
        decimal: message("shop.validate.decimal"),
        pattern: message("shop.validate.pattern"),
        extension: message("shop.validate.extension"),
        pattern: message("shop.validate.pattern")
    });
    $.validator.setDefaults({
        errorClass: "fieldError",
        ignore: ".ignore",
        ignoreTitle: true,
        errorPlacement: function (a, b) {
            var c = b.closest("span.fieldSet");
            if (c.size() > 0) {
                a.appendTo(c)
            } else {
                a.insertAfter(b)
            }
        },
        submitHandler: function (a) {
            $(a).find(":submit").prop("disabled", true);
            a.submit()
        }
    })
}
;