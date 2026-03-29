package com.admin.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.DAO.BookDAOImpl;
import com.DB.DBConnection;
@WebServlet("/delete")
public class BookDeleteServlet extends HttpServlet{
		
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {

    try {
        int id = Integer.parseInt(req.getParameter("id"));
        BookDAOImpl dao = new BookDAOImpl(DBConnection.getConn());
        boolean f = dao.deleteBooks(id);
        HttpSession session = req.getSession();

        if (f) {
            session.setAttribute("SuccMessage", "Book Deleted Successfully");
            resp.sendRedirect("admin/allbook.jsp");
        } else {
            session.setAttribute("FailMessage", "Delete Failed");
            resp.sendRedirect("admin/allbook.jsp");
        }

        

    } catch (Exception e) {
        e.printStackTrace();
    }
}
		
}
