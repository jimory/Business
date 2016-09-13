package com.etc.bussiness.entity;

public class Admin {
	private Integer id;
    private String aid;
    private String aname;
    private String apassword;
    private String aphone;
    private String asex;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getApassword() {
		return apassword;
	}
	public void setApassword(String apassword) {
		this.apassword = apassword;
	}
	
	public String getAphone() {
		return aphone;
	}
	public void setAphone(String aphone) {
		this.aphone = aphone;
	}
	public String getAsex() {
		return asex;
	}
	public void setAsex(String asex) {
		this.asex = asex;
	}

	public Admin(String aid, String aname, String apassword, String aphone,
			String asex) {
		super();
		this.aid = aid;
		this.aname = aname;
		this.apassword = apassword;
		this.aphone = aphone;
		this.asex = asex;
	}
	public Admin(Integer id, String aid, String aname, String apassword,
			String aphone, String asex) {
		super();
		this.id = id;
		this.aid = aid;
		this.aname = aname;
		this.apassword = apassword;
		this.aphone = aphone;
		this.asex = asex;
	}
	public Admin() {
		super();
	}
    

}
