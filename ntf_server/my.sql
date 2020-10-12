SET NAMES utf8;
DROP DATABASE IF EXISTS north;
CREATE DATABASE north CHARSET=utf8;

USE north;


-- 用户信息表
DROP TABLE IF EXISTS user_list;
CREATE TABLE user_list (
  lid int primary key auto_increment,
  phone bigint(32),
  upwd varchar(32)
);
-- 插入用户信息
INSERT INTO user_list VALUES(1,13859456123,'8549uhgg7');
INSERT INTO user_list VALUES(2,13568915606,'123456');
INSERT INTO user_list VALUES(3,18236954562,'dsad8a44fsa');
INSERT INTO user_list VALUES(4,18356895120,'adasd5511ds');
INSERT INTO user_list VALUES(5,13178459526,'8zad41as5');

-- 商品信息表
DROP TABLE IF EXISTS product_details;
CREATE TABLE product_details (
  lid int primary key auto_increment,
  title varchar(120),
  subtitle varchar(64),
  discount_price decimal(8,2),
  price decimal(8,2),
  cart_img1 varchar(100),
  cart_img2 varchar(100),
  cart_img3 varchar(100),
  img1 varchar(100),
  img2 varchar(100),
  img3 varchar(100),
  img4 varchar(100),
  dimg1 varchar(100),
  dimg2 varchar(100),
  dimg3 varchar(100),
  dimg4 varchar(100),
  dimg5 varchar(100),
  dimg6 varchar(100),
  dimg7 varchar(100),
  dimg8 varchar(100),
  dimg9 varchar(100),
  dimg10 varchar(100),
  dimg11 varchar(100),
  dimg12 varchar(100),
  dimg13 varchar(100)
  -- dimg14 varchar(100),
  -- dimg15 varchar(100)
);
-- 插入商品信息
INSERT INTO product_details VALUES
(1,"【经典款】TheNorthFace北面皮肤衣男户外上新|4NEF","服装-夹克",798,798,"http://127.0.0.1:3001/img/products/49AC/cart-img/01.jpg","http://127.0.0.1:3001/img/products/49AC/cart-img/02.jpg","http://127.0.0.1:3001/img/products/49AC/cart-img/03.jpg","http://127.0.0.1:3001/img/products/49AC/product-img/03/big-img/01.jpg","http://127.0.0.1:3001/img/products/49AC/product-img/03/big-img/02.jpg","http://127.0.0.1:3001/img/products/49AC/product-img/03/big-img/03.jpg","http://127.0.0.1:3001/img/products/49AC/product-img/03/big-img/04.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/01.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/02.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/03.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/04.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/05.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/06.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/07.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/08.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/09.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/10.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/11.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/12.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/13.jpg");
INSERT INTO product_details VALUES
(2,"TheNorthFace北面休闲裤男户外舒适防泼水上新|49AK","服装-长裤",698,698,"http://127.0.0.1:3001/img/products/49AK/cart-img/01.jpg","http://127.0.0.1:3001/img/products/49AK/cart-img/02.jpg","http://127.0.0.1:3001/img/products/49AK/cart-img/03.jpg","http://127.0.0.1:3001/img/products/49AK/product-img/01.jpg","http://127.0.0.1:3001/img/products/49AK/product-img/02.jpg","http://127.0.0.1:3001/img/products/49AK/product-img/03.jpg","http://127.0.0.1:3001/img/products/49AK/product-img/04.jpg","http://127.0.0.1:3001/img/products/49AK/product-details/01.jpg","http://127.0.0.1:3001/img/products/49AK/product-details/02.jpg","http://127.0.0.1:3001/img/products/49AK/product-details/03.jpg","http://127.0.0.1:3001/img/products/49AK/product-details/04.jpg","http://127.0.0.1:3001/img/products/49AK/product-details/05.jpg","http://127.0.0.1:3001/img/products/49AK/product-details/06.jpg","http://127.0.0.1:3001/img/products/49AK/product-details/07.jpg","http://127.0.0.1:3001/img/products/49AK/product-details/08.jpg","http://127.0.0.1:3001/img/products/49AK/product-details/09.jpg","http://127.0.0.1:3001/img/products/49AK/product-details/10.jpg","http://127.0.0.1:3001/img/products/49AK/product-details/11.jpg","http://127.0.0.1:3001/img/products/49AK/product-details/12.jpg","http://127.0.0.1:3001/img/products/49AK/product-details/13.jpg");
INSERT INTO product_details VALUES
(3,"TheNorthFace北面皮肤衣女户外上新|4NGQ","服装-夹克",898,898,"http://127.0.0.1:3001/img/products/4NGQ/cart-img/01.jpg","http://127.0.0.1:3001/img/products/4NGQ/cart-img/02.jpg","http://127.0.0.1:3001/img/products/4NGQ/cart-img/03.jpg","http://127.0.0.1:3001/img/products/4NGQ/product-img/01.jpg","http://127.0.0.1:3001/img/products/4NGQ/product-img/02.jpg","http://127.0.0.1:3001/img/products/4NGQ/product-img/03.jpg","http://127.0.0.1:3001/img/products/4NGQ/product-img/04.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/01.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/02.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/03.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/04.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/05.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/06.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/07.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/08.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/09.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/10.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/11.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/12.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/13.jpg");
INSERT INTO product_details VALUES
(4,"TheNorthFace北面腰包通用款户外轻巧 便捷上新|2UCX","户外配件-腰包",248,248,"http://127.0.0.1:3001/img/products/2UCX/cart-img/01.jpg","http://127.0.0.1:3001/img/products/2UCX/cart-img/02.jpg","http://127.0.0.1:3001/img/products/2UCX/cart-img/03.jpg","http://127.0.0.1:3001/img/products/2UCX/product-img/01.jpg","http://127.0.0.1:3001/img/products/2UCX/product-img/02.jpg","http://127.0.0.1:3001/img/products/2UCX/product-img/03.jpg","http://127.0.0.1:3001/img/products/2UCX/product-img/04.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/01.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/02.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/03.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/04.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/05.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/06.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/07.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/08.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/09.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/10.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/11.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/12.jpg","http://127.0.0.1:3001/img/products/49AC/product-details/13.jpg");


