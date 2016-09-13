<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="ab"%>
<style type="text/css">
.big {
	width: 1020px;
	min-height: 600px;
}

.small {
	margin-left: 310px;
	margin-top: 40px;
	width: 400px;
	min-height: 400px;
}

.td1 {
	font-size: 18px;
	font-family: Terminal, System, Fixedsys, 'Arial Unicode MS', '幼圆';
}
</style>
<div class="big">
	<div class="small">
		<form action="caseAction_doAdd.action" method="post" name="f1"
			enctype="multipart/form-data" onsubmit="return isSubmit()">
			<table>
				<caption style="font-size:25px;color:#069;" height="30">Businex--经典案例的添加</caption>
				<tr>
					<td colspan="2"><hr /></td>
				</tr>
				<tr height="30">
					<td class="td1">案例标题：</td>
					<td><input type="text" name="caseTitle" size="20" height="98"
						id="a" onblur="isNull('a')" />*<span id="msga"></span></td>
				</tr>
				<tr height="30">
					<td class="td1">上传图片：</td>
					<td><input type="file" name="img" /></td>
				</tr>
				<tr height="30">
					<td class="td1">案例描述：</td>
					<td><textarea rows="5" cols="20" name="caseDetail"></textarea>
					</td>
				</tr>
				<tr height="30">
					<td colspan="2" align="center"><input type="submit" name="sub"
						value="添加" />&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset"
						name="re" value="重置" /><br /></td>
				</tr>
			</table>
			<hr />
			<a href="caseAction_doBackSearch.action">返回</a>
		</form>
	</div>
</div>
<ab:if test="${param.abmsg==1 }">
	<script>
		alert("添加成功！")
	</script>
</ab:if>
<ab:if test="${param.abmsg==0 }">
	<script>alert("添加失败！")</script>
</ab:if>