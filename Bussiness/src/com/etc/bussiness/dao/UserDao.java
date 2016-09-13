package com.etc.bussiness.dao;

import java.util.List;

import com.etc.bussiness.entity.User;

public interface UserDao {
	public int addUser(User user);
	public User getUserByNapa(String uname);
	//void add(User user);
	User showUser(String uname,String upassword);//��ʾ�û���Ϣ
	User getUserById(int id);//ͨ��id��ȡ�û�
	int updateInfo(User user);//�޸��û���Ϣ
	List<User> showUserByPage(int pageNum, int pageSize);
	int getUserCount();

}
