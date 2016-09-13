<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'iframperson.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   
 <!---start-content---->
	<div class="content" style="margin-left:80px">
		<!---start-blog-page---->
		<div class="blog">
			<div class="wrap">
				<div class="single-page-artical">
					<div class="artical-content">
						<h3>${blogTitle }</h3>
						<p>${blogText }</p>
					</div>
					<div class="artical-links">
						<ul>
							<li><a href="#"><img src="images/blog-icon1.png"
									title="date"><span>${blogTime }</span>
							</a>
							</li>
							<li><a href="#"><img src="images/blog-icon2.png"
									title="Admin"><span>${user.uname }</span>
							</a>
							</li>
							<li><a href="#"><img src="images/blog-icon3.png"
									title="Comments"><span>No comments</span>
							</a>
							</li>
							<li><a href="#"><img src="images/blog-icon4.png"
									title="Lables"><span>View posts</span>
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
						
					</div>
 </div></div></div></div>

  </body>
</html>
