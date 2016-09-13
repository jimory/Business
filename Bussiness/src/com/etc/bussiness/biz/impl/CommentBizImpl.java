package com.etc.bussiness.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.etc.bussiness.biz.CommentBiz;
import com.etc.bussiness.dao.CommentDao;
import com.etc.bussiness.entity.Comment;

@Component
public class CommentBizImpl implements CommentBiz {
	
	@Resource
	private CommentDao commentDao;

	//��������
	public int add(Comment comment) {
		return commentDao.add(comment);
	}

	//��ѯ��������
	public List<Comment> searchCommentAll(int pageNum, int pageSize,String keyword) {
		return commentDao.searchCommentAll(pageNum, pageSize, keyword);
	}

	//��ѯ������������
	public int commentCount(int pageSize, String keyword) {
		int count = commentDao.getCommentCount(keyword);
		if (count % pageSize == 0) {
			return count / pageSize;
		}
		return count / pageSize + 1;
	}

	@Override
	public int delete(int id) {
		return commentDao.delete(id);
	}

	@Override
	public Comment getDetail(int id) {
		return commentDao.getDetail(id);
	}
	
	public List<Comment> searchByBlogId(int pageNum, int pageSize,int id){
		return commentDao.searchByBlogId(pageNum, pageSize, id);
	}


}