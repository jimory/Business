package com.etc.bussiness.entity;

import java.util.Date;

public class Message {
	private Integer mid;
	private String mname;
	private String memail;
	private String mphone;
	private String mtext;
	private String mtime;
	
	public Integer getMid() {
		return mid;
	}
	public void setMid(Integer mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMphone() {
		return mphone;
	}
	public void setMphone(String mphone) {
		this.mphone = mphone;
	}
	public String getMtext() {
		return mtext;
	}
	public void setMtext(String mtext) {
		this.mtext = mtext;
	}
	public String getMtime() {
		return mtime;
	}
	public void setMtime(String string) {
		this.mtime = string;
	}
	public Message(Integer mid, String mname, String memail, String mphone,
			String mtext, String mtime) {
		super();
		this.mid = mid;
		this.mname = mname;
		this.memail = memail;
		this.mphone = mphone;
		this.mtext = mtext;
		this.mtime = mtime;
	}
	public Message() {
		super();
	}
	public Message(String mname, String memail, String mphone, String mtext,
			String mtime) {
		super();
		this.mname = mname;
		this.memail = memail;
		this.mphone = mphone;
		this.mtext = mtext;
		this.mtime = mtime;
	}
	public Message(String mname, String memail, String mphone, String mtext) {
		super();
		this.mname = mname;
		this.memail = memail;
		this.mphone = mphone;
		this.mtext = mtext;
	}
	
	
	

}
