<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath}/styles/default.css">
<link href="${pageContext.request.contextPath}/scripts/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css"></link> 
<SCRIPT language=JavaScript src="${pageContext.request.contextPath}/scripts/status.js"></SCRIPT>
<SCRIPT language=JavaScript src="${pageContext.request.contextPath}/scripts/FusionCharts.js"></SCRIPT>
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/ligerUI/ligerui.min.js"></script>
<script type="text/javascript" language="javascript">   
	//artDialog弹出窗口  
	function artDialogOpen(){ 
		$.ligerDialog.open({ url: '${pageContext.request.contextPath}/demo/create_arrange.jsp?p_type=${param.p_type}', width:800,height:600,isResize:true,title:'项目计划填报'});
	}
</script>
<STYLE>
TD {
	HEIGHT: 22px
}
</STYLE>

<META name=GENERATOR content="MSHTML 9.00.8112.16470"></HEAD>
<BODY>
<%@ include file="gs_top.jsp" %>
<TABLE border=1 cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR class=tHead>
    <TD colSpan=2 align=center>计划进度</TD>
    <TD colSpan=2 align=center>实际进度</TD></TR>
  <TR>
    <TD rowSpan=2 width="10%" align=center><STRONG>可研阶段</STRONG></TD>
    <TD width="10%" align=center>2010-01</TD>
    <TD width="70%" align=center>[可研阶段]&nbsp;&nbsp;正编制可研，环评，地质灾害评估报告，</TD>
    <TD width="10%" align=center><IMG border=0 align=absBottom 
      src="${pageContext.request.contextPath}/images/green.bmp"></TD></TR>
  <TR>
    <TD width="10%" align=center>2010-02</TD>
    <TD width="70%" align=center>[可研阶段]&nbsp;&nbsp;已完成可研初审，正在修编可研，编制环评。</TD>
    <TD width="10%" align=center><IMG border=0 align=absBottom 
      src="${pageContext.request.contextPath}/images/green.bmp"></TD></TR>
  <TR>
    <TD style="HEIGHT: 1px" colSpan=4 align=center></TD></TR>
  <TR>
    <TD width="10%" align=center><STRONG>初步设计阶段</STRONG></TD>
    <TD width="10%" align=center>2010-03</TD>
    <TD width="70%" align=center>[可研阶段]&nbsp;&nbsp;已完成可研编制，正上报评审。</TD>
    <TD width="10%" align=center><IMG border=0 align=absBottom 
      src="${pageContext.request.contextPath}/images/green.bmp"></TD></TR>
  <TR>
    <TD style="HEIGHT: 1px" colSpan=4 align=center></TD></TR>
  <TR>
    <TD rowSpan=11 width="10%" align=center><STRONG>施工图阶段</STRONG></TD>
    <TD width="10%" align=center>2010-01</TD>
    <TD width="70%" align=center></TD>
    <TD width="10%" align=center></TD></TR>
  <TR>
    <TD width="10%" align=center>2010-02</TD>
    <TD width="70%" align=center></TD>
    <TD width="10%" align=center></TD></TR>
  <TR>
    <TD width="10%" align=center>2010-03</TD>
    <TD width="70%" align=center></TD>
    <TD width="10%" align=center></TD></TR>
  <TR>
    <TD width="10%" align=center>2010-04</TD>
    <TD width="70%" 
      align=center>[可研阶段]&nbsp;&nbsp;完成环评评审待批复，完成可研评审未通过。正编制地质详勘、水土保持方案及上报土地审批。</TD>
    <TD width="10%" align=center><IMG border=0 align=absBottom 
      src="${pageContext.request.contextPath}/images/green.bmp"></TD></TR>
  <TR>
    <TD width="10%" align=center>2010-05</TD>
    <TD width="70%" 
      align=center>[可研阶段]&nbsp;&nbsp;可研报告重报待批复，已完成污水厂地质详勘、土地预审工作。正进行施工图设计、土地勘察定界相关工作。</TD>
    <TD width="10%" align=center><IMG border=0 align=absBottom 
      src="${pageContext.request.contextPath}/images/green.bmp"></TD></TR>
  <TR>
    <TD width="10%" align=center>2010-06</TD>
    <TD width="70%" 
      align=center>[可研阶段]&nbsp;&nbsp;可研重审通过待批复，正编制初步设计。新建完成200米长、直径500毫米（HDPE）排污管。</TD>
    <TD width="10%" align=center><IMG border=0 align=absBottom 
      src="${pageContext.request.contextPath}/images/green.bmp"></TD></TR>
  <TR>
    <TD width="10%" align=center>2010-07</TD>
    <TD width="70%" align=center>[可研阶段]&nbsp;&nbsp;已通过第二次可研评审待批复，同时正在做初步设计。</TD>
    <TD width="10%" align=center><IMG border=0 align=absBottom 
      src="${pageContext.request.contextPath}/images/green.bmp"></TD></TR>
  <TR>
    <TD width="10%" align=center>2010-08</TD>
    <TD width="70%" align=center></TD>
    <TD width="10%" align=center></TD></TR>
  <TR>
    <TD width="10%" align=center>2010-09</TD>
    <TD width="70%" align=center></TD>
    <TD width="10%" align=center></TD></TR>
  <TR>
    <TD width="10%" align=center>2010-10</TD>
    <TD width="70%" align=center></TD>
    <TD width="10%" align=center></TD></TR>
  <TR>
    <TD width="10%" align=center>2010-11</TD>
    <TD width="70%" align=center></TD>
    <TD width="10%" align=center></TD></TR>
  <TR>
    <TD style="HEIGHT: 1px" colSpan=4 align=center></TD></TR>
  <TR>
    <TD width="10%" align=center><STRONG>土建阶段</STRONG></TD>
    <TD width="10%" align=center>2010-12</TD>
    <TD width="70%" align=center></TD>
    <TD width="10%" align=center></TD></TR>
  <TR>
    <TD style="HEIGHT: 1px" colSpan=4 align=center></TD></TR></TBODY></TABLE><BR>
