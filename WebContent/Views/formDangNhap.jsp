<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container_fullwidth">
        <div class="container">
          <div class="row">
            <jsp:include page="/Views/menu-ben-trai.jsp"></jsp:include>
            <div class="col-md-9">
              <div class="checkout-page">
                <ol class="checkout-steps">
                  
                  
                      <section class="login">
  <div class="titulo">Đăng Nhập</div>
  <form action="#" method="post">
      <input type="text" required="" title="Username required" placeholder="Tên Đăng Nhập" data-icon="U">
        <input type="password" required="" title="Password required" placeholder="Mật Khẩu" data-icon="x">
        <div class="olvido">
          <div class="col"><a href="register.html" title="Ver Carásteres">Đăng Ký</a></div>
            <div class="col"><a href="#" title="Recuperar Password">Quên mật khẩu</a></div>
        </div>
        <a href="#" class="enviar">Đăng Nhập</a>
    </form>
</section>
                  
                  
                  
                  
                </ol>
              </div>
            </div>
          </div>
          <div class="clearfix">
          </div>
          <jsp:include page="/Views/lien-ket-thuong-hieu.jsp"></jsp:include>
        </div>
      