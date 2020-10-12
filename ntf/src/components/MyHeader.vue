<template>
  <div class="container-fluid my_top position-relative p-0">
			<!-- 左端logo -->
			<div class="nav_logo position-absolute">
				<a href="#">
					<img src="../../public/img/themes/top-logo.jpg">
				</a>
			</div>
			<!-- 导航栏 -->
			<div class="my_nav position-absolute">
				<!-- 顶部导航栏 -->
				<div class="my_top_nav position-relative">
					<div class="top_left_nav text-center position-absolute">
						<a class="my_font_small font_grey" href="#">官方商城Shop</a>
					</div>
					<div class="top_right_nav position-absolute p-0">
						<div class="text-center float-left">
							<a class="text-white" href="">探索北面Exploration</a>
						</div>
						<div class="float-left">
							<a class="text-white" href="">
								<span>VIP</span>eak
							</a>
						</div>
						<div id="shopping_cart"  class="cart float-right pr-0">
							<a href="">
								<img class="h-75" src="../../public/img/themes/Cart.png" >
								<sup>0</sup>
							</a>
						</div>
						<div class="float-right">
							<a class="font_lightgrey" href="">
								<img src="../../public/img/themes/china.png" >CN
							</a>
						</div>
						<div id="phone_mart" class="float-right">
							<a class="font_lightgrey" href="">
								<img class="h-50" src="../../public/img/themes/phone.png" >手机商城
							</a>
						</div>
						<div class="float-right">
							<a class="font_lightgrey" href="">
								<img class="w-25" src="../../public/img/themes/location.png">门店查询
							</a>
						</div>
						<div class="float-right">
							<a class="font_lightgrey" href="/#/reg">加入/登录VIPeak</a>
						</div>
					</div>
				</div>
				<!-- 第二层导航栏 -->
				<div class="my_second_nav row">
					<div class="col-9">
						<span>
							<a href="">全部商品</a>
						</span>
						<span>
							<a href="">男士</a>
						</span>
						<span>
							<a href="">女士</a>
						</span>
						<span>
							<a href="">鞋类</a>
						</span>
						<span>
							<a href="">装备配件</a>
						</span>
						<span>
							<a href="">Urban Exploration</a>
						</span>
						<span>
							<a href="">童装</a>
						</span>
						<span>
							<a href="">场景</a>
						</span>
					</div>
					<div class="col-3 my_top_search mt-1">
						<a class="float-left pt-1" href="">
							<img class="h-75" src="../../public/img/themes/search.png" >
						</a>
						<form action="" method="">
							<input type="text" name="" id="" placeholder="搜索商品"/>
						</form>
					</div>
				</div>
			</div>
			<!-- 右侧固定栏 -->
			<div class="right_fixed">
				<div>
					<a href="">
						<img src="../../public/img/themes/suves.png" alt="">
					</a>
				</div>
				<div>
					<a href="">
						<img src="../../public/img/themes/wechatgreen.png" alt="">
					</a>
				</div>
				<div>
					<a href="">
						<img src="../../public/img/themes/righticon_01.png" alt="">
					</a>
				</div>
				<div>
					<a href="#">
						<img src="../../public/img/themes/top.png" alt="">
					</a>
				</div>
			</div>
		</div>
</template>
<style>
  .my_top{height: 80px; width: 100%;}
  .my_top a:hover{text-decoration: none;}
	.nav_logo{width: 100px; height: 80px;} 
  .my_nav{left: 100px; width: 1800px; border-bottom: 1px solid #ddd;}
  .my_top_nav{ height: 40px;}
  .top_left_nav{background-color: #ffffff; width: 80px; 
    line-height: 40px;font-family: helvetica;}
	.top_left_nav>a:hover{color: #585858;}
  .top_right_nav{background-color: #222222; left: 100px; width: 94.5%;height: 40px; line-height: 40px;}
  .top_right_nav div{padding-left: 20px; padding-right: 20px;}
  .top_right_nav div a{font-size: 12px; font-family: helvetica;}
	.top_right_nav>div>a>span{color: #e52d1d;}
  .top_right_nav div sup{color: #e52d1d; font-weight: bolder; margin-left: 8px;}
  .top_right_nav .cart{background-color: #f7f7f7;}
  .top_right_nav>div:first-child:hover,.top_right_nav>div:nth-child(2):hover{opacity: 0.8;}
	.top_right_nav>div:nth-child(6)>a:hover,.top_right_nav>div:nth-child(4)>a:hover{color: #0aa1ed;}
	.top_right_nav>div:nth-child(4):hover{background-color: white;}
  .top_right_nav>div:last-child>a:hover{color:#c7c7c7;}
  .my_font_small{font-size: 12px;}
  .font_grey{color: #585858;}
  .font_lightgrey{color: #c7c7c7;}
	/* 第二层导航栏 */
	.my_second_nav{width: 98%;}
  .my_second_nav a{font-size: 16px; color: #000000; font-family: helvetica; 
    line-height: 40px;}
  .my_second_nav span{padding-right: 6%;}
  .my_top_search{background-color: #e2e2e2; height: 30px; line-height: 30px;display: flex; align-items: center;}
  .my_top_search input{padding-left: 12px; background-color: #e2e2e2; height: 30px; font-size: 14px;border: 0; outline: none;}
	/* 右侧固定栏 */
	.right_fixed{position: fixed; z-index: 9; width: 60px; top: 260px; right: 5px;}
	.right_fixed>div{line-height: 60px;margin-bottom: 1px; background-color: #0a1820; text-align: center;}
	.right_fixed>div:nth-child(3) img{width: 42px; height: 42px;}
	/* 手机商城 */
	#phone_mart:hover{cursor: pointer; background-color: white;}
	#phone_mart>a:hover{color: #c7c7c7;}
	/* 购物车 */
	#shopping_cart{width: 80px; text-align: center;}
</style>
