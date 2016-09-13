package com.etc.bussiness.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.etc.bussiness.dao.UserDao;
import com.etc.bussiness.entity.User;
@Service
public class UserDaoImpl extends BaseDao implements UserDao {

	@Override
	public int addUser(User user) {
		super.add(user);
		return 1;
	}

	@Override
	public User getUserByNapa(String uname) {
		String hql = "from User u where u.uname = :uname";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("uname", uname);
		List<User> list = super.search(hql, params);
		if(list!=null && list.size()>0){
			return list.get(0);
		}
		return null;
	}
	
	
	/*@Override
	public void add(User user) {
		super.add(user);
		
	}*/

	@Override
	/*显示个人信息*/
	public User showUser(String uname, String upassword) {
		// TODO Auto-generated method stub
		String hql = "from User u where u.uname= :name and u.upassword= :pwd";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("name", uname);
		params.put("pwd", upassword);
		User user = (User) super.getByNameAndPass(hql, params);
		return user;
	}
	//获取user通过id
	public User getUserById(int id){
		return (User) super.get(User.class, id);
	}
	/*修改个人信息*/
public int updateInfo(User user){
		super.update(user);
		//System.out.println("======================="+user);
		
		return 1;
	}
	/*显示博客*/
	/*public Blog showBlogById(int id){
		
	}*/
    /*后台无条件显示用户*/
  public List<User> showUserByPage(int pageNum, int pageSize){
	  return super.searchByPaging("from User ", null, pageSize, pageNum);
	  
  }
  /*获取用户数量*/
 public int getUserCount(){
	 return (int) super.count("select count(u) from User u");
 }


	
	
}
