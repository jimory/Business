package com.etc.bussiness.biz.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.bussiness.biz.NewsBiz;
import com.etc.bussiness.dao.NewsDao;
import com.etc.bussiness.entity.News;

@Service
public class NewsBizImpl implements NewsBiz {
	
	@Resource
	private NewsDao newsDao;


	@Override
	public int addNews(News news) {
		return newsDao.addNews(news);
	}

	@Override
	public int updateNews(News news) {
		return newsDao.updateNews(news);
	}

	@Override
	public News getNewsById(int newsId) {
		return newsDao.getNewsById(newsId);
	}

	@Override
	public List<News> getNewsByPaging(int pageNum, int pageSize) {
		return newsDao.getNewsByPaging(pageNum, pageSize);
	}

	@Override
	public int getPageCount(int pageSize) {
		int count = newsDao.getPageCount();
		if (count % pageSize == 0) {
			return count / pageSize;
		}
		return count / pageSize + 1;
	}

	@Override
	public int deleteNews(News news, int newsId) {
		return newsDao.deleteNews(news, newsId);
	}

	@Override
	public List<News> getNewsByPaging(int pageNum, int pageSize, String keyword) {
		return newsDao.getNewsByPaging(pageNum, pageSize, keyword);
	}

	@Override
	public int getPageCount(int pageSize, String keyword) {
		int count = newsDao.getPageCount(keyword);
		if (count % pageSize == 0) {
			return count / pageSize;
		}
		return count / pageSize + 1;
	}

}