<CENTER>
<TABLE border=1 width="50%">
  <TBODY>
  <TR>
    <TD align=center><IMG border=0 align=absBottom 
      src="${pageContext.request.contextPath}/images/green.bmp">&nbsp;&nbsp;按期完成&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<IMG 
      border=0 align=absBottom 
  src="${pageContext.request.contextPath}/images/red.bmp">&nbsp;&nbsp;未按期完成
  </TD></TR></TBODY></TABLE>
  <BR>
<TABLE border="0" width="50%">
  <TBODY>
  <TR>
    <TD align=center>
  		&nbsp;&nbsp;&nbsp;&nbsp;<a href="" onclick="artDialogOpen();return false;"><span style="color: red;font-weight:bold;font-size:large" >项目计划填报</span></a>
  </TD></TR></TBODY></TABLE>
</CENTER><BR><BR><BR>
<TABLE border=0 cellSpacing=0 cellPadding=3 width="100%" align=center>
  <TBODY>
  <TR>
    <TD class=text vAlign=top align=center>
      <DIV id=Line align=center>FusionCharts. </DIV>
      <SCRIPT type=text/javascript>
		   var chart = new FusionCharts("${pageContext.request.contextPath}/images/Line.swf", "ChartId", "100%", "500", "0", "0");
		   //chart.setDataURL("/cjc/flash/Line2D.xml");	
		   chart.setDataXML("<chart caption='项目实际资金使用示意图（万元）'  xAxisName='月份' yAxisName='资金' showValues='1' alternateHGridColor='FCB541' divLineColor='91C728' divLineAlpha='50'  canvasBorderColor='666666' baseFontColor='666666' lineColor='91C728' baseFontSize ='12' rotateYAxisName='0' labelDisplay='Rotate' slantLabels='1'><set label='2010-01' value='2.0' /><set label='2010-02' value='0.0' /><set label='2010-03' value='0.0' /><set label='2010-04' value='3.0' /><set label='2010-05' value='0.7' /><set label='2010-06' value='24.0' /><set label='2010-07' value='0.0' /></chart>");
		   chart.render("Line");
		</SCRIPT>
    </TD></TR></TBODY></TABLE><BR><BR><BR>
<TABLE border=0 cellSpacing=0 cellPadding=3 width="100%" align=center>
  <TBODY>
  <TR>
    <TD class=text vAlign=top align=center>
      <DIV id=Column2D align=center>FusionCharts. </DIV>
      <SCRIPT type=text/javascript>
		   var chart = new FusionCharts("${pageContext.request.contextPath}/images/Column2D.swf", "ChartId", "100%", "400", "0", "0");
		   //chart.setDataURL("/cjc/flash/Column2D.xml");	
		   chart.setDataXML("<chart palette='2' caption='项目资金情况示意图（万元）' xAxisName='分类' yAxisName='资金' showValues='1' decimals='0' formatNumberScale='0' useRoundEdges='1' baseFontSize ='12' rotateYAxisName='0'><set label='计划到位资金' value='42.0' /><set label='实际到位资金' value='22.0' /><set label='实际使用资金' value='29.7' /></chart>");	   
		   chart.render("Column2D");
		</SCRIPT>
    </TD></TR></TBODY></TABLE></BODY></HTML>
