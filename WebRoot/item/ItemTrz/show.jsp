<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
<head>
</head>
<body>
<%@ include file="../top.jsp" %>
	<table width="100%" border="1" class="myInput">
  <TR>
    <TD colSpan=4 align=center class="tHead"><STRONG>====��ĿͶ�������====</STRONG></TD>
  </TR>	
	    <tr>
			<td width="15%" class="myInputTitle">Ͷ����</td>	
			<td colspan="3">${item_trz.tz_shang}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">����</td>	
			<td width="35%">${item_trz.xingzhi}</td>
			<td width="15%" class="myInputTitle">��ʼͶ����ʱ��</td>	
			<td width="35%">${item_trz.kaizhan}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">������ʽ</td>	
			<td width="35%">${item_trz.hezuo}</td>
			<td width="15%" class="myInputTitle">��Ӫ��Χ</td>	
			<td width="35%">${item_trz.fanwei}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">Ͷ���̳��ʱ�����%��</td>	
			<td width="35%">${item_trz.bili}</td>
			<td width="15%" class="myInputTitle">�Ƿ�ǩ��Э���ͬ</td>	
			<td width="35%">${item_trz.hetong}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">��չ���</td>	
			<td colspan="3">${item_trz.jinzhan}</td>
	    </tr>
	    <tr>			
			<td width="15%" class="myInputTitle">���ڵ�����</td>	
			<td colspan="3">${item_trz.wenti}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">����˵��</td>	
			<td colspan="3">${item_trz.remark}</td>
		<tr>
  <TR>
    <TD height=38 colSpan=4 align=center>
	<input type="button" value="�����б�" onclick="window.location='${pageContext.request.contextPath}/item/Item_trz!list.do?item=${item_trz.item}'"/>
	</TD>
��</TR>			
	</table>
</body>
</html>