package com.etc.bussiness.biz;

import java.util.List;

import com.etc.bussiness.entity.News;

public interface NewsBiz {
      public int addNews(News news);
      public int updateNews(News news);
      public int deleteNews(News news,int newsId);
      public News getNewsById(int newsId);
      public List<News> getNewsByPaging(int pageNum,int pageSize);
      public int getPageCount(int pageSize);
      public List<News> getNewsByPaging(int pageNum,int pageSize,String keyword);
      public int getPageCount(int pageSize,String keyword);
}
