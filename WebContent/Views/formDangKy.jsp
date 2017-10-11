<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="container_fullwidth">
	<div class="container">
	<div class="row">
		<jsp:include page="/Views/menu-ben-trai.jsp"></jsp:include>
		<div class="col-md-9">
              <div class="checkout-page">
                <ol class="checkout-steps">
                  <li class="steps">
                    <div class="step-title">
                    	<a href="dang-nhap.jsp">
                      		01. Bạn đã có tài khoản ?
                      	</a>
                    </div>
                  </li>
                  <li class="steps active">
                    <a href="dang-ky.jsp" class="step-title">
                      02. Thành viên mới ?
                    </a>
                    <div class="step-description">
                      <form name="form-dang-ky" action="dangKyServlet" method="POST" onsubmit="return xacThucDangKy()">
                        <div class="row">
                          <div class="col-md-6 col-sm-6">
                            <div class="your-details">
                              <h5>
                                Đăng ký thành viên
                              </h5>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Username 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <input type="text" style="padding-left: 130px;" class="input namefild" name="txtUsername">
                              </div>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Mật khẩu 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <input type="password" class="input namefild" name="txtPassword">
                              </div>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Lập lại mật khẩu: 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <input style="padding-left: 190px;"  type="password" class="input namefild" name="txtPasswordRepeat">
                              </div>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Họ: 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <input type="text" class="input namefild" name="txtHo">
                              </div>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Tên: 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <input type="text" class="input namefild" name="txtTen">
                              </div>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Số điện thoại: 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <input style="
    								padding-left: 160px;
                                "	 type="text" class="input namefild" name="txtSDT">
                              </div>
                              <div class="pass-wrap">
                                <div class="form-row">
                                  <label class="lebel-abs">
                                    Email: 
                                    <strong class="red">
                                      *
                                    </strong>
                                  </label>
                                  <input type="email" class="input namefild" name="txtEmail">
                                </div>
                              </div>
                              
                            </div>
                          </div>
                          <div class="col-md-6 col-sm-6">
                            <div class="your-details">
                              <h5>
                                Địa chỉ giao hàng
                              </h5>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Địa chỉ
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <input type="text" class="input namefild" name="txtDiaChi">
                              </div>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Thành phố:
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <input style="padding-left: 140px" type="text" class="input namefild" name="txtThanhPho">
                              </div>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Quốc gia: 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <input style="padding-left: 130px" type="text" class="input namefild" name="txtQuocGia">
                              </div>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Zip code: 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <input style="padding-left: 120px" type="text" class="input namefild" name="txtZipCode">
                              </div>
                              
                              <button class="enviar">
                                Đăng ký
                              </button>
                            </div>
                          </div>
                        </div>
                      </form>
                      <script type="text/javascript">
                      		function xacThucDangKy() {
                      			var username_input = document.forms["form-dang-ky"]["txtUsername"].value;
								var password_input = document.forms["form-dang-ky"]["txtPassword"].value;
							    if (username_input == "" || password_input == "") {
						        	alert("Không được để trống");
							        return false;
							    }
							}
					  </script>
                    </div>
                  </li>
                  
                </ol>
              </div>
            </div>
		</div>
          <div class="clearfix">
          </div>
          <jsp:include page="/Views/lien-ket-thuong-hieu.jsp"></jsp:include>
        </div>
      </div>
     