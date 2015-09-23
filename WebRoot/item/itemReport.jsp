<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css"/>
<script language="JavaScript" src="${pageContext.request.contextPath}/script/status.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/FusionCharts.js"></script>
<style>
td{
height: 22px;
}
.STYLE1 {
	font-weight: bold;
}
</style>
</head>
<body>
<%@ include file="top.jsp" %>
<table width="100%" border="1" cellspacing="0" cellpadding="0" align="center">
	     <tr class="tHead">
		  <td colspan="2" align="center">计划进度</td>
          <td colspan="2" align="center">实际进度</td>
	    </tr>
<c:forEach items="${plans}" var="plan"> 
<c:forEach items="${plan.liebiao}" var="lieb" varStatus="n">
<c:set var="temp" value="${itemReports[lieb]}"/>
		<tr onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">
		  <c:if test="${n.count==1}"><td width="10%" align="center" rowspan="${plan.hang}">${plan.jieduan}</td></c:if>
          <td width="10%" align="center">${lieb}</td>
		  <td width="70%"><c:if test="${temp!=null}">[<strong>${temp.jieduan}</strong>]&nbsp;${temp.jinzhan}</c:if></td>
		  <td width="10%" align="center"><c:choose><c:when test="${temp.pz_zhuangtai==1}"><img src="<c:url value='/images/green.bmp'/>" border="0" align="absbottom" ></c:when><c:when test="${temp.pz_zhuangtai==2}"><img src="<c:url value='/images/red.bmp'/>" border="0" align="absbottom" ></c:when></c:choose></td>
		 </tr>
</c:forEach>		 
</c:forEach>
<c:forEach items="${list}" var="cc"> 		 				
		 <tr>
		  <td width="10%" align="center" bgcolor="#FFCACA"></td>
          <td width="10%" align="center" bgcolor="#FFCACA">${cc.yuefen}</td>
		  <td width="70%" bgcolor="#FFCACA">[<strong>${cc.jieduan}</strong>]&nbsp;${cc.jinzhan}</td>
		  <td width="10%" align="center" bgcolor="#FFCACA"><c:choose><c:when test="${cc.pz_zhuangtai==1}"><img src="<c:url value='/images/green.bmp'/>" border="0" align="absbottom" ></c:when><c:when test="${cc.pz_zhuangtai==2}"><img src="<c:url value='/images/red.bmp'/>" border="0" align="absbottom" ></c:when></c:choose></td>
		 </tr>
</c:forEach>		  
</table>
<br/><center><table border="1" width="50%"><tr>
  <td align="center"><img src="<c:url value='/images/green.bmp'/>" border="0" align="absbottom" >&nbsp;&nbsp;按期完成&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="<c:url value='/images/red.bmp'/>" border="0" align="absbottom" >&nbsp;&nbsp;未按期完成<c:if test="${fn:length(fn:split(user.biao_shi,'_'))==3}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A href="${pageContext.request.contextPath}/item/Item_plan!edit.do?item=${item}" target="list" class="STYLE1"><font color="#FF0000">修改计划</font></A></c:if></td>
</tr></table></center><br/><br/><br/>	  	  
<table width="100%" border="0" cellspacing="0" cellpadding="3" align="center" >
  <tr> 
    <td valign="top" class="text" align="center"><div id="Line" align="center" style="height:500">项目实际资金使用示意图</div>
        <script type="text/javascript">
		   var chart = new FusionCharts("<c:url value='/images/Line.swf'/>", "ChartId", "100%", "500", "0", "0");	
		   chart.setDataXML("<chart caption='项目实际资金使用示意图（万元）'  xAxisName='月份' yAxisName='资金' showValues='1' alternateHGridColor='FCB541' divLineColor='91C728' divLineAlpha='50'  canvasBorderColor='666666' baseFontColor='666666' lineColor='91C728' baseFontSize ='12' rotateYAxisName='0' labelDisplay='Rotate' slantLabels='1'><c:forEach items="${zijin}" var="zj"><set label='${zj.yuefen}' value='${zj.sj_shiyong}' /></c:forEach><c:if test="${fn:length(zijin)==0}"><set label='' value='0' /></c:if></chart>");
		   chart.render("Line");
		</script> </td>
  </tr>
</table>
<br/><br/><br/>
<table width="100%" border="0" cellspacing="0" cellpadding="3" align="center">
  <tr> 
    <td valign="top" class="text" align="center"><div id="Column2D" align="center" style="height:500">项目资金情况统计示意图</div>
       <script type="text/javascript">
		   var chart = new FusionCharts("<c:url value='/images/Column2D.swf'/>", "ChartId", "100%", "400", "0", "0");
		   chart.setDataXML("<chart palette='2' caption='项目资金情况示意图（万元）' xAxisName='分类' yAxisName='资金' showValues='1' decimals='0' formatNumberScale='0' useRoundEdges='1' baseFontSize ='12' rotateYAxisName='0'><set label='预算投资资金' value='${tongji.yu_touzi}' /><set label='实际到位资金' value='${tongji.lj_daowei}' /><set label='实际使用资金' value='${tongji.lj_shiyong}' /></chart>");	   
		   chart.render("Column2D");
		</script> </td>
  </tr>
</table>  
</body>
</html>