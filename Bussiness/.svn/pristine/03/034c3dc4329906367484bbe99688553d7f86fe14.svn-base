package com.etc.bussiness.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.etc.bussiness.dao.CommentDao;
import com.etc.bussiness.entity.Comment;

@Component
public class CommentDaoImpl extends BaseDao implements CommentDao {

	//添加评论
	public int add(Comment comment) {
		super.add(comment);
		return 1;
	}

	//查询所有评论
	public List<Comment> searchCommentAll(int pageNum, int pageSize, String keyword) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("keyword", "%"+keyword+"%");
		return super.searchByPaging("from Comment c where c.user.uname like :keyword", params, pageSize, pageNum);
	}

	//查询评论条数
	public int getCommentCount(String keyword) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("keyword", "%"+keyword+"%");
		return (int) super.count("select count(*) from Comment c where c.user.uname like :keyword", params);
	}

	//删除评论
	public int delete(int id) {
		super.delete(Comment.class, id);
		return 1;
	}
	
	public Comment getDetail(int id){
		return (Comment) super.get(Comment.class, id);
	}
	
	//通过博客ID求出评论
	public List<Comment> searchByBlogId(int pageNum, int pageSize, int id){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);
		return super.searchByPaging("from Comment c where c.blog.blogId = :id", params, pageSize, pageNum);
	}
	
	

}
