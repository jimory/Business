<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Businex Website Template | About </title>
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
		
	<meta charset="utf-8" />

	<title>Metronic | Pages - Timeline</title>

	<meta content="width=device-width, initial-scale=1.0" name="viewport" />

	<meta content="" name="description" />

	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->

	<link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style-metro.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/style-responsive.css" rel="stylesheet" type="text/css"/>

	<link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>

	<link href="media/css/uniform.default.css" rel="stylesheet" type="text/css"/>

	<!-- END GLOBAL MANDATORY STYLES -->

	<!-- BEGIN PAGE LEVEL STYLES -->

	<link href="media/css/timeline.css" rel="stylesheet" type="text/css"/>

	<!-- END PAGE LEVEL STYLES -->

	<link rel="shortcut icon" href="media/image/favicon.ico" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><style type="text/css">
<!--
body {
	margin-right: 1000px;
	
}
-->
</style>
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
		<li class="active"><a href="about.jsp">关于我们</a></li>
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
		 <!---start-content---->
		 <div class="content" align="center">
			<!---start-about---->
			<div class="about">
				<div class="wrap">
				
				
				
				
				
				
				
				
				
					<div class="about-leftn">
					
					
					<div class="page-contentx" style="width:65%; float:left;">

			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<div id="portlet-config" class="modal hide">

				<div class="modal-header">

					<button data-dismiss="modal" class="close" type="button"></button>

					<h3>portlet Settings</h3>

				</div>

				<div class="modal-body">

					<p>Here will be a configuration form</p>

				</div>

			</div>

			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<!-- BEGIN PAGE CONTAINER-->

			<div class="container-fluidx">

				<!-- BEGIN PAGE HEADER-->

				

				<!-- END PAGE HEADER-->

				<!-- BEGIN PAGE CONTENT-->

				<div class="row-fluid" >

					<div class="span12">

						<ul class="timeline">

							<li class="timeline-yellow">

								<div class="timeline-time">

									<span class="date"></span>

									<span class="time" style="font-size: 25px; font-weight: bold;">商务定义</span>

								</div>

								<div class="timeline-icon"><i class="icon-trophy"></i></div>

								<div class="timeline-body">

									<h2>电子商务的定义</h2>

									<div class="timeline-content">

										<img class="timeline-img pull-left" src="media/image/2.jpg" alt="">

										从贸易活动的角度分析，电子商务可以在多个环节实现，由此也可以将电子商务分为两个层次，较低层次的电子商务如电子商情、电子贸易、电子合同等；最完整的也是最高级的电子商务应该是利用INTENET网络能够进行全部的贸易活动，即在网上将信息流、商流、资金流和部分的物流完整地实现，也就是说，你可以从寻找客户开始，一直到洽谈、订货、在线付（收）款、开据电子发票以至到电子报关、电子纳税等通过INTERNET一气呵成。
									</div>

									<div class="timeline-footer">

										<a href="#" class="nav-link pull-right">

										Read more <i class="m-icon-swapright m-icon-white"></i>                              

										</a>  

									</div>

								</div>

							</li>

							<li class="timeline-blue">

								<div class="timeline-time">

									<span class="date"></span>

									<span class="time" style="font-size: 25px; font-weight: bold;">商务实质</span>

								</div>

								<div class="timeline-icon"><i class="icon-facetime-video"></i></div>

								<div class="timeline-body">

									<h2>商务的实质是什么？</h2>

									<div class="timeline-content">

										<img class="timeline-img pull-right" src="media/image/1.jpg" alt="">

										这个资源计划系统是企业开展业务的基础平台，用户的订单在经过公司商务部门的过滤之后进入这个系统，，用户的满意度一定会因此而改善。而企业所有的采购、生产、配送系统也都不是机械的、被动的工作，缺货了再去买，看成品库去生产，备齐了就（才）去送，而是完全依系统计划指令、依信息行事，有条不紊，这样不仅是用户满意的保障，
									</div>

									<div class="timeline-footer">

										<a href="#" class="nav-link">

										Read more <i class="m-icon-swapright m-icon-white"></i>                              

										</a>                         

									</div>

								</div>

							</li>

							<li class="timeline-green">

								<div class="timeline-time">

									<span class="date"></span>

									<span class="time" style="font-size: 25px; font-weight: bold;">商务服务</span>

								</div>

								<div class="timeline-icon"><i class="icon-comments"></i></div>

								<div class="timeline-body">

									<h2>商务服务方向</h2>

									<div class="timeline-content">

										<img class="timeline-img pull-left" src="media/image/3.jpg" alt="">

										什么是电子商务服务业？如果将“电子商务应用”与“电子商务服务”比作市场经济中的需求与供给，那么前者是指一个个具体的机构和个人如何运用电子商务方式实现商务目标——如采购、销售或获取商务信息等，后者是指如何提供一定的服务以满足这些需求——如域名注册、虚拟主机、商务信息、认证和支付等服务。所有提供电子商务服务的企业的集合就是电子商务服务业，或称电子商务服务产业、电子商务服务行业。
									</div>

									<div class="timeline-footer">

										<a href="#" class="nav-link">

										Read more <i class="m-icon-swapright m-icon-white"></i>                              

										</a>                        

									</div>

								</div>

							</li>

							<li class="timeline-purple">

								<div class="timeline-time">

									<span class="date"></span>

									<span class="time" style="font-size: 25px; font-weight: bold;">商务礼节</span>

								</div>

								<div class="timeline-icon"><i class="icon-music"></i></div>

								<div class="timeline-body">

									<h2>怎么做好商务礼节呢？</h2>

									<div class="timeline-content">

										<div class="scroller" data-height="175px" data-always-visible="1" data-rail-visible1="1">

											<p>

												<img class="timeline-img pull-right" src="media/image/4.jpg" alt="">
