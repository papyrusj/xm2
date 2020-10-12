<template>
  <div class="container-fluid p-0">
    <div class="py-2 d-flex">
      <a class="" href="homepage.html">
        <img class="w-100" src="../../public/img/tnf-logo.jpg" >
      </a>
      <h3 class="m-4">欢迎登陆</h3>
    </div>
    <div class="my_content position-relative">
      <div class="bg-white position-absolute">
        <h5 class="font-weight-bold">账号登录</h5>
        <ul class="reg_ul list-unstyled">
          <li>
            <input class="w-100" type="text" v-model="phone" id="phone" value="" placeholder="手机号"/>
          </li>
          <li style="margin-top: 40px;">
            <input class="w-100" type="text" v-model="upwd" id="upwd" value="" placeholder="登录密码"/>
          </li>
          <li class="forget_upwd">
            <a href="" class="reg_font forget_upwd">忘记密码?</a>
          </li>
          <li class="btn_li">
            <button @click="login" class="btn_login border-0 text-white">
              立即登录
            </button>
          </li>
        </ul>
        <div class="row reg_font">
          <a class="col-5" href="">快速登录/注册</a>
          <a class="col-7" href="">账号登录</a>
        </div>
      </div>
      <!-- 弹框 -->
      <div class="msg_alert" v-show="isShow">
        用户名或密码错误
      </div>
    </div>
    <div class="my_foot text-center position-fixed">
      COPYRIGHT BY www.thenorthface.com.cn , ALL RIGHTS RESERVED . 威富服饰（中国）有限公司上海分公司 沪ICP备08104484号-6 沪公网安备 31010602000021号
    </div>
  </div>
</template>

<style scoped>
  .my_content{
    background-image: url(../../public/img/reg.jpg); background-repeat: no-repeat;
    width: 1600px; margin: 0 auto; height: 600px;}
  .my_content .bg-white{
    width: 400px; height: 440px; top: 55px; right: 200px;    padding-top: 35px; padding-right: 60px; padding-bottom: 35px; padding-left: 60px; font-size: 14px;}
  .btn_login{width: 100%; height: 36px; background: #fd0000; cursor: pointer}
  .btn_li{margin-top: 30px; margin-bottom: 40px;}
  .font_small{font-size: 12px; color: #337ab7;}
  .font_small:hover{color: #666;}
  .reg_font a{color: #000000;}
  .reg_font a:hover{text-decoration: none; color: #000000;}
  .my_foot{
    padding-top: 30px; padding-bottom: 30px; width: 100%; height: 43px; font-size: 14px;line-height: 10px;background: #000000;color: #707070; bottom: 0;}
  .reg_ul{margin-top: 35px; margin-bottom: 10px; color: #666;}
  .reg_ul li{margin-bottom: 20px;}
  #phone,#code,#msg{
    border-color: #ccc; padding: 1px; line-height: 36px; outline: none;
    padding-left: 15px;font-size: 14px;color: #A5A5A5; height: 36px; 
    border: 1px solid #ccc;}
  #code{width: 100px;}
  .change{font-size: 12px; color: #d2d2d2;}
  .change:hover{color: #d2d2d2;}
  #msg{width: 130px;}
  .msg{width: 140px; height: 36px; border: 1px solid #ff0000; margin-left: 6px;
      background: #ffffff; color: #ff0000; outline: none; line-height: 36px;
      text-align: center; float: right;}
  .msg:hover{color: #ff0000;}
  .row,.reg_font{height: 39px; margin-top: 50px;}

  .forget_upwd{color: #337ab7; text-align: right; margin-top: 30px;}
  .msg_alert{background-color: #fff; width: 352px;padding: 30px 50px;
  border: 1px solid #a3afb9; text-align: center;box-shadow: 2px 2px 1px rgba(150, 150, 150, 0.5); font-size: 14px; position: absolute; left: 607px;
  top: 318px;}
</style>

<script>
  export default {
    data(){
      return{
        phone:"",
        upwd:"",
        isShow:false
      }
    },
    methods:{
      login(){
        if(this.phone==""){
          alert(`请填写登录账号`)
        }else if(this.upwd==""){
          alert(`请填写密码`)
        }else{
          console.log(`正在登陆......`)
        }
        this.axios.post(
          "/user/login",
          `phone=${this.phone}&upwd=${this.upwd}`
          // {params:{phone:this.phone,upwd:this.upwd}}
        ).then(res=>{
          console.log(res.data.results)
          if(res.data.code == 1){
            alert(`登陆成功`)
            this.$router.push('/')
          }else{
            this.isShow=true
          }
          
        })
      }
    }

  }
</script>
