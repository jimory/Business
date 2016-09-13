package com.etc.bussiness.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.etc.bussiness.dao.BlogDao;
import com.etc.bussiness.entity.Blog;
import com.etc.bussiness.entity.Collect;

@Component
public class BlogDaoImpl extends BaseDao implements BlogDao {
	
	public List<Blog> searchByKeyword(int pageNum, int pageSize, String keyword) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("keyword", "%"+keyword+"%");
		return super.searchByPaging("from Blog b where b.blogTitle like :keyword order by b.blogTime desc", params, pageSize, pageNum);
	}
	
	public List<Blog> searchByKeyword(int pageNum, int pageSize, int buid) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("buid", buid);
		return super.searchByPaging("from Blog b where b.user.uid = :buid order by b.blogTime desc", params, pageSize, pageNum);
	}
	
	public List<Blog> searchByKeyword(int pageNum, int pageSize) {
		return super.searchByPaging("from Blog b order by b.blogTime desc", null, pageSize, pageNum);
	}
	
	public int getBlogCount(String keyword){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("keyword", "%"+keyword+"%");
		return (int) super.count("select count(*) from Blog b where b.blogTitle like :keyword", params);
	}
	
	public int getBlogCount(){
		return (int) super.count("select count(*) from Blog b");
	}
	
	//²éÑ¯ÏêÇé
	public Blog getBlogDetail(int id){
		return (Blog) super.get(Blog.class, id);
	}

	//É¾³ý
	public int delete(int id) {
		super.delete(Blog.class, id);
		return 1;
	}
	
	public int deleteCol(int id){
		super.delete(Collect.class, id);
		return 1;
	}
	
	public int add(Blog blog){
		super.add(blog);
		return 1;
	}
	
	public int addCollect(Collect collect){
		super.add(collect);
		return 1;
	}
	
	public Collect deleteCollect(int cobid, int couid){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("cobid", cobid);
		params.put("couid", couid);
		return super.delete("from Collect c where c.user.uid=:couid and c.blog.blogId=:cobid", params);
		
	}
	
	

}
