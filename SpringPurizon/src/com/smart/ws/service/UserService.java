package com.smart.ws.service;
import java.util.List;
import com.smart.ws.model.*;


public interface UserService {

	public int addUser(Users user);
	public void deleteUser(Users user);
	public Users getUser(int userId);
	public String getUserImageUrl(int userId); 
}
