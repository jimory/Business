package com.etc.bussiness.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.etc.bussiness.dao.AdminDao;
import com.etc.bussiness.entity.Admin;

@Service
public class AdminDaoImpl extends BaseDao implements AdminDao {

	@Override
	public int addAdmin(Admin admin) {
		super.add(admin);
		
		return 1;
	}

	@Override
	public int updateAdmin(Admin admin) {
		super.update(admin);
		return 1;
	}

	@Override
	public int deleteAdmin(Admin admin, int id) {
		super.delete(Admin.class, id);
		return 1;
	}

	@Override
	public Admin getAdminById(int id) {
		return (Admin) super.get(Admin.class, id);
	}

	@Override
	public List<Admin> getAdminByPaging(int pageNum, int pageSize) {
		return super.searchByPaging("from Admin a order by a.aid", null, pageSize, pageNum);
	}

	@Override
	public int getPageCount() {
		return (int) super.count("select count(a) from Admin a ");
	}

	@Override
	public Admin getAdminByNapa(String aid) {
		String hql = "from Admin a where a.aid = :aid";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("aid", aid);
		List<Admin> list = super.search(hql, params);
		if(list!=null && list.size()>0){
			return list.get(0);
		}
		return null;
	}

	@Override
	public List<Admin> getAdminByPaging(int pageNum, int pageSize,
			String keyword) {
		String hql = "from Admin a where a.aid like :keyword";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("keyword", "%"+keyword+"%");
		List<Admin> list = super.search(hql, params);
		if(list!=null && list.size()>0){
			return list;
		}
		return null;
	
	}

	@Override
	public int getPageCount(String keyword) {
		String hql = "select count(a) from Admin a where a.aid like :keyword";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("keyword", "%"+keyword+"%");
		int list = (int) super.count(hql, params);
		return list;
	}

}
