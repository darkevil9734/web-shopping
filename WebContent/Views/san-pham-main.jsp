<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container_fullwidth">
            <div class="container">
               <div class="hot-products">
                  <h3 class="title"><strong>Sản Phẩm Hot</strong></h3>
                  <div class="control"><a id="prev_hot" class="prev" href="#" style="display: block;">&lt;</a><a id="next_hot" class="next" href="#" style="display: block;">&gt;</a></div>
                  <div class="caroufredsel_wrapper" style="display: block; text-align: start; float: left; position: relative; top: auto; right: auto; bottom: auto; left: auto; z-index: auto; width: 940px; height: 533px; margin: 0px; overflow: hidden;"><ul id="hot" style="text-align: left; float: none; position: absolute; top: 0px; right: auto; bottom: auto; left: 0px; margin: 0px; width: 4700px; height: 533px;">
                     
                     <li style="width: 940px;">
                        <div class="row">
	                        <c:forEach items="${dssp}" var="sp">
	                           <div class="col-md-3 col-sm-6">
	                           
	                              <div class="products">
	                                 <div class="offer">Trả góp 0%</div>
	                                 <div class="thumbnail"><a href="#"><img src="Views/productIMG/${sp.hinh_dai_dien}" alt="Product Name"></a></div>
	                                 <div class="productname">${sp.tenSanPham }</div>
	                                 <h4 class="price">${sp.giaSanPham}₫</h4>
	                                 <div class="button_group"><button class="button add-cart" type="button">Mua</button><button class="button compare" type="button"><i class="fa fa-exchange"></i></button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
	                              </div>
	                           
	                           </div>
	                        </c:forEach>   
                        </div>
                     </li>
                  </ul></div>
               </div>
               <div class="clearfix"></div>
               <div class="featured-products">
                  <h3 class="title"><strong>Bán Chạy</strong></h3>
                  <div class="control"><a id="prev_featured" class="prev" href="#" style="display: block;">&lt;</a><a id="next_featured" class="next" href="#" style="display: block;">&gt;</a></div>
                  <div class="caroufredsel_wrapper" style="display: block; text-align: start; float: left; position: relative; top: auto; right: auto; bottom: auto; left: auto; z-index: auto; width: 940px; height: 533px; margin: 0px; overflow: hidden;"><ul id="featured" style="text-align: left; float: none; position: absolute; top: 0px; right: auto; bottom: auto; left: 0px; margin: 0px; width: 4700px; height: 550px;">
                     <li style="width: 940px;">
                        <div class="row">
                           <div class="col-md-3 col-sm-6">
                              <div class="products">
                                 <div class="thumbnail"><a href="details9.html"><img src="images/products/small/products-12.png" alt="Product Name"></a></div>
                                 <div class="productname">iPad Wifi 32GB</div>
                                 <h4 class="price">8.990.000₫</h4>
                                 <div class="button_group"><button class="button add-cart" type="button">Mua</button><button class="button compare" type="button"><i class="fa fa-exchange"></i></button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                              </div>
                           </div>
                           <div class="col-md-3 col-sm-6">
                              <div class="products">
                                 <div class="thumbnail"><a href="details10.html"><img src="images/products/small/products-09.png" alt="Product Name"></a></div>
                                 <div class="productname">Samsung Galaxy Tab A 8.0</div>
                                 <h4 class="price">6.490.000₫</h4>
                                 <div class="button_group"><button class="button add-cart" type="button">Mua</button><button class="button compare" type="button"><i class="fa fa-exchange"></i></button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                              </div>
                           </div>
                           <div class="col-md-3 col-sm-6">
                              <div class="products">
                                 <div class="offer">Trả góp 0%</div>
                                 <div class="thumbnail"><a href="details11.html"><img src="images/products/small/products-10.png" alt="Product Name"></a></div>
                                 <div class="productname">Bkav BPhone</div>
                                 <h4 class="price">Free</h4>
                                 <div class="button_group"><button class="button add-cart" type="button">Mua</button><button class="button compare" type="button"><i class="fa fa-exchange"></i></button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                              </div>
                           </div>
                           <div class="col-md-3 col-sm-6">
                              <div class="products">
                                 <div class="thumbnail"><a href="details12.html"><img src="images/products/small/products-11.png" alt="Product Name"></a></div>
                                 <div class="productname">Bphone 2017 Gold</div>
                                 <h4 class="price">20.000.000₫</h4>
                                 <div class="button_group"><button class="button add-cart" type="button">Mua</button><button class="button compare" type="button"><i class="fa fa-exchange"></i></button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                              </div>
                           </div>
                        </div>
                     </li>
                     <li style="width: 940px;">
                        <div class="row">
                           <div class="col-md-3 col-sm-6">
                              <div class="products">
                                 <div class="thumbnail"><a href="details13.html"><img src="images/products/small/products-13.png" alt="Product Name"></a></div>
                                 <div class="productname"> Samsung Gear VR2</div>
                                 <h4 class="price">2.190.000₫</h4>
                                 <div class="button_group"><button class="button add-cart" type="button">Mua</button><button class="button compare" type="button"><i class="fa fa-exchange"></i></button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                              </div>
                           </div>
                           <div class="col-md-3 col-sm-6">
                              <div class="products">
                                 <div class="thumbnail"><a href="details14.html"><img src="images/products/small/products-14.jpg" alt="Product Name"></a></div>
                                 <div class="productname">Gậy chụp ảnh Bluetooth</div>
                                 <h4 class="price">90.000₫</h4>
                                 <div class="button_group"><button class="button add-cart" type="button">Mua</button><button class="button compare" type="button"><i class="fa fa-exchange"></i></button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                              </div>
                           </div>
                           <div class="col-md-3 col-sm-6">
                              <div class="products">
                                 <div class="thumbnail"><a href="details15.html"><img src="images/products/small/products-15.jpg" alt="Product Name"></a></div>
                                 <div class="productname">sạc dự phòng 10.000 mAh</div>
                                 <h4 class="price">300.000₫</h4>
                                 <div class="button_group"><button class="button add-cart" type="button">Mua</button><button class="button compare" type="button"><i class="fa fa-exchange"></i></button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                              </div>
                           </div>
                           <div class="col-md-3 col-sm-6">
                              <div class="products">
                                 <div class="thumbnail"><a href="details16.html"><img src="images/products/small/products-16.jpg" alt="Product Name"></a></div>
                                 <div class="productname">Micro SD 32 GB Class 10</div>
                                 <h4 class="price">400.000₫</h4>
                                 <div class="button_group"><button class="button add-cart" type="button">Add To Cart</button><button class="button compare" type="button"><i class="fa fa-exchange"></i></button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                              </div>
                           </div>
                        </div>
                     </li>
                  </ul></div>
               </div>
               <div class="clearfix"></div>
               <div class="our-brand">
                  <h3 class="title"><strong>Liên kết </strong></h3>
                  <div class="control"><a id="prev_brand" class="prev" href="#" style="display: block;">&lt;</a><a id="next_brand" class="next" href="#" style="display: block;">&gt;</a></div>
                  <div class="caroufredsel_wrapper" style="display: block; text-align: start; float: left; position: relative; top: auto; right: auto; bottom: auto; left: auto; z-index: auto; width: 940px; height: 97px; margin: 0px; overflow: hidden;"><ul id="braldLogo" style="text-align: left; float: none; position: absolute; top: 0px; right: auto; bottom: auto; left: 0px; margin: 0px; width: 4700px; height: 97px;">
                     <li style="width: 940px;">
                        <ul class="brand_item">
                           <li>
                              <a href="https://www.google.com.vn/">
                                 <div class="brand-logo"><img src="images/google.png" alt=""></div>
                              </a>
                           </li>
                           <li>
                              <a href="https://www.microsoft.com/vi-vn">
                                 <div class="brand-logo"><img src=" images/microsoft.jpg" alt=""></div>
                              </a>
                           </li>
                           <li>
                              <a href="https://www.apple.com/">
                                 <div class="brand-logo"><img src="images/apple.jpg" alt=""></div>
                              </a>
                           </li>
                           <li>
                              <a href="http://www.samsung.com/vn/">
                                 <div class="brand-logo"><img src="images/samsung.jpg" alt=""></div>
                              </a>
                           </li>
                           <li>
                              <a href="http://www.sony.com.vn/">
                                 <div class="brand-logo"><img src="images/sony.png" alt=""></div>
                              </a>
                           </li>
                        </ul>
                     </li>
                     <li style="width: 940px;">
                        <ul class="brand_item">
                           <li>
                              <a href="http://www.mi.com/vn/">
                                 <div class="brand-logo"><img src="images/xiaomi.jpg" alt=""></div>
                              </a>
                           </li>
                           <li>
                              <a href="http://www.htc.com/vn/">
                                 <div class="brand-logo"><img src="images/htc.jpg" alt=""></div>
                              </a>
                           </li>
                           <li>
                              <a href="http://www.lg.com/vn">
                                 <div class="brand-logo"><img src="images/lg.png" alt=""></div>
                              </a>
                           </li>
                           <li>
                              <a href="http://oppomobile.vn/">
                                 <div class="brand-logo"><img src="images/oppo.png" alt=""></div>
                              </a>
                           </li>
                           <li>
                              <a href="https://www3.lenovo.com/vn/vn/">
                                 <div class="brand-logo"><img src="images/lenovo.png" alt=""></div>
                              </a>
                           </li>
                        </ul>
                     </li>
                  </ul></div>
               </div>
            </div>
         </div>