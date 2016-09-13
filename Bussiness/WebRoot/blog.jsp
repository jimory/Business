<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
						<li><a href="news1_doSearchAll.action">新闻</a></li>
						<li>
						<%if(session.getAttribute("loginedUser")!=null){%>
						<a href="blog_person.action?buid=${loginedUser.uid }">个人中心</a>
						<%}else{ %>
						<a href="login.jsp">个人中心</a>
						<%} %>
						</li>
						
						<li class="active"><a href="blog_list.action">博客</a></li>
						<li><a href="contact.jsp">联系我们</a></li>
						<div class="clear"> </div>
					</ul>
				</div>
				<div class="clear"> </div>
			</div>
			<!---End-header---->
		</div>
		 <!---start-content---->
		 <div class="content" style="margin-left: 80px;">
		 	<!---start-blog-page---->
		 	<div class="blog">
		 		<div class="wrap">
		 		<h4>Blog</h4>
		 		<s:iterator value="#blogList">
				<div class="blog-leftgrids">
								<div class="image group">
									<div class="grid images_3_of_1">
										<a href="blog_detail.action?blogId=${blogId }"><img src="${blogImage }" width="382px" height="220px"></a>
										<span><img src="images/lable.png" title="lable"></span>
									</div>
										<div class="grid span_2_of_3">
											<h3><a href="#">${blogTitle }</a></h3>
											<p>${blogSpan }</p>
											<div class="button1"><span><a href="blog_detail.action?blogId=${blogId }">Read More</a></span></div>
									   </div>
		  						 </div>
		  						 <div class="artical-links">
		  						 	<ul>
		  						 		<li><a href="#"><img src="images/blog-icon1.png" title="date"><span><s:date name="blogTime" format="yyyy-MM-dd"/></span></a></li>
		  						 		<li><a href="#"><img src="images/blog-icon2.png" title="Admin"><span>${user.uname }</span></a></li>
		  						 		<li><a href="#"><img src="images/blog-icon5.png" title="permalink"><span>permalink</span></a></li>
		  						 	</ul>
		  						 </div>
				</div>
				</s:iterator>
				
				<div class="blog-bottom-paination">
						<ul>
						<s:iterator begin="1" end="#pageCount" var="n">
						<s:if test="pageNum==#n">
							<li class="active"><a href="#"><s:property/></a></li>
						</s:if>	
						<s:else>
							<li><a href="blog_list.action?pageNum=<s:property/>"><s:property/></a></li>
						</s:else>	
						</s:iterator>	
						<s:if test="pageNum<#pageCount">
						
							<li><a href="blog_list.action?pageNum=<s:property value="pageNum+1"/>">Next</a></li>
						</s:if>
						</ul>
					</div>
				
		 	</div>
		 	<!---End-blog-page---->
		 	<!---start-articals------>
		 	<div class="p-sections">
		 		<div class="wrap">
			 		<%@include file="foot.jsp" %>
		 		</div>
		 	</div>
		 	<!---start-articals------>
		 </div>
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
