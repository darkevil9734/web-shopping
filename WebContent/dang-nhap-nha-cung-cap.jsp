<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="Services.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Nhà cung cấp đăng nhập</title>
		<link rel='stylesheet prefetch' href='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css'>
		<link rel="stylesheet" href="/Views/css/nhacungcap.css">
		<%
			String user = "", pass="";
			if(request.getParameter("btnDangNhap") != null){
				user = request.getParameter("txtUserNCC");
				pass = request.getParameter("txtPassNCC");
			}
		%>
	</head>

	<body>
		<link href='https://fonts.googleapis.com/css?family=Ubuntu:500' rel='stylesheet' type='text/css'>

		<div class="login">
			<div class="login-header">
			<h1>Đăng nhập</h1>
		</div>
		<div class="login-form">
			<form action="login_nhacungcap" method="POST">
				<h3>Tài khoản:</h3>
				<input type="text" name="txtUserNCC" value="<%= user %>" placeholder="Tài khoản"/><br>
				<h3>Mật khẩu:</h3>
				<input type="password" name="txtPassNCC" value="<%= pass %>" placeholder="Mật khẩu"/>
				<br>
				<br/><br/>
				<input type="button" name="btnDangNhap" value="Đăng nhập" class="login-button"/>
				<br>
			</form>	
		</div>
		</div>

	</body>
</html>
