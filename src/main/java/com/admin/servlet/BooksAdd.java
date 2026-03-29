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
import javax.servlet.http.Part;
import com.DAO.BookDAOImpl;
import com.model.Book_datalist;
import javax.servlet.annotation.MultipartConfig;
@MultipartConfig
@WebServlet("/addbook")
public class BooksAdd extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        try {
            String bookName = req.getParameter("bname");
            String author = req.getParameter("author");
            Double price = Double.parseDouble(req.getParameter("price"));
            String category = req.getParameter("category");
            String status = req.getParameter("status");
            Part part = req.getPart("photo");//get file
            String fileName = part.getSubmittedFileName();//get filename
            Book_datalist b = new Book_datalist(bookName, author, price, category, status, fileName, "admin");
            BookDAOImpl dao = new BookDAOImpl(DBConnection.getConn());
            boolean f = dao.addBook(b); 
            HttpSession session = req.getSession();
            if (f) {
                String path = getServletContext().getRealPath("") + "book";
                File file = new File(path);//create object file
                if (!file.exists()) { //// ensure folder exists before saving file
                    file.mkdirs(); //create a folder if doesnot exist
                }
                System.out.println("Saving file to: " + path + File.separator + fileName);
                part.write(path + File.separator + fileName); //save file
                session.setAttribute("SuccMessage", "Book added successfully");
                resp.sendRedirect("admin/addBook.jsp");
            
            } else {
                session.setAttribute("FailMessage", "Something went wrong!");
                resp.sendRedirect("admin/addBook.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
