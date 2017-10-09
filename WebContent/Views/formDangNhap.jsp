<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container_fullwidth">
        <div class="container">
          <div class="row">
            <jsp:include page="/Views/menu-ben-trai.jsp"></jsp:include>
            <div class="col-md-9">
              <div class="checkout-page">
                <ol class="checkout-steps">
                  <li class="steps active">
                    <a href="dang-nhap.jsp" class="step-title">
                      01. Bạn đã có tài khoản ?
                    </a>
                    <div class="step-description">
                      <div class="row">
                        <div class="col-md-6 col-sm-6">
                          <div class="new-customer">
                            <h5>
                              Thành viên mới ?
                            </h5>
                            
                            <form action="dang-ky.jsp" method="POST">
                              <button>
                                Đăng ký
                              </button>
                            </form>
                            
                          </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                          <div class="run-customer">
                            <h5>
                              Đăng nhập
                            </h5>
                            <form name="form-Dang-Nhap" onsubmit="return xacThucDangNhap()" action="dangNhapServlet" method="post">
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Email 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <input type="email" class="input namefild" name="email">
                              </div>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Password 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <input type="password" class="input namefild" name="password">
                              </div>
                              <p class="forgoten">
                                <a href="#">
                                  Quên mật khẩu ?
                                </a>
                              </p>
                              <button>
                                Đăng nhập
                              </button>
                            </form>
                            <script type="text/javascript">
                            	function xacThucDangNhap() {
                	            		var email_input = document.forms["form-Dang-Nhap"]["email"].value;
        							    var password_input = document.forms["form-Dang-Nhap"]["password"].value;
        							    var check_email = email_input.indexOf("@");
        							    var check_email_dot = email_input.lastIndexOf(".");
        							   	if (email_input == "" || password_input == "") {
        							        alert("Không được để trống");
        							        return false;
        							    }
        							   	if (check_email<1 || check_email_dot<(check_email+2) || (check_email_dot+2) >= email_input.length) {
        							        alert("Email bạn không hợp lệ");
        							        return false;
        							    }
        							    
        							    
        							}
								
                            
                            </script>
                          </div>
                        </div>
                      </div>
                    </div>
                  </li>
                  <li class="steps">
                    <a href="dang-ky.jsp" class="step-title">
                      02. Thành viên mới ?
                    </a>
                  </li>
                  
                </ol>
              </div>
            </div>
          </div>
          <div class="clearfix">
          </div>
          <jsp:include page="/Views/lien-ket-thuong-hieu.jsp"></jsp:include>
        </div>
      