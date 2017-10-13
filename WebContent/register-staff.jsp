<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>nhân viên đăng ký</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
      <link rel="stylesheet" href="./staff/css/style.css">

  
</head>

<body>
  <div class="container">
  <div class="login">
  	<h1 class="login-heading">
      <strong>Nhân viên.</strong> đăng ký.</h1>
      <form method="post" action="nhanVienDangKy">
        <input type="text" name="user" placeholder="Username" required="required" class="input-txt" />
         <input type="password" name="password" placeholder="Password" required="required" class="input-txt" />
         <input type="text" name="hoNhanVien" placeholder="Họ" required="required" class="input-txt" />
         <input type="text" name="nameNhanVien" placeholder="Tên" required="required" class="input-txt" />
         <input type="text" name="sdtNhanVien" placeholder="Số điện thoại" required="required" class="input-txt" />
          <div class="login-footer">
             
            <button type="submit" class="btn btn--right">Đăng ký</button>
    
          </div>
      </form>
  </div>
</div>
  
    <script  src="./staff/js/index.js"></script>

</body>
</html>
    