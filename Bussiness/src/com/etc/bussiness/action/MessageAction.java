package com.etc.bussiness.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.etc.bussiness.biz.MessageBiz;
import com.etc.bussiness.entity.Message;
import com.etc.bussiness.entity.News;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller
@Scope("prototype")
public class MessageAction extends ActionSupport implements ModelDriven<Message> {
    
	@Resource
	private MessageBiz messageBiz;

    
	private Message message = new Message();
	
	private int pageNum;
	private int pageSize;
	private String keyword;
	
	//�������
	public String doAdd(){
		Date dt=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		message.setMtime(sdf.format(dt));
		messageBiz.addMessage(message);
		return "addOk";
	}
	
	//��ҳ��ѯ
	public String doSearchAll(){
		List<Message> mgList = messageBiz.getMessageByPaging(pageNum, pageSize);
		ActionContext.getContext().put("mgList", mgList);
		ActionContext.getContext().put("pageCount", messageBiz.getPageCount(pageSize));
		return "listAll";
	}

	//��������ҳ��ѯ
	public String doSearchSome(){
		List<Message> mgList = messageBiz.getMessageByPaging(pageNum, pageSize,keyword);
		ActionContext.getContext().put("mgList", mgList);
		ActionContext.getContext().put("pageCount", messageBiz.getPageCount(pageSize,keyword));
		ActionContext.getContext().getValueStack().push(keyword);
		return "listSome";
	}

	//����
	public String toOne(){

		Message m = messageBiz.getMessageById(message.getMid());
		String keyword = m.getMtext();
		List<Message> mgList = messageBiz.getMessageByPaging(pageNum, pageSize,keyword);
		ActionContext.getContext().put("mgList", mgList);
		ActionContext.getContext().put("m", m);
		ActionContext.getContext().getValueStack().push(m);
		return "toOne";
	}
	
	
	/*===============setter �� getter ����===========*/
	
	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	
	@Override
	public Message getModel() {
		// TODO Auto-generated method stub
		return message;
	}
}
