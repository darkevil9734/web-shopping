<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/favicon.png">
    <title>Welcome to Dienthoaionline.com - Hệ thống bán điện thoại trực tuyến toàn quốc</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen"/>
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
</script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js">
</script>
<![endif]-->
  </head>
  <body>
    <div class="wrapper">
       <div class="header">
            <div class="container">
               <div class="row">
                  <div class="col-md-2 col-sm-2">
                     <div class="logo"><a href="index.html"><img src="images/logo2.png" alt="DTO" "></a></div>
                  </div>
                  <div class="col-md-10 col-sm-10">
                     <div class="header_top">
                        <div class="row">
                           <div class="col-md-3">
                             
                           </div>
                           <div class="col-md-6">
                              <ul class="topmenu">
                                 <li><a href="contact.html">Giới Thiệu</a></li>
                                 <li><a href="https://tinhte.vn/">Tin Tức</a></li>
                                 <li><a href="contact.html">Bảo Hành</a></li>
                                 <li><a href="contact.html">Góp Ý</a></li>
                                 <li><a href="contact.html">Hỗ Trợ</a></li>
                              </ul>
                           </div>
                           <div class="col-md-3">
                              <ul class="usermenu">
                                 <li><a href="login.html" class="log">Đăng Nhập</a></li>
                                 <li><a href="register.html" class="reg">Đăng Ký</a></li>
                              </ul>
                           </div>
                        </div>
                     </div>
                     <div class="clearfix"></div>
                     <div class="header_bottom">
                        <ul class="option">
                           <li id="search" class="search">
                              <form><input class="search-submit" type="submit" value=""><input class="search-input" placeholder="Nhập sản phẩm bạn muốn tìm?" type="text" value="" name="search"></form>
                           </li>
                           <li class="option-cart">
                              <a href="#" class="cart-icon">cart <span class="cart_no">02</span></a>
                              <ul class="option-cart-item">
                                 <li>
                                    <div class="cart-item">
                                       <div class="image"><img src="images/products/thum/products-01.png" alt=""></div>
                                       <div class="item-description">
                                          <p class="name">IPhone 7Plus</p>
                                          <p>Số Lượng: <span class="light-red">01</span></p>
                                       </div>
                                       <div class="right">
                                          
                                          <a href="#" class="remove"><img src="images/remove.png" alt="remove"></a>
                                       </div>
                                    </div>
                                 </li>
                                 <li>
                                    <div class="cart-item">
                                       <div class="image"><img src="images/products/thum/products-02.png" alt=""></div>
                                       <div class="item-description">
                                          <p class="name">SamSung galaxy S8</p>
                                          <p>Số Lượng: <span class="light-red">01</span></p>
                                       </div>
                                       <div class="right">
                                          
                                          <a href="#" class="remove"><img src="images/remove.png" alt="remove"></a>
                                       </div>
                                    </div>
                                 </li>
                                 <li><button class="checkout" onClick="location.href='checkout.html'">Thanh Toán</button></li>
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
                                 <a href="index.html" >Home</a>
                                 
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
                                             <li><a href="baoda.html">Bao da & ốp lưng</a></li>
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
                              <li><a href="contact.html">Liên hệ chúng tôi</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
      </div>
      <div class="clearfix">
      </div>
      <div class="container_fullwidth">
        <div class="container">
          <div class="row">
            <div class="col-md-3">
              <div class="special-deal leftbar" style="margin-top:0;">
                <h4 class="title">
                  Sản Phẩm
                  <strong>
                    Hot
                  </strong>
                </h4>
                <div class="special-item">
                  <div class="product-image">
                    <a href="details.html">
                      <img src="images/products/thum/products-01.png" alt="">
                    </a>
                  </div>
                  <div class="product-info">
                    <p>
                      <a href="details.html">
                        Iphone 5s Gold 32 Gb
                      </a>
                    </p>
                    <h5 class="price">
                      5.000.000₫
                    </h5>
                  </div>
                </div>
                <div class="special-item">
                  <div class="product-image">
                    <a href="details.html">
                      <img src="images/products/thum/products-02.png" alt="">
                    </a>
                  </div>
                  <div class="product-info">
                    <p>
                      <a href="details.html">
                        Samsung Galaxy S8
                      </a>
                    </p>
                    <h5 class="price">
                      17.500.000₫
                    </h5>
                  </div>
                </div>
                <div class="special-item">
                  <div class="product-image">
                    <a href="details.html">
                      <img src="images/products/thum/products-03.png" alt="">
                    </a>
                  </div>
                  <div class="product-info">
                    <p>
                      <a href="details.html">
                        Sony Xperia XZ Premium
                      </a>
                    </p>
                    <h5 class="price">
                      17.000.000₫
                    </h5>
                  </div>
                </div>
              </div>
              <div class="product-tag leftbar">
                <h3 class="title">
                 Tìm
                  <strong>
                    Sản Phẩm
                  </strong>
                </h3>
                <ul>
                  <li>
                    <a href="#">
                      Dưới 1 triệu
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Từ 1 - 3 triệu
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Từ 3 - 7 triệu
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Từ 7 - 10 triệu
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      iPhone (Apple)
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Samsung
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      Sony
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      OPPO
                    </a>
                  </li>
                </ul>
              </div>
              
           <div class="fbl-box leftbar">
                <h3 class="title">
                  Facebook
                </h3>
                <span class="likebutton">
                  <a href="#">
                    <img src="images/fblike.png" alt="">
                  </a>
                </span>
                <p>
                  69k Người Like Dienthoaionline
                </p>
                <ul>
                  <li>
                    <a href="#">
                    </a>
                  </li>
                  <li>
                    <a href="#">
                    </a>
                  </li>
                  <li>
                    <a href="#">
                    </a>
                  </li>
                  <li>
                    <a href="#">
                    </a>
                  </li>
                  <li>
                    <a href="#">
                    </a>
                  </li>
                  <li>
                    <a href="#">
                    </a>
                  </li>
                  <li>
                    <a href="#">
                    </a>
                  </li>
                  <li>
                    <a href="#">
                    </a>
                  </li>
                </ul>
                <div class="fbplug">
                  <a href="#">
                    <span>
                      <img src="images/fbicon.png" alt="">
                    </span>
                    Facebook 
                  </a>
                </div>
              </div>
            </div>
            <div class="col-md-9">
              <div class="checkout-page">
               
                  <div class="container1"> 
 <table  id="cart" class="table table-hover table-condensed"> 
  <thead> 
   <tr> 
    <th style="width:10%"><strong>Tên sản phẩm</strong></th> 
    <th style="width:2%"><strong>Giá</strong></th> 
    <th style="width:3%"><strong>Số lượng</strong></th> 
    <th style="width:5%" class="text-center"><strong>Thành tiền</strong></th> 
    <th style="width:1%"> </th> 
   </tr> 
  </thead> 
  <tbody>
  <c:forEach items="${ds_spm}" var="dssp">
	  <tr> 
	   <td data-th="Product"> 
	    <div class="row"> 
	     <div class="col-sm-2 hidden-xs"><img src="./Views/productIMG/${dssp.hinh_dai_dien}" class="img-responsive" width="80">
	     </div> 
	     <div class="col-sm-10"> 
	      <h4 class="nomargin">${dssp.tenSanPham}</h4> 
	     
	     </div> 
	    </div> 
	   </td> 
	   <td data-th="Price">${dssp.giaSanPham}₫</td> 
	   <td data-th="Quantity"><input class="form-control text-center" value="${dssp.soLuongMua}" type="number">
	   </td> 
	   <td data-th="Subtotal" class="text-center">${dssp.getThanhTien()}₫</td> 
	   <td class="actions" data-th="">
	    <button class="btn btn-info btn-sm"><i class="fa fa-edit"></i>
	    </button> 
	    <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i>
	    </button>
	   </td> 
	  </tr> 
 </c:forEach>
  </tbody><tfoot> 
  
    <td><a href="index.html" class="btn btn-warning"><i class="fa fa-angle-left"></i> Tiếp tục mua hàng</a>
    </td> 
    <td colspan="2" class="hidden-xs"> </td> 
    <td class="hidden-xs text-center"><strong>Tổng ${sessionScope.gioHang.tongTien()}</strong>
    </td> 
    <td><a href="#" class="btn btn-success btn-block">Thanh toán <i class="fa fa-angle-right"></i></a>
    </td> 
   </tr> 
  </tfoot> 
 </table>
