package com.etc.bussiness.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.etc.bussiness.biz.MessageBiz;
import com.etc.bussiness.dao.MessageDao;
import com.etc.bussiness.entity.Message;
import com.etc.bussiness.entity.News;
@Service
public class MessageDaoImpl extends BaseDao implements MessageDao {

	@Override
	public int addMessage(Message message) {
		super.add(message);
		return 1;
	}

	@Override
	public int deleteMessage(Message message, int mid) {
		super.delete(Message.class, mid);
		return 1;
	}

	@Override
	public Message getMessageById(int mid) {
		return (Message) super.get(Message.class, mid);
	}

	@Override
	public List<Message> getMessageByPaging(int pageNum, int pageSize) {
		return super.searchByPaging("from Message m order by m.mtime desc", null, pageSize, pageNum);
	}

	@Override
	public int getPageCount() {
		return (int) super.count("select count(m) from Message m");
	}

	@Override
	public List<Message> getMessageByPaging(int pageNum, int pageSize,
			String keyword) {
		String hql = "from Message m where m.mtext like :keyword order by m.mtime desc";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("keyword", "%"+keyword+"%");
		List<Message> list = super.search(hql, params);
		if(list!=null && list.size()>0){
			return list;
		}
		return null;
	}

	@Override
	public int getPageCount(String keyword) {
		String hql = "select count(m) from Message m where m.mtext like :keyword";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("keyword", "%"+keyword+"%");
		int list = (int) super.count(hql, params);
		return list;
	}

	

}
