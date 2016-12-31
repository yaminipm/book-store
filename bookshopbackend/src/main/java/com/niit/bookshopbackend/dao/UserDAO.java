package com.niit.bookshopbackend.dao;

import java.util.List;

import com.niit.bookshopbackend.model.User;

public interface UserDAO {

	public void addUser(User user);
	public void updateUser(User user);
	public void deleteUser(User user);
	public User getUserById(int userId);
	public List<User> listUsers();
	public User getUserByUsername(String username);
}
