// 放首页
<template>
  <div>
    <my-header></my-header>
    <!-- 小喇叭 免邮通知 -->
		<p class="my_top_msg m-0">
			<a class="my_font_small font_grey" href="">
				<img class="h-75" src="../../public/img/themes/msg.png" >
				★官网商城购物订单满300元，即可享顺丰速运免费运送到家。
			</a>
		</p>
		<!-- 顶部轮播图 -->
		<div class="container-fluid p-0">
			<div id="demo" class="carousel" data-ride="carousel">
				<div class="carousel-item active">
					<a href="">
						<img class="w-100" :src="topsc.scro1" alt="">
					</a>
				</div>
				<div class="carousel-item">
					<a href="">
						<img class="w-100" :src="topsc.scro2" >
					</a>
				</div>
				<div class="carousel-item">
					<a href="">
						<img class="w-100" :src="topsc.scro3" >
					</a>
				</div>
				<div class="carousel-item">
					<a href="">
						<img class="w-100" :src="topsc.scro4" >
					</a>
				</div>
				<ul class="carousel-indicators">
					<li data-target="#demo" data-slide-to="0" class="active"></li>
					<li data-target="#demo" data-slide-to="1"></li>
					<li data-target="#demo" data-slide-to="2"></li>
					<li data-target="#demo" data-slide-to="3"></li>
				</ul>
				<a data-slide="next" class="carousel-control-next" href="#demo">
					<img src="">
				</a>
				<a data-slide="prev" class="carousel-control-prev" href="#demo">
					<img src="" >
				</a>
			</div>
		</div>
		<!-- body部分 -->
		<div class="container-fluid p-0">
			<!-- 加入会员 -->
			<div class="vip_page row">
				<a class="col-6 pr-2" href="">
					<img class="w-100" src="../../public/img/themes/body1.jpg" >
				</a>
				<a class="col-6 pl-2" href="">
					<img class="w-100" src="../../public/img/themes/body2.jpg" >
				</a>
			</div>
			<!-- 商品 -->
			<div>
				<!-- 男女优选 -->
				<div>
					<!-- 男女选项 -->
					<div class="sex_change row text-center">
						<div class="col-6">
							<span @click="mail" href="">男士优选</span>
						</div>
						<div class="col-6">
							<span @click="femail" href="">女士优选</span>
						</div>
					</div>
					<div class="sex">
						<!-- 男士 -->
						<div v-show="manShow" class="products_sex">
							<div>
								<img :src="man.img1" alt="">
							</div>
							<div>
								<img :src="man.img2" alt="">
							</div>
							<div>
								<img :src="man.img3" alt="">
							</div>
							<div>
								<img :src="man.img4" alt="">
							</div>
						</div>
						<!-- 女士 -->
						<div v-show="womanShow" class="products_sex"> 
							<div>
								<img :src="woman.img1" alt="">
							</div>
							<div>
								<img :src="woman.img2" alt="">
							</div>
							<div>
								<img :src="woman.img3" alt="">
							</div>
							<div>
								<img :src="woman.img4" alt="">
							</div>
						</div>
					</div>
				</div>
				<!-- 最佳单品 -->
				<div class="products_sales">
					<h3>最佳销售单品</h3>
					<div id="sales">
						<div>
							<a v-for="(a,i) of sales" :key="i" class="sales" :href="`/#/products/${a.lid}`" >
								<div>
									<img class="w-100" :src="a.img" alt="">
								</div>
								<p>
									<span>{{a.title}}|</span>
									<span>{{a.model}}</span>
								</p>
								<p>
									<span>{{a.discount_price}}</span>
									<del>￥{{a.price}}</del>
								</p>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
    <my-footer></my-footer>
  </div>
</template>


<style scoped>
  /* 主页面样式 */
  /* 小喇叭 免邮消息 */
  .my_top_msg{padding-left: 130px; background-color: #efefef; height: 32px; 
    line-height: 34px;}
  .my_top_msg a:hover{text-decoration: none; color: #5d5d5d;}
  /* 轮播图 */
  .carousel-indicators li{width: 0.8rem; height: 0.8rem;border-radius: 50%;}
  .carousel-indicators .active{background-color: white;}
  .carousel-control-next{margin-right: 50px;}
  .carousel-control-prev{margin-left: 50px;}
  /* 加入会员 */
  .vip_page{width: 1140px; margin: 0 auto; margin-top: 60px;}
  /* 男女优选 */
  .sex_change{height: 60px; line-height: 60px; margin: 0 auto; margin-top: 30px; width: 320px; font-size: 16px;}
  .sex_change span{color: #767676; cursor: pointer;}
	.sex{margin: 0 auto;}
	.products_sex{width: 1110px; margin: 0 auto; display: flex; justify-content: space-between;}
  .products_sex>div>img{width: 270px;}
	/* 最佳单品 */
	.products_sales{width: 1110px; margin: 0 auto; text-align: center;}
	.products_sales>h3{margin-top: 50px; font-size: 20px; font-weight: bold;}
	/* 最佳单品 */
	#sales{margin-top: 30px;}
	#sales>div{display: flex; justify-content: space-between;}
	#sales .sales{display: block; width: 275px; border: 1px solid #ddd; padding: 15px; height: 350px; text-align: center; text-decoration: none; }
	#sales>div>a~a{margin-left:1%;}
	.sales>p>span{font-size: 14px; color: #000; margin: 10px 0;}
	.sales>:last-child>span{color: red; font-weight: bold; font-size: 14px;}
	.sales>:last-child>del{color: #c7c7c7; margin-left: 19px; font-size: 14px;}
</style>

<script>

export default {
  data(){
    return{
			topsc:{},
			man:{},
			woman:{},
			manShow:true,
			womanShow:false,
			sales:{}
    }
  },
  mounted(){
    this.axios.get("/pro/").then(result=>{
			this.topsc=result.data[0];
		});
		this.axios.get("/pro/man").then(result=>{
			this.man=result.data[0];
    });
		this.axios.get("/pro/woman").then(result=>{
			this.woman=result.data[0];
			console.log(this.woman)
		});
		this.axios.get("/pro/sales").then(result=>{
			console.log(result.data)
			this.sales=result.data;
		})
	},
	methods:{
		mail(){
			this.manShow=true;
			this.womanShow=false
		},
		femail(){
			this.manShow=false;
			this.womanShow=true;
		}
	}
}
</script>>