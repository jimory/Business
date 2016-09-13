package com.etc.bussiness.dao;

import java.util.List;

import com.etc.bussiness.entity.Cases;


public interface CaseDao {
	public int addCase(Cases cases);
    public int updateCase(Cases cases);
    public int deleteCase(int caseId);
    public Cases getCaseById(int caseId);
    public List<Cases> getCaseByPaging(int pageNum,int pageSize);
    public List<Cases> getCaseByPaging(int pageNum,int pageSize,String keyword);
    public int getPageCount();
    public int getPageCount(String keyword);
}
