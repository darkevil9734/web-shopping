package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BusinessLogics.gioHangBL;
import JavaBeans.hoaDon;
import JavaBeans.sanPhamMua;
import JavaBeans.user;

@WebServlet("/xacNhanDonHang")
public class xacNhanDonHang extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public xacNhanDonHang() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		user thanhVienMuaHang = (user) session.getAttribute("member");
		//int id = thanhVienMuaHang.getIduser();
		
		gioHangBL gioHang = (gioHangBL) session.getAttribute("gioHang");
		List<sanPhamMua> listOfSp = gioHang.danhSachSanPhamMua();

		/*
		String email = request.getParameter("txtEmail");
		String ho_user = request.getParameter("txtHo");
		String ten_user = request.getParameter("txtHo");
		int sdt = Integer.parseInt(request.getParameter("txtSDT"));
		String diaChi = request.getParameter("txtDiaChi");
		String thanhPho = request.getParameter("thanhPho");
		String quan = request.getParameter("txtQuan");
		String phuong = request.getParameter("txtPhuong");
		*/
		// Kiểm thử Session
		System.out.println(thanhVienMuaHang.getIduser());
		for(sanPhamMua spm: listOfSp) {
			System.out.println(spm.getTenSanPham());
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
