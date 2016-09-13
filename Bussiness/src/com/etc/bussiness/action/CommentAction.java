package com.etc.bussiness.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.etc.bussiness.biz.BlogBiz;
import com.etc.bussiness.biz.CommentBiz;
import com.etc.bussiness.biz.UserBiz;
import com.etc.bussiness.entity.Blog;
import com.etc.bussiness.entity.Comment;
import com.etc.bussiness.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller
@Scope("prototype")
public class CommentAction extends ActionSupport implements ModelDriven<Comment> {

	/**
	 * ���۵Ĳ���
	 */
	private static final long serialVersionUID = 6506953916224080910L;
	private Comment comment = new Comment();
	private Integer cmbid;
	private Integer buid;
	private int pageNum;
	private int pageSize;
	private String keyword;

	@Resource
	private CommentBiz commentBiz;
	@Resource
	private BlogBiz blogBiz;
	@Resource
	private UserBiz userBiz;


	public String add(){
		Blog blog = blogBiz.getBlogDetail(cmbid);
		User user = userBiz.getUserById(buid);
		comment.setUser(user);
		comment.setBlog(blog);
		comment.setCmtime(new Date());
		commentBiz.add(comment);
		return "toblog";
	}
	
	public String list(){
		List<Comment> commentList = commentBiz.searchCommentAll(pageNum, pageSize, keyword);
		ActionContext.getContext().put("commentList", commentList);
		ActionContext.getContext().put("pageCount", commentBiz.commentCount(pageSize, keyword));
		ActionContext.getContext().getValueStack().push(keyword);
		return "list";
	}
	
	public String delete(){
		commentBiz.delete(comment.getCmid());
		return "tolist";
	}
	
	public String detail(){
		Comment commentDetail = commentBiz.getDetail(comment.getCmid());
		System.out.println(commentDetail);
		ActionContext.getContext().getValueStack().push(commentDetail);
		return "detail";
	}


	/*======================setter and getter===========================*/

	public Comment getModel() {
		return comment;
	}

	public Integer getCmbid() {
		return cmbid;
	}

	public void setCmbid(Integer cmbid) {
		this.cmbid = cmbid;
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

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Integer getBuid() {
		return buid;
	}

	public void setBuid(Integer buid) {
		this.buid = buid;
	}

	
	
	
}
