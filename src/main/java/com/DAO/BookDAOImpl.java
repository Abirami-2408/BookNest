package com.DAO;
import com.model.Book_datalist;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;
import java.util.ArrayList;
import java.sql.ResultSet;
public class BookDAOImpl implements BookDAO {
	private Connection conn;
	public BookDAOImpl(Connection conn) {
		super();
		this.conn=conn;
	}
	public boolean addBook(Book_datalist b) {
		boolean f= false;
		try {
			String sql="insert into book_datalist(bookname,author,price,bookCategory,status,photo,email) values(?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, b.getBookName());
            ps.setString(2, b.getAuthor());
            ps.setDouble(3, b.getPrice());
            ps.setString(4, b.getBookCategory());
            ps.setString(5, b.getStatus());
            ps.setString(6, b.getPhoto());
            ps.setString(7, b.getEmail());
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public List<Book_datalist> getAllBooks(){
		List<Book_datalist> list=new ArrayList<>();
		
		try {
			String sql="select * from book_datalist";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
			Book_datalist b=new Book_datalist();
				b.setId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getDouble(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhoto(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
			}
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		return list;
	}
	public Book_datalist getBookById(int id) {
		Book_datalist b=null;
		try {
			String sql="select * from book_datalist where bookId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
			 b=new Book_datalist();
				b.setId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getDouble(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhoto(rs.getString(7));
				b.setEmail(rs.getString(8));
			}
		}
		catch(Exception e){
			e.printStackTrace();
			
		}
		
		return b;
	}
	public boolean updateEditBooks(Book_datalist b) {
	    boolean f = false;
	    try {
	        String sql = "update book_datalist set bookName=?, author=?, price=?, bookCategory=?, status=? where bookId=?";
	        PreparedStatement ps = conn.prepareStatement(sql);
	        ps.setString(1, b.getBookName());
	        ps.setString(2, b.getAuthor());
	        ps.setDouble(3, b.getPrice());
	        ps.setString(4, b.getBookCategory()); // ✅ added
	        ps.setString(5, b.getStatus());
	        ps.setInt(6, b.getId());
	        int i = ps.executeUpdate();
	        if (i == 1) {
	            f = true;
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	   

	    return f;
	}
	public boolean deleteBooks(int id) {
		boolean f=false;
		try {
			String sql="delete from book_datalist where bookId=?";
			 PreparedStatement ps = conn.prepareStatement(sql);
			 ps.setInt(1, id);
			 int i = ps.executeUpdate();
		        if (i == 1) {
		            f = true;
		        }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	

}
