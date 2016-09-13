package com.etc.bussiness.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.etc.bussiness.biz.UserBiz;
import com.etc.bussiness.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Scope("prototype")
@Controller
public class UserAction extends ActionSupport implements ModelDriven<User>{
	
	@Resource
	private UserBiz userBiz;

	private User user = new User();
	private int pageNum;
	private int pageSize;
	private int buid;
	
	
	public int getBuid() {
		return buid;
	}


	public void setBuid(int buid) {
		this.buid = buid;
	}


	//登录
	public String doLogin(){
		User loginedUser = userBiz.getUserByNapa(user.getUname(), user.getUpassword());
		if (loginedUser != null) {
			ActionContext.getContext().getSession().put("loginedUser", loginedUser);
			ActionContext.getContext().getValueStack().push(loginedUser);
			return "success";
		}
			return "login";
		
	}
	
	
	//注册
    public String doSign(){
    	User signUser = userBiz.getUserByNapa(user.getUname(), user.getUpassword());
    	if(signUser != null){
    		return "sign";
    	}
    	return "add";
    }
    public String doAddUser(){
    	userBiz.addUser(user);
    	return "addOk";
    }
    
    /*修改个人信息*/
	public String toEdit(){
		User us = userBiz.getUserById(user.getUid());
		us.setUname(user.getUname());
		us.setUphone(user.getUphone());
		us.setUjob(user.getUjob());
		us.setUcountry(user.getUcountry());
		us.setUurl(user.getUurl());
		userBiz.updateInfo(us);
		buid=user.getUid();
		return "edit";
	}
	
	/*后台显示用户*/
    public String showUser(){
    	List<User> userList = userBiz.getUserByPage(pageNum, pageSize);
    	ActionContext.getContext().put("userList", userList);
		ActionContext.getContext().put("pageCount", userBiz.getPageCount(pageSize));
		return "list";
    }
    
    
    public String doUpdatePass1(){
    		User uu = userBiz.getUserById(user.getUid());
    		uu.setUpassword(user.getUpassword());
    		userBiz.updateInfo(uu);
    		buid=user.getUid();
    		return "successpass";
    }
    
    public String doLogout(){
		ActionContext.getContext().getSession().remove("loginedUser");
		return "out";
	}
	@Override
	public User getModel() {
		return user;
	}
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}


	

}
