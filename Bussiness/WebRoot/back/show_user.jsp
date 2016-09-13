<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html lang="en"><head>
    <meta charset="utf-8">
    <title>用户管理</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href='http://fonts.useso.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

    <script src="lib/jquery-1.11.1.min.js" type="text/javascript"></script>

    

    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/premium.css">

</head>
<body class=" theme-blue"  margin-left="0px">

    <!-- Demo page code -->

   <style type="text/css">
      .content {
  position: relative;
  min-height: 800px;
  background: #fff;
  margin-left: 0px;
  border-left: 1px solid #cccccc;
  padding: 15px 15px 0px 15px;
}
    </style>



    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    
  

  <!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
  <!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
  <!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
  <!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
  <!--[if (gt IE 9)|!(IE)]><!--> 
   
  <!--<![endif]-->

   
    

   

    <div class="content" margin-left="0px">
        <div class="header">
            
            <h1 class="page-title">Users</h1>
                    <ul class="breadcrumb">
            <li><a href="index.html">用户管理</a> </li>
            <li class="active">查看用户</li>
        </ul>

        </div>
        <div class="main-content">
            
<div class="btn-toolbar list-toolbar">
    <button class="btn btn-primary"><i class="fa fa-plus"></i> New User</button>
    <button class="btn btn-default">Import</button>
    <button class="btn btn-default">Export</button>
  <div class="btn-group">
  </div>
</div>
<table class="table">
  <thead>
    <tr>
      <th>#</th>
      <th>姓名</th>
      <th>性别</th>
      <th>年龄</th>
      <th>邮箱</th>
      <th>国家</th>
      <th style="width: 3.5em;"></th>
    </tr>
  </thead>
  <tbody>
  <s:iterator value="#userList">
    <tr>
      <td><s:property value="uid"/></td>
      <td><s:property value="uname"/></td>
      <td><s:property value="usex"/></td>
      <td><s:property value="uage"/></td>
      <td><s:property value="uemail"/></td>
      <td><s:property value="ucountry"/></td>
      <td>
          <a href="user.html"><i class="fa fa-pencil"></i></a>
          <a href="#myModal" role="button" data-toggle="modal"><i class="fa fa-trash-o"></i></a>
      </td>
    </tr>
   </s:iterator>
  </tbody>
</table>

<ul class="pagination">
	
  <li><s:if test="pageNum>1"><a href="backdo_showUser.action?pageNum=<s:property value="pageNum-1"/>">&laquo;</a> </s:if></li>
 
<li>	<s:iterator begin="1" end="#pageCount" var="n">
    			<s:if test="pageNum==#n">
    				<span><s:property/></span>
    			</s:if>
    			<s:else>
    				<a href="backdo_showUser.action?pageNum=<s:property/>"><s:property/></a>
    			</s:else>
    		</s:iterator>
 </li>
  
  <li>
  	<s:if test="pageNum<#pageCount">
  			<a href="backdo_showUser.action?pageNum=<s:property value="pageNum+1"/>">&raquo;</a> 
  	 </s:if>
 </li>

</ul>

<div class="modal small fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Delete Confirmation</h3>
        </div>
        <div class="modal-body">
            <p class="error-text"><i class="fa fa-warning modal-icon"></i>Are you sure you want to delete the user?<br>This cannot be undone.</p>
        </div>
        <div class="modal-footer">
            <button class="btn btn-default" data-dismiss="modal" aria-hidden="true">Cancel</button>
            <button class="btn btn-danger" data-dismiss="modal"><a href="">Delete</a></button>
        </div>
      </div>
    </div>
</div>


            <footer>
                <hr>

                
               
                <p>© 2015 <a href="#" target="_blank">Businex</a></p>
            </footer>
        </div>
    </div>


    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
    </script>
    
  
</body></html>
