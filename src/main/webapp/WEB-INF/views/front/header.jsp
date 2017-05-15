<%@ page contentType="text/html;charset=UTF-8" language="java" %>

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="baidu-site-verification" content="QEcYnx9tS8">


  <%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path ;
    request.setAttribute("path", basePath);
  %>

  <meta name="keywords" content="郴州,生源闪购,shengyuan.cn,网购,网上超市,网上商城">
  <meta name="description"
        content="生源闪购——shengyuan.cn，郴州综合网上超市，在线销售食品、日用、洗护、母婴、家居百货、生鲜、进口食品各类优质商品，闪电送达，逐不出户逛超市，体验网上购物新生活！">
  <link href="${path}/resources/front/css/base.css" rel="stylesheet" type="text/css">
  <link href="${path}/resources/front/css/default.css" rel="stylesheet" type="text/css">

  <style id="style-1-cropbar-clipper">/* Copyright 2014 Evernote Corporation. All rights reserved. */
  .en-markup-crop-options {
    top: 18px !important;
    left: 50% !important;
    margin-left: -100px !important;
    width: 200px !important;
    border: 2px rgba(255, 255, 255, .38) solid !important;
    border-radius: 4px !important;
  }
  .en-markup-crop-options div div:first-of-type {
    margin-left: 0px !important;
  }
  </style>

  <%--延迟加载图片--%>
  <script>
    $().ready(function () {
      indexBannerInit();
      findPromotionProduct(5, 1, 0);
      jQuery("img").lazyload({threshold: 200, effect: "fadeIn"});
    })
  </script>

  <script src="${path}/resources/front/js/hm.js"></script>
  <script src="${path}/resources/front/js/jquery.min.js" type="text/javascript"></script>
  <script src="${path}/resources/front/js/dialog.js" type="text/javascript"></script>
  <script src="${path}/resources/front/js/fm.js" type="text/javascript"></script>
  <script src="${path}/resources/front/js/page.js" type="text/javascript"></script>
  <script type="text/javascript" src="${path}/resources/front/js/jquery.validate.js"></script>
  <script type="text/javascript" src="${path}/resources/front/js/common.js"></script>
  <script src="${path}/resources/front/js/jquery.lazyload.min.js" type="text/javascript"></script>
  <script type="text/javascript" src="${path}/resources/front/js/index.js"></script>
  <script src="${path}/resources/front/js/floorleftroll.js" type="text/javascript"></script>

  <!--[if lt IE 8]>
  <script type="text/javascript">
    $().ready(function () {
      $(".llsq").show();
      $(".llsq_close").click(function () {
        headTop = 0;
        $(".llsq").hide();
      });
    });
  </script>
  <![endif]-->

  <script type="text/javascript" src="${path}/resources/front/js/common_event.js"></script>
  <script type="text/javascript" src="${path}/resources/front/js/jquery.cookie.js"></script>
  <script type="text/javascript" src="${path}/resources/front/js/cart_event.js"></script>
  <script type="text/javascript" src="${path}/resources/front/js/search.js"></script>


  <script type="text/javascript" src="${path}/resources/front/js/citySelect.js"></script>
  <script type="text/javascript" src="${path}/resources/front/js/jquery.cookie.js"></script>
  <script type="text/javascript" src="${path}/resources/front/js/top_receiver.js"></script>
