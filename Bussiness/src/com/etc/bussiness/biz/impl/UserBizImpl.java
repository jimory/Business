package com.etc.bussiness.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.bussiness.biz.UserBiz;
import com.etc.bussiness.dao.UserDao;
import com.etc.bussiness.dao.impl.UserDaoImpl;
import com.etc.bussiness.entity.User;

@Service
public class UserBizImpl implements UserBiz {
	
	@Resource
	private UserDao userDao;



	@Override
	public int addUser(User user) {
		
		return userDao.addUser(user);
	}


	@Override
	public User getUserByNapa(String uname, String upassword) {
		User user = userDao.getUserByNapa(uname);
		if (user != null) {
			if (user.getUpassword().equals(upassword)) {
				return user;
			}
		}
		return null;
	}
	
	
	@Override
	public User showUser(String uname, String upassword) {
		// TODO Auto-generated method stub
		return userDao.showUser(uname, upassword);
		
	}


	@Override
	public User getUserById(int id) {
		// TODO Auto-generated method stub
		return userDao.getUserById(id);
	}


	@Override
	public int updateInfo(User user) {
		// TODO Auto-generated method stub
		return userDao.updateInfo(user);
	}


	@Override
	public List<User> getUserByPage(int pageNum, int pageSize) {
		// TODO Auto-generated method stub
		return userDao.showUserByPage(pageNum, pageSize);
	}


	@Override
	public int getPageCount(int pageSize) {
		int count = userDao.getUserCount();
		if (count % pageSize == 0) {
			return count / pageSize;
		}
		return count / pageSize + 1;
	}

}
