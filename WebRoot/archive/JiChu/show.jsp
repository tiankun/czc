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
		<td colspan="8" class="myInputTitle"><strong>基础设施情况</strong></td>	
	</tr>
  <tr>
    <td rowspan="2" align="center" class="myInputTitle"><strong>序号</strong></td>
    <td rowspan="2" align="center" class="myInputTitle"><strong>设施名称</strong></td>
    <td colspan="2" align="center" class="myInputTitle"><strong>现状</strong></td>
    <td colspan="4" align="center" class="myInputTitle"><strong>规划</strong></td>
  </tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>数量</strong></td>
    <td align="center" class="myInputTitle"><strong>供给或处理规模</strong></td>
    <td align="center" class="myInputTitle"><strong>是否需要规划新建</strong></td>
    <td align="center" class="myInputTitle"><strong>数量（个）</strong></td>
    <td align="center" class="myInputTitle"><strong>供给或处理规模</strong></td>
    <td align="center" class="myInputTitle"><strong>用地规模（公顷）</strong></td>
  </tr>
  <tr>
    <td align="center">1</td>
    <td align="center">供水设施</td>
    <td align="center">${gongshui.xshuliang}</td>
    <td align="center">${gongshui.xguimo}m3/日</td>
    <td align="center">&nbsp;</td>
    <td align="center">${gongshui.gliang}</td>
    <td align="center">${gongshui.guimo}m3/日</td>
    <td align="center">${gongshui.gdi}</td>
  </tr>
  <tr>
    <td align="center">2</td>
    <td align="center">污水处理设施</td>
    <td align="center">${wushui.xshuliang}</td>
    <td align="center">${wushui.xguimo}m3/日</td>
    <td align="center">&nbsp;</td>
    <td align="center">${wushui.gliang}</td>
    <td align="center">${wushui.guimo}m3/日</td>
    <td align="center">${wushui.gdi}</td>
  </tr>
  <tr>
    <td align="center">3</td>
    <td align="center">垃圾处理设施</td>
    <td align="center">${laji.xshuliang}</td>
    <td align="center">${laji.xguimo}吨/日</td>
    <td align="center">&nbsp;</td>
    <td align="center">${laji.gliang}</td>
    <td align="center">${laji.guimo}吨/日</td>
    <td align="center">${laji.gdi}</td>
  </tr>
  <tr>
    <td align="center">4</td>
    <td align="center">沼气池</td>
    <td align="center">${zhaoqi.xshuliang}</td>
    <td align="center">${zhaoqi.xguimo}m3/日</td>
    <td align="center">&nbsp;</td>
    <td align="center">${zhaoqi.gliang}</td>
    <td align="center">${zhaoqi.guimo}m3/日</td>
    <td align="center">${zhaoqi.gdi}</td>
  </tr>
  <tr>
    <td align="center">5</td>
    <td align="center">变电站</td>
    <td align="center">${biandian.xshuliang}</td>
    <td align="center">${biandian.xguimo}千瓦时/日</td>
    <td align="center">&nbsp;</td>
    <td align="center">${biandian.gliang}</td>
    <td align="center">${biandian.guimo}千瓦时/日</td>
    <td align="center">${biandian.gdi}</td>
  </tr>
  <tr>
    <td align="center">6</td>
    <td align="center">厕所</td>
    <td align="center">${cesuo.xshuliang}</td>
    <td align="center">${cesuo.xguimo}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${cesuo.gliang}</td>
    <td align="center">${cesuo.guimo}</td>
    <td align="center">${cesuo.gdi}</td>
  </tr>
  <tr>
    <td align="center">7</td>
    <td align="center">客运站</td>
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