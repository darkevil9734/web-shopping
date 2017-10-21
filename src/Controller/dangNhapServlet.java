package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BusinessLogics.userBL;
import JavaBeans.user;

@WebServlet("/dangNhapServlet")
public class dangNhapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public dangNhapServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username, password;
		username = request.getParameter("txtUsername");
		password = request.getParameter("txtPassword");
		
		user thanhVienDangNhap= userBL.DocTheoUsernamePassword(username, password);
		if(thanhVienDangNhap != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", thanhVienDangNhap);
			response.sendRedirect("trang-chu.jsp");
		}
		else {
			response.sendRedirect("Views/loi-dang-nhap.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
