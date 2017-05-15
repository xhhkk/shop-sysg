/**
 * Created by Administrator on 17-3-20.
 */
Sy.ns("Sy.shop.subject");
(function (b) {
    var a;

    function c() {
        $.ajax({url: base + "/subject/hits.jhtml", type: "GET", data: {id: a}})
    }

    b.pageinit = function (d, f, g, e) {
        a = d;
        jiathis_config.title = "我在@生源闪购 发现了一个非常不错的活动�?" + f + "。感觉不错，分享�?�?";
        jiathis_config.summary = e;
        jiathis_config.pic = attachSite + g;
        c()
    }
})(Sy.shop.subject);
var session_memberId = "";
$.ajax({
    url: "/index/getMemberId.jhtml", type: "GET", dataType: "text", cache: false, async: false, success: function (a) {
        if (a != null && a != "") {
            session_memberId = a
        }
    }
});
var code = window.location.pathname.match("[^/]\\w+[$.]")[0];
var tempURL = "http://" + window.location.hostname + "/share.jhtml?shareType=0&code=" + code.substring(0, code.length - 1) + "&terminal=0&friendId=" + session_memberId;
var jiathis_config = {
    url: tempURL,
    title: "",
    pic: "",
    summary: "",
    imageUrl: "http://v2.jiathis.com/code_mini/images/r4.gif",
    imageWidth: 20,
    sm: "t163,kaixin001,renren,douban,tsina,tqq,qzone,weixin",
    siteNum: 8,
    data_track_clickback: true,
    marginTop: 400,
    showClose: false,
    hideMore: true
};
$(function () {
    $(".ckepopBottom").html("<div>&nbsp;</div>")
});