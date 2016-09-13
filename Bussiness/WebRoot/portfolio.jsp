<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" />

<title>个人中心</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<meta content="" name="description" />

<meta content="" name="author" />

<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.min.js"></script>
<script src="ckeditor/ckeditor.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
	</script>


<link href="media/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/bootstrap-responsive.min.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/style-metro.css" rel="stylesheet" type="text/css" />

<link href="media/css/style.css" rel="stylesheet" type="text/css" />

<link href="media/css/style-responsive.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/default.css" rel="stylesheet" type="text/css"
	id="style_color" />

<link href="media/css/uniform.default.css" rel="stylesheet"
	type="text/css" />

<!-- END GLOBAL MANDATORY STYLES -->

<!-- BEGIN PAGE LEVEL STYLES -->

<link href="media/css/bootstrap-fileupload.css" rel="stylesheet"
	type="text/css" />

<link href="media/css/chosen.css" rel="stylesheet" type="text/css" />

<link href="media/css/profile.css" rel="stylesheet" type="text/css" />

<!-- END PAGE LEVEL STYLES -->

<link rel="shortcut icon" href="media/image/favicon.ico" />
<script type="text/javascript">
    				function toEdit(uid){
    					window.open("do_toEdit.action?uid="+uid,"_self");
    				}
    				function duang(blogId) 
    				{ 
    				var ui = document.getElementById("bbs"); 
    				ui.style.display="block"; 
    				var ux = document.getElementById("bbx");
    				ux.style.display = "none";
    				window.open("blog_getBlogByTitle.action?blogId="+blogId,"_self");
    				/* bbs.location.href = "blog_getBlogByTitle.action?blogId="+blogId; */
    				
    				}
    				function duangduang()
    				{
    					var gg = document.getElementById("bbs"); 
        				gg.style.display="none"; 
        				var ll = document.getElementById("bbx");
        				ll.style.display = "block";
    				}
    </script>
    
</head>

<!-- END HEAD -->

<!-- BEGIN BODY -->

<body>
<style type="text/css">
       .img1{
       			height:30px;
       			width:30px;	
       }
  
