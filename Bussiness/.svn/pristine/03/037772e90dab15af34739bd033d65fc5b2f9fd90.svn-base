package com.etc.bussiness.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.bussiness.biz.AdminBiz;
import com.etc.bussiness.dao.AdminDao;
import com.etc.bussiness.entity.Admin;
import com.etc.bussiness.entity.User;

@Service
public class AdminBizImpl implements AdminBiz {
   
	@Resource
	private AdminDao adminDao;
    

	@Override
	public int addAdmin(Admin admin) {
		return adminDao.addAdmin(admin);
	}

	@Override
	public int updateAdmin(Admin admin) {
		return adminDao.updateAdmin(admin);
	}

	@Override
	public int deleteAdmin(Admin admin, int id) {
		return adminDao.deleteAdmin(admin, id);
	}

	@Override
	public Admin getAdminById(int id) {
		return adminDao.getAdminById(id);
	}

	@Override
	public List<Admin> getAdminByPaging(int pageNum, int pageSize) {
		return adminDao.getAdminByPaging(pageNum, pageSize);
	}

	@Override
	public int getPageCount(int pageSize) {
		int count = adminDao.getPageCount();
		if (count % pageSize == 0) {
			return count / pageSize;
		}
		return count / pageSize + 1;
	}

	@Override
	public Admin getAdminByNapa(String aid, String apassword) {
		Admin admin = adminDao.getAdminByNapa(aid);
		if (admin != null) {
			if (admin.getApassword().equals(apassword)) {
				return admin;
			}
		}
		return null;
	}

	@Override
	public List<Admin> getAdminByPaging(int pageNum, int pageSize,
			String keyword) {
		return adminDao.getAdminByPaging(pageNum, pageSize, keyword);
	}

	@Override
	public int getPageCount(int pageSize, String keyword) {
		int count = adminDao.getPageCount(keyword);
		if (count % pageSize == 0) {
			return count / pageSize;
		}
		return count / pageSize + 1;
	}

}
