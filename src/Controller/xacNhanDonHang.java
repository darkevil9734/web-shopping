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
import BusinessLogics.hoaDonBL;
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
		
		
		gioHangBL gioHang = (gioHangBL) session.getAttribute("gioHang");
		List<sanPhamMua> listOfSp = gioHang.danhSachSanPhamMua();
		
		
		int id = thanhVienMuaHang.getIduser();
		String email = request.getParameter("txtEmail");
		String ho_user = request.getParameter("txtHo");
		String ten_user = request.getParameter("txtHo");
		int sdt = Integer.parseInt(request.getParameter("txtSDT"));
		String diaChi = request.getParameter("txtDiaChi");
		String thanhPho = request.getParameter("thanhPho");
		String quan = request.getParameter("txtQuan");
		String phuong = request.getParameter("txtPhuong");
		
		// Kiểm thử Session
		System.out.println(thanhVienMuaHang.getIduser());
		String kq = null;
		for(sanPhamMua spm: listOfSp) {
			kq = spm.getTenSanPham() + " - Số lượng " +spm.getSoLuongMua() +" - Thành tiền" + spm.getThanhTien() + "\n";
			System.out.println(kq);
		}
		hoaDon hd_mua = new hoaDon();
		hd_mua.setId_user(id);
		hd_mua.setEmail(email);
		hd_mua.setHo_user(ho_user);
		hd_mua.setTen_user(ten_user);
		hd_mua.setSdt(sdt);
		hd_mua.setDiaChi(diaChi);
		hd_mua.setThanhPho(thanhPho);
		hd_mua.setQuan(quan);
		hd_mua.setPhuong(phuong);
		hd_mua.setChiTiet(kq);
		
		int them = hoaDonBL.themHoaDon(hd_mua);
		if(them != 0) {
			request.getRequestDispatcher("mua-thanh-cong.jsp").forward(request, response);
		}
		else {
			request.getRequestDispatcher("mua-bi-loi.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
