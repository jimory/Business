package com.etc.bussiness.dao.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.annotation.Resources;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.etc.bussiness.entity.Collect;

@Transactional
public class BaseDao extends HibernateDaoSupport{
	
	
	private SessionFactory sessionFactory;

	@Resource
	public void setSessionFacotry(SessionFactory sessionFacotry) {     
		super.setSessionFactory(sessionFacotry);     
	}

	public void add(Object item) {
		super.getHibernateTemplate().save(item);
	}
	
	
	public void delete(Class clazz, Serializable id) {
		super.getHibernateTemplate().delete(
				super.getHibernateTemplate().get(clazz, id));
	}
	
	public Collect delete(String hql, Map<String, Object> params) {
		Session session = super.getSession();
		Query query = session.createQuery(hql);
		query.setProperties(params);
		return (Collect) query.uniqueResult();
		
	}

	public void update(Object item) {
		super.getHibernateTemplate().update(item);
	}

	public List search(String hql, Map<String, Object> params) {
		Session session = super.getSession();
		Query query = session.createQuery(hql);
		query.setProperties(params);
		return query.list();
		
	}

	public List searchByPaging(String hql, Map<String, Object> params,
			int pageSize, int pageNum) {
		Session session = super.getSession();
		Query query = session.createQuery(hql);
		query.setProperties(params);
		query.setFirstResult((pageNum - 1) * pageSize);
		query.setMaxResults(pageSize);
		return query.list();
	}

	public Object get(Class clazz, Serializable id) {
		return super.getHibernateTemplate().get(clazz, id);
	}

	public long count(String hql) {
		Session session = super.getSession();
		Query query = session.createQuery(hql);
		return (Long) query.uniqueResult();
	}
	public long count(String hql,Map<String, Object> params) {
		Session session = super.getSession();
		Query query = session.createQuery(hql);
		query.setProperties(params);
		return (Long) query.uniqueResult();
	}
	
	public Object getByNameAndPass(String hql, Map<String, Object> params) {
		Session session = super.getSession();
		Query query = session.createQuery(hql);
		query.setProperties(params);
		return query.list().get(0);
		
	}
	

}
