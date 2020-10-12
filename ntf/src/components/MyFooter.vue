<template>
  <div class="container-fluid p-0">
    <div class="row my_bottom text-center mx-0">
      <div class="col-6 position-relative">
        <div class="position-absolute my_left">
          <div>
            <img src="../../public/img/themes/help-phone.png" >
          </div>
          <p>工作时间 : 周一至周日,9:00~22:00</p>
          <p class="font-weight-bold">400-890-7688</p>
        </div>
      </div>
      <div class="col-6 position-relative">
        <div class="position-absolute my_right">
          <a href="">
            <img src="../../public/img/themes/tnf.jpg" >
          </a>
        </div>
      </div>
    </div>
    <!-- 页脚 -->
    <div class="my_foot">
      <div>
        <div class="top row">
          <div class="left col-7 row">
            <ul class="col-3">
              <li>官方商场</li>
              <li><a href="">全部商品</a></li>
              <li><a href="">男士</a></li>
              <li><a href="">女士</a></li>
              <li><a href="">鞋类</a></li>
              <li><a href="">装备/配件</a></li>
              <li><a href="">童装</a></li>
              <li><a href="">科技</a></li>
              <li><a href="">场景</a></li>
            </ul>
            <ul class="col-3">
              <li>VIPeak</li>
              <li><a href="">关于VIPeak</a></li>
              <li><a href="">会员等级</a></li>
              <li><a href="">会员权益</a></li>
              <li><a href="">如何获得积分</a></li>
            </ul>
            <ul class="col-3">
              <li>探索北面</li>
              <li><a href="">探索行动</a></li>
              <li><a href="">运动员</a></li>
              <li><a href="">查找门店</a></li>
            </ul>
            <ul class="col-3">
              <li>客户服务</li>
              <li><a href="">购物流程</a></li>
              <li><a href="">购物须知</a></li>
              <li><a href="">退换货</a></li>
              <li><a href="">支付方式</a></li>
              <li><a href="">联系我们</a></li>
              <li><a href="">免责声明</a></li>
              <li><a href="">使用条款</a></li>
              <li><a href="">注册协议</a></li>
            </ul>	
          </div>
          <div class="right text-center col-5">
            <div class="right_top row">
              <div class="col-6">
                <img src="../../public/img/themes/ewm-l.png" >
                <p class="mt-2">扫一扫即刻关注<br>北面官方微信</p>
              </div>
              <div class="col-6">
                <img src="../../public/img/themes/ewm-r.png" >
                <p class="mt-2">扫一扫即刻关注<br>北面野练微信</p>
              </div>
            </div>
            <div class="right_bottom mt-2">
              <div class="py-2">
                <img src="../../public/img/themes/sina.png" >
                <span>欢迎关注北面官方微博</span>
              </div>
            </div>
          </div>
        </div>
        <p class="text-center">COPYRIGHT BY www.thenorthface.com.cn , ALL RIGHTS RESERVED . 威富服饰（中国）有限公司上海分公司 沪ICP备08104484号-6 沪公网安备 31010602000021号</p>
      </div>
    </div>
	</div>
</template>

<style>
  /* 底部 */
  .my_bottom{margin-top: 30px; background: #f9f9f9; padding-top: 50px;
  padding-bottom: 50px; color: #767676; font-size: 14px; height: 240px;}
  .my_bottom .col-6 div{width: 450px;}
  .my_bottom .my_left{right: 30px;}
  .my_bottom .my_right{left: 30px;}
  .my_bottom img{width: 70px;}
  .my_bottom a img{width: 240px;}
  /* 页脚 */
  .my_foot{height: 420px;background: #000;}
  .my_foot>div{width: 900px;margin: 0 auto; padding-top: 60px;color: #707070;}
  .my_foot .top{padding-bottom: 40px;border-bottom: 1px solid #373737; 
  box-sizing: border-box;}
  .my_foot .top .left{width: 70%;}
  .my_foot .top .right{width: 30%; padding-left: 150px; font-size: 12px;}
  .my_foot .left ul{list-style: none;}
  .my_foot li:first-child{ font-size: 14px; margin-bottom: 18px;}
  .my_foot li:not(:first-child){font-size: 12px; margin-top: 6px;}
  .my_foot .left ul a{color: #707070;}
  .my_foot .left ul a:hover{text-decoration: none;}
  .my_foot .right .right_top{box-sizing: border-box;}
  .my_foot .right img{width: 95px;}
  .my_foot .right .right_bottom{width: 200px; margin: 0 auto;
  border: 1px solid #707070;border-radius: 25px;padding: 0 10px;}
  .my_foot .right .right_bottom img{width: 23px;}
  .my_foot p{font-size: 12px;}
</style>