import Vue from 'vue'
import VueRouter from 'vue-router'
// import Index from '../views/Index.vue'
// import Login from '../views/Login.vue'
// import Reg from '../views/Reg.vue'
// import Details from '../views/details.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    component: ()=>import(/* webpackChunkName: "Index" */'../views/Index.vue')
  },
  {
    path: '/login',
    component: ()=>import(/* webpackChunkName: "login" */'../views/Login.vue')
    // props:true
  },
  {
    path: '/reg',
    component: ()=>import(/* webpackChunkName: "reg" */'../views/Reg.vue')
  },
  {
    path: '/products/:lid',
    component: ()=>import(/* webpackChunkName: "products" */'../views/Products.vue')
  }
]

const router = new VueRouter({
  // mode:"history",
  routes
})

export default router
