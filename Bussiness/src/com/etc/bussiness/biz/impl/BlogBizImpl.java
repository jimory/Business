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


		//��ҳ��ѯ
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


		//��ѯ��������
		public Blog getBlogDetail(int id) {
			return blogDao.getBlogDetail(id);
		}


		//ͨ���ؼ��ֲ�ѯ
		public List<Blog> searchByKeyword(int pageNum, int pageSize, String keyword) {
			return blogDao.searchByKeyword(pageNum, pageSize, keyword);
		}
		
		public List<Blog> searchByKeyword(int pageNum, int pageSize, int buid){
			return blogDao.searchByKeyword(pageNum, pageSize, buid);
		}
		
		public List<Blog> searchByKeyword(int pageNum, int pageSize) {
			return blogDao.searchByKeyword(pageNum, pageSize);
		}
		

		//ɾ������
		public int delete(int id) {
			return blogDao.delete(id);
			
		}
		
		public int deleteCol(int id){
			return blogDao.deleteCol(id);
		}
		
		//���Ӳ���
		public int add(Blog blog){
			return blogDao.add(blog);
		}
		
		//�ղ�
		public int addCollect(Collect collect){
			return blogDao.addCollect(collect);
		}
		
		//ȡ���ղ�
		public Collect deleteCollect(int cobid, int couid){
			return blogDao.deleteCollect(cobid, couid);
		}
		
		



}