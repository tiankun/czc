<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
<head>
</head>
<body>
<form action="${pageContext.request.contextPath}/village/Village_mode!edit.do" method="post">

	<table width="100%" border="1" class="myInput">
  <TR>
    <TD colSpan=4 align=center class="tHead"><STRONG>��ͳ������������ʾ��</STRONG></TD>
  </TR>
	<tr>
			<td width="20%" class="myInputTitle">��Ŀ���</td>	
			<td width="30%">${village_mode.pro_id}</td>
			<td width="20%" class="myInputTitle">��Ŀ����</td>	
			<td width="30%">${village_mode.pro_name}</td>
	    </tr>
	    <tr>		
			<td width="20%" class="myInputTitle">��Ŀ����</td>	
			<td width="30%">		<textarea Id="pro_content" name="pro_content" maxlength="500" dataType="" rows="6" cols="56" >${village_mode.pro_content}</textarea></td>
				<td width="20%" class="myInputTitle">��Ŀ��ģ</td>	
			<td width="30%">${village_mode.pro_scope}</td>
	    </tr>
	    <tr>
		
			<td width="20%" class="myInputTitle">��������<a style="color:#FF0000">(��)</td>	
			<td width="30%">${village_mode.constructionperiod}</td>
			<td width="20%" class="myInputTitle">��Ŀ����<a style="color:#FF0000">(%)</td>	
			<td width="30%">${village_mode.pro_progress}</td>
	    </tr>
	    <tr>			
			<td width="20%" class="myInputTitle">���̿���ʱ��</td>	
			<td width="30%">${village_mode.stime}</td>
			<td width="20%" class="myInputTitle">��������</td>	
			<td width="30%">${village_mode.ftime}</td>
	    </tr>
	    <tr>
			
			<td width="20%" class="myInputTitle">�Ƿ񿢹�</td>	
			<td width="30%">${village_mode.flag}</td>
			<td colspan="2"></td>
	    </tr>
	    <td  colSpan=4 align="center"> <input type="button"  value="�����б�" onclick="window.location='${pageContext.request.contextPath}/village/Village_mode!list.do?fid=${fid}&biao_shi=${biao_shi}'"/></td>				
	</table>
</form>
</body>
</html>