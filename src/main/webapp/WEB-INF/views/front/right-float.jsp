<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/10
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- 右边浮动层 -->
<div class="roll-right" style="height: 703px;">
  <div class="mui-mbar" style="height: 703px; right: -322px;">
    <div class="mui-mbar-plugins" style="height:100%; visibility:visible; padding-bottom:85px; display:block;">
      <!-- 标题 -->
      <div class="mui-plugins-top clearfix">
        <span>购物车</span>
        <a class="tm-mcCartBtn"><span></span></a>

        <div class="clear"></div>
      </div>
      <div class="tm-mcList" style="height: 580px;">
        <div class="cart-null">
          <div class="cart-nullico"><span class="cart-null-ico"></span></div>
          <div class="cart-null-txt"><p>购物车内暂时没有商品，</p>

            <p>去挑选喜欢的商品吧！</p></div>
        </div>
      </div>
      <!-- 结算按钮 -->
      <div class="tm-mcHandler">
        <div class="tm-mcCashier-wrap">
          <div class="tm-mcTotal clearfix">
            <h3>
              <span class="tm-mcCheckedNum">0</span>
              <span>件商品</span>
            </h3>
            <span class="tm-mcTotalFeeWrap">￥0.00</span>
          </div>
          <div class="tm-mcCashier">
            <div class="tm-mcnullCart">去购物车结算</div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 右边显示 -->
  <div class="mui-mbar-tabs" style="height: 703px;">
    <div class="mui-mbar-tabs-mask" style="height: 703px;">
      <!--售前咨询-->
      <div class="mui-mbar-tab mui-mbar-tab-qian">
        <div id="preSalesQQ" class="mui-mbar-tab-logo mui-mbar-tab-logo-qian mui-mbar-tab-logo-prof">
          <div class="mui-mbar-tab-tip" style="right:40px; display:none;">
            <li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2127884435&site=qq&menu=yes">售前客服：生生</a>
            </li>
            <li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=3512699696&site=qq&menu=yes">售前客服：源源</a>
            </li>
            <div class="mui-mbar-arr mui-mbar-tab-tip-arr">◆</div>
          </div>
        </div>
      </div>
      <!--售后咨询-->
      <div class="mui-mbar-tab">
        <div id="afterSalesQQ" class="mui-mbar-tab-logo mui-mbar-tab-logo-hou mui-mbar-tab-logo-prof2">
          <div class="mui-mbar-tab-tip" style="right:40px; display:none;">
            <li><a target="_blank"
                   href="http://wpa.qq.com/msgrd?v=3&uin=484558336&site=qq&menu=yes">售后客服：闪闪</a></li>
            <li><a target="_blank"
                   href="http://wpa.qq.com/msgrd?v=3&uin=484396397&site=qq&menu=yes">售后客服：购购</a></li>
            <div class="mui-mbar-arr mui-mbar-tab-tip-arr">◆</div>
          </div>
        </div>
      </div>
      <!-- 购物车  -->
      <div class="mui-mbar-tab mui-mbar-tab-cart" style="top:0;margin:15px 0;">
        <div class="mui-mbar-tab-logo mui-mbar-tab-logo-cart"></div>
        <div class="mui-mbar-tab-txt">购物车</div>
        <div class="total-num-box">
          <b id="viewCartCount" class="total-num">0</b>
					<span class="total-num-bg-box">
						<em></em>
						<i></i>
					</span>
        </div>
      </div>

      <!-- 返回顶部  -->
      <div class="mui-mbar-tab  mui-mbar-tab-backtop  mui-mbar-tab-hover roll_top"
           style=" bottom:0;position:absolute;">
        <div class="mui-mbar-tab-logo mui-mbar-tab-logo-btop" style="display: none;">
          <div class="mui-mbar-tab-tip" style="right:40px;display:none;">
            返回顶部
            <div class="mui-mbar-arr mui-mbar-tab-tip-arr">◆</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- 右边购物车浮动层--结束---->
