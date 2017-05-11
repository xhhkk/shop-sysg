<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
 <%@include file="header.jsp"%>
<body>
 <%@include file="top-bar.jsp"%>
 <%@include file="right-float.jsp"%>
 <%@include file="banner.jsp"%>

 <!---------------------------------------main开始------------------------------------------------------->
 <div class="main">
     <div class="big-title">
         <!----------随机促销商品------------->
         <div class="left-list">
             <div class="in_four-title"><span><a title="换一批" onclick="changeProduct()">换一批</a></span>闪购聚"惠"</div>
             <div class="in_four-pro" id="promotionProduct">
                 <dl>
                     <dd><a target="_blank" href="http://www.shengyuan.cn/products/content/2112044.html?t=171639"><img
                             class="lazyload_img"
                             src="${path}/resources/front/images/5f9d5127-8447-4e72-af24-27ce6ca5b7d4-medium.jpg"
                             data-original="http://www.shengyuan.cn/upload/image/201612/5f9d5127-8447-4e72-af24-27ce6ca5b7d4-medium.jpg"
                             width="175" height="175" style="display: inline;"></a>

                         <p><a href="http://www.shengyuan.cn/products/content/2112044.html?t=171639">小徐瓜瓜大冲辣酱 ...</a></p>

                         <p>¥5.20<i>¥5.50</i></p></dd>
                     <dd><a target="_blank" href="http://www.shengyuan.cn/products/content/2114984.html?t=154557"><img
                             class="lazyload_img"
                             src="${path}/resources/front/images/2b111f0d-2ed9-4b67-87cb-f4178bbe8e25-medium.jpg"
                             data-original="http://www.shengyuan.cn/upload/image/201506/2b111f0d-2ed9-4b67-87cb-f4178bbe8e25-medium.jpg"
                             width="175" height="175" style="display: inline;"></a>

                         <p><a href="http://www.shengyuan.cn/products/content/2114984.html?t=154557">清风超质感新韧时代...</a></p>

                         <p>¥7.20<i>¥7.50</i></p></dd>
                     <dd><a target="_blank" href="http://www.shengyuan.cn/products/content/2116412.html?t=172156"><img
                             class="lazyload_img"
                             src="${path}/resources/front/images/c69acff0-901d-49c6-b048-910ce1fcaf7b-medium.jpg"
                             data-original="http://www.shengyuan.cn/upload/image/201511/c69acff0-901d-49c6-b048-910ce1fcaf7b-medium.jpg"
                             width="175" height="175" style="display: inline;"></a>

                         <p><a href="http://www.shengyuan.cn/products/content/2116412.html?t=172156">洁柔厨房用纸（料理...</a></p>

                         <p>¥13.50<i>¥13.80</i></p></dd>
                     <dd><a target="_blank" href="http://www.shengyuan.cn/products/content/2116413.html?t=172028"><img
                             class="lazyload_img"
                             src="${path}/resources/front/images/b072b158-9d9b-479b-8c26-ef0588e89b06-medium.jpg"
                             data-original="http://www.shengyuan.cn/upload/image/201511/b072b158-9d9b-479b-8c26-ef0588e89b06-medium.jpg"
                             width="175" height="175" style="display: inline;"></a>

                         <p><a href="http://www.shengyuan.cn/products/content/2116413.html?t=172028">洁柔厨房湿巾(25...</a></p>

                         <p>¥16.50<i>¥16.80</i></p></dd>
                     <dd><a target="_blank" href="http://www.shengyuan.cn/products/content/2118991.html?t=141840"><img
                             class="lazyload_img"
                             src="${path}/resources/front/images/f3f392f8-1402-49dd-ba37-3564dfa81914-medium.jpg"
                             data-original="http://www.shengyuan.cn/upload/image/201610/f3f392f8-1402-49dd-ba37-3564dfa81914-medium.jpg"
                             width="175" height="175" style="display: inline;"></a>

                         <p><a href="http://www.shengyuan.cn/products/content/2118991.html?t=141840">洁柔花萃柔肤湿巾(...</a></p>

                         <p>¥4.20<i>¥4.50</i></p></dd>
                 </dl>
             </div>
         </div>
         <!----------随机促销商品结束------------->
         <!----------首页文章------------->
         <div class="right-list">
             <h2><i><a href="http://www.shengyuan.cn/article/list/1.jhtml" target="_blank">更多</a></i>闪购新闻</h2>
             <ul>
                 <li><a href="http://www.shengyuan.cn/articles/content/201705/289/1.html?t=174413" target="_blank"><b>[活动促销]</b>送礼，就选特别的</a>
                 </li>
                 <li><a href="http://www.shengyuan.cn/articles/content/201705/288/1.html?t=161550" target="_blank"><b>[活动促销]</b>盘中餐，皆辛苦！</a>
                 </li>
                 <li><a href="http://www.shengyuan.cn/articles/content/201704/287/1.html?t=092900" target="_blank"><b>[活动促销]</b>“纸”有你，柔滑舒心</a>
                 </li>
                 <li><a href="http://www.shengyuan.cn/articles/content/201704/286/1.html?t=145654" target="_blank"><b>[活动促销]</b>春游野餐一起来</a>
                 </li>
                 <li><a href="http://www.shengyuan.cn/articles/content/201704/285/1.html?t=092637" target="_blank"><b>[活动促销]</b>嗨约！烧烤。撸串好食材</a>
                 </li>
                 <li><a href="http://www.shengyuan.cn/articles/content/201704/284/1.html?t=170945" target="_blank"><b>[活动促销]</b>初心春见，食在当季</a>
                 </li>
                 <li><a href="http://www.shengyuan.cn/articles/content/201704/283/1.html?t=085031" target="_blank"><b>[活动促销]</b>深洁齿缝清新每一天</a>
                 </li>
             </ul>
         </div>
         <!----------首页文章结束------------->

     <div class="clear"></div>

     <div class="eight-block">
         <ul>
             <li class="height400px"><a href="http://www.shengyuan.cn/sub/iWr1uuH4DA.jhtml" target="_blank">
                 <img class="lazyload_img" src="${path}/resources/front/images/5409c7fc-eabb-4400-8aba-e59ab6ef6c4d.jpg"
                      data-original="http://www.shengyuan.cn/upload/image/201511/5409c7fc-eabb-4400-8aba-e59ab6ef6c4d.jpg"></a>
             </li>
             <li class="width400px"><a href="http://www.shengyuan.cn/sub/n846FjPaYYe.jhtml" target="_blank"><img
                     class="lazyload_img" src="${path}/resources/front/images/ae3a989f-9f6c-44e1-8a76-a2ec45d7406c.jpg"
                     data-original="http://www.shengyuan.cn/upload/image/201512/ae3a989f-9f6c-44e1-8a76-a2ec45d7406c.jpg"></a>
             </li>
             <li class=""><a href="http://www.shengyuan.cn/sub/XQB0VeAwass.jhtml" target="_blank"><img
                     class="lazyload_img" src="${path}/resources/front/images/3f99c40f-dd76-4968-a283-617ccc7132af.jpg"
                     data-original="http://www.shengyuan.cn/upload/image/201602/3f99c40f-dd76-4968-a283-617ccc7132af.jpg"></a>
             </li>
             <li class=""><a href="http://www.shengyuan.cn/sub/TcVMjImuLY6.jhtml" target="_blank"><img
                     class="lazyload_img" src="${path}/resources/front/images/24752358-0ceb-4dc8-b82b-d9d9e45e38ca.png"
                     data-original="http://www.shengyuan.cn/upload/image/201603/24752358-0ceb-4dc8-b82b-d9d9e45e38ca.png"></a>
             </li>
             <li class="height400px float-r"><a href="http://www.shengyuan.cn/sub/QQBk3HYeFBuB.jhtml"
                                                target="_blank"><img class="lazyload_img"
                                                                     src="${path}/resources/front/images/d2a8b1a4-531f-45ee-bf93-cc78efe4588c.jpg"
                                                                     data-original="http://www.shengyuan.cn/upload/image/201511/d2a8b1a4-531f-45ee-bf93-cc78efe4588c.jpg"></a>
             </li>
             <li class="width400px"><a href="http://www.shengyuan.cn/sub/EIkIJlJHMvtu.jhtml" target="_blank"><img
                     class="lazyload_img" src="${path}/resources/front/images/09d84c0a-bb88-4979-a759-4d0cd071035b.jpg"
                     data-original="http://www.shengyuan.cn/upload/image/201511/09d84c0a-bb88-4979-a759-4d0cd071035b.jpg"></a>
             </li>
             <li class=""><a href="http://www.shengyuan.cn/sub/e13dy9jJAu7.jhtml" target="_blank"><img
                     class="lazyload_img" src="${path}/resources/front/images/39f0226d-ecf4-49dc-aa88-1fc305ae45bc.jpg"
                     data-original="http://www.shengyuan.cn/upload/image/201511/39f0226d-ecf4-49dc-aa88-1fc305ae45bc.jpg"></a>
             </li>
             <li class=""><a href="http://www.shengyuan.cn/sub/LKAjIhFm01.jhtml" target="_blank"><img
                     class="lazyload_img" src="${path}/resources/front/images/277415ef-0530-4b0f-a8de-d30c905f2b64.jpg"
                     data-original="http://www.shengyuan.cn/upload/image/201511/277415ef-0530-4b0f-a8de-d30c905f2b64.jpg"></a>
             </li>
         </ul>
     </div>
     <div class="clear"></div>
     <!----------首页横幅广告位开始------------->
     <!----------横幅广告位结束------------->
     <div class="clear"></div>
     <!---------------------------------------1F---------------------------------------->
     <div class="floor" id="1F">
         <div class="title">
             <div class="title-txt title-six">1F 海淘商品</div>
             <div class="tab-nav sixf-tab">
                 <ul id="adPosition1F">
                     <li class="active" productcategoryid="1611" productcount="8" adpositionid="158" adcount="1"><a>奶粉</a></li>
                     <li productcategoryid="1615" productcount="8" adpositionid="163" adcount="1"><a>美妆护肤</a></li>
                     <li productcategoryid="1617" productcount="8" adpositionid="169" adcount="1"><a>个人护理</a></li>
                     <li productcategoryid="" productcount="8" adpositionid="adCount=&quot;1&quot;"><a></a></li>
                     <li productcategoryid="" productcount="8" adpositionid="adCount=&quot;1&quot;"><a></a></li>
                 </ul>
             </div>
         </div>
         <div class="leftnr nr-six">
             <div class="nr-left-yuan">
                 <ul>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1611" target="_blank">奶粉</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1612" target="_blank">宝宝食品</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1613" target="_blank">宝宝洗护</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1614" target="_blank">宝宝用品</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1615" target="_blank">美妆护肤</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1616" target="_blank">魅力彩妆</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1617" target="_blank">个人护理</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1618" target="_blank">食品保健</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1619" target="_blank">生活电器</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1620" target="_blank">厨房用具</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1730" target="_blank">每日特价</a></li>
                 </ul>
             </div>
             <div class="gg220x275">
                 <a href="http://www.shengyuan.cn/products/content/2115794.html?t=115733" target="_blank">
                     <img class="lazyload_img"
                          src="${path}/resources/front/images/be8b1d10-2ddf-4464-bccb-0c81c33fa9cf.jpg"
                          data-original="http://www.shengyuan.cn/upload/image/201509/be8b1d10-2ddf-4464-bccb-0c81c33fa9cf.jpg"
                          width="220" height="275">
                 </a>
             </div>
         </div>
         <div class="tab-nr">
             <ul id="1fproduct">
                 <li class="show">
                     <div class="louf-pro-list">
                         <dl>
                             <dd class="height500">
                                 <i>
                                     <a href="http://www.shengyuan.cn/products/content/2115781.html?t=084817" target="_blank">
                                         <img class="lazyload_img" src="${path}/resources/front/images/f155d7ad-631a-42fc-9282-2c231dcadaf2.jpg"
                                              data-original="http://www.shengyuan.cn/upload/image/201509/f155d7ad-631a-42fc-9282-2c231dcadaf2.jpg">
                                     </a>
                                 </i>
                             </dd>
                             <dd><p class="pro-title">
                                 <a href="http://www.shengyuan.cn/products/content/2117431.html?t=113509"
                                    target="_blank">【2罐】英国牛栏Cow&amp;Gate婴儿奶粉2段6-12个月900克</a>
                             </p>

                                 <p class="pro-sale">¥356.00</p>

                                 <p class="pro-img ">
                                     <a href="http://www.shengyuan.cn/products/content/2117431.html?t=113509" target="_blank">
                                         <img class="lazyload_img" src="${path}/resources/front/images/93f7ab35-a0f4-4e59-bbf0-892f74b4ed45.jpg"
                                              data-original="http://www.shengyuan.cn/upload/image/201612/93f7ab35-a0f4-4e59-bbf0-892f74b4ed45.jpg"
                                              width="175px" height="175px"></a>
                                 </p>
                             </dd>
                             <dd><p class="pro-title"><a
                                     href="http://www.shengyuan.cn/products/content/2115784.html?t=085426"
                                     target="_blank">【2罐】德国Aptamil/爱他美 婴幼儿奶粉3段（10-12个月）800g</a></p>

                                 <p class="pro-sale">¥386.00</p>

                                 <p class="pro-img "><a
                                         href="http://www.shengyuan.cn/products/content/2115784.html?t=085426"
                                         target="_blank"><img class="lazyload_img"
                                                              src="${path}/resources/front/images/b742871b-8b35-4424-b182-ff13fc35e403.jpg"
                                                              data-original="http://www.shengyuan.cn/upload/image/201612/b742871b-8b35-4424-b182-ff13fc35e403.jpg"
                                                              width="175px" height="175px"></a></p></dd>
                             <dd><p class="pro-title"><a
                                     href="http://www.shengyuan.cn/products/content/2116522.html?t=152629"
                                     target="_blank">【2盒】德国Aptamil/爱他美 婴幼儿奶粉1+段（1岁以上）600g</a></p>

                                 <p class="pro-sale">¥316.00</p>

                                 <p class="pro-img "><a
                                         href="http://www.shengyuan.cn/products/content/2116522.html?t=152629"
                                         target="_blank"><img class="lazyload_img"
                                                              src="${path}/resources/front/images/444f7550-d82e-427a-8aa0-9bbb833cc66c.jpg"
                                                              data-original="http://www.shengyuan.cn/upload/image/201612/444f7550-d82e-427a-8aa0-9bbb833cc66c.jpg"
                                                              width="175px" height="175px"></a></p></dd>
                             <dd><p class="pro-title"><a
                                     href="http://www.shengyuan.cn/products/content/2115769.html?t=152501"
                                     target="_blank">【两盒】德国Aptamil/爱他美 婴幼儿奶粉2+段（2岁以上）600g</a></p>

                                 <p class="pro-sale">¥306.00</p>

                                 <p class="pro-img ">
                                     <a href="http://www.shengyuan.cn/products/content/2115769.html?t=152501" target="_blank">
                                         <img class="lazyload_img" src="${path}/resources/front/images/ac015d58-4285-4acf-8980-8c44284b692d.jpg"
                                              data-original="http://www.shengyuan.cn/upload/image/201612/ac015d58-4285-4acf-8980-8c44284b692d.jpg"
                                              width="175px" height="175px"></a>
                                 </p>
                             </dd>
                             <dd class="height220">
                                 <p class="pro-title">
                                     <a href="http://www.shengyuan.cn/products/content/2116532.html?t=085641">【2罐】澳洲爱他美Aptamil金装婴幼儿奶粉4段（2岁以上）900g</a>
                                 </p>
                                 <p class="pro-sale">¥369.00</p>
                                 <p class="pro-img ">
                                     <a href="http://www.shengyuan.cn/products/content/2116532.html?t=085641" target="_blank">
                                         <img class="lazyload_img"
                                              src="${path}/resources/front/images/3aff4b72-1bce-4040-9d73-9b0d177299df.jpg"
                                              data-original="http://www.shengyuan.cn/upload/image/201612/3aff4b72-1bce-4040-9d73-9b0d177299df.jpg"
                                              width="160px" height="160px">
                                     </a>
                                 </p>
                             </dd>
                             <dd class="height220">
                                 <p class="pro-title">
                                     <a href="http://www.shengyuan.cn/products/content/2116519.html?t=152601">【2罐】德国Aptamil/爱他美婴幼儿奶粉PRE段（0-6个月）800g</a>
                                 </p>
                                 <p class="pro-sale">¥386.00</p>
                                 <p class="pro-img ">
                                     <a href="http://www.shengyuan.cn/products/content/2116519.html?t=152601" target="_blank">
                                         <img class="lazyload_img"
                                              src="${path}/resources/front/images/36592993-4d3d-4479-ba99-06f33e9b5916.jpg"
                                              data-original="http://www.shengyuan.cn/upload/image/201612/36592993-4d3d-4479-ba99-06f33e9b5916.jpg"
                                              width="160px" height="160px"></a></p></dd>
                             <dd class="height220">
                                 <p class="pro-title">
                                     <a href="http://www.shengyuan.cn/products/content/2115794.html?t=175454">【2盒】德国Hipp/喜宝益生菌婴幼儿奶粉（0-6个月）1段600g</a>
                                 </p>
                                 <p class="pro-sale">¥286.00</p>
                                 <p class="pro-img ">
                                     <a href="http://www.shengyuan.cn/products/content/2115794.html?t=175454" target="_blank">
                                         <img class="lazyload_img"
                                              src="${path}/resources/front/images/1e20a609-077e-4dd4-a4ad-0ce3b947689c.jpg"
                                              data-original="http://www.shengyuan.cn/upload/image/201608/1e20a609-077e-4dd4-a4ad-0ce3b947689c.jpg"
                                              width="160px" height="160px">
                                     </a>
                                 </p>
                             </dd>
                             <dd class="height220"><p class="pro-title"><a
                                     href="http://www.shengyuan.cn/products/content/2115782.html?t=152441">【2罐】德国Aptamil/爱他美
                                 婴幼儿奶粉2段（6-10个月）800g</a></p>

                                 <p class="pro-sale">¥386.00</p>

                                 <p class="pro-img "><a
                                         href="http://www.shengyuan.cn/products/content/2115782.html?t=152441"
                                         target="_blank"><img class="lazyload_img"
                                                              src="${path}/resources/front/images/dd90732f-1f6e-45fb-ac34-2b550df6308f.jpg"
                                                              data-original="http://www.shengyuan.cn/upload/image/201612/dd90732f-1f6e-45fb-ac34-2b550df6308f.jpg"
                                                              width="160px" height="160px"></a></p></dd>
                         </dl>
                     </div>
                 </li>
                 <li><a href="http://www.shengyuan.cn/#"></a></li>
                 <li><a href="http://www.shengyuan.cn/#"></a></li>
                 <li><a href="http://www.shengyuan.cn/#"></a></li>
                 <li><a href="http://www.shengyuan.cn/#"></a></li>
             </ul>
         </div>
     <%--</div>--%>
     <div class="clear"></div>
     <!-------------------------------------2F------------------------------------------>
     <div class="floor" id="2F">
         <div class="title">
             <div class="title-txt title-one">2F 生鲜专区</div>
             <!----------2F广告位选项卡------------->
             <div class="tab-nav onef-tab">
                 <ul id="adPosition2F">
                     <li class="active" productcategoryid="1268" productcount="8" adpositionid="121" adcount="1">
                         <a>新鲜水果</a></li>
                     <li productcategoryid="1267" productcount="8" adpositionid="122" adcount="1"><a>优选蔬菜</a></li>
                     <li productcategoryid="1269" productcount="8" adpositionid="123" adcount="1"><a>低温制品</a></li>
                     <li productcategoryid="1287" productcount="8" adpositionid="124" adcount="1"><a>五谷杂粮</a></li>
                     <li productcategoryid="1270" productcount="8" adpositionid="125" adcount="1"><a>精品肉类</a></li>
                 </ul>
             </div>
             <!----------2F广告位选项卡结束------------->
         </div>
         <div class="leftnr nr-one">
             <!----------2F左侧商品分类------------->
             <div class="nr-left-yuan">
                 <ul>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1268" target="_blank">水果</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1267" target="_blank">蔬菜</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1270" target="_blank">肉类</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1269" target="_blank">低温制品</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1287" target="_blank">蛋、杂粮</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1485" target="_blank">水产/海鲜</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1578" target="_blank">豆制品</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1494" target="_blank">熟食</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1543" target="_blank">面包/早点</a></li>
                     <li><a href="http://www.shengyuan.cn/product/query.jhtml?pcId=1687" target="_blank">生鲜套餐组合</a></li>
                 </ul>
             </div>
             <!----------2F左侧商品分类结束------------->
             <!----------2F左侧广告位------------->
             <div class="gg220x275">
                 <a href="http://www.shengyuan.cn/products/content/2104308.html?t=075145" target="_blank">
                     <img class="lazyload_img"
                          src="${path}/resources/front/images/ac5c7353-23ff-4b6b-9baf-ee20f82497f1.jpg"
                          data-original="http://www.shengyuan.cn/upload/image/201509/ac5c7353-23ff-4b6b-9baf-ee20f82497f1.jpg"
                          width="220" height="275">
                 </a>
             </div>
             <!----------2F左侧广告位结束------------->
         </div>
         <div class="tab-nr">
             <!----------2F选项卡下商品及广告位------------->
             <ul id="2fproduct">
                 <li class="show">
                     <div class="louf-pro-list">
                         <dl>
                             <dd class="height500">
                                 <i><a href="http://www.shengyuan.cn/products/content/2104611.html?t=112829" target="_blank">
                                     <img class="lazyload_img"
                                          src="${path}/resources/front/images/7fab5cee-dd30-4d7c-a9b3-d4da7afcdcf0.png"
                                          data-original="http://www.shengyuan.cn/upload/image/201604/7fab5cee-dd30-4d7c-a9b3-d4da7afcdcf0.png">
                                 </a></i>
                             </dd>
                             <dd>
                                 <p class="pro-title">
                                     <a href="http://www.shengyuan.cn/products/content/2104585.html?t=153558" target="_blank">80#红富士(1000g)</a>
                                 </p>
                                 <p class="pro-sale">¥13.50</p>
                                 <p class="pro-img ">
                                     <a href="http://www.shengyuan.cn/products/content/2104585.html?t=153558" target="_blank">
                                         <img class="lazyload_img"
                                              src="${path}/resources/front/images/8636a356-0295-44bc-b493-204f29e2c092-medium.jpg"
                                              data-original="http://www.shengyuan.cn/upload/image/201409/8636a356-0295-44bc-b493-204f29e2c092-medium.jpg"
                                              width="175px" height="175px">
                                     </a>
                                 </p>
                             </dd>
                             <dd><p class="pro-title"><a
                                     href="http://www.shengyuan.cn/products/content/2104589.html?t=095430"
                                     target="_blank">黄元帅 1000g</a></p>

                                 <p class="pro-sale">¥18.00</p>

                                 <p class="pro-img "><a
                                         href="http://www.shengyuan.cn/products/content/2104589.html?t=095430"
                                         target="_blank"><img class="lazyload_img"
                                                              src="${path}/resources/front/images/f6d7f55f-b1df-4690-9196-d7f1d6c8b075-medium.jpg"
                                                              data-original="http://www.shengyuan.cn/upload/image/201410/f6d7f55f-b1df-4690-9196-d7f1d6c8b075-medium.jpg"
                                                              width="175px" height="175px"></a></p></dd>
                             <dd><p class="pro-title"><a
                                     href="http://www.shengyuan.cn/products/content/2104604.html?t=081017"
                                     target="_blank">火龙果1000g/份</a></p>

                                 <p class="pro-sale">¥12.90</p>

                                 <p class="pro-img "><a
                                         href="http://www.shengyuan.cn/products/content/2104604.html?t=081017"
                                         target="_blank"><img class="lazyload_img"
                                                              src="${path}/resources/front/images/173ae88c-9de4-4688-b6ab-9cb7966e0c82-medium.jpg"
                                                              data-original="http://www.shengyuan.cn/upload/image/201410/173ae88c-9de4-4688-b6ab-9cb7966e0c82-medium.jpg"
                                                              width="175px" height="175px"></a></p></dd>
                             <dd><p class="pro-title"><a
                                     href="http://www.shengyuan.cn/products/content/2104608.html?t=080505"
                                     target="_blank">雪莲果 1000g</a></p>

                                 <p class="pro-sale">¥10.00</p>

                                 <p class="pro-img "><a
                                         href="http://www.shengyuan.cn/products/content/2104608.html?t=080505"
                                         target="_blank"><img class="lazyload_img"
                                                              src="${path}/resources/front/images/91c615b4-af2d-473c-9195-afa74ead58fa-medium.jpg"
                                                              data-original="http://www.shengyuan.cn/upload/image/201410/91c615b4-af2d-473c-9195-afa74ead58fa-medium.jpg"
                                                              width="175px" height="175px"></a></p></dd>
                             <dd class="height220"><p class="pro-title"><a
                                     href="http://www.shengyuan.cn/products/content/2104610.html?t=094410">国产香蕉（1000g）</a>
                             </p>

                                 <p class="pro-sale">¥8.90</p>

                                 <p class="pro-img "><a
                                         href="http://www.shengyuan.cn/products/content/2104610.html?t=094410"
                                         target="_blank"><img class="lazyload_img"
                                                              src="${path}/resources/front/images/62226a99-1832-415e-b285-7aeb024b05d4-medium.jpg"
                                                              data-original="http://www.shengyuan.cn/upload/image/201409/62226a99-1832-415e-b285-7aeb024b05d4-medium.jpg"
                                                              width="160px" height="160px"></a></p></dd>
                             <dd class="height220"><p class="pro-title"><a
                                     href="http://www.shengyuan.cn/products/content/2104612.html?t=081256">精品龙眼（500g/份）</a>
                             </p>

                                 <p class="pro-sale">¥12.90</p>

                                 <p class="pro-img "><a
                                         href="http://www.shengyuan.cn/products/content/2104612.html?t=081256"
                                         target="_blank"><img class="lazyload_img"
                                                              src="${path}/resources/front/images/e1170a5c-03fd-46d2-88d2-bedc23c01248-medium.jpg"
                                                              data-original="http://www.shengyuan.cn/upload/image/201410/e1170a5c-03fd-46d2-88d2-bedc23c01248-medium.jpg"
                                                              width="160px" height="160px"></a></p></dd>
                             <dd class="height220"><p class="pro-title"><a
                                     href="http://www.shengyuan.cn/products/content/2104617.html?t=173507">精品红提1000g</a>
                             </p>

                                 <p class="pro-sale">¥12.80</p>

                                 <p class="pro-img "><a
                                         href="http://www.shengyuan.cn/products/content/2104617.html?t=173507"
                                         target="_blank"><img class="lazyload_img"
                                                              src="${path}/resources/front/images/03b9b176-c1c8-41fb-a822-b4fb0b3cc428-medium.jpg"
                                                              data-original="http://www.shengyuan.cn/upload/image/201410/03b9b176-c1c8-41fb-a822-b4fb0b3cc428-medium.jpg"
                                                              width="160px" height="160px"></a></p></dd>
                             <dd class="height220"><p class="pro-title"><a
                                     href="http://www.shengyuan.cn/products/content/2104638.html?t=105218">金桔/500g</a>
                             </p>

                                 <p class="pro-sale">¥6.90</p>

                                 <p class="pro-img ">
                                     <a href="http://www.shengyuan.cn/products/content/2104638.html?t=105218" target="_blank">
                                         <img class="lazyload_img" src="${path}/resources/front/images/f7e63340-74fb-4fd0-8fc5-1707f6acbed7-medium.jpg"
                                              data-original="http://www.shengyuan.cn/upload/image/201409/f7e63340-74fb-4fd0-8fc5-1707f6acbed7-medium.jpg"
                                              width="160px" height="160px">
                                     </a>
                                 </p>
                             </dd>
                         </dl>
                     </div>
                 </li>
                 <li><a href="http://www.shengyuan.cn/#"></a></li>
                 <li><a href="http://www.shengyuan.cn/#"></a></li>
                 <li><a href="http://www.shengyuan.cn/#"></a></li>
                 <li><a href="http://www.shengyuan.cn/#"></a></li>
             </ul>
             <!----------2F选项卡下商品及广告位结束------------->
         </div>
     <%--</div>--%>
     <div class="clear"></div>
     <!-------------------------------------3F------------------------------------------>
     <div class="floor" id="3F">
         <div class="title">
             <div class="title-txt title-two" >3F 粮油调味</div>
             <div class="tab-nav twof-tab">
                 <ul id="adPosition3F">
                     <li class="active" productCategoryId="932" productCount="5"  adPositionId=126 adCount="5"><a>厨房调味</a></li>
                     <li productCategoryId="933" productCount="5"  adPositionId=127 adCount="5"><a>粮油</a></li>
                     <li productCategoryId="936" productCount="5"  adPositionId=128 adCount="5"><a>干货</a></li>
                     <li productCategoryId="937" productCount="5"  adPositionId=129 adCount="5"><a>方便速食</a></li>
                     <li productCategoryId="" productCount="5"  adPositionId= adCount="5"><a></a></li>
                 </ul>
             </div>
         </div>
         <div class="leftnr nr-two">
             <div class="nr-left-yuan">
                 <ul>
                     <li><a href="/product/query.jhtml?pcId=936" target="_blank">干货</a></li>
                     <li><a href="/product/query.jhtml?pcId=937" target="_blank">方便速食</a></li>
                     <li><a href="/product/query.jhtml?pcId=932" target="_blank">厨房调味</a></li>
                     <li><a href="/product/query.jhtml?pcId=933" target="_blank">粮油</a></li>
                 </ul>
             </div>
             <div class="gg220x275">
                 <a href="/products/content/2105569.html?t=001500" target="_blank">
                     <img class="lazyload_img" src="${path}/resources/front/images/b5b8346d-d480-4a33-a23b-4ec91d9e81a0.jpg"
                          data-original="http://www.shengyuan.cn/upload/image/201509/b5b8346d-d480-4a33-a23b-4ec91d9e81a0.jpg" width="220" height="275"/>
                 </a>
             </div>
         </div>
         <div class="tab-nr">
             <ul id="3fproduct">
                 <li class="show">
                     <div class="louf-pro-list">
                         <dl>
                             <dd >
                                 <i><a href="/products/content/2105552.html?t=001500" target="_blank">
                                     <img class="lazyload_img"  src="${path}/resources/front/images/5e9de126-6984-46f4-949b-6711ed6dad8a.jpg"
                                          data-original="http://www.shengyuan.cn/upload/image/201511/5e9de126-6984-46f4-949b-6711ed6dad8a.jpg" >
                                 </a></i>
                             </dd>
                             <dd >
                                 <i><a href="/products/content/2105305.html?t=000000" target="_blank">
                                     <img class="lazyload_img"  src="${path}/resources/front/images/5c5fe6e0-d641-4491-bce9-cf5d7bfbe975.jpg"
                                          data-original="http://www.shengyuan.cn/upload/image/201511/5c5fe6e0-d641-4491-bce9-cf5d7bfbe975.jpg" >
                                 </a></i>
                             </dd>
                             <dd >
                                 <i><a href="/products/content/2106052.html?t=000000" target="_blank">
                                     <img class="lazyload_img"  src="${path}/resources/front/images/762147e0-b401-48ef-8182-e258f10190d7.jpg"
                                          data-original="http://www.shengyuan.cn/upload/image/201511/762147e0-b401-48ef-8182-e258f10190d7.jpg" >
                                 </a></i>
                             </dd>
                             <dd >
                                 <i><a href="/products/content/2105468.html?t=000000" target="_blank">
                                     <img class="lazyload_img"  src="${path}/resources/front/images/0c6fa30e-e163-4a31-ab5b-085ba5f5f6b6.jpg"
                                          data-original="http://www.shengyuan.cn/upload/image/201511/0c6fa30e-e163-4a31-ab5b-085ba5f5f6b6.jpg" >
                                 </a></i>
                             </dd>
                             <dd >
                                 <i><a href="/products/content/2105573.html?t=000000" target="_blank">
                                     <img class="lazyload_img"  src="${path}/resources/front/images/70aabf11-6e07-4550-a8bd-8248b7e9e473.jpg"
                                          data-original="http://www.shengyuan.cn/upload/image/201511/70aabf11-6e07-4550-a8bd-8248b7e9e473.jpg" >
                                 </a></i>
                             </dd>
                             <dd class="height220">
                                 <p class="pro-title">
                                     <a href="http://www.shengyuan.cn/products/content/2105360.html?t=165057" target="_blank">李锦记番茄沙司340g/瓶</a>
                                 </p>
                                 <p class="pro-sale">¥7.90</p>
                                 <p class="pro-img ">
                                     <a href="http://www.shengyuan.cn/products/content/2105360.html?t=165057" target="_blank">
                                         <img class="lazyload_img"  src="${path}/resources/front/images/dc4e479a-1d24-4972-bd54-a46881ff6fe7-medium.jpg"
                                              data-original="http://www.shengyuan.cn/upload/image/201409/dc4e479a-1d24-4972-bd54-a46881ff6fe7-medium.jpg" width="160px" height="160px"/>
                                     </a>
                                 </p>
                             </dd>
                             <dd class="height220">
                                 <p class="pro-title">
                                     <a href="http://www.shengyuan.cn/products/content/2105406.html?t=173200" target="_blank">陶华碧油辣椒 [275g]瓶</a>
                                 </p><p class="pro-sale">¥8.50</p>
                                 <p class="pro-img ">
                                     <a href="http://www.shengyuan.cn/products/content/2105406.html?t=173200" target="_blank">
                                         <img class="lazyload_img"  src="${path}/resources/front/images/5d00d5ed-08d8-4b0e-9da0-60c6e69b7a15-medium.jpg"
                                              data-original="http://www.shengyuan.cn/upload/image/201411/5d00d5ed-08d8-4b0e-9da0-60c6e69b7a15-medium.jpg" width="160px" height="160px"/>
                                     </a>
                                 </p>
                             </dd>
                             <dd class="height220">
                                 <p class="pro-title">
                                     <a href="http://www.shengyuan.cn/products/content/2105418.html?t=001500" target="_blank">长康芝麻酱 瓶/248g</a>
                                 </p>
                                 <p class="pro-sale">¥11.90</p>
                                 <p class="pro-img ">
                                     <a href="http://www.shengyuan.cn/products/content/2105418.html?t=001500" target="_blank">
                                         <img class="lazyload_img"  src="${path}/resources/front/images/535cb30e-f401-4f31-8042-d096383c967b-medium.jpg"
                                              data-original="http://www.shengyuan.cn/upload/image/201409/535cb30e-f401-4f31-8042-d096383c967b-medium.jpg" width="160px" height="160px"/>
                                     </a>
                                 </p>
                             </dd>
                             <dd class="height220">
                                 <p class="pro-title">
                                     <a href="http://www.shengyuan.cn/products/content/2105407.html?t=001500" target="_blank">陶华碧牛肉末 (210g)瓶</a>
                                 </p>
                                 <p class="pro-sale">¥8.50</p>
                                 <p class="pro-img ">
                                     <a href="http://www.shengyuan.cn/products/content/2105407.html?t=001500" target="_blank">
                                         <img class="lazyload_img"  src="${path}/resources/front/images/3cec0941-624b-40ef-8fde-6f46dbff342c-medium.jpg"
                                              data-original="http://www.shengyuan.cn/upload/image/201411/3cec0941-624b-40ef-8fde-6f46dbff342c-medium.jpg" width="160px" height="160px"/>
                                     </a>
                                 </p>
                             </dd>
                             <dd class="height220">
                                 <p class="pro-title">
                                     <a href="http://www.shengyuan.cn/products/content/2105351.html?t=001500" target="_blank">李锦记锦珍生抽500ml（瓶）</a>
                                 </p>
                                 <p class="pro-sale">¥5.90</p>
                                 <p class="pro-img ">
                                     <a href="http://www.shengyuan.cn/products/content/2105351.html?t=001500" target="_blank">
                                         <img class="lazyload_img"  src="${path}/resources/front/images/5b4537dd-7270-4f3f-b8ea-153a0574fa51-medium.jpg"
                                              data-original="http://www.shengyuan.cn/upload/image/201410/5b4537dd-7270-4f3f-b8ea-153a0574fa51-medium.jpg" width="160px" height="160px"/>
                                     </a>
                                 </p>
                             </dd>
                         </dl>
                     </div>
                 </li>
                 <li><a href="#"></a></li>
                 <li><a href="#"></a></li>
                 <li><a href="#"></a></li>
                 <li><a href="#"></a></li>
             </ul>
         </div>
     </div>
     <div class="clear"></div>
 </div>
 <!--floor-rool-left--->
 <div class="floor-box">
     <ul>
         <li>
             <a class="num" href="#1F" style="display:none">1F</a>
             <a class="word" href="#1F" style="display:block">海淘专区</a>
         </li>
         <li>
             <a class="num" href="#2F">2F</a>
             <a class="word" href="#2F">生鲜专区</a>
         </li>
         <li>
             <a class="num" href="#3F">3F</a>
             <a class="word" href="#3F">粮油调味</a>
         </li>
     </ul>
 </div>
 </div>
 <!------------------main--------end---------------------->

 <%@include file="footer.jsp"%>
</body>
</html>
