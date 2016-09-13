package com.etc.bussiness.action;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import com.etc.bussiness.biz.UserBiz;
import com.etc.bussiness.entity.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Scope("prototype")
@Controller
public class UploadAction extends ActionSupport implements ModelDriven<User>{
	private File img;
	private String imgFileName;
	private String imgContentType;
	private int buid;
	
	
	public int getBuid() {
		return buid;
	}

	public void setBuid(int buid) {
		this.buid = buid;
	}

	@Resource
	private UserBiz userBiz;
	
	private User user = new User();
	
      
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}



	

	public File getImg() {
		return img;
	}

	public void setImg(File img) {
		this.img = img;
	}

	public String getImgFileName() {
		return imgFileName;
	}

	public void setImgFileName(String imgFileName) {
		this.imgFileName = imgFileName;
	}

	public String getImgContentType() {
		return imgContentType;
	}

	public void setImgContentType(String imgContentType) {
		this.imgContentType = imgContentType;
	}

	public String execute() throws IOException {
		String uimage = ServletActionContext.getServletContext().getRealPath("/upload");// 鍙栧緱缃戠珯鏍圭洰褰曚笅images鏂囦欢澶圭殑鐗╃悊璺緞
		System.out.println("淇濆瓨鏂囦欢鐨勫湴鍧�細" + uimage);
		System.out.println("璇ユ枃浠剁殑绫诲瀷鏄細" + imgContentType);
		File saveDir = new File(uimage);
		// 鍒ゆ柇璇ユ枃浠跺す鏄惁瀛樺湪锛屽涓嶅瓨鍦紝鍒氬垱寤轰箣銆�
		if (!saveDir.exists()) {
			saveDir.mkdirs();
		}
		changeFileName();//閲嶅懡鍚嶆枃浠�
		// 灏嗘枃浠跺啓鍏ユ湇鍔″櫒纭洏
		FileUtils.copyFile(img, new File(saveDir, imgFileName));
		
		User us = userBiz.getUserById(user.getUid());
		  us.setUimage(imgFileName);
		  userBiz.updateInfo(us);
		  buid=user.getUid();
		  return "success";
	}

	private void changeFileName() {
		String ext = imgFileName.substring(imgFileName.lastIndexOf("."));
		String fName = System.currentTimeMillis() + ""+ (int) (Math.random() * 10000);
		this.imgFileName = fName + ext;
	}
/*	public String doUpload(){
		  User us = userBiz.getUserById(user.getUid());
		  us.setUimage(uimageFileName);
		  userBiz.updateInfo(us);
		  return "success";
	}*/

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
}