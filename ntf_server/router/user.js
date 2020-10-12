const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//创建路由器对象
const app=express.Router();


//添加路由
//1.用户注册
//post /reg
app.post('/reg',(req,res)=>{
  //1.1获取post传递的数据
  let obj=req.body;
  console.log(obj);
  //1.2验证数据是否为空
  if(!obj.phone){
    res.send({code:404,msg:'phoen required'});
	  return;
  }
  //1.3执行SQL语句，插入到用户表中
  pool.query('SELECT * FROM user_list WHERE phone=?',[obj.phone],(err,result)=>{
    if(err) throw err;
	  console.log(result);
    //插入成功再响应
    if(result.length==0){
      pool.query("insert into user_list set ?",[obj.phone],(err,result)=>{
        console.log("成功")
        res.send({code:301,results:result});
      })
    }else{
      console.log("账号已存在")
      res.send({code:1,results:'已存在'});
    }
  }); 
});

//2.用户登陆
//post /login
app.post('/login',(req,res)=>{
  //2.1获取post请求的数据
  console.log(1)
  let obj=req.body;
  console.log(obj);
  //2.2验证数据是否为空
  if(!obj.phone){
    res.send({code:401,msg:'phone required'});
	  return;
  }
  if(!obj.upwd){
    res.send({code:402,msg:'upwd required'});
	  return;
  }
  //2.3执行SQL语句，查询是否用户名密码同时匹配，如果有响应‘成功’，否则‘失败’
  pool.query('SELECT * FROM user_list WHERE phone=? AND upwd=?',[obj.phone,obj.upwd],(err,result)=>{
    if(err) throw err;
    //结果是数组
    console.log(result);
    //如果数组长度为0，说明登陆失败；否则登陆成功
    if(result.length==0){
      console.log("没找到")
      res.send({code:301});
    }else{
      console.log("成功")
      res.send({code:1,results:result});
    }
  });
});


//商品详情页
// app.get("/products",(req,res)=>{
//   let lid=req.query.lid;
//   let sql="select * from product_details where lid=?";
//   pool.query(sql,[lid],(err,result)=>{
//     if (err) throw err;
//     if(result.length!=0){
//       res.send(result)
//     }else{
//       res.send("0")
//     }
//   })
// })

//导出路由器对象
module.exports=app;