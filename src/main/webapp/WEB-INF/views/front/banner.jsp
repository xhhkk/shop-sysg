<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/10
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--------------------------------------banner开始--------------------------------------------->
<div class="clear"></div>
<div class="banner">
  <div class="banner-wrapper">
    <a class="theon" href="javascript:prev();"></a>
    <a class="thedown" href="javascript:next();"></a>
    <!----------秒杀--------->
    <div class="banner-content">
      <div class="panicbuy">
        <div class="panictime">
          <div class="panic-time">
              <span id="H">02</span><em>:</em><span id="M">16</span><em>:</em><span id="S">42</span>
          </div>
          距抢购<i id="startOfStop">开始</i>
        </div>
        <div class="panilist">
          <script type="text/javascript">loadPromotionTime('3031');</script>
          <ul>
            <li>
              <a href="http://www.shengyuan.cn/products/content/2120766.html?t=160331"
                 title="兰羽梦水洗家居夏凉被200*230" target="_blank">
                  <img class="lazyload_img" src="${path}/resources/front/images/2c95b008-07c0-4135-a88d-ad5e785aedb6-thumbnail.jpg"
                       data-original="http://www.shengyuan.cn/upload/image/201705/2c95b008-07c0-4135-a88d-ad5e785aedb6-thumbnail.jpg"
                       width="130" height="130" style="display: inline;">
              </a>
              <p title="兰羽梦水洗家居夏凉被200*230">
                  <a href="http://www.shengyuan.cn/products/content/2120766.html?t=160331"
                      title="兰羽梦水洗家居夏凉被200*230" target="_blank">兰羽梦水洗家居夏凉被200*230</a>
              </p>
              <p>￥69.00<i>￥169.00</i></p>
            </li>
            <li>
              <a href="http://www.shengyuan.cn/products/content/2106946.html?t=144910" title="伊利金典纯牛奶 250ml*12/提" target="_blank">
                  <img class="lazyload_img" src="${path}/resources/front/images/a07eba36-3ca9-46f7-bea8-163df2fd2d3f-thumbnail.jpg"
                       data-original="http://www.shengyuan.cn/upload/image/201409/a07eba36-3ca9-46f7-bea8-163df2fd2d3f-thumbnail.jpg"
                       width="130" height="130" style="display: inline;">
              </a>
              <p title="伊利金典纯牛奶 250ml*12/提">
                  <a href="http://www.shengyuan.cn/products/content/2106946.html?t=144910"
                      title="伊利金典纯牛奶 250ml*12/提" target="_blank">伊利金典纯牛奶 250ml*12/提</a>
              </p>
              <p>￥45.00<i>￥65.00</i></p>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-----------秒杀--------end-->
  </div>
  <!----------轮播图------------->
  <div class="bannerbg">
    <ul class="dabanner_bg">
      <li style="display: none; background-image: url(http://www.shengyuan.cn/upload/image/201702/17fd50ec-58bb-4791-8dd0-518a48272c73.jpg); background-position: 50% 50%;">
        <div class="banner-link dabanner_lj">
            <a href="http://www.shengyuan.cn/sub/7CXSJTUow2P.jhtml" target="_blank"></a>
        </div>
      </li>
      <li style="display: block; background-image: url(http://www.shengyuan.cn/upload/image/201705/97a0a1e1-ed13-43b2-9c0a-20f66e6e2d1d.jpg); background-position: 50% 50%;">
        <div class="banner-link dabanner_lj">
            <a href="http://www.shengyuan.cn/sub/AMpBALMervPh.jhtml" target="_blank"></a>
        </div>
      </li>
      <li style="background-image: url(http://www.shengyuan.cn/upload/image/201705/3b1ea7b8-6548-4663-a363-f13861a02dcd.jpg);background-position: center center;display: none;">
        <div class="banner-link dabanner_lj">
            <a href="http://www.shengyuan.cn/sub/dO2GbQ7jBnzf.jhtml" target="_blank"></a>
        </div>
      </li>
      <li style="background-image: url(http://www.shengyuan.cn/upload/image/201704/da839358-bc24-484e-9789-837b5cda179e.jpg);background-position: center center;display: none;">
        <div class="banner-link dabanner_lj">
            <a href="http://www.shengyuan.cn/sub/jBNDypPnda.jhtml" target="_blank"></a>
        </div>
      </li>
      <li style="background-image: url(http://www.shengyuan.cn/upload/image/201702/f75c3e56-3ac9-4a69-8587-0d5b2b15c96c.jpg);background-position: center center;display: none;">
        <div class="banner-link dabanner_lj">
            <a href="http://www.shengyuan.cn/articles/content/201702/273/1.html?t=142248" target="_blank"></a>
        </div>
      </li>
    </ul>
  </div>

  <div class="slide-num">
    <a class="" href="javascript:void(0);">•</a>
    <a href="javascript:void(0);" class="hover">•</a>
    <a href="javascript:void(0);" class="">•</a>
    <a href="javascript:void(0);" class="">•</a>
    <a href="javascript:void(0);" class="">•</a>
  </div>
  <!----------轮播图--结束----------->
</div>
<div class="clear"></div>
<!---------------------------------------banner结束----------------------------------------------------->