</style>
	<div class="header" >
		<div class="wrap">
			<div class="logo">
				<a href="index.jsp"><img src="images/logo.png" title="logo" />
				</a>
			</div>
			<div class="top-nav">
				<ul>
		<li><a href="index.jsp">首页</a></li>
		<li><a href="about.jsp">关于我们</a></li>
		<li><a href="news1_doSearchAll.action">新闻</a></li>
		<li class="active">
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
			<div class="clear">
				
			</div>
			
		</div>
		<!---End-header---->
		<!-- BEGIN USER LOGIN DROPDOWN -->   
						<li class="dropdown user"  style="float:right;margin-top:-65px;list-style:none;margin-right:18px"><a href="#" class="dropdown-toggle" 
							data-toggle="dropdown" style="text-decoration:none"> <img alt=""
								src="upload/${uimage }" class="img1" /> <span class="username">
								<font color="#fff"><s:property value="uname" /></font></span> <i class="icon-angle-down"></i> </a>

							<ul class="dropdown-menu">

								<li><a href=""><i class="icon-user"></i>
										个人</a>
								</li>

								<li><a href="calendar.jsp"><i
										class="icon-calendar"></i>我的日历</a>
								</li>

								<li><a href="inbox.html"><i class="icon-envelope"></i>
										My Inbox(3)</a>
								</li>

								<li><a href="#"><i class="icon-tasks"></i>我的任务</a>
								</li>

								<li class="divider"></li>

								<li><a href="lock.jsp"><i class="icon-lock"></i>锁屏</a>
								</li>

								<li><a href="user_doLogout.action?userLog=${loginedUser }"><i class="icon-key"></i>注销</a>
								</li>
							</ul></li>
						<!-- END USER LOGIN DROPDOWN -->
	</div>








	<div class="page-header-fixed">
		<!-- BEGIN HEADER -->

			<!-- ################################ -->

						
					<!-- ################################ -->

		<!-- END HEADER -->

		<!-- BEGIN CONTAINER -->

		<div class="page-container row-fluid" style="margin-top:0px;">

			<!-- BEGIN SIDEBAR -->

			<div class="page-sidebar nav-collapse collapse">

				<!-- BEGIN SIDEBAR MENU -->

				<ul class="page-sidebar-menu">

					<li>
						<!-- BEGIN SIDEBAR TOGGLER BUTTON -->

						<div class="sidebar-toggler hidden-phone"></div> <!-- BEGIN SIDEBAR TOGGLER BUTTON -->

					</li>

					<li>
						<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->

						<form class="sidebar-search">

							<div class="input-box">

								<a href="javascript:;" class="remove"></a> <input type="text"
									placeholder="Search..." /> <input name="button" type="button"
									class="submit" value=" " />
							</div>

						</form> <!-- END RESPONSIVE QUICK SEARCH FORM --></li>

					<li class="start ">
						<a href="#" onclick="duangduang()"> 
							<i class="icon-home"></i> <span class="title">首页</span> 
						</a>
					</li>
				 <s:iterator value="#blogList">
						<li class="">
							<!-- <a href="javascript:;"> -->
							<a href="" target="act" onclick="duang(${blogId})" style="text-decoration: none">
								 <i class="icon-file-text"></i><span class="arrow ">${blogTitle }</span>
							<!-- </a> -->
						</a> 
						

							<!-- <ul class="sub-menu">

								<li><a href="layout_horizontal_sidebar_menu.html"> 综述</a>

								</li>

								<li><a href="layout_horizontal_menu1.html"> 个人信息</a></li>

								<li><a href="layout_horizontal_menu2.html"> 帐户</a></li>

							</ul> --></li>
				 </s:iterator>
			




				</ul>

				<!-- END SIDEBAR MENU -->

			</div>

			<!-- END SIDEBAR -->

			<!-- BEGIN PAGE -->
<!-- -#########################33 -->
 <%-- <iframe src="www.baidu.com" name="act" align="right" id="bbs" style="display: none;width:1084px;height:520px" >
 <!---start-content---->
	<div class="content">
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
 
 </iframe> --%>
 
<iframe src="iframperson.jsp" name="act" align="center" id="bbs"  style="display: none;width:1084px;height:520px" >

</iframe>

