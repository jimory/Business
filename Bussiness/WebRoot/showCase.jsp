<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>Businex Website Template | Contact</title>

<link href="css/case.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1200);
		});
	});
</script>
</head>
<body>
	<!----start-wrap---->


	<!---End-header---->

	<!---start-开始----->
<div class="warp">
	<div class="top-navaa">
		<ul>
		<li><a href="CaseAction_toOne.action?caseId=${caseId-1 }">上一个</a>
			</li>
			<li><a href="CaseAction_doSearch.action">案例</a>
			</li>
			<li><a href="CaseAction_toOne.action?caseId=${caseId+1 }">下一个</a>
			</li>
			

		</ul>
	</div>
	
	<div class="content">
		<div class="singlepage">
			<a href="#"><img alt="a" src="back/upload/${caseImage}"
				title="image-name" height="450px" width="540px" /> </a>
			<div class="clear"></div>
		</div>
	</div>
	<div>
		<div class="title">
			<h3 align="center">${caseTitle }</h3>
		</div>
		<div class="detail">
			<h2 style="line-height: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;${caseDetail }</h2>
		</div>
		<div class="clear"></div>
	</div>


</div>











</body>
</html>

