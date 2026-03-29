package com.DAO;
import com.model.Book_datalist;
import java.util.List;
public interface BookDAO {
public boolean addBook(Book_datalist b);
public List<Book_datalist> getAllBooks();
public Book_datalist getBookById(int id);
public boolean updateEditBooks(Book_datalist b);
public boolean deleteBooks(int id);
}
