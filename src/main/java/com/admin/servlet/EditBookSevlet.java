package com.admin.servlet;
import javax.servlet.annotation.WebServlet;
import com.DB.DBConnection;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.model.Book_datalist;
import com.DAO.BookDAOImpl;
@WebServlet("/editbooks")
public class EditBookSevlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String bookName = req.getParameter("bname");
            String author = req.getParameter("author");
            Double price = Double.parseDouble(req.getParameter("price"));
            String status = req.getParameter("status");
            Book_datalist b=new Book_datalist();
            b.setId(id);
            b.setBookName(bookName);
            b.setAuthor(author);
            b.setPrice(price);
            b.setStatus(status);
         //Call DAO
            BookDAOImpl dao = new BookDAOImpl(DBConnection.getConn());
            boolean f = dao.updateEditBooks(b); // make sure this method exists
         //Session message
            HttpSession session = req.getSession();
            if (f) {
                session.setAttribute("SuccMessage", "Book Updated Successfully");
                resp.sendRedirect("admin/allbook.jsp");
            } else {
                session.setAttribute("FailMessage", "Update Failed");
                resp.sendRedirect("admin/allbook.jsp");
            }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
