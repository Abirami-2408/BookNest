package com.user.servlet;
import javax.servlet.annotation.WebServlet;
import com.DB.DBConnection;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Logout")
public class LogoutServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			//Session message
			HttpSession session = req.getSession(false);

			if(session != null){
			    session.invalidate();   // 🔥 BEST PRACTICE (clears everything)
			}
			resp.sendRedirect("index.jsp");
			//resp.sendRedirect("Login.jsp");   
            
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

	
}
