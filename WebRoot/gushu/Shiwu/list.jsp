<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld"  prefix="c"%>
<%@page import="com.zsc.util.WebUtil"%>
<c:set var="webUtil" value="<%=new WebUtil()%>"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" /> 
<script language="JavaScript" >
function mySubmit(){
	if(confirm("执行此操作，申请信息将不能再修改！确认申请？")){
		document.form1.action="${pageContext.request.contextPath}/gushu/Shiwu!save.do";
		document.form1.submit();
	}
}		
</script>   
</head>

<body>

<table border="1" width="100%">
	<tr class="tHead" align="center">
		<td>申报记录</td>
	</tr>
</table>
<table border="1" width="100%">
	<tr class="tHead" align="center">
		<td  width="10%">申报时间</td>
		<td width="10%" class="myItem">状态</td>
		<td width="10%" class="myItem">申报者</td>
		<td width="10%" class="myItem">县级审核者</td>
		<td width="25%" class="myItem">县级意见</td>
		<td width="10%" class="myItem">州级审核者</td>
		<td width="25%" class="myItem">州级意见</td>
	</tr>
<!-- C标签循环显示表数据 -->
	<c:forEach var="item" items="${list}">
		<tr align="center"  onMouseOver="this.style.backgroundcolor='#9EDBFF';" onMouseOut="this.style.backgroundcolor='';">
			<td height="30">${item.cdate}</td>
			<td>${item.status_cha}:${item.status}</td>
			<td>${item.quan_ming}</td>
			<td>${item.operator_xian_name}</td>
			<td>${item.result_xian}</td>
			<td>${item.operator_zhou_name}</td>
			<td>${item.result_zhou}</td>
		</tr>
	</c:forEach>

</table>

<table border="1" width="100%" class="myInput">
<form action="" method="post" name="form1">
	<tr align="center">
		<td>
			<c:if test="${shiwu==null||(shiwu.status!=webUtil.applied&&!(shiwu.status==webUtil.success&&shiwu.operator_xian!=null&&shiwu.operator_zhou==null))}">
				<input id="button" name="button" type="button" value=" 上 报 " onClick="return mySubmit();"/>
			</c:if>
		</td>
	</tr>
</form>
</table>
</body>

</html>