商务礼仪是商务人员与客户交往的行为规范。敬人的完整行为。由于地区和历史的原因，各地区、各民族对于礼仪的认识各有差异。
在长期的国际往来中，逐步形成了外事礼仪规范，也叫涉外礼仪。
商务口才



											<p>

												<img class="timeline-img pull-left" src="media/image/6.jpg" alt="">                                    
（1）倾泻式
这是最强烈的感情和思想的交流方式，它以对听众最大信赖为基础，将自己的欣喜、烦恼、怨恨以及打算、宏图统统告诉对方，让他帮助、评判和选择。
（2）交流式
抓住对方谈话时的间隙，恰如其分地表述你的看法，促进思想沟通。注意不要粗暴地打断对方的话或不负责任地妄加评论。

											</p>

											<p>

											</p>

										</div>

									</div>

									<div class="timeline-footer">

										<a href="#" class="btn blue">

										Read more <i class="m-icon-swapright m-icon-white"></i>                              

										</a>                        

									</div>

								</div>

							</li>

							<li class="timeline-red">

								<div class="timeline-time">

									<span class="date"></span>

									<span class="time" style="font-size: 25px; font-weight: bold;">商务核心</span>

								</div>

								<div class="timeline-icon"><i class="icon-rss"></i></div>

								<div class="timeline-body">

									<h2>什么是商务核心？</h2>

									<div class="timeline-content">

										<img class="timeline-img pull-left" src="media/image/5.jpg" alt="">

										纵观互联网发展，商务活动一直是驱动互联网发展的强大力量。1995年，互联网上的商务信息量首次超过科教业务信息量，这是互联网此后形成爆炸性发展的标志，也是电子商务产生并从此大规模发展的标志。过去是这样，那么未来呢？互联网的未来在于电子商务，电子商务的未来在于电子商务服务业，而电子商务服务业的核心是电子商务服务平台。以电子商务平台——特别是面向中小企业的电子商务服务平台为核心的电子商务服务业将成为促进电子商务应用、创新和发展的重要力量。
									</div>

									<div class="timeline-footer">

										<a href="#" class="btn green pull-right">


										Read more <i class="m-icon-swapright m-icon-white"></i>                              

										</a>     

									</div>

								</div>

							</li>

							<li class="timeline-grey">

								<div class="timeline-time">

									<span class="date"></span>

									<span class="time">商务分类</span>

								</div>

								<div class="timeline-icon"><i class="icon-time"></i></div>

								<div class="timeline-body">

									<h2>什么分类</h2>

									<div class="timeline-content">

										纵观互联网发展，商务活动一直是驱动互联网发展的强大力量。1995年，互联网上的商务信息量首次超过科教业务信息量，这是互联网此后形成爆炸性发展的标志，也是电子商务产生并从此大规模发展的标志。过去是这样，那么未来呢？互联网的未来在于电子商务，电子商务的未来在于电子商务服务业，而电子商务服务业的核心是电子商务服务平台。以电子商务平台——特别是面向中小企业的电子商务服务平台为核心的电子商务服务业将成为促进电子商务应用、创新和发展的重要力量。
									</div>

									<div class="timeline-footer">

										<a href="#" class="nav-link pull-right">

										Read more <i class="m-icon-swapright m-icon-white"></i>                              

										</a>     

									</div>

								</div>

							</li>

							<li class="timeline-blue">

								<div class="timeline-time">

									<span class="date"></span>

									<span class="time">商务历史</span>

								</div>

								<div class="timeline-icon"><i class="icon-bar-chart"></i></div>

								<div class="timeline-body">

									<h2>商务怎么发展？</h2>

									<div class="timeline-content">

										<img class="timeline-img pull-left" src="media/image/2.jpg" alt="">

										纵观互联网发展，商务活动一直是驱动互联网发展的强大力量。1995年，互联网上的商务信息量首次超过科教业务信息量，这是互联网此后形成爆炸性发展的标志，也是电子商务产生并从此大规模发展的标志。过去是这样，那么未来呢？互联网的未来在于电子商务，电子商务的未来在于电子商务服务业，而电子商务服务业的核心是电子商务服务平台。以电子商务平台——特别是面向中小企业的电子商务服务平台为核心的电子商务服务业将成为促进电子商务应用、创新和发展的重要力量。
									</div>

									<div class="timeline-footer">

										<a href="#" class="nav-link">

										Read more <i class="m-icon-swapright m-icon-white"></i>                              

										</a>     

									</div>

								</div>

							</li>

						</ul>

					</div>

				</div>

				<!-- END PAGE CONTENT-->

			</div>

			<!-- END PAGE CONTAINER--> 

	  </div>
					
					
					
					
					
					
					
					
					
					</div>	
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					<div class="about-right">
						<div class="about-sidebar" style="float:right;">
							<h3>我们的服务</h3>
							 <ul>
							  	<li><a href="#">为商务人士打造美好的世界</a></li>
							  	<li><a href="#">让思路清晰的做生意</a></li>
							  	<li><a href="#">成为人们眼中的成功者</a></li>
							  	<li><a href="#">改造商务形象</a></li>
							  	<li><a href="#">量身定做的商务知识</a></li>
					 		 </ul>
					 		 <h3>月份</h3>
					 		 <ul>
					 		 	<li><a href="#">JAN, 2013</a></li>
					 		 	<li><a href="#">FEB, 2013</a></li>
					 		 	<li><a href="#">MAR, 2013</a></li>
					 		 	<li><a href="#">APRIL, 2013</a></li>
					 		 </ul>
						</div>
					</div>
					<div class="clear"> </div>
				</div>
			</div>
			<!---End-about---->		 	
		 	<!---start-articals------>
		 	<div class="p-sections">
		 	</div>
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
	
	
	
	
	
		<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      

	<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>  

	<![endif]-->   

	<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>  

	<script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.uniform.min.js" type="text/javascript" ></script>

<!-- END CORE PLUGINS -->

	<script src="media/js/app.js"></script>      

	<script>

		jQuery(document).ready(function() {       

		   // initiate layout and plugins

		   App.init();

		});

	</script>

<!-- END JAVASCRIPTS -->

<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script>
	</body>
</html>

