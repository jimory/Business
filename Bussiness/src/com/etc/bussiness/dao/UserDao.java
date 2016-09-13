package com.etc.bussiness.dao;

import java.util.List;

import com.etc.bussiness.entity.User;

public interface UserDao {
	public int addUser(User user);
	public User getUserByNapa(String uname);
	//void add(User user);
	User showUser(String uname,String upassword);//显示用户信息
	User getUserById(int id);//通过id获取用户
	int updateInfo(User user);//修改用户信息
	List<User> showUserByPage(int pageNum, int pageSize);
	int getUserCount();

}
