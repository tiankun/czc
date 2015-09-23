<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@page import="com.zsc.util.WebUtil"%>
<c:set var="webUtil" value="<%=new WebUtil()%>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" >		
</script>
</head>

<body>
<form method="post" name="form1" id="form1">
	<input type="hidden" Id="unit_id" name="unit_id" value="${shiwu.unit_id}"/>
	
	<table border="1" width="100%" class="myInput">	
    <tr>	
		<td colspan="2" class="myInputTitle"><strong>${didian.quan_ming}&nbsp;&nbsp;审核信息</strong></td>	
	</tr>
	</table>
	<table border="1" width="100%" class="myInput">	
	<tr>
		<td width="20%" class="myInputTitle">当前状态：</td>	
		<td width="80%">${shiwu.status}</td>
	</tr>
	</table>
	<br />
	<table border="1" width="100%" class="myInput">	
	<tr>
		<td width="20%" class="myInputTitle">县级审核者：</td>	
		<td width="30%">${shiwu.name_xian}</td>
		<td width="20%" class="myInputTitle">审核时间：</td>	
		<td width="30%">${shiwu.mdate_xian}</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">县级审核者姓名：</td>	
		<td width="30%">${shiwu.opname_xian}</td>
		<td width="20%" class="myInputTitle">联系电话：</td>	
		<td width="30%">${shiwu.opphone_xian}</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">审核意见:</td>	
		<td width="30%" colspan="3">${shiwu.result_xian}</td>
	</tr>
	</table>
	<table border="1" width="100%" class="myInput">
	<tr>
		<td width="20%" class="myInputTitle">地州审核者：</td>	
		<td width="30%">${shiwu.name_zhou}</td>
		<td width="20%" class="myInputTitle">审核时间：</td>	
		<td width="30%">${shiwu.mdate_zhou}</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">州级审核者姓名：</td>	
		<td width="30%">${shiwu.opname_zhou}</td>
		<td width="20%" class="myInputTitle">联系电话：</td>	
		<td width="30%">${shiwu.opphone_zhou}</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">审核意见:</td>	
		<td width="30%" colspan="3">${shiwu.result_zhou}</td>
	</tr>
	</table>
</form>

</body>
</html>