<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <script src="ckeditor/ckeditor.js"></script>
    <title>编辑博客</title>
  </head>
  
  <body>
     首页  <a href="blog_add.action">struts测试</a>
    
    <form action="blog_add.action" method="post" enctype="multipart/form-data">
    <input type="text" name="blogTitle">
    <textarea cols="80" id="editor1" name="blogText" rows="10">
			
		</textarea>
		<script>
			CKEDITOR.replace( 'editor1' );
		</script>
    <input type="file" name="image">
    <input type="submit" value="提交">
    </form>
  </body>
</html>
