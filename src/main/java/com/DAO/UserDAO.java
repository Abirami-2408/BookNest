package com.DAO;
import com.model.User;
public interface UserDAO {
public boolean userRegister(User us);
public User login(String email,String password);


}
