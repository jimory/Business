<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="o"%>

<!doctype html>
<html lang="en"><head>
    <meta charset="utf-8">
    <title>留言板管理</title>
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
            
            <h1 class="page-title" style="font-size: 30px">“Businex”留言列表</h1>
                   

        </div>
        <div class="main-content">
            

  <div class="btn-group">
  </div>

<table class="table">
  <thead>
  <tr>
			<td height="32" colspan="6">
				<form action="mg_doSearchSome" method="post" name="f1">
					按留言内容查询：<input type="text" name="keyword" /> <input type="submit"
						name="sub" value="查找" />
				</form>
			</td>
		</tr>
    <tr>
      <th>编号</th> 
      <th>留言人</th>
      <th>邮箱</th>
      <th>电话</th>
      <th>留言内容</th>
      <th>留言时间</th>
      
      
    </tr>
  </thead>
  <tbody>
  <s:iterator value="#mgList">
    <tr>
        <td><s:property value="mid"/></td>
		<td><s:property value="mname"/></td>
		<td><s:property value="memail"/></td>
		<td><s:property value="mphone"/></td>
		<td><s:property value="mtext"/></td>
		<td><s:property value="mtime"/></td>
      
      
    </tr>
   </s:iterator>
  </tbody>
</table>

<ul class="pagination" style="text-align: center">
<s:if test="keyword!=null">
  <li><s:if test="pageNum>1"><a href="mg_doSearchSome.action?keyword=${keyword }&pageNum=<s:property value="pageNum-1"/>">&laquo;</a> </s:if></li>
 
<li>	<s:iterator begin="1" end="#pageCount" var="n">
    			<s:if test="pageNum==#n">
    				<span><s:property/></span>
    			</s:if>
    			<s:else>
    				<a href="mg_doSearchSome.action?keyword=${keyword }&pageNum=<s:property/>"><s:property/></a>
    			</s:else>
    		</s:iterator>
 </li>
  
  <li>
  	<s:if test="pageNum<#pageCount">
  			<a href="mg_doSearchSome.action?keyword=${keyword }&pageNum=<s:property value="pageNum+1"/>">&raquo;</a> 
  	 </s:if>
 </li>
</s:if>



	<s:else>
  <li><s:if test="pageNum>1"><a href="mg_doSearchAll.action?pageNum=<s:property value="pageNum-1"/>">&laquo;</a> </s:if></li>
 
<li>	<s:iterator begin="1" end="#pageCount" var="n">
    			<s:if test="pageNum==#n">
    				<span><s:property/></span>
    			</s:if>
    			<s:else>
    				<a href="mg_doSearchAll.action?pageNum=<s:property/>"><s:property/></a>
    			</s:else>
    		</s:iterator>
 </li>
  
  <li>
  	<s:if test="pageNum<#pageCount">
  			<a href="mg_doSearchAll.action?pageNum=<s:property value="pageNum+1"/>">&raquo;</a> 
  	 </s:if>
 </li>
</s:else>
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
            <button class="btn btn-danger" data-dismiss="modal">Delete</button>
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