<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>¹ÜÀíÒ³Ãæ</title>
<link rel="stylesheet" type="text/css" href="styles/leftIndex.css">
<script src="js/prototype.lite.js" type="text/javascript"></script>
<script src="js/moo.fx.js" type="text/javascript"></script>
<script src="js/moo.fx.pack.js" type="text/javascript"></script>
<script type="text/javascript">
    				
    				function toEdit(id){
    					window.open("admin_toUpdateAdmin.action?id="+id,"_self");
    				}
</script>
</head>

<body>
<table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
  <tr>
    <td width="182" valign="top"><div id="container">
      <h1 class="type"><a href="javascript:void(0)">新闻管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a target="right" href="addNews.jsp">添加新闻</a></li>
          <li><a target="right" href="news_doSearchAll.action">查看新闻</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">管理员管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a target="right" href="addAdmin.jsp">添加管理员</a></li>
          <li><a target="right" href="admin_doSearchAll.action">查看管理员</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">用户管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
		  <li><a target="right" href="backdo_showUser.action">查看用户</a></li>
		  <li><a target="right" href="user_update.jsp">修改用户</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">消息管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a target="right" href="backblog_keyList.action?keyword=">查看博客</a></li>
          <li><a target="right" href="comment_list.action?keyword=">查看评论</a></li>
          <li><a target="right" href="mg_doSearchAll.action">查看留言板</a></li>
        </ul>
      </div>
    </div>
         <h1 class="type"><a href="javascript:void(0)">案例管理</a></h1>
<div class="content">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
      </tr>
    </table>
  <ul class="MM">
   <li><a target="right" href="addCases.jsp">添加案例</a></li>
      <li><a target="right" href="caseAction_doBackSearch.action">查看案例</a></li>
  </ul>
      </div>
      </div>
      <h1 class="type"><a href="javascript:void(0)">系统管理</a></h1>
      <div class="content">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
            </tr>
          </table>
        <ul class="MM">
            <li><a target="right" href="admin_toUpdateAdmin.action?id=${loginedAdmin.id }" onclick="toEdit(<s:property value="id"/>">修改个人信息</a></li>
            <li><a target="_blank" href="admin_doLogout" >退出</a></li>
        </ul>
      </div>
      </div>
        <script type="text/javascript">
		var contents = document.getElementsByClassName('content');
		var toggles = document.getElementsByClassName('type');
	
		var myAccordion = new fx.Accordion(
			toggles, contents, {opacity: true, duration: 400}
		);
		myAccordion.showThisHideOpen(contents[0]);
	</script>
        </td>
  </tr>
</table>
</body>
</html>
