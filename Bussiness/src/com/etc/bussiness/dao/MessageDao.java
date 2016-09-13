package com.etc.bussiness.dao;

import java.util.List;
import com.etc.bussiness.entity.Message;

public interface MessageDao {
	public int addMessage(Message message);
    public int deleteMessage(Message message,int mid);
    public Message getMessageById(int mid);
    public List<Message> getMessageByPaging(int pageNum,int pageSize);
    public int getPageCount();
    public List<Message> getMessageByPaging(int pageNum,int pageSize,String keyword);
    public int getPageCount(String keyword);
}
