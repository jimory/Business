package com.etc.bussiness.entity;

import java.io.Serializable;
import java.sql.Timestamp;

import org.springframework.stereotype.Service;
@Service
public class News implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer newsId;
	private String newsTitle;
	private Timestamp newsTime;
	private String newsDetails;
	private String newsImage;
	
	public News(String newsTitle, Timestamp newsTime, String newsDetails,
			String newsImage) {
		super();
		this.newsTitle = newsTitle;
		this.newsTime = newsTime;
		this.newsDetails = newsDetails;
		this.newsImage = newsImage;
	}


	public News(Integer newsId, String newsTitle, Timestamp newsTime,
			String newsDetails, String newsImage) {
		super();
		this.newsId = newsId;
		this.newsTitle = newsTitle;
		this.newsTime = newsTime;
		this.newsDetails = newsDetails;
		this.newsImage = newsImage;
	}


	public News() {
		super();
	}


	public Integer getNewsId() {
		return newsId;
	}


	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}


	public String getNewsTitle() {
		return newsTitle;
	}


	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}


	public Timestamp getNewsTime() {
		return newsTime;
	}


	public void setNewsTime(Timestamp newsTime) {
		this.newsTime = newsTime;
	}


	public String getNewsDetails() {
		return newsDetails;
	}


	public void setNewsDetails(String newsDetails) {
		this.newsDetails = newsDetails;
	}


	public String getNewsImage() {
		return newsImage;
	}


	public void setNewsImage(String newsImage) {
		this.newsImage = newsImage;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

}
