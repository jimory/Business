<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Businex Website Template | Contact </title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		 <link href="css/slider.css" rel="stylesheet" type="text/css"  media="all" />
		<script src="js/jquery.min.js"></script>
		  <script type="text/javascript" src="js/jquery.easing.1.3.js"></script> 
		    <script type="text/javascript" src="js/camera.min.js"></script>
				<script type="text/javascript">
			   jQuery(function(){
				jQuery('#camera_wrap_1').camera({
					height: '500px',
					pagination: false,
				});
			});
		  </script>
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
						<li class="active"><a href="index.jsp">首页</a></li>
						<li><a href="about.jsp">关于我们</a></li>
						<li><a href="news1_doSearchAll.action">新闻</a></li>
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
		 <!--start-image-slider---->
			<div class="slider">					     
					<div class="camera_wrap camera_azure_skin" id="camera_wrap_1">									           
						<div data-src="images/slider3.jpg">  </div> 
						<div data-src="images/slider2.jpg">  </div>
						<div data-src="images/slider1.jpg">  </div>
						<div data-src="images/slider2.jpg">  </div>
					</div>
					<div class="clear"> </div>					       
			</div>						
		 <!--End-image-slider---->
         <div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="ÍøÕ¾Ä£°å">ÍøÕ¾Ä£°å</a></div>
		 <!---start-content---->
		 <div class="content" >
		 	<div class="top-grids" style="margin-left:80px">
		 		<div class="wrap">
			 		<div class="top-grid">
			 			<a href="#"><img src="images/icon1.png" title="icon-name" /></a>
			 			<h3 style="font-size: 26px; font-weight: bold;">商务合作</h3>
			 			<p>为您量身打造商务是，让您轻松应对在商订单的务上的问题，帮您解决商务上的一切问题，让您的事业登上顶峰。</p>
			 		</div>
			 		<div class="top-grid">
			 			<a href="#"><img src="images/icon2.png" title="icon-name" /></a>
			 			<h3 style="font-size: 26px; font-weight: bold;">数据统计</h3>
			 			<p>为您量身打造商务是，让您轻松应对在商订单的务上的问题，帮您解决商务上的一切问题，让您的事业登上顶峰，查看实时数据。</p>
			 		</div>
			 		<div class="top-grid last-topgrid">
			 			<a href="#"><img src="images/icon4.png" title="icon-name" /></a>
			 			<h3 style="font-size: 26px; font-weight: bold;">时间管理</h3>
			 			<p>为您量身打造商务是，让您轻松应对在商订单的务上的问题，帮您解决商务上的一切问题，让您的事业登上顶峰。帮您完美把我时机 </p>
			 		</div>
			 		<div class="clear"> </div>
		 		</div>
		 	</div>
		 	<!---start-mid-grids---->
		 	<div class="mid-grids"  style="background-color: #fff" >
		 	      <!-- <div align="right">
		 	      <a href="">
		 	      <img src="images/xs57_03.gif" alt="" style="margin: 0 0 12px 0 ;"></a>
		 	      <img src="images/xs60_03.gif" alt="" style="margin: 0 90px 12px 0 ;"></div> -->
		 		<div class="wrap">
		 		
		 		<%-- <s:iterator value="#casesList"> --%>
			 		<div class="mid-grid" id="last" style="background-color: #fff" >
			 		    <iframe src="CaseAction_doSearch.action" frameborder="0" height="550px" width="1269px" style="margin-left:80px;background-color: #fff">
                  </iframe>
			 			<%-- <a href="CaseAction_toOne.action?caseId=${caseId }"><img alt="a" src="back/upload/${caseImage}" 
			 			title="image-name" width="100px" height="200px" /></a>
			 			<h3><a href="CaseAction_toOne.action?caseId=${caseId }"><s:property value="caseTitle"/></a> </h3>
			 			<p><a href="CaseAction_toOne.action?caseId=${caseId }"><s:property value="caseDetail"/></a></p> --%>
			 		</div>
			 	<%-- </s:iterator>     --%>	   		
		 		<div class="clear"> </div>
		 		</div>
		 	</div>
		 	<!---End-mid-grids---->
		 	
		 	<!---start-box----->
		 	<div class="box" style="margin-left:80px">
		 		<div class="wrap">
					<div class="gallery">
						<h3>Gallery</h3>
						<ul>
							<li><a href="images/slider1.jpg"><img src="images/slider1.jpg" alt=""></a><a href="#"></a></li>
							<li><a href="images/slider2.jpg"><img src="images/slider2.jpg" alt=""></a><a href="#"></a></li>
							<li><a href="images/slider3.jpg"><img src="images/slider3.jpg" alt=""></a><a href="#"></a></li>
							<li><a href="images/slider4.jpg"><img src="images/slider4.jpg" alt=""></a><a href="#"></a></li>
							<li><a href="images/slider1.jpg"><img src="images/slider1.jpg" alt=""></a><a href="#"></a></li>
							<li><a href="images/slider2.jpg"><img src="images/slider2.jpg" alt=""></a><a href="#"></a></li>
							<li><a href="images/slider3.jpg"><img src="images/slider3.jpg" alt=""></a><a href="#"></a></li>
							<li><a href="images/slider4.jpg"><img src="images/slider4.jpg" alt=""></a><a href="#"></a></li>
						</ul>
					</div>
					<script type="text/javascript" src="js/jquery.lightbox.js"></script>
				    <link rel="stylesheet" type="text/css" href="css/lightbox.css" media="screen">
				  	<script type="text/javascript">
				    $(function() {
				        $('.gallery a').lightBox();
				    });
				    </script>
					<div class="terminals">
						<h3>Testimonials</h3>
						<p>sed do eiusmod tempor incididunt Lorem ipsum dolor sit amet,Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,consectetur adipisicing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
						<span><a href="#">- Lorem ipsum</a> USA.</span>
					</div>
					<div class="clear"> </div>
				</div>
				</div>
		 	<!---end-box---->
		 	<!---start-articals------>
		 	<!---start-articals------>
		 </div>
		 <!---End-content---->
		 <!---start-footer---->
		 <div class="footer" >
		 	<div class="wrap" style="margin-left:80px">
		 		<div class="footer-grid">
		 			<h3>公司介绍</h3>
		 			<ul>
			 			<li><a href="#">关于我们</a></li>
			 			<li><a href="#">联系方式</a></li>
			 			<li><a href="#">服务类型</a></li>
			 			<li><a href="#">合作公司</a></li>
			 			<li><a href="#">联系方式</a></li>
			 		</ul>
		 		</div>
		 		<div class="footer-grid">
		 			<h3>战略方向</h3>
		 			<ul>
			 			<li><a href="#">我们做什么</a></li>
			 			<li><a href="#">新闻</a></li>
			 			<li><a href="#">IT世界</a></li>
			 			<li><a href="#">支持方向</a></li>
			 			<li><a href="#">我们做什么</a></li>
			 		</ul>
		 		</div>
		 		<div class="footer-grid">
		 			<h3>合作客户</h3>
		 			<ul>
			 			<li><a href="#">新浪博客</a></li>
			 			<li><a href="#">搜狐新闻</a></li>
			 			<li><a href="#">CSDN论坛</a></li>
			 			<li><a href="#">腾讯视频</a></li>
			 			<li><a href="#">网易新网</a></li>
			 		</ul>
		 		</div>
		 		<div class="footer-grid">
		 			<h3>成功案例</h3>
		 			<ul>
			 			<li><a href="#">中软国际</a></li>
			 			<li><a href="#">百脑汇</a></li>
			 			<li><a href="#">天津就业网</a></li>
			 			<li><a href="#">商务历史</a></li>
			 			<li><a href="#">商务前景</a></li>
			 		</ul>
		 		</div>
		 		<div class="clear"> </div>
		 	</div>
		 </div>
		 <!---End-footer---->
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

