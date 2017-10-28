package controller;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mo_rong_webEJB.SanPham;
import sessionBeans.sanPhamSBLocal;

@WebServlet("/danhSachSanPhamServlet")
public class danhSachSanPhamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public danhSachSanPhamServlet() {
        super();
    }
    
    @EJB
    private sanPhamSBLocal spLocal;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<SanPham> dssp = spLocal.DocTatCa();
		request.setAttribute("dssp", dssp);
		request.getRequestDispatcher("danh-sach-san-pham.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