</div>
    
              </div>
            </div>
          </div>
          <div class="clearfix">
          </div>
          
      </div>
      <div class="clearfix">
      </div>
      <div class="footer">
            <div class="footer-info">
               <div class="container">
                  <div class="row">
                     <div class="col-md-3">
                        <div class="footer-logo"><a href="#"><img src="images/logo2.png" alt=""></a></div>
                     </div>
                     <div class="col-md-3 col-sm-6">
                        <h4 class="title">Địa <strong> Chỉ</strong></h4>
                        <p>Số 123, Quang Trung, HoChiMinh , Vietnam</p>
                        <p>Số Điện Thoại : 0909.113.911</p>
                        <p>Email : didongonline@gmail.com</p>
                     </div>
                     <div class="col-md-3 col-sm-6">
                        <h4 class="title">Hỗ<strong> Trợ</strong></h4>
                       <ul class="support">
                           <li><a href="cauhoi.html">Các câu hỏi thường gặp ?</a></li>
                           <li><a href="thanhtoan.html">Phương thức thanh toán</a></li>
                           <li><a href="doitra.html">Đổi trả sản phẩm</a></li>
                           <li><a href="contact.html">Thông tin về chúng tôi</a></li>
                        </ul>
                     </div>
                     <div class="col-md-3">
                        <h4 class="title">Nhận Tin Tức Từ <strong>Email </strong></h4>
                        <p>Để nhận được thêm nhiều khuyến mãi</p>
                        <form class="newsletter">
              <input type="text" name="" placeholder="Nhập email....">
              <input type="submit" value="Gửi" class="button">
            </form>
                     </div>
                  </div>
               </div>
            </div>
            <div class="copyright-info">
               <div class="container">
                  <div class="row">
                     <div class="col-md-6">
                        <p>Copyright © 2017.</p>
                     </div>
                     <div class="col-md-6">
                        <ul class="social-icon">
                           <li><a href="#" class="linkedin"></a></li>
                           <li><a href="#" class="google-plus"></a></li>
                           <li><a href="#" class="twitter"></a></li>
                           <li><a href="#" class="facebook"></a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
    </div>
    <!-- Bootstrap core JavaScript==================================================-->
    <script type="text/javascript" src="js/jquery-1.10.2.min.js">
    </script>
    <script type="text/javascript" src="js/bootstrap.min.js">
    </script>
    <script defer src="js/jquery.flexslider.js">
    </script>
    <script type="text/javascript" src="js/jquery.carouFredSel-6.2.1-packed.js">
    </script>
    <script type="text/javascript" src="js/script.min.js" >
    </script>
  </body>
</html>