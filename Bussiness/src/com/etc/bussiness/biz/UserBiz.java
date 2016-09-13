package com.etc.bussiness.biz;

import java.util.List;

import com.etc.bussiness.entity.User;

public interface UserBiz {
	
	public int addUser(User user);
	public User getUserByNapa(String uname,String upassword);

		
	//void add(User user);
	User showUser(String uname, String upassword);
	User getUserById(int id);
	int updateInfo(User user);
	List<User> getUserByPage(int pageNum, int pageSize );
	int getPageCount(int pageSize);
	
	
	

}
