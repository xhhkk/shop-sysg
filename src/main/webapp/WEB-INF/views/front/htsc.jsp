<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/15
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%@include file="header02.jsp"%>
  <title>海淘商城生源保正购 - 海量进口食品尽在生源网上超市</title>
</head>
<body>
<%@include file="menu02.jsp"%>
<%@include file="right-float.jsp"%>

<!-- 广告 -->
<div class="clear">
</div>
<!----------轮播图------------->
<!--[支持参数:positionId(广告位ID)、isPublic(是否公有)、count(数量)、useCache(是否读缓存)]-->
<input type="hidden" id="showid" name="showid" value="0"/>

<div class="bannerbg ht-banner">
  <ul class="dabanner_bg">
    <li style="background: url(http://www.shengyuan.cn/upload/image/201601/2ccd911a-01b8-4c82-b9aa-1388db0978bd.jpg) no-repeat center top #FFE353;display: block;">
      <a href="javascript:void(0);"></a>
    </li>
    <li style="background: url(http://www.shengyuan.cn/upload/image/201601/f6a16068-c9d6-4d3a-a301-41d8ede4b69d.jpg) no-repeat center top #FFE353;display: none;">
      <a href="javascript:void(0);"></a>
    </li>
  </ul>
  <div class="slide-num">
    <a class="active" href="javascript:void(0);"></a>
    <a href="javascript:void(0);"></a>
  </div>
</div>
<!----------轮播图--结束----------->

<%@include file="footer.jsp"%>
</body>
</html>
