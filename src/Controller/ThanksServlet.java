package Controller;

import java.io.IOException;
import java.util.*;

import javax.mail.*;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ThanksServlet")
public class ThanksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ThanksServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		if (email != null) {
			final String username = "testmailbaitap@gmail.com";
			final String password = "Vuhoangnguyen";

			Properties props = new Properties();
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.port", "587");

			Session session = Session.getInstance(props,
			  new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username, password);
				}
			  });
			
			try {

				Message message = new MimeMessage(session);
				message.setFrom(new InternetAddress("testmailbaitap@gmail.com"));
				message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(email));
				message.setSubject("Cảm ơn bạn đã ủng hộ chúng tôi");
				message.setText("Cảm ơn bạn đã ủng hộ chúng tôi,"
					+ "\n\n Admin!");

				Transport.send(message);

				System.out.println("Done");
				request.getRequestDispatcher("Views/Success.jsp").forward(request, response);
			} catch (MessagingException e) {
				throw new RuntimeException(e);
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
