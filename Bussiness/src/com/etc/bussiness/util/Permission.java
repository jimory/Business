package com.etc.bussiness.util;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class Permission extends MethodFilterInterceptor{

	@Override
	public void destroy() {

	}

	@Override
	public void init() {

	}

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		if(invocation.getInvocationContext().getSession().get("loginedUser")!=null){
			return invocation.invoke();
		}
		return "login";
	}

}
