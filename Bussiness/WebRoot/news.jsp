<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<style type="text/css">

.top-grid1{
	width:31.33%;
	float:left;
	text-align:center;
	margin-right:3%;
	padding: 8px;
	
}
.top-grid1 h3{
	color: #313232;
	font-size: 1.3em;
}
.top-grid1 p{
	font-family: Arial, Helvetica, sans-serif;
	font-size: 0.875em;
	color: #777;
	line-height: 1.5em;
	margin: 0.5em auto 0.8em auto;
	width: 90%;
}
.top-grid1 img{
	display: inline-block;
	background: #EEE;
	padding: 5px
}
.services h1{
	color: #9b9b9b;
	font-size: 2em;
	font-family: "Bernard MT Condensed";
	text-transform: uppercase;
}
</style>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Businex Website Template | Contact </title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		
		  <script src="js/jquery.min.js"></script>
		    <script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
	</head>
	<body>
		<!----start-wrap---->
		<div class="wrap">
			<!---start-header---->
			<div class="top-links" id="top">
					
				</div>
			</div>
			<div class="header">
				<div class="wrap">
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" title="logo" /></a>
				</div>
				<div class="top-nav">
					<ul>
						<li><a href="index.jsp">首页</a></li>
						<li><a href="about.jsp">关于我们</a></li>
						<li class="active"><a href="news1_doSearchAll.action">新闻</a></li>
						<li>
						<%if(session.getAttribute("loginedUser")!=null){%>
						<a href="blog_person.action?buid=${loginedUser.uid }">个人中心</a>
						<%}else{ %>
						<a href="login.jsp">个人中心</a>
						<%} %>
						</li>
						<li><a href="blog_list.action">博客</a></li>
						<li><a href="contact.jsp">联系我们</a></li>
						<div class="clear"> </div>
					</ul>
				</div>
				<div class="clear"> </div>
			</div>
			<!---End-header---->
		</div>
		 <!---start-content---->
		 <div class="content" style="margin-left: 120px;">
		 	<!---start-services---->
		 	<div class="services">
		 		<div class="wrap">
		 			<h3>热点新闻：</h3>
		 			<hr style="border: 1px color: #F5F6F7;"/>
		 			<div class="top-grids">
		 			<s:iterator value="#newsList">
					 		<div class="top-grid1 last-topgrid" style="margin-bottom: 20px;">
					 		  <span style="font-size: 20px; font-weight: bold;"><s:property value="newsTitle"/></span>
					 		  <h3><a href="news1_toOne.action?newsId=${newsId }"><img alt="" src="back/upload/${newsImage }" width="320" height="180" title="${newsTitle }"></a></h3>
					 		  <p><s:date name="newsTime" format="yyyy-MM-dd hh:mm"/></p>
					 			<a class="button" href="news1_toOne.action?newsId=${newsId }">Read More</a>
			 		        </div>
			 		 </s:iterator>
			 		 
					 		<div class="clear"> </div>
				 	</div>
						<div class="blog-bottom-paination" style="text-align: center;">
						<ul>
						<s:iterator begin="1" end="#pageCount" var="n">
						<s:if test="pageNum==#n">
							<li class="active"><a href="#"><s:property/></a></li>
						</s:if>	
						<s:else>
							<li><a href="news1_doSearchAll.action?pageNum=<s:property/>"><s:property/></a></li>
						</s:else>	
						</s:iterator>	
						<s:if test="pageNum<#pageCount">
						
							<li><a href="news1_doSearchAll?pageNum=<s:property value="pageNum+1"/>">Next</a></li>
						</s:if>
						</ul>
					</div>
						 <div class="clear"> </div>
					</div>
				</div>
				<div class="p-sections">
		 		<div class="wrap">
			 		<%@include file="foot.jsp" %>
		 		</div>
		 	</div>
			</div>
		 	<!--End-services---->
		 	<!---start-articals------>
		 	
		 	<!---start-articals------>
		 </div>
		 <!---End-content----><br /><br />
		 <!---start-copy-right----->
		 <div class="copy-right">
				<div class="top-to-page">
						<a href="#top" class="scroll"> </a>
						<div class="clear"> </div>
					</div>
					<p style="font-size: 14px;">@本网站由 <a href="#">GOOD BOY</a> 团队制作并拥有最终解释权</p>
			</div>
		 <!---End-copy-right---->
		<!----End-wrap---->
	</div>
	</body>
</html>

