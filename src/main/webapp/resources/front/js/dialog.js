function commentProduct(g, f) {
    var b, a, c, d, e;
    b = $(window).width();
    a = $(window).height();
    c = $(document).scrollTop();
    d = b / 2 - 200;
    e = a / 2 - 150;
    $("#" + g).css({left: d, top: e + c});
    $(window).scroll(function () {
        b = $(window).width();
        a = $(window).height();
        c = $(document).scrollTop();
        d = b / 2 - 200;
        e = a / 2 - 150;
        $("#" + g).css({left: d, top: e + c})
    })
}
function conmmon_open(g, f, d, a, c, b) {
    jQuery("#parameterVal").val(b);
    var e = $("#" + f);
    e.fadeIn("slow");
    $("body").append("<div id=" + g + "></div>");
    $("#" + g).css({
        width: $(document).width(),
        height: $(document).height(),
        top: "0",
        left: "0",
        opacity: "0.5",
        position: "absolute",
        "z-index": "100",
        background: "#000"
    });
    commentProduct(f, d)
}
function conmmon_close(b, a) {
    $("#" + a).fadeOut("slow");
    $("#" + b).remove()
};