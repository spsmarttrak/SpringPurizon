package com.smart.ws.dao;

import java.util.List;

import com.smart.ws.model.Users;

public interface UserDao {
	public int addUser(Users user);
	public void deleteUser(Users user);
	public Users getUser(int userId);
	public String getUserImageUrl(int userId);
	public List<Users> listUsers(String clientId);
}
