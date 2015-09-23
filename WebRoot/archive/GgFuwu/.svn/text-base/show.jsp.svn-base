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
<form action="${pageContext.request.contextPath}/archive/Gg_fuwu!edit.do" method="post">
	<input type="hidden" Id="id" name="id" value="${gg_fuwu.id}"/>
	<input type="hidden" Id="unit_id" name="unit_id" value="${unit_id}"/>
	<input type="hidden" Id="pingfen" name="pingfen" value="${pingfen}"/>
	<table width="100%" border="1" class="myInput">
    <tr>	
		<td colspan="9" class="myInputTitle"><strong>公共服务设施情况基本信息</strong></td>	
	</tr>
  <tr align="center">
    <td rowspan="2" align="center" class="myInputTitle"><strong>序号</strong></td>
    <td rowspan="2" align="center" class="myInputTitle"><strong>类别</strong></td>
    <td rowspan="2" align="center" class="myInputTitle"><strong>设施名称</strong></td>
    <td colspan="2" align="center" class="myInputTitle"><strong>现状</strong></td>
    <td colspan="4" align="center" class="myInputTitle"><strong>规划</strong></td>
  </tr>
  <tr align="center">
    <td align="center" class="myInputTitle"><strong>数量（个）</strong></td>
    <td align="center" class="myInputTitle"><strong>规模<br />
（公顷）</strong></td>
    <td align="center" class="myInputTitle"><strong>是否需要规划新建</strong></td>
    <td align="center" class="myInputTitle"><strong>数量（个）</strong></td>
    <td align="center" class="myInputTitle"><strong>所在自然村</strong></td>
    <td align="center" class="myInputTitle"><strong>用地规模（公顷）</strong></td>
  </tr>
  <tr align="center">
    <td align="center">1</td>
    <td align="center">行政</td>
    <td align="center">村委会</td>
    <td align="center">${cunwei.shu_liang}</td>
    <td align="center">${cunwei.gui_mo}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${cunwei.gshu_liang}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${cunwei.ggui_mo}</td>
  </tr>
  <tr align="center">
    <td align="center">2</td>
    <td rowspan="2" align="center">教育</td>
    <td align="center">小学</td>
    <td align="center">${xiaoxue.shu_liang}</td>
    <td align="center">${xiaoxue.gui_mo}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${xiaoxue.gshu_liang}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${xiaoxue.ggui_mo}</td>
  </tr>
  <tr align="center">
    <td align="center">3</td>
    <td align="center">幼儿园</td>
    <td align="center">${youer.shu_liang}</td>
    <td align="center">${youer.gui_mo}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${youer.gshu_liang}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${youer.ggui_mo}</td>
  </tr>
  <tr align="center">
    <td align="center">4</td>
    <td rowspan="2" align="center">医疗</td>
    <td align="center">卫生所</td>
    <td align="center">${weisheng.shu_liang}</td>
    <td align="center">${weisheng.gui_mo}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${weisheng.gshu_liang}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${weisheng.ggui_mo}</td>
  </tr>
  <tr align="center">
    <td align="center">5</td>
    <td align="center">私人诊所</td>
    <td align="center">${zhensuo.shu_liang}</td>
    <td align="center">${zhensuo.gui_mo}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${zhensuo.gshu_liang}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${zhensuo.ggui_mo}</td>
  </tr>
  <tr align="center">
    <td align="center">6</td>
    <td rowspan="4" align="center">文体</td>
    <td align="center">图书室</td>
    <td align="center">${tushu.shu_liang}</td>
    <td align="center">${tushu.gui_mo}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${tushu.gshu_liang}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${tushu.ggui_mo}</td>
  </tr>
  <tr align="center">
    <td align="center">7</td>
    <td align="center">老年活动室</td>
    <td align="center">${laonian.shu_liang}</td>
    <td align="center">${laonian.gui_mo}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${laonian.gshu_liang}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${laonian.ggui_mo}</td>
  </tr>
  <tr align="center">
    <td align="center">8</td>
    <td align="center">娱乐室</td>
    <td align="center">${yule.shu_liang}</td>
    <td align="center">${yule.gui_mo}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${yule.gshu_liang}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${yule.ggui_mo}</td>
  </tr>
  <tr align="center">
    <td align="center">9</td>
    <td align="center">公共活动场</td>
    <td align="center">${common.shu_liang}</td>
    <td align="center">${common.gui_mo}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${common.gshu_liang}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${common.ggui_mo}</td>
  </tr>
  <tr align="center">
    <td align="center">10</td>
    <td align="center">商业</td>
    <td align="center">商店</td>
    <td align="center">${shoop.shu_liang}</td>
    <td align="center">${shoop.gui_mo}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${shoop.gshu_liang}</td>
    <td align="center">&nbsp;</td>
    <td align="center">${shoop.ggui_mo}</td>
  </tr>
	</table>
</form>
</body>
</html>