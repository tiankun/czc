<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>  
    <style type="text/css">
<!--
td{ 
    height: 20px; 
}
-->
 </style>
    <head>

</head>
<body>
<%@ include file="/archive/top.jsp" %>
<form action="${pageContext.request.contextPath}/archive/Ju_zhu!edit.do" method="post">
	<input type="hidden" Id="id" name="id" value="${ju_zhu.id}"/>
	<input type="hidden" Id="unit_id" name="unit_id" value="${unit_id}"/>
	<input type="hidden" Id="pingfen" name="pingfen" value="${pingfen}"/>
	<table width="100%" border="1" class="myInput">
    <tr>	
		<td colspan="5" class="myInputTitle"><strong>村民居住情况基本信息</strong></td>	
	</tr>	
	<tr>
    <td align="center" class="myInputTitle"><strong>序号</strong></td>
    <td align="center" class="myInputTitle"><strong>内容</strong></td>
    <td align="center" class="myInputTitle"><strong>单位</strong></td>
    <td align="center" class="myInputTitle"><strong>数量</strong></td>
    <td align="center" class="myInputTitle"><strong>占总户数的比重（%）</strong></td>
  </tr>
  <tr>
    <td align="center">1</td>
    <td align="center">共有住房</td>
    <td align="center">处</td>
    <td align="center">${gongyou.shuliang}</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">2</td>
    <td align="center">无人居住的住房</td>
    <td align="center">处</td>
    <td align="center">${wuren.shuliang}</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">3</td>
    <td align="center">有两处以上宅基的户数</td>
    <td align="center">处</td>
    <td align="center">${liangchu.shuliang}</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td align="center">4</td>
    <td align="center">农村危房改造总数量</td>
    <td align="center">户</td>
    <td align="center">${gaizao.shuliang}</td>
    <td align="center">&nbsp;</td>
  </tr>
	</table>
</form>
</body>
</html>