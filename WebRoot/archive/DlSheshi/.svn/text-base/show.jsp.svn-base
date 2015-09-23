<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c"%>
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
<form action="${pageContext.request.contextPath}/archive/Dl_sheshi!edit.do" method="post">
	<input type="hidden" Id="id" name="id" value="${dl_sheshi.id}"/>
	<table width="100%" border="1" class="myInput">
    <tr>	
		<td colspan="11" class="myInputTitle"><strong>道路交通设施情况基本信息</strong></td>	
	</tr>	
	   <tr>
    <td rowspan="3" align="center" class="myInputTitle"><strong>序号</strong></td>
    <td rowspan="3" align="center" class="myInputTitle"><strong>道路等级</strong></td>
    <td colspan="3" align="center" class="myInputTitle"><strong>现状</strong></td>
    <td colspan="6" align="center" class="myInputTitle"><strong>规划</strong></td>
  </tr>
  <tr>
    <td rowspan="2" align="center" class="myInputTitle"><strong>数量（条）</strong></td>
    <td rowspan="2" align="center" class="myInputTitle"><strong>宽度（米）</strong></td>
    <td rowspan="2" align="center" class="myInputTitle"><strong>长度（米）</strong></td>
    <td rowspan="2" align="center" class="myInputTitle"><strong>数量（条）</strong></td>
    <td rowspan="2" align="center" class="myInputTitle"><strong>宽度（米）</strong></td>
    <td rowspan="2" align="center" class="myInputTitle"><strong>长度（米）</strong></td>
    <td colspan="3" align="center" class="myInputTitle"><strong>路面类型</strong></td>
  </tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>柏油</strong></td>
    <td align="center" class="myInputTitle"><strong>水泥</strong></td>
    <td align="center" class="myInputTitle"><strong>砂石</strong></td>
  </tr>
	<c:forEach var="dl_sheshiList" items="${dl_sheshiList}" varStatus="i">
  <tr>
    <td align="center">${i.count}</td>
    <td align="center">${dl_sheshiList.dengji}</td>
    <td align="center">${dl_sheshiList.shu}</td>
    <td align="center">${dl_sheshiList.kuan}</td>
    <td align="center">${dl_sheshiList.chang}</td>
    <td align="center">${dl_sheshiList.gshu}</td>
    <td align="center">${dl_sheshiList.gkuan}</td>
    <td align="center">${dl_sheshiList.gchang}</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
    </c:forEach>
	</table>
</form>
</body>
</html>