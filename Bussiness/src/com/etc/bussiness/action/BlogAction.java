package com.etc.bussiness.action;

import java.io.File;
import java.util.Date;
import java.util.List;
import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.etc.bussiness.biz.BlogBiz;
import com.etc.bussiness.biz.CommentBiz;
import com.etc.bussiness.biz.UserBiz;
import com.etc.bussiness.entity.Blog;
import com.etc.bussiness.entity.Collect;
import com.etc.bussiness.entity.Comment;
import com.etc.bussiness.entity.User;
import com.etc.bussiness.util.FileUtils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller
@Scope("prototype")
public class BlogAction extends ActionSupport implements ModelDriven<Blog> {
	
	private Blog blog = new Blog();
	private String keyword;
	private Integer cobid;
	private Integer couid;
	private Integer coid;
	private File image;
	private int admsg;
	private int buid;
	private String imageContentType;
	private String imageFileName;
	private String savePath;
	
	@Resource
	private BlogBiz blogBiz;
	@Resource
	private CommentBiz commentBiz;
	@Resource
	private UserBiz userBiz;
	
	private int pageNum;
	private int pageSize;
	
	public String list(){
		List<Blog> blogList = blogBiz.searchByKeyword(pageNum, pageSize);
		ActionContext.getContext().put("blogList", blogList);
		ActionContext.getContext().put("pageCount", blogBiz.getPageCount(pageSize));
		return "list";
	}
	
	public String keyList(){
		List<Blog> blogList = blogBiz.searchByKeyword(pageNum, pageSize, keyword);
		ActionContext.getContext().put("blogList", blogList);
		ActionContext.getContext().put("pageCount", blogBiz.getPageCount(pageSize, keyword));
		ActionContext.getContext().getValueStack().push(keyword);
		return "list";
	}
	
	public String detail(){
		Blog blogDetail = blogBiz.getBlogDetail(blog.getBlogId());
		List<Comment> commentList = commentBiz.searchByBlogId(pageNum, pageSize, blog.getBlogId());
		ActionContext.getContext().put("commentList", commentList);
		ActionContext.getContext().getValueStack().push(blogDetail);
		ActionContext.getContext().put("pageCount", commentBiz.commentCount(pageSize, ""));
		return "detail";
	}
	
	public String delete(){
		blogBiz.delete(blog.getBlogId());
		return "tolist";
	}
	
	public String add(){
		FileUtils.copyFile(this.getSavePath(), this.getImageFileName(), this.getImage());
		User user = userBiz.getUserById(buid);
		blog.setUser(user);
		blog.setBlogImage(this.savePath+"\\"+this.getImageFileName());
		blog.setBlogTime(new Date());
		blogBiz.add(blog);
		return "tolist";
	}
	
	public String dd(){
		Collect collect = blogBiz.deleteCollect(cobid, couid);
		if(collect!=null){
			blogBiz.deleteCol(collect.getCoid());
			admsg=0;
			return "todetail";
		}else{
			return addCollect();
		}
	}
	
	public String addCollect(){
		Blog blog = blogBiz.getBlogDetail(cobid);
		User user = userBiz.getUserById(couid);
		Collect collect = new Collect();
		collect.setBlog(blog);
		collect.setUser(user);
		blogBiz.addCollect(collect);
		admsg=1;
		return "todetail";
	}
	
	public String person(){
		List<Blog> blogList = blogBiz.searchByKeyword(pageNum, pageSize, buid);
		User user = userBiz.getUserById(buid);
		ActionContext.getContext().put("blogList", blogList);
		ActionContext.getContext().getValueStack().push(user);
		return "person";
	}
	
	public String getBlogByTitle(){
		Blog blogText = blogBiz.getBlogDetail(blog.getBlogId());
		ActionContext.getContext().getValueStack().push(blogText);
		return "byTitle";
	}


	
	/*===================setter  and  getter=================*/
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


	public Blog getModel() {
		return blog;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		int random = (int) (Math.random()*10000);
		this.imageFileName = System.currentTimeMillis() + "" + random + imageFileName.substring(imageFileName.indexOf("."));
	}

	public String getSavePath() {
		return ServletActionContext.getServletContext().getRealPath(savePath);
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public Integer getCobid() {
		return cobid;
	}

	public void setCobid(Integer cobid) {
		this.cobid = cobid;
	}

	public Integer getCouid() {
		return couid;
	}

	public void setCouid(Integer couid) {
		this.couid = couid;
	}

	public Integer getCoid() {
		return coid;
	}

	public void setCoid(Integer coid) {
		this.coid = coid;
	}

	public int getAdmsg() {
		return admsg;
	}

	public void setAdmsg(int admsg) {
		this.admsg = admsg;
	}

	public int getBuid() {
		return buid;
	}

	public void setBuid(int buid) {
		this.buid = buid;
	}
	
	
	
	

}
