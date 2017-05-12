<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--[if lt IE 8]>
<input type="hidden" id="baseContext" name="baseContext" value="">
<div class="llsq hidden">
<div class="llsq_cont">
<ul>
<li class="llsq_ico"></li>
<li>
<dl>您正在使用存在<span>安全漏洞</span>的Internet Explorer过期版本。包括shengyuan.cn在内的许多网站都不再支持，</dl>
<dl>这意味着在升级浏览器前，您将无法更好地体验本站服务。我们建议您使用<a
href="http://windows.microsoft.com/zh-cn/internet-explorer/download-ie" target="_blank">
Internet Explorer8.0+</a>以获得最佳体验。
</dl>
</li>
<li class="llsq_l3"><a class="llsq_btn" target="_blank"
href="http://windows.microsoft.com/zh-cn/internet-explorer/download-ie"></a></li>
<div class="clear"></div>
</ul>
<div>
<span class="llsq_close"></span>
</div>
</div>
</div>
<![endif]-->
<!--/*顶部小导航 开始*/-->
<!--gg-->
<div class="clear"></div>

<!---------------------------------header--------------------------------------->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta property="qc:admins" content="15633007266305671516636">

<script>
    $().ready(function () {
        //导航下拉
        var sortControl = fm.getElem('#Jsort');
        var sortList = fm.getElem('#sortList');
        fm.hide(sortList);
        if ('index' == 'index') {
            fm.show(sortList);
        } else {
            fm.addEvent(sortControl, 'mouseenter', function (e) {
                fm.slideDown(sortList, 210);
            });
            fm.addEvent(sortControl, 'mouseleave', function (e) {
                fm.slideUp(sortList, 210);
            });
        }
        //加载header购物车数量和消息数量信息
        ajaxCount('');
    });

    $(function () {
        //tab选项卡JS
        $('.tab-nav li').mouseover(function () {
            var liindex = $('.tab-nav li').index(this);
            $(this).addClass('active').siblings().removeClass('active');
            $('.tab-nr li').eq(liindex).fadeIn(150).siblings('.tab-nr li').hide();
        });
        //产品图片JS
        $(".tab-nr li .pro-img").hover(function () {
            var e = this;
            $(e).stop().animate({marginLeft: "-5px"}, 250, function () {
                $(e).animate({marginLeft: "-5px"}, 250);
            });
        }, function () {
            var e = this;
            $(e).stop().animate({marginLeft: "0px"}, 250, function () {
            });
        });
    });
</script>

