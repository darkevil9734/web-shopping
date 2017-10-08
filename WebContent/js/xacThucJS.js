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

function xacThucTimKiem() {
    var san_pham = document.forms["formTimKiem"]["txtSanPham"].value;
    if (san_pham == "") {
        alert("Không được để trống");
        return false;
    }
}