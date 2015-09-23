<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
<head>
</head>
<body>
<form action="${pageContext.request.contextPath}/admin/Popedom!edit.do" method="post">
	<input type="submit" value=" 编 辑 "/>
	<input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/admin/Popedom!list.do'"/>

	<input type="hidden" Id="id" name="id" value="${popedom.id}"/>
	<table width="100%" border="1" class="myInput">
	    <tr>
			<td width="20%" class="myInputTitle">权限名 &nbsp;</td>	
			<td width="30%">${popedom.name}</td>
			<td width="20%" class="myInputTitle">程序路径 &nbsp;</td>	
			<td width="30%">${popedom.path}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">父节点 &nbsp;</td>	
			<td width="30%">${popedom.father}</td>
			<td width="20%" class="myInputTitle">目标 &nbsp;</td>	
			<td width="30%">${popedom.target}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">权限类型 &nbsp;</td>	
			<td width="30%">${popedom.type}</td>
			<td width="20%" class="myInputTitle">是否需要验证 &nbsp;</td>	
			<td width="30%">${popedom.check_up}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">分组标示 &nbsp;</td>	
			<td width="30%">${popedom.view_group}</td>
			<td width="20%" class="myInputTitle">备注 &nbsp;</td>	
			<td width="30%">${popedom.remark}</td>
	    </tr>
	</table>
</form>
</body>
</html>