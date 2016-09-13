package com.etc.bussiness.entity;

public class Collect {
	private Integer coid;
	private User user;
	private Blog blog;
	public Integer getCoid() {
		return coid;
	}
	public void setCoid(Integer coid) {
		this.coid = coid;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Blog getBlog() {
		return blog;
	}
	public void setBlog(Blog blog) {
		this.blog = blog;
	}
	public Collect(Integer coid, User user, Blog blog) {
		super();
		this.coid = coid;
		this.user = user;
		this.blog = blog;
	}
	public Collect(User user, Blog blog) {
		super();
		this.user = user;
		this.blog = blog;
	}
	public Collect() {
		super();
	}
	
	

}