<script type="text/javascript">
    var base = '';
    var attachSite = 'http://www.shengyuan.cn';
    var headTop = 0;

    $().ready(function () {
        if ('index' != 'index') {
            headTop = $("#floatXtopBg").position().top;
            $(window).bind("scroll", function () {
                var $ele = $("#floatXtopBg");
                var scrollTop = $(document).scrollTop();
                if (scrollTop > headTop) {
                    $ele.addClass("xtop_postive");
                    $("body").css({
                        "padding-top": "30px"
                    });
                } else {
                    $ele.removeClass("xtop_postive");
                    $("body").css({
                        "padding-top": "0"
                    });
                }
            });
        }


        var $headerLogin = $("#headerLogin");
        var $headerRegister = $("#headerRegister");
        var $headerLogout = $("#headerLogout");

        $headerLogin.attr("href", "/login.jhtml?redirectUrl=" + encodeURIComponent(window.location.href));
        $.ajax({
            url: "/index/getUsername.jhtml",
            type: "GET",
            dataType: "text",
            cache: false,
            async: false,
            success: function (username) {
                if (username != null && username != "") {
                    jQuery("#username").append("<span class='name_b'>" + username + "</span>");
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

        $(".jing-tips").find(".close").click(function () {
            $(".jing-tips").hide();
        });

    });

    //退出登录
    function logOut() {
        var url = window.location.href;
        window.location.href = "/indexLogout.jhtml?url=" + encodeURIComponent(url);
    }

</script>
<div class="in_choice" id="commonPucCookieId" style="display:none">
    <input type="hidden" id="sessionMid" value="0012">
    <a href="javascript:;" title="关闭" class="close">关闭</a>

    <div class="wrap">
        <div class="in_choice_txt">请选择收货地址所在街道</div>
        <div class="in_choice_md">
            <div class="xian"></div>
			<span id="Province" alt="请选择省份">
				<b class="">湖南省</b>
				<ul style="height: 125px; display: none;">
                    <li><a href="javascript:;" areaid="1" alt="北京市" title="北京市">北京市</a></li>
                    <li><a href="javascript:;" areaid="18" alt="天津市" title="天津市">天津市</a></li>
                    <li><a href="javascript:;" areaid="35" alt="河北省" title="河北省">河北省</a></li>
                    <li><a href="javascript:;" areaid="219" alt="山西省" title="山西省">山西省</a></li>
                    <li><a href="javascript:;" areaid="351" alt="内蒙古自治区" title="内蒙古自治区">内蒙古自治区</a></li>
                    <li><a href="javascript:;" areaid="465" alt="辽宁省" title="辽宁省">辽宁省</a></li>
                    <li><a href="javascript:;" areaid="580" alt="吉林省" title="吉林省">吉林省</a></li>
                    <li><a href="javascript:;" areaid="650" alt="黑龙江省" title="黑龙江省">黑龙江省</a></li>
                    <li><a href="javascript:;" areaid="792" alt="上海市" title="上海市">上海市</a></li>
                    <li><a href="javascript:;" areaid="810" alt="江苏省" title="江苏省">江苏省</a></li>
                    <li><a href="javascript:;" areaid="926" alt="浙江省" title="浙江省">浙江省</a></li>
                    <li><a href="javascript:;" areaid="1028" alt="安徽省" title="安徽省">安徽省</a></li>
                    <li><a href="javascript:;" areaid="1150" alt="福建省" title="福建省">福建省</a></li>
                    <li><a href="javascript:;" areaid="1245" alt="江西省" title="江西省">江西省</a></li>
                    <li><a href="javascript:;" areaid="1357" alt="山东省" title="山东省">山东省</a></li>
                    <li><a href="javascript:;" areaid="1515" alt="河南省" title="河南省">河南省</a></li>
                    <li><a href="javascript:;" areaid="1692" alt="湖北省" title="湖北省">湖北省</a></li>
                    <li class="active"><a href="javascript:;" areaid="1809" alt="湖南省" title="湖南省">湖南省</a></li>
                    <li><a href="javascript:;" areaid="1946" alt="广东省" title="广东省">广东省</a></li>
                    <li><a href="javascript:;" areaid="2089" alt="广西壮族自治区" title="广西壮族自治区">广西壮族自治区</a></li>
                    <li><a href="javascript:;" areaid="2213" alt="海南省" title="海南省">海南省</a></li>
                    <li><a href="javascript:;" areaid="2240" alt="重庆市" title="重庆市">重庆市</a></li>
                    <li><a href="javascript:;" areaid="2279" alt="四川省" title="四川省">四川省</a></li>
                    <li><a href="javascript:;" areaid="2482" alt="贵州省" title="贵州省">贵州省</a></li>
                    <li><a href="javascript:;" areaid="2580" alt="云南省" title="云南省">云南省</a></li>
                    <li><a href="javascript:;" areaid="2726" alt="西藏自治区" title="西藏自治区">西藏自治区</a></li>
                    <li><a href="javascript:;" areaid="2807" alt="陕西省" title="陕西省">陕西省</a></li>
                    <li><a href="javascript:;" areaid="2925" alt="甘肃省" title="甘肃省">甘肃省</a></li>
                    <li><a href="javascript:;" areaid="3026" alt="青海省" title="青海省">青海省</a></li>
                    <li><a href="javascript:;" areaid="3078" alt="宁夏回族自治区" title="宁夏回族自治区">宁夏回族自治区</a></li>
                    <li><a href="javascript:;" areaid="3106" alt="新疆维吾尔自治区" title="新疆维吾尔自治区">新疆维吾尔自治区</a></li>
                    <li><a href="javascript:;" areaid="3219" alt="台湾省" title="台湾省">台湾省</a></li>
                    <li><a href="javascript:;" areaid="3292" alt="香港特别行政区" title="香港特别行政区">香港特别行政区</a></li>
                    <li><a href="javascript:;" areaid="3314" alt="澳门特别行政区" title="澳门特别行政区">澳门特别行政区</a></li>
                </ul>
				<input type="hidden" name="cho_Province1" value="1809|湖南省">
			</span>
			<span id="City" alt="请选择市区">
				<b>郴州市</b>
				<ul style="height: 125px; display: none;">
                    <li><a href="javascript:;" areaid="1810" alt="长沙市" title="长沙市">长沙市</a></li>
                    <li><a href="javascript:;" areaid="1820" alt="株洲市" title="株洲市">株洲市</a></li>
                    <li><a href="javascript:;" areaid="1830" alt="湘潭市" title="湘潭市">湘潭市</a></li>
                    <li><a href="javascript:;" areaid="1836" alt="衡阳市" title="衡阳市">衡阳市</a></li>
                    <li><a href="javascript:;" areaid="1849" alt="邵阳市" title="邵阳市">邵阳市</a></li>
                    <li><a href="javascript:;" areaid="1862" alt="岳阳市" title="岳阳市">岳阳市</a></li>
                    <li><a href="javascript:;" areaid="1872" alt="常德市" title="常德市">常德市</a></li>
                    <li><a href="javascript:;" areaid="1882" alt="张家界市" title="张家界市">张家界市</a></li>
                    <li><a href="javascript:;" areaid="1887" alt="益阳市" title="益阳市">益阳市</a></li>
                    <li class="active"><a href="javascript:;" areaid="1894" alt="郴州市" title="郴州市">郴州市</a></li>
                    <li><a href="javascript:;" areaid="1906" alt="永州市" title="永州市">永州市</a></li>
                    <li><a href="javascript:;" areaid="1918" alt="怀化市" title="怀化市">怀化市</a></li>
                    <li><a href="javascript:;" areaid="1931" alt="娄底市" title="娄底市">娄底市</a></li>
                    <li><a href="javascript:;" areaid="1937" alt="湘西土家族苗族自治州" title="湘西土家族苗族自治州">湘西土家族苗族自治州</a></li>
                </ul>
				<input type="hidden" name="cho_City" value="1894|郴州市">
			</span>
			<span id="Area" alt="请选择地区">
				<b class="click">请选择地区</b>
				<ul style="height: 125px; display: block;">
                    <li><a href="javascript:;" areaid="1895" alt="北湖区" title="北湖区">北湖区</a></li>
                    <li><a href="javascript:;" areaid="1896" alt="苏仙区" title="苏仙区">苏仙区</a></li>
                    <li><a href="javascript:;" areaid="3568" alt="高新区" title="高新区">高新区</a></li>
                    <li><a href="javascript:;" areaid="1897" alt="桂阳县" title="桂阳县">桂阳县</a></li>
                    <li><a href="javascript:;" areaid="1898" alt="宜章县" title="宜章县">宜章县</a></li>
                    <li><a href="javascript:;" areaid="1899" alt="永兴县" title="永兴县">永兴县</a></li>
                    <li><a href="javascript:;" areaid="1900" alt="嘉禾县" title="嘉禾县">嘉禾县</a></li>
                    <li><a href="javascript:;" areaid="1901" alt="临武县" title="临武县">临武县</a></li>
                    <li><a href="javascript:;" areaid="1902" alt="汝城县" title="汝城县">汝城县</a></li>
                    <li><a href="javascript:;" areaid="1903" alt="桂东县" title="桂东县">桂东县</a></li>
                    <li><a href="javascript:;" areaid="1904" alt="安仁县" title="安仁县">安仁县</a></li>
                    <li><a href="javascript:;" areaid="1905" alt="资兴市" title="资兴市">资兴市</a></li>
                </ul>
				<input type="hidden" name="cho_Area" value="请选择地区">
			</span>
			<span id="Street" alt="请选择街道" class="hidden">
				<b>请选择街道</b>
				<ul style="height: 125px; display: none;"></ul>
				<input type="hidden" name="cho_Street" value="请选择街道">
			</span>
        </div>
        <div class="hours-red2"></div>
        <div class="psfw"></div>
        <div class="go">
            <input type="hidden" id="selectAreaId" value="">
            <span><a class="go_shoping" href="javascript:;">开启购物之旅</a></span>
            <a class="select_default" href="javascript:;">随便看看</a>
        </div>
    </div>
</div>
<div class="jing-tips hidden" style="display: block;">
    <div><a href="javascript:;" class="close">x</a>
        <font color="red">生源闪购对郴州市内地址，采取就近门店配送原则，请正确选择您的配送街道，以确保您购买的商品能及时送到您手中，感谢您的配合。</font>
    </div>
</div>
<div class="clear"></div>
<div class="header" id="floatXtopBg">
    <div class="header-wrap">
        <div class="left">
            <div class="login-reg">
                Hi, <a href="http://www.shengyuan.cn/member/index.jhtml" id="username"></a>欢迎来生源闪购！<a
                    href="http://www.shengyuan.cn/login.jhtml?redirectUrl=http%3A%2F%2Fwww.shengyuan.cn%2F"
                    id="headerLogin">请登录</a><a href="http://www.shengyuan.cn/register.jhtml"
                                               id="headerRegister">免费注册</a><a href="javascript:logOut();"
                                                                              style="display: none;" id="headerLogout">退出</a><i>配送至：</i>
            </div>
            <div class="add-wrap">
                <span id="add"><a href="javascript:;"><i></i>当前没有选中配送地址</a></span>

                <div class="navgaline"></div>
                <div class="add-wrapper">
                    <div class="select-address">
                        <ul id="address">
                            <li class="other_addr"><label></label><a style="cursor:pointer;">送到其他地址</a></li>
                        </ul>
                    </div>
                    <div class="choice-add" id="divOne_1">
                        <div class="xian"></div>
                    </div>
                </div>
            </div>
            <div class="serv_dian">服务门店：生源Smile精品店</div>
        </div>
        <div class="right">
            <ul>
                <li><a href="http://www.shengyuan.cn/member/order/list.jhtml">我的订单</a></li>
                <li class="myhome">
                    <a href="http://www.shengyuan.cn/member/index.jhtml"><i></i>我的生源闪购</a>

                    <div class="my-home">
                        <a href="http://www.shengyuan.cn/member/favorite/list.jhtml">我的收藏</a>
                        <a href="http://www.shengyuan.cn/member/coupon_code/list.jhtml">我的优惠券</a>
                        <a href="http://www.shengyuan.cn/member/point_record/list.jhtml">我的闪豆</a>
                        <a href="http://www.shengyuan.cn/member/receiver/list.jhtml">我的收货地址</a>
                    </div>
                </li>
                <li class="phone">
                    <a href="http://www.shengyuan.cn/index/phoneDownLoad.jhtml">手机版</a>

                    <div class="ph-one"><img src="/SYSG/resources/front/images/weixin.gif"><br>随时看 随地逛</div>
                    <div class="navgaline"></div>
                </li>
                <li class="naviga">
                    <a href="http://www.shengyuan.cn/#"><i></i>网站导航</a>

                    <div class="navigation">
                        <div class="naviga-hot">
                            <h1>热门推荐</h1>

                            <div>
                                <a href="http://www.shengyuan.cn/sub/CSJhTFCQBJ.jhtml">买赠专区</a>
                                <a href="http://www.shengyuan.cn/sub/DzmI9iUxK9lE.jhtml">生鲜精品惠</a>
                                <a href="http://www.shengyuan.cn/sub/e13dy9jJAu7.jhtml">食品安全惠</a>
                                <a href="http://www.shengyuan.cn/sub/LKAjIhFm01.jhtml">家庭生活惠</a>
                            </div>
                        </div>
                        <div class="naviga-channel">
                            <h1>特色频道</h1>

                            <div>
								<span>
									<a href="http://www.shengyuan.cn/sub/2A2PvDDQ5ub.jhtml">每日鲜</a>
									<a href="http://www.shengyuan.cn/sub/EIkIJlJHMvtu.jhtml">量贩式</a>
									<a href="http://www.shengyuan.cn/sub/n846FjPaYYe.jhtml">名酒汇</a>
								</span>
								<span>
									<a href="http://www.shengyuan.cn/sub/QQBk3HYeFBuB.jhtml">特产专区</a>
									<!--<a href="#">品牌街</a>-->
								</span>
                            </div>
                        </div>
                        <div class="naviga-service">
                            <h1>服务指南</h1>

                            <div>
                                <a id="showCityBtn" href="http://www.shengyuan.cn/article/list/3.jhtml">购物指南</a>
                                <a href="http://www.shengyuan.cn/article/list/4.jhtml">服务方式</a>
                                <a href="http://www.shengyuan.cn/article/list/5.jhtml">配送方式</a>
                                <a href="http://www.shengyuan.cn/article/list/6.jhtml">售后服务</a>
                            </div>
                        </div>
                    </div>
                    <div class="navgaline"></div>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="in-top">
    <div class="in-top-wrap">
        <div class="in-top-t">
            <div class="logo">
                <!--2016动画开始-->
                <div class="logif"></div>
                <!--2016动画结束-->
                <a href="./生源闪购——郴州本地的网上商城，送货上门_files/生源闪购——郴州本地的网上商城，送货上门.html">
                    <img src="/SYSG/resources/front/images/logo.jpg">
                </a>
            </div>
            <div class="rsea">
                <div class="seach">
                    <div class="keyword search_result_pop"></div>
                    <form action="http://www.shengyuan.cn/product/search.jhtml" id="submitForm" name="submitForm"
                          method="get">
                        <input type="hidden" name="categoryId" id="search_category">

                        <div class="seachbj">
                            <span><input name="搜索" type="button" id="search_keyword" value="搜索"></span>
                            <input name="keyword" id="keyword" type="text" value="请输入您要购买的商品名称..." autocomplete="off">
                        </div>
                    </form>
                    <div class="seach—hot">
                        <a href="javascript:;"
                           onclick="location.href=&#39;/product/search.jhtml?keyword=%E5%B7%A7%E5%85%8B%E5%8A%9B&#39;">巧克力</a>
                        <a href="javascript:;"
                           onclick="location.href=&#39;/product/search.jhtml?keyword=%E5%95%A4%E9%85%92&#39;">啤酒</a>
                        <a href="javascript:;"
                           onclick="location.href=&#39;/product/search.jhtml?keyword=%E5%A5%B6%E7%B2%89&#39;">奶粉</a>
                        <a href="javascript:;"
                           onclick="location.href=&#39;/product/search.jhtml?keyword=%E7%89%9B%E5%A5%B6&#39;">牛奶</a>
                        <a href="javascript:;"
                           onclick="location.href=&#39;/product/search.jhtml?keyword=%E5%8F%AF%E4%B9%90&#39;">可乐</a>
                        <a href="javascript:;"
                           onclick="location.href=&#39;/product/search.jhtml?keyword=%E8%B0%83%E5%92%8C%E6%B2%B9&#39;">调和油</a>
                        <a href="javascript:;"
                           onclick="location.href=&#39;/product/search.jhtml?keyword=%E6%B4%97%E5%8F%91%E6%B0%B4&#39;">洗发水</a>
                        <a href="javascript:;"
                           onclick="location.href=&#39;/product/search.jhtml?keyword=%E6%B2%90%E6%B5%B4%E9%9C%B2&#39;">沐浴露</a>
                        <a href="javascript:;"
                           onclick="location.href=&#39;/product/search.jhtml?keyword=%E7%89%99%E8%86%8F&#39;">牙膏</a>
                        <a href="javascript:;"
                           onclick="location.href=&#39;/product/search.jhtml?keyword=%E6%B4%97%E8%A1%A3%E6%B6%B2&#39;">洗衣液</a>
                        <a href="javascript:;"
                           onclick="location.href=&#39;/product/search.jhtml?keyword=%E7%BA%B8%E5%B7%BE&#39;">纸巾</a>
                        <a href="javascript:;"
                           onclick="location.href=&#39;/product/search.jhtml?keyword=%E5%8D%AB%E7%94%9F%E5%B7%BE&#39;">卫生巾</a>
                        <a href="javascript:;"
                           onclick="location.href=&#39;/product/search.jhtml?keyword=%E5%9E%83%E5%9C%BE%E8%A2%8B&#39;">垃圾袋</a>
                    </div>
                </div>
                <div class="cart"><i id="cartCount">0</i><a href="http://www.shengyuan.cn/cart/list.jhtml">我的购物车</a>
                </div>
            </div>
        </div>
        <div class="in-top-b">
            <div class="top-nav" id="Jsort"><i></i><span>全部商品分类</span>

                <div class="sub-nav" id="sortList" style="display: block;">
                    <ul>
                        <li class="menus1 per-menu1">
                            <h3>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1610" target="_blank"
                                   id="h30">海淘商城</a>
                            </h3>

                            <div class="xl">
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1611" title="奶粉">奶粉</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1612" title="宝宝食品">宝宝食品</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1613" title="宝宝洗护">宝宝洗护</a>
                            </div>

                            <div class="dorpmenu sub-menu1">
                                <div class="dorpmenubj">
                                    <!--子类内容-->
                                    <div class="dorpmenu-left">
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1611">奶粉</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1621">PRE奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1622">1段奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1623">2段奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1624">3段奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1680">4段奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1708">5段奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1625">1+段奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1626">2+段奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1627">成人奶粉</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1612">宝宝食品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1628">肉泥</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1629">果泥</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1630">米粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1631">维生素钙铁锌</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1613">宝宝洗护</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1632">洗发沐浴</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1633">宝宝护肤</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1614">宝宝用品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1634">纸尿裤</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1635">耳温枪</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1636">奶瓶奶嘴</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1615">美妆护肤</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1683">护手霜</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1667">眼霜</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1637">洁面</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1638">爽肤</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1639">面部精华</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1640">面膜</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1641">乳液</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1642">面霜</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1643">防晒霜</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1679">护肤套装</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1616">魅力彩妆</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1644">粉底</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1645">睫毛膏</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1646">眼线</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1647">卸妆</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1648">眉笔</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1649">唇膏</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1650">BB霜</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1682">香水</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1617">个人护理</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1681">口腔洁净</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1651">洗发护发</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1652">沐浴润肤</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1653">卫生巾</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1618">食品保健</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1654">儿童营养</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1655">孕妇营养</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1656">补血补铁</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1619">生活电器</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1686">衣物清洁</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1684">皮衣皮裤</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1657">净水器</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1658">净水壶</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1620">厨房用具</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1659">厨房锅具</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1660">炒锅</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1661">刀具</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1730">每日特价</a>
                                            </dt>
                                        </dl>
                                    </div>
                                    <div class="dorpmenu-right"><a
                                            href="http://www.shengyuan.cn/product/query.jhtml?pcId=1611"
                                            target="_blank"><img
                                            src="/SYSG/resources/front/images/272f388b-035c-4d57-a30f-064b1a320e38.jpg"></a>
                                    </div>
                                    <!---->
                                </div>
                            </div>
                        </li>
                        <li class="menus2 per-menu2">
                            <h3>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1265" target="_blank"
                                   id="h31">每日尝鲜</a>
                            </h3>

                            <div class="xl">
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1268" title="水果">水果</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1267" title="蔬菜">蔬菜</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1270" title="肉类">肉类</a>
                            </div>

                            <div class="dorpmenu sub-menu2">
                                <div class="dorpmenubj">
                                    <!--子类内容-->
                                    <div class="dorpmenu-left">
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1268">水果</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1564">国产水果</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1231">进口水果</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1282">精选水果</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1267">蔬菜</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1278">有机蔬菜</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1234">精品蔬菜</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1270">肉类</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1271">家畜</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1274">家禽</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1275">加工肉类</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1721">野味</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1269">低温制品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1285">低温奶制品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1522">汤圆</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1521">水饺/馄饨</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1520">速冻面食</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1561">米酒</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1705">其他</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1287">蛋、杂粮</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1233">蛋制品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1209">杂粮</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1288">鲜蛋类</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1485">水产/海鲜</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1489">鱼类</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1487">冰鲜丸子</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1486">虾蟹</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1599">贝类</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1602">水产加工制品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1707">其他</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1578">豆制品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1579">豆制品</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1494">熟食</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1496">烧烤/油炸类</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1497">卤制类</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1598">凉菜/酱菜</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1720">外卖熟食</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1543">面包/早点</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1544">面包</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1713">面点</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1714">汤粉</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1687">生鲜套餐组合</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1688">菜类套餐</a>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="dorpmenu-right"><a
                                            href="http://www.shengyuan.cn/product/query.jhtml?pcId=1267"
                                            target="_blank"><img
                                            src="/SYSG/resources/front/images/78f26819-7ead-4f63-a1e6-c32ed5a0c187.jpg"></a>
                                    </div>
                                    <!---->
                                </div>
                            </div>
                        </li>
                        <li class="menus3 per-menu3">
                            <h3>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=866" target="_blank" id="h32">粮油调味</a>
                            </h3>

                            <div class="xl">
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=932" title="厨房调味">厨房调味</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=933" title="粮油">粮油</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=936" title="干货">干货</a>
                            </div>

                            <div class="dorpmenu sub-menu3">
                                <div class="dorpmenubj">
                                    <!--子类内容-->
                                    <div class="dorpmenu-left">
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=932">厨房调味</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1197">调味料</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1198">调味酱</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1346">调味油</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1515">料酒/黄酒</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1199">酱油</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1519">鸡精/味精</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1200">腐乳</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1203">汤料</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1204">醋</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1201">糖</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1207">食盐</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1699">罐头系列</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1518">果酱</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1205">火锅料</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1317">泡菜/酱菜/榨菜</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=933">粮油</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1208">食用油</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1210">大米</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1211">挂面</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1703">粉丝</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1702">米粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1690">面粉</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=936">干货</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1526">袋装干果</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1223">袋装海干品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1225">袋装菌菇类</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1222">袋装药材、汤料</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1340">散装南北干货</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1731">罐装干果</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1755">袋装南北干货</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=937">方便速食</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1592">粽子</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1339">糍粑、糕点</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1229">方便面</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1704">方便米饭</a>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="dorpmenu-right"><a
                                            href="http://www.shengyuan.cn/product/query.jhtml?pcId=932" target="_blank"><img
                                            src="/SYSG/resources/front/images/06d2274b-865a-4e83-819b-989e05bf64da.jpg"></a>
                                    </div>
                                    <!---->
                                </div>
                            </div>
                        </li>
                        <li class="menus4 per-menu4">
                            <h3>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1370" target="_blank"
                                   id="h33">特产/进口</a>
                            </h3>

                            <div class="xl">
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1371" title="进口休闲食品">进口休闲</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1372" title="进口粮油调味">进口粮油</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1373" title="进口酒水饮品">进口酒水</a>
                            </div>

                            <div class="dorpmenu sub-menu4">
                                <div class="dorpmenubj">
                                    <!--子类内容-->
                                    <div class="dorpmenu-left">
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1371">进口休闲食品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1377">进口饼干</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1378">进口巧克力糖果</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1379">进口膨化</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1380">进口坚果</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1381">进口果冻</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1382">进口果干</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1383">进口曲奇</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1384">无糖低糖系列</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1596">进口面点/糕点</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1600">进口米果</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1469">肉类/海产/蔬菜类</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1372">进口粮油调味</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1385">进口米面</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1386">进口调味酱</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1387">进口橄榄油</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1388">进口罐头</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1389">进口调味粉</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1373">进口酒水饮品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1583">洋酒</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1390">进口饮品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1391">进口啤酒</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1392">进口葡萄酒</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1468">进口白酒</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1374">进口冲调</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1396">进口茶饮</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1395">进口蜂蜜柚子茶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1394">进口咖啡</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1393">进口其他冲饮</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1375">进口牛奶乳品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1397">进口牛奶</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1376">特色/特产</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1402">郴州特产</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1539">新疆特产</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1603">江苏特产</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1706">东北特产</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1399">好想你干果</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1724">进口速冻食品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1725">速冻牛排/羊排</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1726">速冻虾蟹</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1727">速冻火锅丸子类</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1728">其他速冻商品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1729">速冻鱼类</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1746">进口婴儿奶粉</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1747">1段奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1748">2段奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1749">3段奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1750">4段奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1751">1+段奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1752">2+段奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1753">PRE段奶粉</a>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="dorpmenu-right"><a
                                            href="http://www.shengyuan.cn/product/query.jhtml?pcId=1371"
                                            target="_blank"><img
                                            src="/SYSG/resources/front/images/1172eacf-2a64-4c8f-8f3b-cc56671e1584.jpg"></a>
                                    </div>
                                    <!---->
                                </div>
                            </div>
                        </li>
                        <li class="menus5 per-menu5">
                            <h3>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=860" target="_blank" id="h34">食品饮料</a>
                            </h3>

                            <div class="xl">
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=891" title="饼干糕点">饼干糕点</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=892" title="蜜饯零食">蜜饯零食</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=893" title="饮料饮品">饮料饮品</a>
                            </div>

                            <div class="dorpmenu sub-menu5">
                                <div class="dorpmenubj">
                                    <!--子类内容-->
                                    <div class="dorpmenu-left">
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=891">饼干糕点</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1319">米果、泡芙</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1341">沙琪玛</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1342">饼干（杯）</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1343">饼干（卷）</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1350">饼干（夹心）</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1354">饼干（棒）</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=954">饼干</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=955">传统糕饼</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=957">蛋糕</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=958">威化</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=959">曲奇</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=960">派</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=961">蛋卷</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=962">面包</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1608">单个/盒装月饼</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=892">蜜饯零食</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1344">膨化食品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=970">枣</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=968">梅子</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=967">肉干肉松</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=964">薯片</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=963">熟食小吃</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1351">海苔</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1573">槟榔</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=966">其他蜜饯</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=965">其他小食</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1574">禽类小食</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=893">饮料饮品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1562">醋饮料</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=971">果汁</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=972">即饮茶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=973">碳酸饮料</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=974">水</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=975">罐头、八宝粥</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=976">功能饮料</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=977">咖啡饮料</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=895">冲饮谷物</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=984">麦片谷物</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=985">成人奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=986">冲饮奶茶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=987">其他营养品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=988">豆奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=989">芝麻糊</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1352">果味冲饮</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1581">蜂蜜/柚子茶</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=894">糖果/巧克力</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=978">硬糖</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=979">巧克力</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=980">口香糖</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=981">果冻、布丁</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1502">奶糖</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=983">软糖</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=897">牛奶乳品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=997">果味奶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=998">纯牛奶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1507">植物蛋白奶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1000">儿童奶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1001">酸奶</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=898">咖啡茶饮</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1580">花茶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1511">乌龙茶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1003">绿茶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1509">黑茶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1353">红茶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1510">普洱茶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1512">袋泡茶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1004">速溶咖啡</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1009">咖啡伴侣</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1665">白茶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1666">保健茶</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=896">酒类商城</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1542">礼盒酒</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=992">白酒</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=993">果味酒</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=994">啤酒</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=995">葡萄酒</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=996">滋补酒</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=899">坚果炒货</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1010">瓜子、花生</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1013">开心果</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1012">核桃</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1499">杏仁/腰果</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1500">碧根果、夏威夷果</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1501">坚果礼盒</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1011">其他坚果</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1498">散装休闲食品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1609">散装月饼</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1540">散装果冻</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1506">散装饼干/糕点</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1505">散装糖果/巧克力</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1504">散装果脯/蜜饯</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1503">散装熟食</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1541">散装坚果</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1735">滋补保健</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1738">综合保健品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1737">中草药</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1736">阿胶膏方</a>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="dorpmenu-right"><a
                                            href="http://www.shengyuan.cn/product/query.jhtml?pcId=897" target="_blank"><img
                                            src="/SYSG/resources/front/images/a1c3f7ce-52af-4551-899d-30a1a38a66cc.jpg"></a>
                                    </div>
                                    <!---->
                                </div>
                            </div>
                        </li>
                        <li class="menus6 per-menu6">
                            <h3>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=863" target="_blank" id="h35">个人护理</a>
                            </h3>

                            <div class="xl">
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=911" title="面部护理">面部护理</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1547" title="美容护理">美容护理</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=912" title="洗发护发">洗发护发</a>
                            </div>

                            <div class="dorpmenu sub-menu6">
                                <div class="dorpmenubj">
                                    <!--子类内容-->
                                    <div class="dorpmenu-left">
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=911">面部护理</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1078">乳液面霜</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1079">洗面奶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1080">面膜</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1081">润唇膏</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1085">防晒美白</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1084">护手霜</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1570">护肤套装</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1086">爽肤水</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1087">眼部护理</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1559">身体护肤品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1554">香水</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1601">其它护理</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1547">美容护理</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1553">彩妆用品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1552">发饰品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1551">浴用饰品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1550">指甲用具</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1549">梳/镜</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1548">其他美容用品</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=912">洗发护发</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1089">洗发水</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1091">护发</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1092">染发剂</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1093">洗护套装</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1094">防脱护理系列</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=913">口腔护理</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1096">牙膏</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1097">牙刷/牙线/牙贴</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1098">漱口水</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=914">女士护理</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1100">卫生巾</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1102">棉条护垫</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1588">其他女士护理用品</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=915">沐浴用品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1105">沐浴露</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1106">香皂</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1107">洗手液</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1108">花露水</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=916">男士护理</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1110">男士洁面</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1113">男士面霜/露</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1114">男士爽肤水</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1115">男士护肤套装</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=917">成人用品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1116">避孕套</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1745">测孕工具</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1475">进口个人护理</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1480">进口面部护理</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1479">进口洗发、护发</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1478">进口沐浴用品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1535">进口口腔护理</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1476">进口卫生巾、护垫</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1534">进口其它护理</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1533">进口成人用品</a>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="dorpmenu-right"><a
                                            href="http://www.shengyuan.cn/product/query.jhtml?pcId=912" target="_blank"><img
                                            src="/SYSG/resources/front/images/6fb974e8-da5e-4eed-a913-d104e3f8c7d7.jpg"></a>
                                    </div>
                                    <!---->
                                </div>
                            </div>
                        </li>
                        <li class="menus7 per-menu7">
                            <h3>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=864" target="_blank" id="h36">母婴用品</a>
                            </h3>

                            <div class="xl">
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=919" title="宝宝用品">宝宝用品</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=920" title="玩具乐器">玩具乐器</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=921" title="婴儿奶粉">婴儿奶粉</a>
                            </div>

                            <div class="dorpmenu sub-menu7">
                                <div class="dorpmenubj">
                                    <!--子类内容-->
                                    <div class="dorpmenu-left">
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=919">宝宝用品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1565">新生儿纸尿裤/片</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1566">S纸尿裤/片</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1567">M纸尿裤/片</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1568">L纸尿裤/片</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1569">XL纸尿裤/片</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1595">成人纸尿裤</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1589">卫生护理</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1587">婴儿护肤</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1585">爽身粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1122">奶瓶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1123">奶嘴</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1572">奶瓶餐具清洁</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1591">牙胶餐具</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1590">孕妈专区</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=920">玩具乐器</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1133">遥控/电动</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1134">模型玩具</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1135">早教益智</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1137">积木拼插</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1138">娃娃玩偶</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1139">动漫周边</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1141">毛绒玩具</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1142">乐器相关</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1143">户外玩具</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1571">摇铃/床铃</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=921">婴儿奶粉</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1147">1段奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1146">2段奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1145">3段奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1149">4段奶粉</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=923">宝宝辅食</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1160">米粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1161">面条</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1162">果蔬肉泥</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1734">宝宝零食</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=924">营养专区</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1163">清火类幼儿益生菌</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1723">综合营养</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1482">妈妈奶粉</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1483">孕妇奶粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1484">女士奶粉</a>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="dorpmenu-right"><a
                                            href="http://www.shengyuan.cn/product/query.jhtml?pcId=921" target="_blank"><img
                                            src="/SYSG/resources/front/images/74fedc98-9267-4640-8d09-62bf9779d03a.jpg"></a>
                                    </div>
                                    <!---->
                                </div>
                            </div>
                        </li>
                        <li class="menus8 per-menu8">
                            <h3>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=867" target="_blank" id="h37">家庭清洁</a>
                            </h3>

                            <div class="xl">
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=941" title="衣物清洁护理">衣物清洁</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=942" title="家庭清洁护理">家庭清洁</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=943" title="清洁用具">清洁用具</a>
                            </div>

                            <div class="dorpmenu sub-menu8">
                                <div class="dorpmenubj">
                                    <!--子类内容-->
                                    <div class="dorpmenu-left">
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=941">衣物清洁护理</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1235">洗衣液</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1236">洗衣粉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1237">衣物护理</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1238">洗衣皂</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=942">家庭清洁护理</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1240">其他清洁护理</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1241">洗洁精</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1242">空气清新</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1243">洁厕用品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1244">油污清洁剂</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1245">驱虫用品</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=943">清洁用具</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1247">拖把/扫把/垃圾铲</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1249">家务手套</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1248">卫浴用品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1250">晒衣架/叉</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1546">桶/盆/筛/水瓢</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1246">清洁配件</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=944">纸制品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1251">抽纸</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1252">卷纸</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1253">手帕纸</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1254">湿巾</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1255">厨房用纸</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=945">一次性用品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1256">保鲜膜/袋/锡纸</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1257">一次性杯</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1258">一次性其他用品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1259">一次性餐具</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1470">进口家庭清洁</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1474">衣物清洁护理</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1472">家庭清洁护理</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1471">进口其它清洁护理</a>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="dorpmenu-right"><a
                                            href="http://www.shengyuan.cn/product/query.jhtml?pcId=942" target="_blank"><img
                                            src="/SYSG/resources/front/images/a5208a3e-0ae9-4a8a-8bef-c512a1a6b3d8.jpg"></a>
                                    </div>
                                    <!---->
                                </div>
                            </div>
                        </li>
                        <li class="menus9 per-menu9">
                            <h3>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=862" target="_blank" id="h38">家居用品</a>
                            </h3>

                            <div class="xl">
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=904" title="家纺日用品">家纺日用</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=908" title="床上用品">床上用品</a>
                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=905" title="餐具水杯">餐具水杯</a>
                            </div>

                            <div class="dorpmenu sub-menu9">
                                <div class="dorpmenubj">
                                    <!--子类内容-->
                                    <div class="dorpmenu-left">
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=904">家纺日用品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1675">围巾/手套/耳套/护膝</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1732">鞋垫</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1597">泳圈/泳衣泳裤</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1047">内衣/内裤</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1044">睡衣</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1045">拖鞋</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1046">袜子</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1048">晴/雨伞</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1049">毛巾浴巾</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=908">床上用品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1481">电热毯</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1069">枕头</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1071">被子</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1073">抱枕/靠垫/座垫</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1560">凉席</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1584">蚊帐</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1662">毯子</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=905">餐具水杯</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1053">水具/茶具</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1052">餐桌器具</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1054">陶瓷餐具</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1055">保鲜餐具</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1050">水杯</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1051">保温水壶/杯</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1057">套装餐具</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1545">果篮/果盘</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=906">厨具工具</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1537">汤煲</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1060">炒锅</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1064">压力锅</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1062">奶锅、蒸锅、煎锅</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1059">其它烹调用具</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1061">厨房配件</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1663">烧烤用具</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=907">家居五金</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1586">风扇</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1576">驱蚊用品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1577">电吹风</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1555">灯具</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1538">温度/湿度仪</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1065">电池/充电器</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1066">插线板/插座</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1067">转换器</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1582">取暖电器</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1740">检测维修</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=909">收纳整理</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1605">地垫</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1556">家居整理、置物架</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1074">收纳系列、压缩袋</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1075">其他工具（洗衣袋、粘钩）</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1321">文具用品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1607">书包/背包</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1606">文具礼盒</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1604">笔记本、练习本</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1325">票据</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1333">笔、筒</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1334">夹、袋、包</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1335">针、尺、刀</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1337">计算器</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1338">涂改</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1336">其他办公用品</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1322">体育用品</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1326">羽毛球</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1328">跳绳</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1329">篮球</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1330">护件</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1331">乒乓球</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1332">其他体育用品</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1691">中国银都</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1692">纯银手镯</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1693">美美饰品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1694">宝宝饰品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1695">纯银保健杯</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1696">纯银餐具</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1697">纯银茶具</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1698">纯银酒具</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1323">影像、图文</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1324">碟片</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1327">书籍</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1593">礼品（喜品）</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1678">储值卡/会员卡</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1594">盆栽</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1689">节日喜品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1739">悬挂装饰品</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1669">生源百货</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1670">男女服装、鞋</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1673">美容护肤</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1672">珠宝首饰</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1722">饰品</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1671">箱包</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1710">围巾/手套/耳套/护膝/帽子</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1733">手机配饰</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1717">鑫达银业</a>
                                            </dt>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1718">水杯</a>
                                            </dd>
                                            <dd>
                                                <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1719">打火机</a>
                                            </dd>
                                        </dl>
                                    </div>
                                    <div class="dorpmenu-right">
                                        <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=908" target="_blank">
                                            <img src="/SYSG/resources/front/images/baeb72e5-294e-48d8-9387-f266f50fe478.jpg">
                                        </a>
                                    </div>
                                    <!---->
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="top-menu">
                <ul>
                    <li>
                        <a href="index.jsp">
                            首页
                        </a>
                    </li>
                    <li>
                        <a href="http://www.shengyuancn/sub/iWr1uuH4DA.jhtml" target="_blank">
                            海淘商城
                        </a>
                    </li>
                    <li>
                        <a href="http://www.shengyuan.cn/sub/XQB0VeAwass.jhtml" target="_blank">
                            每日尝鲜
                        </a>
                    </li>
                    <li>
                        <a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1691" target="_blank">
                            中国银都
                        </a>
                    </li>
                    <li>
                        <a href="http://www.shengyuan.cn/sub/hRkdLmXiWQqp.jhtml" target="_blank">
                            秒杀专区
                        </a>
                    </li>
                    <li>
                        <a href="http://www.shengyuan.cn/sub/qaDSTCNTnx.jhtml">
                            闪购积分
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>