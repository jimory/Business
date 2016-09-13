<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="ssss" uri="/struts-tags" %>
<%@ taglib prefix="cc" uri="http://java.sun.com/jsp/jstl/core" %>
<cc:if test="${casesList==null }">
    <% response.sendRedirect("CaseAction_doSearch.action"); %>
</cc:if>
<style type="text/css">
a:link,a:visited{
 text-decoration:none;  /*超链接无下划线*/
}
a:hover{
 text-decoration:underline;  /*鼠标放上去有下划线*/
}
</style>
<link href="css/style_song.css" rel="stylesheet" type="text/css"  />
<div class="songst111" align="center">
     <div class="songhead111">         
          <div class="songhead4111">
            <ssss:if test="pageNum>1">
               <a href="CaseAction_doSearch.action?pageNum=<ssss:property value="pageNum-1"/>"><div class="songhead4_1111"></div></a>
            </ssss:if>
            <ssss:if test="pageNum<#pageCount">
               <a href="CaseAction_doSearch.action?pageNum=<ssss:property value="pageNum+1"/>"><div class="songhead4_2111"></div></a>
            </ssss:if>
          </div>
     </div>
     <div class="songbod111">
       <ssss:iterator value="#casesList">
         <div class="songbod1111">
             <a href="CaseAction_toOne.action?caseId=${caseId }">
                       <div class="songbod1_1111"></div>
                       <img src="back/upload/<ssss:property value="caseImage" />"  />
                  </a>
                <a href="CaseAction_toOne.action?caseId=${caseId }"><h3><ssss:property value="caseTitle"/></h3></a> 
         </div>
        </ssss:iterator>
     </div>
</div>