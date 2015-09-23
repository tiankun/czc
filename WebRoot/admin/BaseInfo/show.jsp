<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
<head>
</head>
<body>
<form action="${pageContext.request.contextPath}/admin/Base_info!edit.do" method="post">
	<input type="submit" value=" 编 辑 "/>
	<input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/admin/Base_info!list.do'"/>

	<input type="hidden" Id="id" name="id" value="${base_info.id}"/>
	<table width="100%" border="1" class="myInput">
	    <tr>
			<td width="20%" class="myInputTitle">简介</td>	
			<td width="30%">${base_info.jie_shao}</td>
			<td width="20%" class="myInputTitle">分类</td>	
			<td width="30%">${base_info.lei_xing}</td>
	    </tr>
	</table>
</form>
</body>
</html>