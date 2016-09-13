package com.etc.bussiness.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.etc.bussiness.biz.AdminBiz;
import com.etc.bussiness.entity.Admin;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Scope("prototype")
@Controller
public class AdminAction extends ActionSupport implements ModelDriven<Admin>{
	@Resource
	private AdminBiz adminBiz;

	private Admin admin = new Admin();
	
	private String keyword;
	private int pageNum;
	private int pageSize;
	private int loginedId;
	
	
	public int getLoginedId() {
		return loginedId;
	}

	public void setLoginedId(int loginedId) {
		this.loginedId = loginedId;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
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

	//��¼
	public String doLogin(){
		Admin loginedAdmin = adminBiz.getAdminByNapa(admin.getAid(),admin.getApassword());
		if (loginedAdmin != null) {
			ActionContext.getContext().getSession().put("loginedAdmin", loginedAdmin);
			return "success";
		}
		return "login";

	}
	
	//�˳���¼
	public String doLogout(){
		ActionContext.getContext().getSession().remove("loginedAdmin");
		return "out";
	}
	
	//���ӹ���Ա
	public String doAddAdmin(){
		adminBiz.addAdmin(admin);
		System.out.println("ffsfffsf");
		return "addOk";
	}
	
	//��ѯ����
	public String doSearchAll(){
		List<Admin> alist = adminBiz.getAdminByPaging(pageNum, pageSize);
	    ActionContext.getContext().put("alist", alist);
	    ActionContext.getContext().put("pageCount", adminBiz.getPageCount(pageSize));
		return "listAll";
	}

	//��ѯ���֣������˻��ؼ���
	public String doSearchSome(){
		List<Admin> alist = adminBiz.getAdminByPaging(pageNum, pageSize,keyword);
	    ActionContext.getContext().put("alist", alist);
	    ActionContext.getContext().put("pageCount", adminBiz.getPageCount(pageSize));
	    ActionContext.getContext().getValueStack().push(keyword);
		return "listSome";
	}
	
	//��ѯһ��ȥ�޸�
	public String toUpdateAdmin(){
		Admin a = adminBiz.getAdminById(admin.getId()); 
		ActionContext.getContext().getValueStack().push(a);
		return "toUpdate";
	}

	
	//�޸�һ������Ա��Ϣ
		public String doUpdateAdmin(){
			adminBiz.updateAdmin(admin);
			return "updateOk";
		}
	
	//ɾ��һ��Ա����Ϣ
	public String doDeleteAdmin(){
		if(admin.getId()!=loginedId){
		adminBiz.deleteAdmin(admin, admin.getId());
		return "deleteOk";
		}
		return "deleteFail";
	}
	@Override
	public Admin getModel() {
		// TODO Auto-generated method stub
		return admin;
	}

}