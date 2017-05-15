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

                    <div class="ph-one"><img src="${path}/resources/front/images/weixin.gif"><br>随时看 随地逛</div>
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
                    <img src="${path}/resources/front/images/logo.jpg">
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
                           onclick="location.href=/product/search.jhtml?keyword=%E5%B7%A7%E5%85%8B%E5%8A%9B&#39;">巧克力</a>
                        <a href="javascript:;"
                           onclick="location.href=/product/search.jhtml?keyword=%E5%95%A4%E9%85%92&#39;">啤酒</a>
                        <a href="javascript:;"
                           onclick="location.href=/product/search.jhtml?keyword=%E5%A5%B6%E7%B2%89&#39;">奶粉</a>
                        <a href="javascript:;"
                           onclick="location.href=/product/search.jhtml?keyword=%E7%89%9B%E5%A5%B6&#39;">牛奶</a>
                        <a href="javascript:;"
                           onclick="location.href=/product/search.jhtml?keyword=%E5%8F%AF%E4%B9%90&#39;">可乐</a>
                        <a href="javascript:;"
                           onclick="location.href=/product/search.jhtml?keyword=%E8%B0%83%E5%92%8C%E6%B2%B9&#39;">调和油</a>
                        <a href="javascript:;"
                           onclick="location.href=/product/search.jhtml?keyword=%E6%B4%97%E5%8F%91%E6%B0%B4&#39;">洗发水</a>
                        <a href="javascript:;"
                           onclick="location.href=/product/search.jhtml?keyword=%E6%B2%90%E6%B5%B4%E9%9C%B2&#39;">沐浴露</a>
                        <a href="javascript:;"
                           onclick="location.href=/product/search.jhtml?keyword=%E7%89%99%E8%86%8F&#39;">牙膏</a>
                        <a href="javascript:;"
                           onclick="location.href=/product/search.jhtml?keyword=%E6%B4%97%E8%A1%A3%E6%B6%B2&#39;">洗衣液</a>
                        <a href="javascript:;"
                           onclick="location.href=/product/search.jhtml?keyword=%E7%BA%B8%E5%B7%BE&#39;">纸巾</a>
                        <a href="javascript:;"
                           onclick="location.href=/product/search.jhtml?keyword=%E5%8D%AB%E7%94%9F%E5%B7%BE&#39;">卫生巾</a>
                        <a href="javascript:;"
                           onclick="location.href=/product/search.jhtml?keyword=%E5%9E%83%E5%9C%BE%E8%A2%8B&#39;">垃圾袋</a>
                    </div>
                </div>
                <div class="cart"><i id="cartCount">0</i><a href="#">我的购物车</a>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            $(function () {
                $.get("/shop-sysg/menu/list", {}, function (data, status) {
                    if (status == "success") {
                        var htmlStr;

                        $.each(data[0], function (i, v) {
                            htmlStr = "";
                            htmlStr += '<li class="menus1 per-menu1">';
                            htmlStr += '<h3><a href="#" target="_blank" id="h30">' + v.typeName + '</a></h3>';
                            htmlStr += '<div class="xl">';

                            htmlStr += '</div>';
                            htmlStr += '</li>';
                        });
                    }
                }, "json");
            });
        </script>

        <div class="in-top-b">
            <div class="top-nav" id="Jsort">
                <i></i>
                <span>全部商品分类</span>

                <div class="sub-nav" id="sortList" style="display: block;">
                    <ul id="menuAll">

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