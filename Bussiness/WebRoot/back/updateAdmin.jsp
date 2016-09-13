<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<style type="text/css">

.big{
	width:1020px;
	min-height:600px;
	}
.small{
	margin-left:310px;
	margin-top:40px;
	width:300px;
	min-height:400px;
	}
.td1{
   font-size:18px;
   font-family:Terminal, System, Fixedsys, 'Arial Unicode MS', '幼圆';
}
 </style>
<div class="big"  >
<div class="small" >
   <s:form action="admin_doUpdateAdmin" theme="simple">
  <s:hidden name="id" value="%{id}"></s:hidden>
  <table>
  <caption style="font-size:25px;color:#069;" >个人资料修改</caption>
      <tr><td colspan="2"><hr/></td>
		</tr>
     <tr style="border-style:hidden"  height="30"> 
       <td align="right" class="td1">账号：</td><td size="24"  height="26"><s:textfield name="aid" label="账户" value="%{aid}"></s:textfield></td>
     </tr>
     <tr height="30"><td align="right" class="td1">姓名：</td><td size="24"  height="26"> <s:textfield name="aname" label="姓名" value="%{aname}"></s:textfield></td></tr>
     <tr height="30"><td align="right" class="td1">密码：</td><td size="24"  height="26"> <s:textfield  name="apassword" label="姓名" value="%{apassword}"></s:textfield></td></tr>
     <tr height="30"><td align="right" class="td1">性别：</td><td size="24"  height="26"> <s:radio name="asex" label="性别" list="#{1:'男',2:'女'}" listKey="key" listValue="value" value="1"></s:radio></td></tr>
     <tr height="30"><td align="right" class="td1">电话：</td><td size="24"  height="26"> <s:textfield  name="aphone" label="电话" value="%{aphone}"></s:textfield></td></tr>
     <tr height="30"><td colspan="2" align="center">  <input type="submit" name="sub" value="确认修改" />&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="re" value="重置"  /><br/></td></tr>
  </table>
   <hr/>
	<a href="admin_doSearchAll.action">返回管理员信息列表</a>
   </s:form>
   
  
  </div>
</div> 
 