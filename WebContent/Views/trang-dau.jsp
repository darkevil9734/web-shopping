<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <html>
   <head>
      <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
      <meta name="description" content="Hệ Thống bàn hàng trực tuyến hàng đầu VN hay đến với chúng tôi để sở hữu những sản phẩm chất lượng với giá hấp dẫn">
      <meta name="author" content="Nhóm phát triển, Back-End: Nguyên">
      <meta name="keywords" content="apple, iphone, samsung, dien thoai, gia re, mua hang, phu kien">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="shortcut icon" href="images/favicon.png">
      <title>Welcome to Dienthoaionline.com - Hệ thống bán điện thoại trực tuyến toàn quốc</title>
      <meta name="keywords" content="dienthoaionline , dien thoai sach tay , hang free cho khong">
      <link href="css/bootstrap.css" rel="stylesheet">
      <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100' rel='stylesheet' type='text/css'>
      <link href="css/font-awesome.min.css" rel="stylesheet">
      <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen"/>
      <link href="css/sequence-looptheme.css" rel="stylesheet" media="all"/>
      <link href="css/style.css" rel="stylesheet">
      <!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script><![endif]-->
   <script type="text/javascript" src="http://gc.kis.scr.kaspersky-labs.com/1B74BD89-2A22-4B93-B451-1C9E1052A0EC/main.js" charset="UTF-8"></script></head>
<body id="home">

<div class="wrapper">    
<div class="header" style="position: fixed;">
            <div class="container">
               <div class="row">
                  <div class="col-md-2 col-sm-2">
                     <div class="logo"><a href="trang-chu.jsp"><img src="images/logo2.png" alt="DTO" "=""></a></div>
                  </div>
                  <div class="col-md-10 col-sm-10">
                     <div class="header_top">
                        <div class="row">
                           <div class="col-md-3">
                             
                           </div>
                           <div class="col-md-6">
                              <ul class="topmenu">
                                 <li><a href="contact.html">Giới Thiệu</a></li>
                                 <li><a href="contact.jsp">Góp Ý</a></li>
                                 <li><a href="#">Xin chào ${sessionScope.member.ten_user}</a></li>

                              </ul>
                           </div>
                           <div class="col-md-3">
                              <ul class="usermenu">
                              	<c:if test="${sessionScope.member == null}">
                              		<li><a href='dang-nhap.jsp' class='log'>Đăng Nhập</a></li>
           	                        <li><a href='dang-ky.jsp' class='reg'>Đăng Ký</a></li>
                              	</c:if>
                              	<c:if test="${sessionScope.member != null}">
                                	<li><a href='dangXuatServlet' class='reg'>Đăng xuất</a></li>
                                </c:if>	
                              </ul>
                           </div>
                        </div>
                     </div>
                     <div class="clearfix"></div>
                     <div class="header_bottom">
                        <ul class="option">
                           <li id="search" class="search">
                              <form name="formTimKiem" action="timKiemSanPham" method="POST" onsubmit="return xacThucTimKiem()">
                              	<input class="search-submit" type="submit" value="">
                              	<input class="search-input" placeholder="Nhập sản phẩm bạn muốn tìm?" type="text" value="" name="txtTen">
                              </form>
                              <script text="text/javascript">
									function xacThucTimKiem() {
									    var san_pham = document.forms["formTimKiem"]["txtTen"].value;
									    if (san_pham == "") {
									        alert("Không được để trống");
									        return false;
									    }
									}
							 </script>
                           </li>
                           <li class="option-cart">
                              <a href="#" class="cart-icon">cart <span class="cart_no">${sessionScope.gioHang.countSoLuongMua()}</span></a>
                              <ul class="option-cart-item">
                              
                                 <li>
                                    <div class="cart-item">
                                       <div class="image"><img src="images/products/thum/products-01.png" alt=""></div>
                                       <div class="item-description">
                                          <p class="name">IPhone 7Plus</p>
                                          <p>Số Lượng: <span class="light-red">01</span></p>
                                       </div>
                                       <div class="right">
                                          <p class="price">$600</p>
                                          <a href="#" class="remove"><img src="images/remove.png" alt="remove"></a>
                                       </div>
                                    </div>
                                 </li>
                               
                                 <li><span class="total">Total <strong>$1.100</strong></span><button class="checkout" onclick="location.href='checkout.html'">Thanh Toán</button></li>
                              </ul>
                           </li>
                        </ul>
                        <div class="navbar-header"><button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                           <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span>
                           <span class="icon-bar"></span>
                           <span class="icon-bar"></span></button></div>
                        <div class="navbar-collapse collapse">
                           <ul class="nav navbar-nav">
                              <li class="active dropdown">
                                 <a href="trang-chu.jsp">Home</a>
                                 
                              </li>
                              <li><a href="apple.html">Apple</a></li>
                              <li><a href="sony.html">Sony</a></li>
                              <li class="dropdown">
                                 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Phụ Kiện</a>
                                 <div class="dropdown-menu mega-menu">
                                    <div class="row">
                                       <div class="col-md-6 col-sm-6">
                                          <ul class="mega-menu-links">
                                             <li><a href="sanphammoi.html">Sản Phẩm mới</a></li>
                                             <li><a href="baoda.html">Bao da &amp; ốp lưng</a></li>
                                             <li><a href="sacduphong.html"> Sạc dự phòng </a></li>
                                             <li><a href="loa.html">Loa Bluetooth</a></li>
                                             <li><a href="capsac.html">Cáp Sạc</a></li>
                                          </ul>
                                       </div>
                                    </div>
                                 </div>
                              </li>
                              <li><a href="Oppo.html">Oppo</a></li>
                              <li><a href="xiaomi.html">Xiaomi</a></li> 
                              <li><a href="samsung.html">Samsung</a></li>
                              <li><a href="contact.jsp">Liên hệ chúng tôi</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>