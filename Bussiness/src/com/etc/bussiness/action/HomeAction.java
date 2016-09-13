package com.etc.bussiness.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@Scope("prototype")
@Controller
public class HomeAction extends ActionSupport {
	
	public String backindex(){
		return "backindex";
	}
	
	public String top(){
		return "top";
	}
	
	public String left(){
		return "left";
	}
	
	public String right(){
		return "right";
	}
	
	public String bottom(){
		return "bottom";
	}
}