-- 首页轮播图
DROP TABLE IF EXISTS topscroll;
CREATE TABLE topscroll(
  scro1 varchar(50),
  scro2 varchar(50),
  scro3 varchar(50),
  scro4 varchar(50)
);
-- 插入轮播图片
INSERT INTO topscroll VALUES
("http://127.0.0.1:3001/img/topscroll/1.jpg","http://127.0.0.1:3001/img/topscroll/2.jpg","http://127.0.0.1:3001/img/topscroll/3.jpg","http://127.0.0.1:3001/img/topscroll/3d.gif");


-- 男士
DROP TABLE IF EXISTS mail;
CREATE TABLE mail(
  img1 varchar(60),
  img2 varchar(60),
  img3 varchar(60),
  img4 varchar(60)
);
-- 插入男士图片
INSERT INTO mail VALUES
("http://127.0.0.1:3001/img/products/man/man1.jpg","http://127.0.0.1:3001/img/products/man/man2.jpg","http://127.0.0.1:3001/img/products/man/man3.jpg","http://127.0.0.1:3001/img/products/man/man4.jpg");

-- 女士
DROP TABLE IF EXISTS femail;
CREATE TABLE femail(
  img1 varchar(60),
  img2 varchar(60),
  img3 varchar(60),
  img4 varchar(60)
);
-- 插入女士图片
INSERT INTO femail VALUES
("http://127.0.0.1:3001/img/products/woman/woman1.jpg","http://127.0.0.1:3001/img/products/woman/woman2.jpg","http://127.0.0.1:3001/img/products/woman/woman3.jpg","http://127.0.0.1:3001/img/products/woman/woman4.jpg");

-- 热卖
DROP TABLE IF EXISTS sales;
CREATE TABLE sales(
  lid int primary key,
  title varchar(120),
  model varchar(10),
  discount_price decimal(8,2),
  price decimal(8,2),
  img varchar(100)
);
-- 插入热卖商品信息
INSERT INTO sales VALUES(1,"【经典款】TheNorthFace北面皮肤衣男户外上新","4NEF",798,798,"http://127.0.0.1:3001/img/product/1.jpg");
INSERT INTO sales VALUES(2,"TheNorthFace北面休闲裤男户外舒适防泼水上新","49AK",698,698,"http://127.0.0.1:3001/img/product/2.jpg");
INSERT INTO sales VALUES(3,"TheNorthFace北面皮肤衣女户外上新","4NGQ",898,898,"http://127.0.0.1:3001/img/product/3.jpg");
INSERT INTO sales VALUES(4,"TheNorthFace北面腰包通用款户外轻巧 便捷上新","2UCX",248,248,"http://127.0.0.1:3001/img/product/4.jpg")


-- http://127.0.0.1:3001/img/topscroll/1.jpg
-- http://127.0.0.1:3001/img/products/49AC/product-img/sm-img/01.jpg
-- http://127.0.0.1:3001/img/product/1.jpg