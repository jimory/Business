<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<style type="text/css">
.artical-na{
	width:60%;
	float:left;
}
.artical-na h3{
	font: 400 24px/28px "HelveticaNeue", "Helvetica Neue", Helvetica, Arial, sans-serif;
	color: #626262;
	
	text-transform: none;
	padding: 15px 0px;
	text-transform: uppercase;
}
.artical-na h4{
	font: 400 24px/28px "HelveticaNeue", "Helvetica Neue", Helvetica, Arial, sans-serif;
	color: #626262;
	text-align: left;
	text-transform: none;
	padding: 15px 0px;
	text-transform: uppercase;
}
.artical-na p{
	font: normal 16px/23px Arial,Helvetica,sans-serif;
	color: #9b9b9b;
	padding: 13px 0px;
}
.other{
    float:right;
    width:30%;
    hight:80%;
    padding-top: 2.0em;
    margin-right: 40px;
}
.other h3{
	font: 400 30px/28px "HelveticaNeue", "Helvetica Neue", Helvetica, Arial, sans-serif;
	color: #626262;
	text-align: left;
	text-transform: none;
	padding: 17px 0px 28px 0px;
}

/*---start-n-sections----*/
.n-sections h3{
	color: #313232;
	font-size: 1.5em;
	font-family: "HelveticaNeue", "Helvetica Neue", Helvetica, Arial, sans-serif;
	padding-bottom: 0.5em;
	border-bottom: 1px solid #EEE;
	margin-bottom: 0.5em;
}
.n-sections ul{
	float:left;
	width: 100%;
	margin-left:30px;
	margin-bottom: 0.8em;
	
}
.n-sections ul li:before{
	content: url(images/marker.png);
	padding-right: 12px;
	margin-bottom: 3px;
	display: inline-block;
}
.n-sections ul li a{
	font-family: Arial, Helvetica, sans-serif;
	font-size: 0.9em;
	color: #D63B37;
}
.n-sections ul li a:hover{
	color:#313232;
}
.n-sections {
	padding: 1.5em 0;
}
</style>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Businex Website Template | Blog </title>
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
		<div class="">
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
		 <div class="content">
		 	<!---start-blog-page---->
		 	<div class="blog">
		 		<div class="wrap">
		 		
		 		<div class="single-page-artical"  style="margin-left: 120px;">
								<div class="artical-na">
									<h3>${newsTitle}<!-- <s:property value="newsTitle"/> --></h3>
									<img alt="" src="back/upload/${newsImage }" width="750" height="300" title="banner1">
									<h5><s:date name="newsTime" format="yyyy-MM-dd hh:mm"/></h5>
									<p><s:property value="newsDetails"/></p>
								    </div>
								    
		  						 
		  						<div class="other">
		  						 	<h4>关于“${newsTitle}”：</h4>
		  						 	<hr/>
		  				<div class="n-sections">
		  				   <s:iterator value="#newsList">		 	
		  				  <ul>
			 			<li><a href="news1_toOne.action?newsId=${newsId }"><s:property value="newsTitle"/></a></li>
			 		      </ul>
			 		      </s:iterator>
			 		    </div>
			 		    
		  						 	<div class="services-grids">
		  				      
		  				     <%--  <s:iterator value="#newsList">
		  				      
						   <div class="services-grid">
							      <a href="news1_toOne.action?newsId=${newsId }"><s:property value="newsTitle"/></a>
						    </div>
						
						</s:iterator> --%>
						
						</div>
						
						</div>
						
						<div style="float:right; width:100%;">
						<div class="share-artical">
		  						 	
		  						 	<ul>
		  						 		<li><a href="#"><img src="images/facebook.png" title="facebook">Facebook</a></li>
		  						 		<li><a href="#"><img src="images/twiter.png" title="Twitter">Twiiter</a></li>
		  						 		<li><a href="#"><img src="images/in.png" title="linked-in">Linked-in</a></li>
		  						 		<li><a href="#"><img src="images/google+.png" title="google+">Google+</a></li>
		  						 		<li><a href="#"><img src="images/pintrest.png" title="pintrest">Pintrest</a></li>
		  						 		<li><a href="#"><img src="images/rss.png" title="rss">Rss</a></li>
		  						 	</ul>
		  						 </div>
						
						 <div class="clear"> </div>
					  </div>
		  			</div>			
				
		 	</div>
		 	<!---End-blog-page---->
		 	</div>
		 	<div class="clear"> </div>
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

