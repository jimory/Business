<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="ab"  %>
<%@ taglib prefix="s" uri="/struts-tags" %>
 <style type="text/css">

.big{
	width:1020px;
	min-height:600px;
	}
.small{
	margin-left:310px;
	margin-top:40px;
	width:600px;
	min-height:400px;
	
	}
.td1{
   font-size:18px;
   font-family:Terminal, System, Fixedsys, 'Arial Unicode MS', '幼圆';
}
 </style>
<div class="big"  >
<div class="small" >

  <form action="news_doUpdateNews" method="post" name="f1" enctype="multipart/form-data">
  <s:hidden name="newsImage" value="%{newsImage}"></s:hidden>
  <table>
  <caption style="font-size:25px;color:#069;" height="30">"Businex"网站——新闻的修改</caption>
     <tr><td colspan="2"><hr/></td>
		</tr>
     <tr height="30"> 
       <td class="td1"></td><td><input type="hidden" name="newsId" value="${newsId}" size="24"  height="98"/></td>
     </tr>
     <tr height="30"> 
       <td class="td1">新闻标题：</td><td><input type="text" name="newsTitle" value="${newsTitle }" size="24"  height="98"/></td>
     </tr>
     <tr height="30">
       <td class="td1">新闻时间：</td> <td><input type="text" name="newsTime" value="${newsTime }" size="24"  height="98"/></td>
     </tr>
      
      <tr height="80"><td class="td1">图片：</td><td><img alt="" src="upload/${newsImage }" width="70" height="50"><input type="file" name="img"/></td></tr>
      <tr height="30"><td class="td1"> 新闻描述：</td><td><textarea rows="8" cols="32" name="newsDetails">${newsDetails }</textarea></td></tr> 
      <tr height="30"><td colspan="2" align="center">  <input type="submit" name="sub" value="确认修改" />&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="re" value="重置"  /><br/></td></tr>
 </table>
 <hr/>
	<a href="news_doSearchAll.action">返回新闻信息列表</a>
  </form>
  </div>
</div>