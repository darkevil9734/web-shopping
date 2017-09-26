<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="Services.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Đăng ký làm nhà cung cấp</title>
		<link rel='stylesheet prefetch' href='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css'>
		<link rel="stylesheet" href="css/nhacungcap.css">
		<%
			String user = "", pass="", brand = "" , name ="", email ="";
			if(request.getParameter("btnDangNhap") != null){
				user = request.getParameter("txtUserNCC");
				pass = request.getParameter("txtPassNCC");
				brand = request.getParameter("txtBrand");
				name = request.getParameter("txtName");
				email = request.getParameter("txtEmail");
			}
		%>
	</head>

	<body>
		<link href='https://fonts.googleapis.com/css?family=Ubuntu:500' rel='stylesheet' type='text/css'>

		<div class="login">
			<div class="login-header">
			<h1>Đăng ký</h1>
		</div>
		<div class="login-form">
			<form action="" method="POST">
				<h3>Tài khoản:</h3>
				<input type="text" name="txtUserNCC" value="<%= user %>" placeholder="Tài khoản"/><br>
				<h3>Mật khẩu:</h3>
				<input type="password" name="txtPassNCC" value="<%= pass %>" placeholder="Mật khẩu"/>
				<br>
				<h3>Hãng cung cấp:</h3>
				<input type="text" name="txtBrand" value="<%= brand %>" placeholder="Hãng cung cấp"/><br>
				<h3>Tên nhân viên:</h3>
				<input type="text" name="txtName" value="<%= name %>" placeholder="Tên nhân viên:"/>
				<br>
				<h3>Email:</h3>
				<input type="text" name="txtEmail" value="<%= email %>" placeholder="Email"/>
				<br>
				<br/><br/>
				<input type="button" name="btnDangNhap" value="Login" class="login-button"/>
				<br>
			</form>	
		</div>
		</div>
		
	</body>
</html>
