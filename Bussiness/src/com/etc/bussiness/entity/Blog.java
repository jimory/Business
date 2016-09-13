package com.etc.bussiness.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Blog {
	private Integer blogId;
	private String blogTitle;
	private String blogText;
	private Date blogTime;
	private String blogImage;
	private String blogSpan;
	private User user;
	private Set<Comment> comments = new HashSet<Comment>();
	private Set<Collect> collects = new HashSet<Collect>();
	
	public Integer getBlogId() {
		return blogId;
	}
	public void setBlogId(Integer blogId) {
		this.blogId = blogId;
	}
	
	public String getBlogImage() {
		return blogImage;
	}
	public void setBlogImage(String blogImage) {
		this.blogImage = blogImage;
	}
	public String getBlogTitle() {
		return blogTitle;
	}
	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}
	public String getBlogText() {
		return blogText;
	}
	public void setBlogText(String blogText) {
		this.blogText = blogText;
	}
	public Date getBlogTime() {
		return blogTime;
	}
	public void setBlogTime(Date blogTime) {
		this.blogTime = blogTime;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public Set<Comment> getComments() {
		return comments;
	}
	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}
	public Set<Collect> getCollects() {
		return collects;
	}
	public void setCollects(Set<Collect> collects) {
		this.collects = collects;
	}
	
	public String getBlogSpan() {
		return blogSpan;
	}
	public void setBlogSpan(String blogSpan) {
		this.blogSpan = blogSpan;
	}
	
	public Blog(String blogTitle, String blogText, Date blogTime,
			String blogImage, String blogSpan, User user,
			Set<Comment> comments, Set<Collect> collects) {
		super();
		this.blogTitle = blogTitle;
		this.blogText = blogText;
		this.blogTime = blogTime;
		this.blogImage = blogImage;
		this.blogSpan = blogSpan;
		this.user = user;
		this.comments = comments;
		this.collects = collects;
	}
	public Blog(Integer blogId, String blogTitle, String blogText,
			Date blogTime, String blogImage, String blogSpan, User user,
			Set<Comment> comments, Set<Collect> collects) {
		super();
		this.blogId = blogId;
		this.blogTitle = blogTitle;
		this.blogText = blogText;
		this.blogTime = blogTime;
		this.blogImage = blogImage;
		this.blogSpan = blogSpan;
		this.user = user;
		this.comments = comments;
		this.collects = collects;
	}
	public Blog() {
		super();
	}
	
	

	
	
}
