package com.etc.bussiness.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import com.etc.bussiness.biz.NewsBiz;
import com.etc.bussiness.entity.News;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Scope("prototype")
@Controller
public class NewsAction extends ActionSupport implements ModelDriven<News> {
	@Resource
	private NewsBiz newsBiz;

	private News news = new News();

	private File img;
	private String imgFileName;
	private String imgContentType;

	private int pageNum;
	private int pageSize;
	private String keyword;

	
	//分页查询
	public String doSearchAll(){
		List<News> newsList = newsBiz.getNewsByPaging(pageNum, pageSize);
		ActionContext.getContext().put("newsList", newsList);
		ActionContext.getContext().put("pageCount", newsBiz.getPageCount(pageSize));
		return "listAll";
	}

	//按条件分页查询
	public String doSearchSome(){
		List<News> newsList = newsBiz.getNewsByPaging(pageNum, pageSize,keyword);
		ActionContext.getContext().put("newsList", newsList);
		ActionContext.getContext().put("pageCount", newsBiz.getPageCount(pageSize,keyword));
		ActionContext.getContext().getValueStack().push(keyword);
		return "listSome";
	}

	//详情
	public String toOne(){

		News n = newsBiz.getNewsById(news.getNewsId());
		String keyword = n.getNewsTitle();
		List<News> newsList = newsBiz.getNewsByPaging(pageNum, pageSize,keyword);
		ActionContext.getContext().put("newsList", newsList);
		ActionContext.getContext().put("n", n);
		ActionContext.getContext().getValueStack().push(n);
		return "toOne";
	}

	//修改一条新闻信息
	public String doUpdateNews() throws IOException{
		if(img!=null){
		String newsImage=ServletActionContext.getServletContext().getRealPath("/back/upload");


		File saveDir=new File(newsImage);
		//判断该文件夹是否存在，若不存在，则创建该文件
		if(!saveDir.exists()){
			saveDir.mkdirs();
		}
		changeFileName();
		//将文件写入服务器硬盘
		FileUtils.copyFile(img, new File(saveDir,this.getImgFileName()));
		
		news.setNewsImage(imgFileName);
		newsBiz.updateNews(news);
		return "updateOk";
        }else{
        	
		newsBiz.updateNews(news);
		return "updateOk";
		
        }
		
	}

	//修改一条新闻信息
	public String doDeleteNews(){
		newsBiz.deleteNews(news, news.getNewsId());
		return "deleteOk";
	}

	//添加新闻
	public String doAdd() throws IOException{
        if(img!=null){
		String newsImage=ServletActionContext.getServletContext().getRealPath("/back/upload");


		File saveDir=new File(newsImage);
		//判断该文件夹是否存在，若不存在，则创建该文件
		if(!saveDir.exists()){
			saveDir.mkdirs();
		}
		changeFileName();
		//将文件写入服务器硬盘
		FileUtils.copyFile(img, new File(saveDir,this.getImgFileName()));

		news.setNewsImage(imgFileName);

		int flag=newsBiz.addNews(news);
		//判断
		if(flag>0){
			//成功
			return "okAdd";
		}else{
			//失败
			return "register";
		}
       }
        news.setNewsImage(null);

		int flag=newsBiz.addNews(news);
		//判断
		if(flag>0){
			//成功
			return "okAdd";
		}else{
			//失败
			return "register";
		}
        
	}

	private void changeFileName(){
		String ext=imgFileName.substring(imgFileName.indexOf("."));
		String fName=System.currentTimeMillis()+""+(int)(Math.random()*10000);

		this.imgFileName=fName+ext;
	}


	/*===============setter 和 getter 方法===========*/
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
	public News getModel() {
		// TODO Auto-generated method stub
		return news;
	}

}
