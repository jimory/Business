package com.etc.bussiness.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.etc.bussiness.dao.CaseDao;
import com.etc.bussiness.entity.Cases;

@Service
public class CaseDaoImpl extends BaseDao implements CaseDao {

	@Override
	public int addCase(Cases cases) {
		super.add(cases);
		
		return 1;
	}

	@Override
	public int updateCase(Cases cases) {
		super.update(cases);
		return 1;
	}

	@Override
	public int deleteCase(int caseId) {
		super.delete(Cases.class, caseId);
		return 1;
	}

	@Override
	public Cases getCaseById(int caseId) {
		
		return (Cases) super.get(Cases.class, caseId);
	}



	@Override
	public int getPageCount() {
		
		return (int) super.count("select count(c) from Cases c");
	}

	@Override
	public List<Cases> getCaseByPaging(int pageNum, int pageSize) {
		// TODO Auto-generated method stub
		return super.searchByPaging("from Cases",null, pageSize, pageNum);
	}

	@Override
	public List<Cases> getCaseByPaging(int pageNum, int pageSize, String keyword) {
		Map<String, Object> params=new HashMap<String, Object>();
		params.put("keyword","%"+keyword+"%");
		return super.searchByPaging("from Cases c where c.caseTitle like :keyword", params, pageSize, pageNum);
	}

	@Override
	public int getPageCount(String keyword) {
		Map<String, Object> params=new HashMap<String, Object>();
		params.put("keyword","%"+keyword+"%");
		return (int) super.count("select count(*) from Cases c where c.caseTitle like :keyword", params);
	}

}
