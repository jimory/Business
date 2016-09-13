package com.etc.bussiness.dao;

import java.util.List;
import java.util.Map;

import com.etc.bussiness.entity.Blog;
import com.etc.bussiness.entity.Collect;

public interface BlogDao {
	public List<Blog> searchByKeyword(int pageNum, int pageSize, String keyword);
	
	public List<Blog> searchByKeyword(int pageNum, int pageSize);
	
	public int getBlogCount(String keyword);
	
	int getBlogCount();
	
	public Blog getBlogDetail(int id);
	
	public int delete(int id);
	
	int add(Blog blog);
	
	int addCollect(Collect collect);
	
	Collect deleteCollect(int cobid, int couid);
	
	int deleteCol(int id);
	
	List<Blog> searchByKeyword(int pageNum, int pageSize, int buid);

}
