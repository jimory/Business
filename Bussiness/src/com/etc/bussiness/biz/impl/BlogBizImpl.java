package com.etc.bussiness.biz.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.bussiness.biz.BlogBiz;
import com.etc.bussiness.dao.BlogDao;
import com.etc.bussiness.entity.Blog;
import com.etc.bussiness.entity.Collect;

@Service
public class BlogBizImpl implements BlogBiz {
	
	@Resource
	private BlogDao blogDao;


		//分页查询
		public int getPageCount(int pageSize, String keyword) {
			int count = blogDao.getBlogCount(keyword);
			if (count % pageSize == 0) {
				return count / pageSize;
			}
			return count / pageSize + 1;
		}
		
		public int getPageCount(int pageSize) {
			int count = blogDao.getBlogCount();
			if (count % pageSize == 0) {
				return count / pageSize;
			}
			return count / pageSize + 1;
		}


		//查询博客详情
		public Blog getBlogDetail(int id) {
			return blogDao.getBlogDetail(id);
		}


		//通过关键字查询
		public List<Blog> searchByKeyword(int pageNum, int pageSize, String keyword) {
			return blogDao.searchByKeyword(pageNum, pageSize, keyword);
		}
		
		public List<Blog> searchByKeyword(int pageNum, int pageSize, int buid){
			return blogDao.searchByKeyword(pageNum, pageSize, buid);
		}
		
		public List<Blog> searchByKeyword(int pageNum, int pageSize) {
			return blogDao.searchByKeyword(pageNum, pageSize);
		}
		

		//删除博客
		public int delete(int id) {
			return blogDao.delete(id);
			
		}
		
		public int deleteCol(int id){
			return blogDao.deleteCol(id);
		}
		
		//添加博客
		public int add(Blog blog){
			return blogDao.add(blog);
		}
		
		//收藏
		public int addCollect(Collect collect){
			return blogDao.addCollect(collect);
		}
		
		//取消收藏
		public Collect deleteCollect(int cobid, int couid){
			return blogDao.deleteCollect(cobid, couid);
		}
		
		



}
