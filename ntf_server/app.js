// 引入express模块
const express = require('express');
// 创建服务器
const app = express();
const cors=require("cors");

//引入用户路由器
const ur = require('./router/user.js');
// 引入商品路由器
const pr = require('./router/products.js');
//引入body-parser中间件
const bodyParser = require('body-parser');

// 监听端口3000
app.listen(3001);

// 解决跨域问题
app.use(cors({
  origin:["http://127.0.0.1:8080","http://localhost:8080"]
}));

//托管静态资源到public目录
app.use(express.static('./public'))

//使用body-parser将post请求数据解析为对象
app.use(bodyParser.urlencoded({
	extended: false
}));

//路由器（路由）都是放在当前服务器的最后
//挂载路由器，添加前缀/user
//  /user/reg
app.use('/user', ur);
app.use('/pro', pr);

// app.use('/ajax', ajax);
// app.use('/pro', pro);
