<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="o"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Businex Website Template | Blog</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

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
		<div class="top-links" id="top"></div>
	</div>
	<div class="header">
		<div class="wrap">
			<div class="logo">
				<a href="index.html"><img src="images/logo.png" title="logo" />
				</a>
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
			<div class="clear"></div>
		</div>
		<!---End-header---->
	</div>
	<!---start-content---->
	<div class="content" style="margin-left: 120px;">
		<!---start-blog-page---->
		<div class="blog">
			<div class="wrap">
				<div class="single-page-artical">
					<div class="artical-content">
						<h3>${blogTitle }</h3>
						<img src="${blogImage }" title="banner1" width="1400px"
							height="500px">
						<p>${blogText }</p>
					</div>
					<div class="artical-links">
						<ul>
							<li><a href="#"><img src="images/blog-icon1.png"
									title="date"><span><s:date name="blogTime" format="yyyy-MM-dd"/></span>
							</a>
							</li>
							<li><a href="#"><img src="images/blog-icon2.png"
									title="Admin"><span>${user.uname }</span>
							</a>
							</li>
							<li><a href="blog_dd.action?couid=${loginedUser.uid }&cobid=${blogId}"><img src="images/blog-icon4.png"
									title="Lables"><span>收藏</span>
							</a>
							</li>
							<li><a href="#"><img src="images/blog-icon5.png"
									title="permalink"><span>permalink</span>
							</a>
							</li>
						</ul>
					</div>
					<div class="share-artical">
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<h4>
							<p style="font-weight:bold;">分享博客</p>
						</h4>
						<p>&nbsp;</p>
						<ul>
							<li><a href="#"><img src="images/facebook.png"
									title="facebook">Facebook</a>
							</li>
							<li><a href="#"><img src="images/twiter.png"
									title="Twitter">Twiiter</a>
							</li>
							<li><a href="#"><img src="images/in.png"
									title="linked-in">Linked-in</a>
							</li>
							<li><a href="#"><img src="images/google+.png"
									title="google+">Google+</a>
							</li>
							<li><a href="#"><img src="images/pintrest.png"
									title="pintrest">Pintrest</a>
							</li>
							<li><a href="#"><img src="images/rss.png" title="rss">Rss</a>
							</li>
						</ul>
					</div>

					<!--  评论部分 -->
					<div style="width:70%; float:left;">
					
						<s:iterator value="#commentList">
						<div class="artical-links" style="margin-top:40px; height:70px;">
							<ul style="margin:0px;">

								<li><img src="upload/${user.uimage }" height="50px"
									width="50px">
									<span style="font-size:14px; color:#888;">${cmmessage }</span>
								</li>
								<li>
								</li>
							</ul>
						</div>
						</s:iterator>
						
						<div class="blog-bottom-paination">
						<ul>
						<s:iterator begin="1" end="#pageCount" var="n">
						<s:if test="pageNum==#n">
							<li class="active"><a href="#"><s:property/></a></li>
						</s:if>	
						<s:else>
							<li><a href="blog_detail.action?blogId=${blogId }&pageNum=<s:property/>"><s:property/></a></li>
						</s:else>	
						</s:iterator>	
						<s:if test="pageNum<#pageCount">
							<li><a href="blog_detail.action?blogId=${blogId }&pageNum=<s:property value="pageNum+1"/>">Next</a></li>
						</s:if>
						</ul>
					</div>
					

					</div>
					<div style="float:right">
						<img src="images/ba7.jpg" width="300px" height="300px">
					</div>
					<!-- 评论部分 -->
					<div class="artical-commentbox" style="clear:left">
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<h4>
							<span style="font-weight:bold;">评论博客</span>
						</h4>
						<div class="table-form">
							<form action="comment1_add.action?buid=${loginedUser.uid }" method="post">
								<input type="hidden" name="cmbid" value="${blogId }">
								<textarea value="Message:" name="cmmessage"
									onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = 'Message';}">Message:</textarea><br>
								<span><input type="submit" value="提交"></span>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!---End-blog-page---->
	</div>
	<div class="clear"></div>
	<!---End-content---->
	<br />
	<br />
	<!---start-copy-right----->
	<div class="copy-right">
		<div class="top-to-page">
			<a href="#top" class="scroll"> </a>
			<div class="clear"></div>
		</div>
		<p style="font-size: 14px;">@本网站由 <a href="#">GOOD BOY</a> 团队制作并拥有最终解释权</p>
	</div>
	<!---End-copy-right---->
	<!----End-wrap---->
	</div>
	
</body>
</html>
<o:if test="${param.admsg==1 }">
	<script>alert("收藏成功！")</script>
</o:if>
<o:if test="${param.admsg==0 }">
	<script>alert("收藏取消！")</script>
</o:if>

