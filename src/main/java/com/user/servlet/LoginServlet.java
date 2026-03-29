package com.user.servlet;
import com.DB.DBConnection;
import com.model.User;
import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.DAO.UserDAOImpl;
@WebServlet("/login")
public class LoginServlet  extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			UserDAOImpl dao=new UserDAOImpl(DBConnection.getConn());
			HttpSession session=req.getSession();
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			//check if it's admin
			if("admin@gmail.com".equals(email) && "admin".equals(password)) {
				User us=new User();
				us.setName("Admin");
				//us.setAddress("Admin");
				session.setAttribute("userobj",us); 
				resp.sendRedirect("admin/home.jsp");
				return;
			}
			//not an admin  it is user
			else {
				User us=dao.login(email,password);
				//registered user checking
				if(us!=null) {
					session.setAttribute("userobj",us);
					resp.sendRedirect("home.jsp");
				}
				else {
					session.setAttribute("FailMessage","Email & Password Invalid");
					resp.sendRedirect("Login.jsp");
				}
				
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
