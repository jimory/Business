<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<style type="text/css">
.big {
	width: 1020px;
	min-height: 600px;
}

.small {
	margin-left: 350px;
	margin-top: 40px;

	width: 500px;
	min-height: 400px;
}

.td1 {
	font-size: 18px;
	font-family: Terminal, System, Fixedsys, 'Arial Unicode MS', '幼圆';
}
</style>
<div class="big">
	<div class="small">
		<s:form action="caseAction_doEdit.action" theme="simple" enctype="multipart/form-data">
		 <s:hidden name="caseId" value="%{caseId}"></s:hidden>
			<table>
					<caption style="font-size:25px;color:#069;">案例详情修改</caption>
					<tr>
						<td>&nbsp;</td>
					</tr>
				
					<tr height="30">
						<td align="right" class="td1">案例标题：</td>
						
						<td><s:textfield name="caseTitle" label="caseTitle" value="%{caseTitle}" style="margin: 10px"></s:textfield>
						<%-- input type="text" name="caseTitle" value="${caseTitle }" size="24"  height="26"/> --%>
						
						</td>
						
					</tr>
					<tr height="30">
						<td align="right" class="td1">案例详情：</td>
						<td><!-- <s:textfield name="caseDetail" label="caseDetail" value="%{caseDetail}" style="margin: 10px"></s:textfield> -->
						<textarea rows="5" cols="20" name="caseDetail"><s:property value="caseDetail"/></textarea><%-- <input type="text" name="caseTitle" value="${caseDetail }" size="24"  height="26"/> --%>
						</td>
					</tr>
					<tr height="30">
						<td align="right" class="td1">案例图片：</td>
						<td> <s:file name="img" ><s:hidden name="caseImage" value="%{caseImage}" style="margin: 10px"/><img alt="a" src="upload/${caseImage}" width="100"
					height="100" style="margin: 10px"></s:file>
						<%-- <input type="file" name="cimage" value="${caseImage }"/></td> --%>
					</tr>
					<tr height="30">
					<td><a href="caseAction_doBackSearch.action" style="margin: 10px">返回</a></td>
						<td colspan="2" align="center">
						<s:submit value="确认修改" style="margin: 10px">
						</s:submit>&nbsp;&nbsp;&nbsp;&nbsp;
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
					</tr>
				
			</table>
			
		</s:form>
	</div>
</div>
