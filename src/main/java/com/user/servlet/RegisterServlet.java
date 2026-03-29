package com.user.servlet;
import com.DB.DBConnection;
import com.model.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.DAO.UserDAOImpl;
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	@Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
try {
    String name = req.getParameter("fname");
    String email = req.getParameter("email");
    String phno = req.getParameter("phno");
    String password = req.getParameter("password");
    String check = req.getParameter("check");
    System.out.println(name+" "+ email+" "+phno+" "+password+" "+check);
    
    User us = new User();
    us.setName(name);
    us.setEmail(email);
    us.setPhno(phno);
    us.setPassword(password);
    HttpSession session=req.getSession();
    if(check!=null) {
    	UserDAOImpl dao = new UserDAOImpl(DBConnection.getConn());
        boolean f = dao.userRegister(us);
        if (f) {
           //System.out.println("User registered successfully");
            session.setAttribute("SuccMessage", "Register Successfully..");// send msg to server side not to display 
            resp.sendRedirect("Register.jsp");
        } else {
            //System.out.println("Registration failed");
        	session.setAttribute("FailMessage", "Something went on server!..");
            resp.sendRedirect("Register.jsp");
        }
    }
    else {
    	//System.out.println("Please tick  the conditions!");
    	session.setAttribute("FailMessage", "Please check agree terms and conditions");
        resp.sendRedirect("Register.jsp");
    }
    }
catch(Exception e) {
	e.printStackTrace();
	
}
    }
}

