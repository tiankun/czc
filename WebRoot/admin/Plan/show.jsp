<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
<head>
</head>
<body>
<form action="${pageContext.request.contextPath}/admin/Plan!edit.do" method="post">
	<input type="submit" value=" �� �� "/>
	<input type="button" value="�����б�" onclick="window.location='${pageContext.request.contextPath}/admin/Plan!list.do'"/>

	<input type="hidden" Id="id" name="id" value="${plan.id}"/>
	<table width="100%" border="1" class="myInput">
	    <tr>
			<td width="20%" class="myInputTitle">��Ӧ�û�����</td>	
			<td width="30%">${plan.unit_id}</td>
			<td width="20%" class="myInputTitle">���</td>	
			<td width="30%">${plan.year}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">�滮����</td>	
			<td width="30%">${plan.lei_xing}</td>
			<td width="20%" class="myInputTitle">�滮���</td>	
			<td width="30%">${plan.zhuang_kuang}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">�滮��ʼ���</td>	
			<td width="30%">${plan.begin}</td>
			<td width="20%" class="myInputTitle">�滮�������</td>	
			<td width="30%">${plan.end}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">�滮���Ƶ�λ</td>	
			<td width="30%">${plan.bian_zhi}</td>
			<td width="20%" class="myInputTitle">�滮��������</td>	
			<td width="30%">${plan.shen_pi}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">�ɹ��洢λ��</td>	
			<td width="30%">${plan.cheng_guo}</td>
			<td width="20%" class="myInputTitle">��ע</td>	
			<td width="30%">${plan.remark}</td>
	    </tr>
	</table>
</form>
</body>
</html>