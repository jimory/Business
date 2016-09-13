package com.etc.bussiness.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.bussiness.biz.MessageBiz;
import com.etc.bussiness.dao.MessageDao;
import com.etc.bussiness.entity.Message;

@Service
public class MessageBizImpl implements MessageBiz {
	
	@Resource
	private MessageDao messageDao;



	@Override
	public int addMessage(Message message) {
		return messageDao.addMessage(message);
	}


	@Override
	public int deleteMessage(Message message, int mid) {
		return messageDao.deleteMessage(message, mid);
	}


	@Override
	public Message getMessageById(int mid) {
		return messageDao.getMessageById(mid);
	}


	@Override
	public List<Message> getMessageByPaging(int pageNum, int pageSize) {
		return messageDao.getMessageByPaging(pageNum, pageSize);
	}


	@Override
	public int getPageCount(int pageSize) {
		int count = messageDao.getPageCount();
		if (count % pageSize == 0) {
			return count / pageSize;
		}
		return count / pageSize + 1;
	}


	@Override
	public List<Message> getMessageByPaging(int pageNum, int pageSize,
			String keyword) {
		return messageDao.getMessageByPaging(pageNum, pageSize, keyword);
	}


	@Override
	public int getPageCount(int pageSize, String keyword) {
		int count = messageDao.getPageCount(keyword);
		if (count % pageSize == 0) {
			return count / pageSize;
		}
		return count / pageSize + 1;
	}
}
	
