<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>  
<head>
<style type="text/css">
<!--
td{ 
    height: 20px; 
}
-->
 </style>
</head>
<body>
<%@ include file="/archive/top.jsp" %>
<form action="${pageContext.request.contextPath}/archive/Ji_chu!edit.do" method="post">
	<input type="hidden" Id="id" name="id" value="${ji_chu.id}"/>
	<input type="hidden" Id="unit_id" name="unit_id" value="${unit_id}"/>
	<input type="hidden" Id="pingfen" name="pingfen" value="${pingfen}"/>
	<table width="100%" border="1" class="myInput">
    <tr>	
		<td colspan="8" class="myInputTitle"><strong>������ʩ���</strong></td>	
	</tr>
  <tr>
    <td rowspan="2" align="center" class="myInputTitle"><strong>���</strong></td>
    <td rowspan="2" align="center" class="myInputTitle"><strong>��ʩ����</strong></td>
    <td colspan="2" align="center" class="myInputTitle"><strong>��״</strong></td>
    <td colspan="4" align="center" class="myInputTitle"><strong>�滮</strong></td>
  </tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>����</strong></td>
    <td align="center" class="myInputTitle"><strong>���������ģ</strong></td>
    <td align="center" class="myInputTitle"><strong>�Ƿ���Ҫ�滮�½�</strong></td>
    <td align="center" class="myInputTitle"><strong>����������</strong></td>
    <td align="center" class="myInputTitle"><strong>���������ģ</strong></td>
    <td align="center" class="myInputTitle"><strong>�õع�ģ�����꣩</strong></td>
  </tr>
  <tr>
    <td align="center">1</td>
    <td align="center">��ˮ��ʩ</td>
    <td align="center">${gongshui.xshuliang}</td>
    <td align="center">${gongshui.xguimo}m3/��</td>
    <td align="center">&nbsp;</td>
    <td align="center">${gongshui.gliang}</td>
    <td align="center">${gongshui.guimo}m3/��</td>
    <td align="center">${gongshui.gdi}</td>
  </tr>
  <tr>
    <td align="center">2</td>
    <td align="center">��ˮ������ʩ</td>
    <td align="center">${wushui.xshuliang}</td>
    <td align="center">${wushui.xguimo}m3/��</td>
    <td align="center">&nbsp;</td>
    <td align="center">${wushui.gliang}</td>
    <td align="center">${wushui.guimo}m3/��</td>
    <td align="center">${wushui.gdi}</td>
  </tr>
  <tr>
    <td align="center">3</td>
    <td align="center">����������ʩ</td>
    <td align="center">${laji.xshuliang}</td>
    <td align="center">${laji.xguimo}��/��</td>
    <td align="center">&nbsp;</td>
    <td align="center">${laji.gliang}</td>
    <td align="center">${laji.guimo}��/��</td>
    <td align="center">${laji.gdi}</td>
  </tr>
  <tr>
    <td align="center">4</td>
    <td align="center">������</td>
    <td align="center">${zhaoqi.xshuliang}</td>
    <td align="center">${zhaoqi.xguimo}m3/��</td>
    <td align="center">&nbsp;</td>
    <td align="center">${zhaoqi.gliang}</td>
    <td align="center">${zhaoqi.guimo}m3/��</td>
    <td align="center">${zhaoqi.gdi}</td>
  </tr>
  <tr>
    <td align="center">5</td>
    <td align="center">���վ</td>
    <td align="center">${biandian.xshuliang}</td>
    <td align="center">${biandian.xguimo}ǧ��ʱ/��</td>
    <td align="center">&nbsp;</td>
    <td align="center">${biandian.gliang}</td>
    <td align="center">${biandian.guimo}ǧ��ʱ/��</td>
    <td align="center">${biandian.gdi}</td>
  </tr>
  <tr>
    <td align="center">6</td>
    <td align="center">����</td>
    <td align="center">${cesuo.xshuliang}</td>
    <td align="center">${cesuo.xguimo}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${cesuo.gliang}</td>
    <td align="center">${cesuo.guimo}</td>
    <td align="center">${cesuo.gdi}</td>
  </tr>
  <tr>
    <td align="center">7</td>
    <td align="center">����վ</td>
    <td align="center">${keyun.xshuliang}</td>
    <td align="center">${keyun.xguimo}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${keyun.gliang}</td>
    <td align="center">${keyun.guimo}</td>
    <td align="center">${keyun.gdi}</td>
  </tr>
	</table>
</form>
</body>
</html>