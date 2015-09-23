<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>    
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" >
function mySearch(city,year){
document.form1.action='${pageContext.request.contextPath}/admin/itemWeeklyTongji.do?type=${type}&year='+year+'&city='+city;
document.form1.submit();
}
</script>
<style type="text/css">
<!--
.STYLE1 {color: #FFFFFF}
.STYLE10 {color: #3333FF}
-->
</style>
</head>
<body>
<c:if test="${fn:length(fn:split(user.biao_shi,'_'))==3}"><A href="${pageContext.request.contextPath}/item/Item_plan!edit.do?type=${type}"><STRONG>====添加县级直管项目====</STRONG></A></c:if>
<table width="100%" border="1" cellspacing="0" cellpadding="0">
  <tr class=tHead><td colspan="58" align="center"><c:choose><c:when test="${type==1}">供水</c:when><c:when test="${type==2}">污水处理</c:when><c:otherwise>垃圾处理</c:otherwise></c:choose>项目${year}年进度月报情况</span></strong></td>
  </tr> 
  <tr class=tHead>
    <td style="width:30px"><span class="STYLE1">编号</span></td>
    <td align="center"><span class="STYLE1">项目</span></td>
    <td align="center" style="width:180px"><span class="STYLE1">属地</span></td>
    <td align="center" style="width:100px"><span class="STYLE1">所处阶段</span></td>
 <c:forEach  begin="${1}" end="${12}" var="month" > 
    <td align="center" style="width:50px"><span class="STYLE1">${month}</span></td> 
 </c:forEach>	
  </tr>
<tbody class=myList> 
 <c:forEach items="${itemReportTongJi.item}" var="tongji" varStatus="s"> 
  <tr onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">
    <td align="center">${s.count}</td>
    <td>&nbsp;<a href="${pageContext.request.contextPath}/item/Item_plan!show.do?item=${tongji.id}" target="list" title="点击查看项目详细情况">${tongji.name}</a></td>
    <td>${tongji.quan_ming}</td>
    <td align="center">${tongji.jieduan}</td>
<%for(int i=0;i<12;i++){%>
<c:set var="week" value="<%=i+1%>"/>
<c:set var="temp" value="${tongji.id}@${week}"/>
    <td align="center" style="width:50px"><c:choose><c:when test="${itemReportTongJi.itemReports[temp]==null}"><font color="red">未报</font></c:when><c:when test="${itemReportTongJi.itemReports[temp]==0}"><font color="#0000CC">未审</font></c:when><c:when test="${itemReportTongJi.itemReports[temp]==1}"><img src="<c:url value='/images/green.bmp'/>" border="0" align="absbottom"  width="20px"></c:when><c:when test="${itemReportTongJi.itemReports[temp]==2}"><img src="<c:url value='/images/red.bmp'/>" border="0" align="absbottom"  width="20px"></c:when></c:choose></td> 
<%}%>	
  </tr>
</c:forEach>
<tbody>
</table>
</body>
</html>