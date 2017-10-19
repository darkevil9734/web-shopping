package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BusinessLogics.sanPhamBL;
import JavaBeans.sanPham;

@WebServlet("/timTheoMauSac")
public class timTheoMauSac extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public timTheoMauSac() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mauSac = request.getParameter("mauSac");
		List<sanPham> timTheoMauSac = sanPhamBL.timTheoMauSac(mauSac);
		if(timTheoMauSac != null) {
			System.out.println(timTheoMauSac.size());
			request.setAttribute("timTheoMauSac", timTheoMauSac);
			request.getRequestDispatcher("san-pham-mau.jsp").forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
