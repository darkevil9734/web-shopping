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
                            <form action="" method="post">
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Email 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <input type="text" class="input namefild" name="">
                              </div>
                              <div class="form-row">
                                <label class="lebel-abs">
                                  Password 
                                  <strong class="red">
                                    *
                                  </strong>
                                </label>
                                <input type="text" class="input namefild" name="">
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
      </div>