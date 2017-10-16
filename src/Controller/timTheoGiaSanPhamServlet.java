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

@WebServlet("/timTheoGiaSanPhamServlet")
public class timTheoGiaSanPhamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public timTheoGiaSanPhamServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		/* chú thích:
		 * 1: giá dưới 1 triệu
		 * 2: giá từ 1-3 triệu
		 * 3: giá từ 3-7 triệu
		 * 4: giá từ 7-10 triệu
		 */
		
		int options = Integer.parseInt(request.getParameter("options"));
		
		switch(options) {
			// giá dưới 1 triệu
			case 1:
				List<sanPham> dssp_giaDuoi1Trieu = sanPhamBL.timTheoGiaDuoi1Trieu();
				request.setAttribute("dssp_duoi1Trieu", dssp_giaDuoi1Trieu);
				request.getRequestDispatcher("san-pham-duoi-1-trieu.jsp").forward(request, response);
				if(dssp_giaDuoi1Trieu.isEmpty() == true) {
					System.out.println("Empty");
				}
				else {
					System.out.println(dssp_giaDuoi1Trieu.size());
				}
				break;
				
			// giá từ 1-3 triệu
			case 2:
				
				break;
			//  giá từ 3-7 triệu
			case 3:
				
				break;
				
			//  giá từ 7-10 triệu
			case 4:
				
				break;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