<div id="bbx" >
			<div class="page-content">

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
				
   
				<div class="container-fluid">

					<!-- BEGIN PAGE HEADER-->

					<div class="row-fluid">

						<div class="span12">

							

							<!-- BEGIN PAGE TITLE & BREADCRUMB-->

							

							<ul class="breadcrumb">

								<li><i class="zoom-icon"></i> <a href="index.html">首页</a> <i
									class="icon-angle-right"></i></li>

								<li><a href="#">成员</a> <i class="icon-angle-right"></i></li>

								<li><a href="#">个人信息</a>
								</li>

							</ul>

							<!-- END PAGE TITLE & BREADCRUMB-->

						</div>

					</div>

					<!-- END PAGE HEADER-->

					<!-- BEGIN PAGE CONTENT-->
					

					<div class="row-fluid profile">

						<div class="span12">

							<!--BEGIN TABS-->

							<div class="tabbable tabbable-custom tabbable-full-width">

								<ul class="nav nav-tabs">

									<li class="active"><a href="#tab_1_1" data-toggle="tab">综述</a>
									</li>

									<li><a href="#tab_1_2" data-toggle="tab">个人信息</a>
									</li>

									<li><a href="#tab_1_3" data-toggle="tab">帐户</a>
									</li>

									<li><a href="#tab_1_4" data-toggle="tab">博客</a>
									</li>
								</ul>

								<div class="tab-content">

									<div class="tab-pane row-fluid active" id="tab_1_1">

										<ul class="unstyled profile-nav span3">
											<!-- 显示头像！！！！！！！！！！！！！！！！ -->
											<li class="img2" ><img src="upload/${uimage }" alt="" 	style="width:250px;height:160px" /> <a href="#"
												class="profile-edit">编辑</a>
											</li>

											<li><a href="#">项目</a>
											</li>

											<li><a href="#">Messages <span>3</span>
											</a>
											</li>

											<li><a href="#">Friends</a>
											</li>

											<li><a href="#">Settings</a>
											</li>
										</ul>

										<div class="span9">

											<div class="row-fluid">

												<div class="span8 profile-info">
													<!-- 数据库读取 -->
													<h1>
														<s:property value="uname" />
													</h1>

													<p>生活赋予我们一种巨大的和无限高贵的礼品，这就是青春：充满着力量，充满着期待志愿，充满着求知和斗争的志向，充满着希望信心和青春。 —— 奥斯特洛夫斯基</p>

													<p>
														<a href="#"><s:property value="uurl" />
														</a>
													</p>

													<ul class="unstyled inline">
														<li><i class="icon-map-marker"></i>
														<s:property value="ucountry" />
														</li>

														<li><i class="icon-calendar"></i>
														<s:date name="ubithday" format="yyyy-MM-dd" />
														</li>

														<li><i class="icon-briefcase"></i> <s:property
																value="ujob" />
														</li>

														<li><i class="icon-star"></i> Top Seller</li>

														<li><i class="icon-heart"></i> BASE Jumping</li>
													</ul>
												</div>

												<!--end span8-->

												<div class="span4">

													<div class="portlet sale-summary">

														<div class="portlet-title">

															<div class="caption">Sales Summary</div>

															<div class="tools">

																<a class="reload" href="javascript:;"></a>
															</div>
														</div>

														<ul class="unstyled">

															<li><span class="sale-info">TODAY SOLD <i
																	class="icon-img-up"></i>
															</span> <span class="sale-num">23</span></li>

															<li><span class="sale-info">WEEKLY SALES <i
																	class="icon-img-down"></i>
															</span> <span class="sale-num">87</span></li>

															<li><span class="sale-info">TOTAL SOLD</span> <span
																class="sale-num">2377</span></li>

															<li><span class="sale-info">EARNS</span> <span
																class="sale-num">$37.990</span></li>
														</ul>
													</div>
												</div>

												<!--end span4-->
											</div>

											<!--end row-fluid-->

											<div class="tabbable tabbable-custom tabbable-custom-profile">

												<ul class="nav nav-tabs">
												</ul>
											</div>
										</div>

										<!--end span9-->
									</div>

									<!--end tab-pane-->

									<div class="tab-pane profile-classic row-fluid" id="tab_1_2">

										<div class="span2">
											<img src="upload/${uimage }" alt="" style="width:158px;height:175px"/> <a href="#"
												class="profile-edit">edit</a>
										</div>

										<ul class="unstyled span10">

											<li><span>姓名:</span>
											<s:property value="uname" />
											</li>

											<li><span>国家:</span>
											<s:property value="ucountry" />
											</li>

											<li><span>生日:</span>
											<s:date name="ubithday" format="yyyy-MM-dd" />
											</li>

											<li><span>职业:</span> <s:property value="ujob" />
											</li>

											<li><span>Email:</span> <a href="#"><s:property
														value="uemail" />
											</a>
											</li>

											<li><span>兴趣:</span> Design, Web etc.</li>

											<li><span>个人主页:</span> <a href="#"><s:property
														value="uurl" />
											</a>
											</li>

											<li><span>手机号:</span> <s:property value="uphone" />
											</li>

											<li><span>About:</span> Anim pariatur cliche
												reprehenderit, enim eiusmod high life accusamus terry
												richardson ad squid. 3 wolf moon officia aute, non cupidatat
												skateboard dolor brunch. Food truck quinoa nesciunt laborum
												eiusmod pariatur cliche reprehenderit, enim eiusmod high
												life accusamus terry richardson ad squid. 3 wolf moon
												officia aute, non cupidatat skateboard dolor brunch. Food
												truck quinoa nesciunt laborum eiusmod.</li>
										</ul>
									</div>

									<!--tab_1_2-->

									<div class="tab-pane row-fluid profile-account" id="tab_1_3">

										<div class="row-fluid">

											<div class="span12">

												<div class="span3">

													<ul class="ver-inline-menu tabbable margin-bottom-10">

														<li class="active"><a data-toggle="tab"
															href="#tab_1-1"> <i class="icon-cog"></i> 个人信息 </a> <span
															class="after"></span></li>

														<li class=""><a data-toggle="tab" href="#tab_2-2"><i
																class="icon-picture"></i> Change Avatar</a>
														</li>

														<li class=""><a data-toggle="tab" href="#tab_3-3"><i
																class="icon-lock"></i> Change Password</a>
														</li>
													</ul>
												</div>

												<div class="span9">

													<div class="tab-content">

														<div id="tab_1-1" class="tab-pane active">

															<div style="height: auto;" id="accordion1-1"
																class="accordion collapse">
																<!-- 修改个人信息开始 -->
																<%-- <s:form action="" > --%>
																<form action="do_toEdit.action" method="post">
																	<label class="control-label">姓名</label> <input
																		type="hidden" name="uid"
																		value="<s:property value="uid"/>"> <input
																		type="text" name="uname" placeholder="请输入姓名"
																		class="m-wrap span8" /> <label class="control-label">手机号</label>

																	<input type="text" name="uphone" placeholder="请输入手机号"
																		class="m-wrap span8" /> <label class="control-label">兴趣</label>

																	<input type="text" name=""
																		placeholder="Design, Web etc." class="m-wrap span8" />

																	<label class="control-label">职业</label> <input
																		type="text" name="ujob" placeholder="Web Developer"
																		class="m-wrap span8" /> <label class="control-label">国家</label>

																	<div class="controls">

																		<input type="text" name="ucountry"
																			class="span8 m-wrap" style="margin: 0 auto;"
																			data-provide="typeahead" data-items="4"
																			data-source="[&quot;Alabama&quot;,&quot;Alaska&quot;,&quot;Arizona&quot;,&quot;Arkansas&quot;,&quot;US&quot;,&quot;Colorado&quot;,&quot;Connecticut&quot;,&quot;Delaware&quot;,&quot;Florida&quot;,&quot;Georgia&quot;,&quot;Hawaii&quot;,&quot;Idaho&quot;,&quot;Illinois&quot;,&quot;Indiana&quot;,&quot;Iowa&quot;,&quot;Kansas&quot;,&quot;Kentucky&quot;,&quot;Louisiana&quot;,&quot;Maine&quot;,&quot;Maryland&quot;,&quot;Massachusetts&quot;,&quot;Michigan&quot;,&quot;Minnesota&quot;,&quot;Mississippi&quot;,&quot;Missouri&quot;,&quot;Montana&quot;,&quot;Nebraska&quot;,&quot;Nevada&quot;,&quot;New Hampshire&quot;,&quot;New Jersey&quot;,&quot;New Mexico&quot;,&quot;New York&quot;,&quot;North Dakota&quot;,&quot;North Carolina&quot;,&quot;Ohio&quot;,&quot;Oklahoma&quot;,&quot;Oregon&quot;,&quot;Pennsylvania&quot;,&quot;Rhode Island&quot;,&quot;South Carolina&quot;,&quot;South Dakota&quot;,&quot;Tennessee&quot;,&quot;Texas&quot;,&quot;Utah&quot;,&quot;Vermont&quot;,&quot;Virginia&quot;,&quot;Washington&quot;,&quot;West Virginia&quot;,&quot;Wisconsin&quot;,&quot;Wyoming&quot;]" />

																		<p class="help-block">
																			<span class="muted">Start typing to auto
																				complete!. E.g: US</span>
																		</p>
																	</div>

																	<label class="control-label">关于</label>

																	<textarea class="span8 m-wrap" rows="3" name=""></textarea>


																	<label class="control-label">个人主页</label> <input
																		type="text" name="uurl" placeholder="请输入个人主页网址"
																		class="m-wrap span8" />

																	<div class="submit-btn">

																		<input type="submit" value="保存修改" class="btn green"<%-- onclick="toEdit(<s:property value="uid"/>) --%>">

																		<!-- <a href="#" class="btn">取消</a>	 -->
																	</div>
																</form>
																<!-- 修改个人信息结束 -->
															</div>
														</div>

														<div id="tab_2-2" class="tab-pane">

															<div style="height: auto;" id="accordion2-2"
																class="accordion collapse">
																<!-- 修改头像 -->
																<s:form action="upload1.action" method="post"
																	enctype="multipart/form-data">

																	<p>Anim pariatur cliche reprehenderit, enim eiusmod
																		high life accusamus terry richardson ad squid. 3 wolf
																		moon officia aute, non cupidatat skateboard dolor
																		brunch. Food truck quinoa nesciunt laborum eiusmod.</p>

																	<br />

																	<div class="controls">

																		<div class="thumbnail"
																			style="width: 170px; height: 170px;">

																			<img src="media/image/avatar.png" height="210px"
																				width="170px" alt="" />
																		</div>
																	</div>

																	<div class="space10"></div>

																	<div class="fileupload fileupload-new"
																		data-provides="fileupload">

																		<div class="input-append">

																			<div class="uneditable-input">

																				<i class="icon-file fileupload-exists"></i> <span
																					class="fileupload-preview"></span>
																			</div>

																			<span class="btn btn-file"> <span
																				class="fileupload-new">选择文件</span> <span
																				class="fileupload-exists">Change</span>
																				
																				 <input
																				type="hidden" name="uid"
																				value="${loginedUser.uid }"> <input
																				type="file" class="default" name="img" /> </span> <a
																				href="#" class="btn fileupload-exists"
																				data-dismiss="fileupload">Remove</a>
																		</div>
																	</div>

																	<div class="clearfix"></div>

																	<div class="controls">

																		<span class="label label-important">NOTE!</span> <span>You
																			can write some information here..</span>
																	</div>

																	<div class="space10"></div>

																	<div class="submit-btn">

																		<!-- <a href="#" class="btn green">Submit</a> -->
																		<input type="submit" value="提交" class="btn green" /> <input
																			type="reset" value="取消" class="btn" />
																		<!-- <a href="#" class="btn">Cancel</a>		 -->
																	</div>
																</s:form>
																<!-- 修改头像结束 -->
															</div>
														</div>

														<div id="tab_3-3" class="tab-pane">

															<div style="height: auto;" id="accordion3-3"
																class="accordion collapse">

																<form action="do_doUpdatePass1.action">
                                                                   <input
																				type="hidden" name="uid"
																				value="${loginedUser.uid }"> 
																	<label class="control-label">Current Password</label>
																	 <input type="password"  class="m-wrap span8"value="<s:property value="upassword"/>" /> <label
																		class="control-label">New Password</label> <input
																		type="password" name = "upassword"class="m-wrap span8" /> <label
																		class="control-label">Re-type New Password</label> <input
																		type="password" class="m-wrap span8" />

																	<div class="submit-btn">
																			<input type="submit" class="btn green" value="Change Password">
																			<input type="submit" class="btn" value="Cancel">
																		 
																	</div>
																</form>
															</div>
														</div>
													</div>
												</div>

												<!--end span9-->
											</div>
										</div>
									</div>

									<!--end tab-pane-->
									<!-- 博客内容 -->
									<div class="tab-pane" id="tab_1_4">
										<div class="row-fluid add-portfoliovv">
											<div class="pull-left" style="width:90%; margin-left: 45px; ">
												<form action="blog_add.action" method="post" enctype="multipart/form-data">
													<input type="hidden" name="buid" value="${loginedUser.uid }">
													博客标题：<input type="text" name="blogTitle">&nbsp;&nbsp;&nbsp;
													博客简介：<input type="text" name="blogSpan">&nbsp;&nbsp;&nbsp;
													博客图片：<input type="file" name="image"><p></p>
													<textarea cols="80" id="editor1" name="blogText" rows="40" >
													</textarea>
													<script>
													CKEDITOR.replace( 'editor1' );
													</script>
													 <p></p>
													<input type="submit" value="发表" class="btn green">
												</form>


											</div>
										</div>
									</div>
									<%-- <div class="tab-pane" id="tab_1_4">

									<div class="row-fluid add-portfolio"> 

										<div class="pull-left">

											<span>502 Items sold this week</span>										</div>

										<div class="pull-left">

											 <a href="#" class="btn icn-only green">Add a new Project <i class="m-icon-swapright m-icon-white"></i></a>										</div>
									</div>
                                  
									<!--end add-portfolio-->

									<div class="row-fluid portfolio-block">

										<div class="span5 portfolio-text">

											<img src="media/image/logo_metronic.jpg" alt="" />

											<div class="portfolio-text-info">

												<h4>Metronic - Responsive Template</h4>

												<p>Lorem ipsum dolor sit consectetuer adipiscing elit.</p>
											</div>
										</div>

										<div class="span5" style="overflow:hidden;">

											<div class="portfolio-info">

												Today Sold

												<span>187</span>											</div>

											<div class="portfolio-info">

												Total Sold

												<span>1789</span>											</div>

											<div class="portfolio-info">

												Earns

												<span>$37.240</span>											</div>
										</div>

										<div class="span2 portfolio-btn">

											<a href="#" class="btn bigicn-only"><span>Manage</span></a>										</div>
									</div>

									<!--end row-fluid-->

									<div class="row-fluid portfolio-block">

										<div class="span5 portfolio-text">

											<img src="media/image/logo_azteca.jpg" alt="" />

											<div class="portfolio-text-info">

												<h4>Metronic - Responsive Template</h4>

												<p>Lorem ipsum dolor sit consectetuer adipiscing elit.</p>
											</div>
										</div>

										<div class="span5">

											<div class="portfolio-info">

												Today Sold

												<span>24</span>											</div>

											<div class="portfolio-info">

												Total Sold

												<span>660</span>											</div>

											<div class="portfolio-info">

												Earns

												<span>$7.060</span>											</div>
										</div>

										<div class="span2 portfolio-btn">

											<a href="#" class="btn bigicn-only"><span>Manage</span></a>										</div>
									</div>

									<!--end row-fluid-->

									<div class="row-fluid portfolio-block">

										<div class="span5 portfolio-text">

											<img src="media/image/logo_conquer.jpg" alt="" />

											<div class="portfolio-text-info">

												<h4>Metronic - Responsive Template</h4>

												<p>Lorem ipsum dolor sit consectetuer adipiscing elit.</p>
											</div>
										</div>

										<div class="span5" style="overflow:hidden;">

											<div class="portfolio-info">

												Today Sold

												<span>24</span>											</div>

											<div class="portfolio-info">

												Total Sold

												<span>975</span>											</div>

											<div class="portfolio-info">

												Earns

												<span>$21.700</span>											</div>
										</div>

										<div class="span2 portfolio-btn">

											<a href="#" class="btn bigicn-only"><span>Manage</span></a>			 							</div>
									</div>
 --%>
									<!--end row-fluid-->
								</div>

								<!--end tab-pane-->

								<%-- <div class="tab-pane row-fluid" id="tab_1_6">

									<div class="row-fluid">

										<div class="span12">

											<div class="span3">

												<ul class="ver-inline-menu tabbable margin-bottom-10">

													<li class="active">

														<a data-toggle="tab" href="#tab_1">

														<i class="icon-briefcase"></i> 

														General Questions														</a> 

														<span class="after"></span>													</li>

													<li><a data-toggle="tab" href="#tab_2"><i class="icon-group"></i> Membership</a></li>

													<li><a data-toggle="tab" href="#tab_3"><i class="icon-leaf"></i> Terms Of Service</a></li>

													<li><a data-toggle="tab" href="#tab_1"><i class="icon-info-sign"></i> License Terms</a></li>

													<li><a data-toggle="tab" href="#tab_2"><i class="icon-tint"></i> Payment Rules</a></li>

													<li><a data-toggle="tab" href="#tab_3"><i class="icon-plus"></i> Other Questions</a></li>
												</ul>
											</div>

											<div class="span9">

												<div class="tab-content">

													<div id="tab_1" class="tab-pane active">

														<div style="height: auto;" id="accordion1" class="accordion collapse">

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_1" data-parent="#accordion1" data-toggle="collapse" class="accordion-toggle collapsed">

																	Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry ?																	</a>																</div>

																<div class="accordion-body collapse in" id="collapse_1">

																	<div class="accordion-inner">

																		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_2" data-parent="#accordion1" data-toggle="collapse" class="accordion-toggle collapsed">

																	Pariatur cliche reprehenderit enim eiusmod highr brunch ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_2">

																	<div class="accordion-inner">

																		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3" data-parent="#accordion1" data-toggle="collapse" class="accordion-toggle collapsed">

																	Food truck quinoa nesciunt laborum eiusmod nim eiusmod high life accusamus  ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_3">

																	<div class="accordion-inner">

																		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_4" data-parent="#accordion1" data-toggle="collapse" class="accordion-toggle collapsed">

																	High life accusamus terry richardson ad ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_4">

																	<div class="accordion-inner">

																		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_5" data-parent="#accordion1" data-toggle="collapse" class="accordion-toggle collapsed">

																	Reprehenderit enim eiusmod high life accusamus terry quinoa nesciunt laborum eiusmod ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_5">

																	<div class="accordion-inner">

																		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_6" data-parent="#accordion1" data-toggle="collapse" class="accordion-toggle collapsed">

																	Wolf moon officia aute non cupidatat skateboard dolor brunch ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_6">

																	<div class="accordion-inner">

																		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																	</div>
																</div>
															</div>
														</div>
													</div>

													<div id="tab_2" class="tab-pane">

														<div style="height: auto;" id="accordion2" class="accordion collapse">

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_2_1" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle collapsed">

																	Cliche reprehenderit, enim eiusmod high life accusamus enim eiusmod ?																	</a>																</div>

																<div class="accordion-body collapse in" id="collapse_2_1">

																	<div class="accordion-inner">

																		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_2_2" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle collapsed">

																	Pariatur cliche reprehenderit enim eiusmod high life non cupidatat skateboard dolor brunch ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_2_2">

																	<div class="accordion-inner">

																		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_2_3" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle collapsed">

																	Food truck quinoa nesciunt laborum eiusmod ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_2_3">

																	<div class="accordion-inner">

																		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_2_4" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle collapsed">

																	High life accusamus terry richardson ad squid enim eiusmod high ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_2_4">

																	<div class="accordion-inner">

																		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_2_5" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle collapsed">

																	Reprehenderit enim eiusmod high life accusamus terry quinoa nesciunt laborum eiusmod ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_2_5">

																	<div class="accordion-inner">

																		<p>

																			Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																		</p>

																		<p> 

																			moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmodBrunch 3 wolf moon tempor																		</p>
																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_2_6" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle collapsed">

																	Wolf moon officia aute non cupidatat skateboard dolor brunch ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_2_6">

																	<div class="accordion-inner">

																		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_2_7" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle collapsed">

																	Reprehenderit enim eiusmod high life accusamus terry quinoa nesciunt laborum eiusmod ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_2_7">

																	<div class="accordion-inner">

																		<p>

																			Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																		</p>

																		<p> 

																			moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmodBrunch 3 wolf moon tempor																		</p>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div id="tab_3" class="tab-pane">

														<div style="height: auto;" id="accordion3" class="accordion collapse">

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3_1" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed">

																	Cliche reprehenderit, enim eiusmod ?																	</a>																</div>

																<div class="accordion-body collapse in" id="collapse_3_1">

																	<div class="accordion-inner">

																		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3_2" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed">

																	Pariatur skateboard dolor brunch ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_3_2">

																	<div class="accordion-inner">

																		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3_3" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed">

																	Food truck quinoa nesciunt laborum eiusmod ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_3_3">

																	<div class="accordion-inner">

																		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3_4" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed">

																	High life accusamus terry richardson ad squid enim eiusmod high ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_3_4">

																	<div class="accordion-inner">

																		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3_5" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed">

																	Reprehenderit enim eiusmod high  eiusmod ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_3_5">

																	<div class="accordion-inner">

																		<p>

																			Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																		</p>

																		<p> 

																			moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmodBrunch 3 wolf moon tempor																		</p>
																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3_6" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed">

																	Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_3_6">

																	<div class="accordion-inner">

																		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3_7" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed">

																	Reprehenderit enim eiusmod high life accusamus aborum eiusmod ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_3_7">

																	<div class="accordion-inner">

																		<p>

																			Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																		</p>

																		<p> 

																			moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmodBrunch 3 wolf moon tempor																		</p>
																	</div>
																</div>
															</div>

															<div class="accordion-group">

																<div class="accordion-heading">

																	<a href="#collapse_3_8" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle collapsed">

																	Reprehenderit enim eiusmod high life accusamus terry quinoa nesciunt laborum eiusmod ?																	</a>																</div>

																<div class="accordion-body collapse" id="collapse_3_8">

																	<div class="accordion-inner">

																		<p>

																			Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.																		</p>

																		<p> 

																			moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmodBrunch 3 wolf moon tempor																		</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div> --%>

								<!--end span9-->
							</div>
						</div>
					</div>
