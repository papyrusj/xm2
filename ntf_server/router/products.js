const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//创建路由器对象
const app=express.Router();



//商品详情页
app.get("/products",(req,res)=>{
  let lid=req.query.lid;
  let sql="select * from product_details where lid=?";
  pool.query(sql,[lid],(err,result)=>{
    if (err) throw err;
    if(result.length!=0){
      res.send(result)
    }else{
      res.send("0")
    }
  })
})



// 首页
// 获取轮播图
app.get("/",(req,res)=>{
  let sql="select * from topscroll";
  pool.query(sql,(err,result)=>{
    if (err) throw err;
    if(result.length !=0){
      res.send(result)
    }else{
      res.send("0")
    }
  })
})
// 获取男士图片
app.get("/man",(req,res)=>{
  let sql="select * from mail";
  pool.query(sql,(err,result)=>{
    if (err) throw err;
    if(result.length !=0){
      res.send(result)
    }else{
      res.send("0")
    }
  })
})
// 获取女士图片
app.get("/woman",(req,res)=>{
  let sql="select * from femail";
  pool.query(sql,(err,result)=>{
    if (err) throw err;
    if(result.length !=0){
      res.send(result)
    }else{
      res.send("0")
    }
  })
})
// 获取热卖商品
app.get("/sales",(req,res)=>{
  let sql="select * from sales";
  pool.query(sql,(err,result)=>{
    if (err) throw err;
    if(result.length !=0){
      res.send(result)
    }else{
      res.send("0")
    }
  })
})





//导出路由器对象
module.exports=app;