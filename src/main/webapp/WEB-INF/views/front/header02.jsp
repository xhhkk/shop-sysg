<!---------------  海淘商城页面  ------------->

<%
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path ;
  request.setAttribute("path", basePath);
%>

  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="Content-Type" name="renderer" content="text/html; charset=utf-8; webkit" />
  <meta name="keywords" content="进口食品" />
  <meta name="description" content="" />

<link href="${path}/resources/front/css/base.css" rel="stylesheet" type="text/css">
<link href="${path}/resources/front/css/default.css" rel="stylesheet" type="text/css">

  <script type="text/javascript">
    $(function () {
      Sy.shop.subject.pageinit('160', '海淘商城生源保正购', '');
    });
  </script>

  <script type="text/javascript">
    $().ready(function () {
      var showtime = 3000;
      var s = setInterval("show()", showtime);
      $("div.slide-num a").bind("click", function () {
        // 设置初始化下标显示值 ,保存当前 <a> 标签 所在集合中的下标
        $("#showid").attr("value", $(this).index());
        // 清楚当前 时间延迟对象
        clearTimeout(s);
        // 初始化 显示
        show();
        // 重启延迟显示计划
        s = setInterval("show()", showtime);
      });
      //$("div.bannerbg a").bind("mouseover", function () {clearTimeout(s);});
      //$("div.bannerbg a").bind("mouseout", function () {s = setInterval("show()", showtime);});
    });

    function show() {
      // 获取初始化 显示下标值 ，初始化 0
      var sid = $("#showid").val();
      // 获得当前图片集合大小
      var len = $("ul.dabanner_bg li").length;
      if (sid != null && sid != "") {
        $("ul.dabanner_bg li").each(function (_index, _this) {
          // 判断是否与传递进来的 下标值 相等
          if (sid == _index) {
            _this.style.display = 'block';
          } else {
            _this.style.display = 'none';
          }
        });
        $("div.slide-num a").each(function (_index, _this) {
          // 判断是否与传递进来的 下标值 相等
          if (sid == _index) {
            _this.className = 'active';
          } else {
            _this.className = '';
          }
        });
        // 根据当前下标值 ,获得下一级下标
        sid = parseInt(sid) + 1;
        // 保存下一级下标值
        if (sid > len - 1) {
          // 超过下标最大值时 ,默认设置为 0
          $("#showid").attr("value", 0);
        } else {
          // 未超过最大值时 ,保存下一级下标值
          $("#showid").attr("value", sid);
        }
      }
    }
  </script>

<script type="text/javascript" src="${path}/resources/front/js/jquery.min.js"></script>
<script type="text/javascript" src="${path}/resources/front/js/fm.js"></script>
<script type="text/javascript" src="${path}/resources/front/js/easyui.min.js"></script>
<script type="text/javascript" src="${path}/resources/front/js/system.message.js"></script>
<script type="text/javascript" src="${path}/resources/front/js/common.js"></script>
<script type="text/javascript" src="${path}/resources/front/js/common_event.js"></script>
<script type="text/javascript" src="${path}/resources/front/js/product_common_event.js"></script>
<script type="text/javascript" src="${path}/resources/front/js/subject_common.js"></script>

<script type="text/javascript" src="${path}/resources/front/js/common_event.js"></script>
<script type="text/javascript" src="${path}/resources/front/js/jquery.cookie.js"></script>
<script type="text/javascript" src="${path}/resources/front/js/cart_event.js"></script>
<script type="text/javascript" src="${path}/resources/front/js/search.js"></script>

<script type="text/javascript" src="${path}/resources/front/js/citySelect.js"></script>
<script type="text/javascript" src="${path}/resources/front/js/jquery.cookie.js"></script>
<script type="text/javascript" src="${path}/resources/front/js/top_receiver.js"></script>

<script>
  $().ready(function() {
    //导航下拉
    var sortControl=fm.getElem('#Jsort');
    var sortList=fm.getElem('#sortList');
    fm.hide(sortList);
    if(''=='index'){
      fm.show(sortList);
    }else{
      fm.addEvent(sortControl,'mouseenter',function(e){
        fm.slideDown(sortList,210);
      });
      fm.addEvent(sortControl,'mouseleave',function(e){
        fm.slideUp(sortList,210);
      });
    }
    //加载header购物车数量和消息数量信息
    ajaxCount('');
  });

  $(function(){
    //tab选项卡JS
    $('.tab-nav li').mouseover(function(){
      var liindex = $('.tab-nav li').index(this);
      $(this).addClass('active').siblings().removeClass('active');
      $('.tab-nr li').eq(liindex).fadeIn(150).siblings('.tab-nr li').hide();
    });
    //产品图片JS
    $(".tab-nr li .pro-img").hover(function() {
      var e = this;
      $(e).stop().animate({marginLeft: "-5px"}, 250, function() {
        $(e).animate({marginLeft: "-5px"}, 250);
      });
    },function(){
      var e = this;
      $(e).stop().animate({marginLeft: "0px"}, 250, function() {
      });
    });
  });
</script>

<script type="text/javascript">
  var base = '';
  var attachSite = 'http://www.shengyuan.cn';
  var headTop = 0;

  $().ready(function() {
    if(''!='index'){
      headTop = $("#floatXtopBg").position().top;
      $(window).bind("scroll",function() {
        var $ele = $("#floatXtopBg");
        var scrollTop=$(document).scrollTop();
        if (scrollTop > headTop) {
          $ele.addClass("xtop_postive");
          $("body").css({
            "padding-top":"30px"
          });
        } else {
          $ele.removeClass("xtop_postive");
          $("body").css({
            "padding-top":"0"
          });
        }
      });
    }


    var $headerLogin = $("#headerLogin");
    var $headerRegister = $("#headerRegister");
    var $headerLogout = $("#headerLogout");

    $headerLogin.attr("href","/login.jhtml?redirectUrl="+encodeURIComponent(window.location.href));
    $.ajax({
      url: "/index/getUsername.jhtml",
      type: "GET",
      dataType: "text",
      cache: false,
      async: false,
      success: function(username) {
        if (username != null && username!="") {
          jQuery("#username").append("<span class='name_b'>"+username+"</span>");
          $headerLogout.show();
          $headerLogin.hide();
          $headerRegister.hide();
        } else {
          jQuery("#username").empty();
          $headerLogin.show();
          $headerRegister.show();
          $headerLogout.hide();
        }
      }
    });

    $(".jing-tips").find(".close").click(function(){
      $(".jing-tips").hide();
    });

  });

  //退出登录
  function logOut(){
    var url = window.location.href;
    window.location.href="/indexLogout.jhtml?url="+encodeURIComponent(url);
  }

</script>