</div>
					<!--end tab-pane-->
				</div>
			</div>

			<!--END TABS-->
		</div>
	</div>

	<!-- END PAGE CONTENT-->

	</div>

	<!-- END PAGE CONTAINER-->

	</div>

	<!-- END PAGE -->

	</div>

	<!-- END CONTAINER -->

	<!-- BEGIN FOOTER -->

	<div class="footer">

		<div class="footer-inner">2013 &copy; Metronic by keenthemes.</div>

		<div class="footer-tools">

			<span class="go-top"> <i class="icon-angle-up"></i> </span>

		</div>

	</div>

	<!-- END FOOTER -->

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->

	<script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>

	<script src="media/js/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>

	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

	<script src="media/js/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>

	<script src="media/js/bootstrap.min.js" type="text/javascript"></script>

	<!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>  

	<![endif]-->

	<script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>

	<script src="media/js/jquery.uniform.min.js" type="text/javascript"></script>

	<!-- END CORE PLUGINS -->

	<!-- BEGIN PAGE LEVEL PLUGINS -->

	<script type="text/javascript" src="media/js/bootstrap-fileupload.js"></script>

	<script type="text/javascript" src="media/js/chosen.jquery.min.js"></script>

	<!-- END PAGE LEVEL PLUGINS -->

	<!-- BEGIN PAGE LEVEL SCRIPTS -->

	<script src="media/js/app.js"></script>

	<!-- END PAGE LEVEL SCRIPTS -->

	<script>

		jQuery(document).ready(function() {       

		   // initiate layout and plugins

		   App.init();

		});

	</script>

	<!-- END JAVASCRIPTS -->

	<script type="text/javascript">  var _gaq = _gaq || [];  _gaq.push(['_setAccount', 'UA-37564768-1']);  _gaq.push(['_setDomainName', 'keenthemes.com']);  _gaq.push(['_setAllowLinker', true]);  _gaq.push(['_trackPageview']);  (function() {    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;    ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);  })();</script>

	</div>
</body>

<!-- END BODY -->

</html>
