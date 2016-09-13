package com.etc.bussiness.dao;

import java.util.List;

import com.etc.bussiness.entity.Comment;

public interface CommentDao {
	
	int add(Comment comment);
	
	List<Comment> searchCommentAll(int pageNum, int pageSize, String keyword);
	
	int getCommentCount(String keyword);
	
	int delete(int id);
	
	Comment getDetail(int id);
	
	List<Comment> searchByBlogId(int pageNum, int pageSize, int id);

}
