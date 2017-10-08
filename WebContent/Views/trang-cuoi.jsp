<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                        <p>Email :<a href="mailto:testmailbaitap@gmail.com">testmailbaitap@gmail.com</a> </p>
                     </div>
                     <div class="col-md-3 col-sm-6">
                        <h4 class="title">Hỗ<strong> Trợ</strong></h4>
                        <ul class="support">
                           <li><a href="#">Các câu hỏi thường gặp ?</a></li>
                           <li><a href="#">Phương thức thanh toán</a></li>
                           <li><a href="#">Thông Tin Đặt Cọc</a></li>
                           <li><a href="#">Thông tin về chúng tôi</a></li>
                        </ul>
                     </div>
                     <div class="col-md-3">
                        <h4 class="title">Nhận Tin Tức Từ <strong>Email </strong></h4>
                        <p>Để nhận được thêm nhiều khuyến mãi</p>
                        <form name="formEmail" action="ThanksServlet" method="post" class="newsletter" onsubmit="return xacThuc()">
							<input type="email" name="email" placeholder="Nhập email....">
							<input type="submit" value="Gửi" class="button">
						</form>
						<script>
							function xacThuc() {
							    var email_input = document.forms["formEmail"]["email"].value;
							    var check_email = email_input.indexOf("@");
							    var check_email_dot = email_input.lastIndexOf(".");
							    if (check_email<1 || check_email_dot<check_email+2 || check_email_dot+2 >= email_input.length) {
							        alert("Email bạn không hợp lệ");
							        return false;
							    }
							    else if (email_input == "") {
							        alert("Không được để trống");
							        return false;
							    }
							}
						</script>
                     </div>
                  </div>
               </div>
            </div>
            <div class="copyright-info">
               <div class="container">
                  <div class="row">
                     <div class="col-md-6">
                        <p>Copyright © 2017. All rights reseved</p>
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
	  <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
	  <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	  <script type="text/javascript" src="js/bootstrap.min.js"></script>
	  <script type="text/javascript" src="js/jquery.sequence-min.js"></script>
	  <script type="text/javascript" src="js/jquery.carouFredSel-6.2.1-packed.js"></script>
	  <script defer src="js/jquery.flexslider.js"></script>
	  <script type="text/javascript" src="js/script.min.js" ></script>
   </body>
</html>