package com.etc.bussiness.biz;

import java.util.List;
import com.etc.bussiness.entity.Blog;
import com.etc.bussiness.entity.Collect;

public interface BlogBiz {
	List<Blog> searchByKeyword(int pageNum, int pageSize, String keyword);
	
	List<Blog> searchByKeyword(int pageNum, int pageSize, int buid);
	
	List<Blog> searchByKeyword(int pageNum, int pageSize);
	
	int getPageCount(int pageSize, String keyword);
	
	int getPageCount(int pageSize);
	
	Blog getBlogDetail(int id);
	
	int delete(int id);
	
	int add(Blog blog);
	
	int addCollect(Collect collect);
	
	Collect deleteCollect(int cobid, int couid);
	
	int deleteCol(int id);

}
