package com.etc.bussiness.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.bussiness.biz.CaseBiz;
import com.etc.bussiness.dao.CaseDao;
import com.etc.bussiness.entity.Cases;

@Service
public class CaseBizImpl implements CaseBiz {
	
	@Resource
	private CaseDao caseDao;

	@Override
	public int addCase(Cases cases) {
		// TODO Auto-generated method stub
		return caseDao.addCase(cases);
	}

	@Override
	public int updateCase(Cases cases) {
		// TODO Auto-generated method stub
		return caseDao.updateCase(cases);
	}

	@Override
	public int deleteCase( int caseId) {
		// TODO Auto-generated method stub
		return caseDao.deleteCase(caseId);
	}

	@Override
	public Cases getCaseById(int caseId) {
		// TODO Auto-generated method stub
		return caseDao.getCaseById(caseId);
	}

	@Override
	public List<Cases> getCaseByPaging(int pageNum, int pageSize) {
		// TODO Auto-generated method stub
		return caseDao.getCaseByPaging(pageNum, pageSize);
	}

	@Override
	public int getPageCount(int pageSize) {
		int count = caseDao.getPageCount();
		if (count % pageSize == 0) {
			return count / pageSize;
		}
		return count / pageSize + 1;
	}
	@Override
	public List<Cases> getCaseByPaging(int pageNum, int pageSize, String keyword) {
		
		return caseDao.getCaseByPaging(pageNum, pageSize, keyword);
	}
	@Override
	public int getPageCount(int pageSize, String keyword) {
		int count = caseDao.getPageCount(keyword);
		if (count % pageSize == 0) {
			return count / pageSize;
		}
		return count / pageSize + 1;
	}

}
