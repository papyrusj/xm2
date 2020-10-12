//引入 需要在全局使用的文件
//注：一定要在new Vue之前引入
import Vue from 'vue'
import App from './App.vue'
import router from './router'

// 引入MyHeader.vue文件中的模块对象内容，保存在变量MyHeader中
import MyHeader from "./components/MyHeader.vue"
import MyFooter from "./components/MyFooter.vue"
Vue.component("my-header",MyHeader)
Vue.component("my-footer",MyFooter)

// 导入模块
import axios from "axios"
// 原型链扩展属性
Vue.prototype.axios=axios
// 配置服务器的基础地址，代表已经确定了WEB服务器地址及端口号
axios.defaults.baseURL="http://127.0.0.1:3001"
// Vue.component("my-header",MyHeader)


Vue.config.productionTip = false

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
