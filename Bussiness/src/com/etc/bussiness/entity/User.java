package com.etc.bussiness.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = -4529038452834151378L;
	private Integer uid;
	private String uname;
	private String upassword;
	private String usex;
	private Integer uage;
	private String uimage;
	private String uphone;
	private String uemail;
	private String ucountry;
	private String uurl;
	private String ujob;
	private Timestamp ubithday;
	private Set<Blog> blogs = new HashSet<Blog>();
	private Set<Comment> comments = new HashSet<Comment>();
	private Set<Collect> collects = new HashSet<Collect>();
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getUsex() {
		return usex;
	}
	public void setUsex(String usex) {
		this.usex = usex;
	}
	public Integer getUage() {
		return uage;
	}
	public void setUage(Integer uage) {
		this.uage = uage;
	}
	public String getUimage() {
		return uimage;
	}
	public void setUimage(String uimage) {
		this.uimage = uimage;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUcountry() {
		return ucountry;
	}
	public void setUcountry(String ucountry) {
		this.ucountry = ucountry;
	}
	public String getUurl() {
		return uurl;
	}
	public void setUurl(String uurl) {
		this.uurl = uurl;
	}
	public String getUjob() {
		return ujob;
	}
	public void setUjob(String ujob) {
		this.ujob = ujob;
	}
	public Timestamp getUbithday() {
		return ubithday;
	}
	public void setUbithday(Timestamp ubithday) {
		this.ubithday = ubithday;
	}
	public Set<Blog> getBlogs() {
		return blogs;
	}
	public void setBlogs(Set<Blog> blogs) {
		this.blogs = blogs;
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
	
	public User(String uname, String upassword, String usex, Integer uage,
			String uimage, String uphone, String uemail, String ucountry,
			String uurl, String ujob, Timestamp ubithday, Set<Blog> blogs,
			Set<Comment> comments, Set<Collect> collects) {
		super();
		this.uname = uname;
		this.upassword = upassword;
		this.usex = usex;
		this.uage = uage;
		this.uimage = uimage;
		this.uphone = uphone;
		this.uemail = uemail;
		this.ucountry = ucountry;
		this.uurl = uurl;
		this.ujob = ujob;
		this.ubithday = ubithday;
		this.blogs = blogs;
		this.comments = comments;
		this.collects = collects;
	}
	public User(Integer uid, String uname, String upassword, String usex,
			Integer uage, String uimage, String uphone, String uemail,
			String ucountry, String uurl, String ujob, Timestamp ubithday,
			Set<Blog> blogs, Set<Comment> comments, Set<Collect> collects) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.upassword = upassword;
		this.usex = usex;
		this.uage = uage;
		this.uimage = uimage;
		this.uphone = uphone;
		this.uemail = uemail;
		this.ucountry = ucountry;
		this.uurl = uurl;
		this.ujob = ujob;
		this.ubithday = ubithday;
		this.blogs = blogs;
		this.comments = comments;
		this.collects = collects;
	}
	public User() {
		super();
	}
	
	



	

}