<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
<head>
</head>
<body>
<form action="${pageContext.request.contextPath}/admin/Reference!edit.do" method="post">
	<input type="submit" value=" �� �� "/>
	<input type="button" value="�����б�" onclick="window.location='${pageContext.request.contextPath}/admin/Reference!list.do'"/>

	<input type="hidden" Id="id" name="id" value="${reference.id}"/>
	<table width="100%" border="1" class="myInput">
	    <tr>
			<td width="20%" class="myInputTitle">Ŀ¼���� &nbsp;</td>	
			<td width="30%">${reference.name}</td>
			<td width="20%" class="myInputTitle">��ע &nbsp;</td>	
			<td width="30%">${reference.remark}</td>
	    </tr>
	</table>
</form>
</body>
</html>