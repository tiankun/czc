<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/scripts/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/FusionCharts.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 
<script src="${pageContext.request.contextPath}/scripts/ligerUI/ligerui.min.js" type="text/javascript"></script>
<SCRIPT LANGUAGE="JavaScript">
function myJS(id){
$.ligerDialog.open({width:425,height:425,title:'古树按级别统计',target: $("#jibie2D"),isDrag:false});
}
function mylink(biao_shi){
parent.document.getElementById("biao_shi").value=biao_shi;
parent.checkShow('${pageContext.request.contextPath}/gushu/Gushu!report.do',4);
}
function detaillist(){
	window.location.href="${pageContext.request.contextPath}/gushu/Gushu!listSearch.do?biao_shi="+parent.document.getElementById("biao_shi").value;
}
</SCRIPT>
</head>

<body>
<c:if test="${xiang!='Y'}"><table width="100%" border="0" cellspacing="0" cellpadding="3" align="center">
  <tr> 
    <td valign="top" class="text" align="center"> <div id="diqu2D" align="center"></div>
       <script type="text/javascript">
		   var chart = new FusionCharts("${pageContext.request.contextPath}/images/Column2D.swf", "ChartId", "100%", "350", "0", "0");
		   chart.setDataXML("${diqu}");	   
		   chart.render("diqu2D");
		</script> </td>
  </tr>
</table>
<br/>
</c:if>
<center><a href="" onclick="javascript:detaillist();return false;">查看详细列表</a></center>
<table width="100%" border="0" cellspacing="0" cellpadding="3" align="center">
  <tr> 
    <td valign="top" class="text" align="center" style="width:50%"><div id="leixing2D" align="left"></div>
       <script type="text/javascript">
		   var chart = new FusionCharts("${pageContext.request.contextPath}/images/Pie2D.swf", "ChartId", "98%", "350", "0", "0");
		   chart.setDataXML("${leixing}");	   
		   chart.render("leixing2D");
		</script> </td>
    <td valign="top" class="text" align="center" style="width:50%"><div id="zhuangkuang2D" align="right"></div>
       <script type="text/javascript">
		   var chart = new FusionCharts("${pageContext.request.contextPath}/images/Pie2D.swf", "ChartId", "98%", "350", "0", "0");
		   chart.setDataXML("${zhuangkuang}");	   
		   chart.render("zhuangkuang2D");
		</script> </td>		
  </tr>
</table>
<div id="jibie2D" style="display:none;"></div>
       <script type="text/javascript">
		   var chart = new FusionCharts("${pageContext.request.contextPath}/images/Pie2D.swf", "ChartId", "400", "360", "0", "0");
		   chart.setDataXML("${jiebie}");	   
		   chart.render("jibie2D");
		</script>
</body>
</html>