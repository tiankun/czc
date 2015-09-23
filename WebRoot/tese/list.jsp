<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/application.js"></script> 
<style type="text/css">
.beixuan{
   position: relative; 
   font-weight:bold
}
.weixuan{
   position: relative; 
}
</style>     
</head>

<body>
<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="镇（乡）域规划统报情况列表" action="${pageContext.request.contextPath}/tese/Tese!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="quan_ming" title="乡镇名称"/>
		<ec:column property="type" title="乡镇类型"/>
		<ec:column property="tu" title="规划图"><center><c:if test="${item.tu!=null}"><a href="${pageContext.request.contextPath}/tese/ChengGuo/show.jsp?id=${item.guan_li}">${item.tu}</a></c:if></center></ec:column>
		<ec:column property="pifu" title="批复文件"><center><c:if test="${item.pifu!=null}"><a href="${pageContext.request.contextPath}/tese/ChengGuo/show.jsp?id=${item.guan_li}">${item.pifu}</a></c:if></center></ec:column>		
		<ec:column property="zhenyu" title="镇域信息统计"><center><c:if test="${item.zhenyu!=null}"><a href="${pageContext.request.contextPath}/tese/Zhenyu!show.do?id=${item.guan_li}">${item.zhenyu}</a></c:if></center></ec:column>
		<ec:column property="zhenqu" title="镇区信息统计"><center><c:if test="${item.zhenqu!=null}"><a href="${pageContext.request.contextPath}/tese/Zhenqu!show.do?id=${item.guan_li}">${item.zhenqu}</a></c:if></center></ec:column>
		<ec:column property="xiangmu" title="近期建设项目"><center><c:if test="${item.xiangmu!=null}"><a href="${pageContext.request.contextPath}/tese/Zhen_xiangmu!listGuan.do?id=${item.guan_li}">${item.xiangmu}</a></c:if></center></ec:column>
		<ec:column property="fuze" title="上报负责人"><center><c:if test="${item.fuze!=null}"><a href="${pageContext.request.contextPath}/tese/Ts_fuze!show.do?id=${item.guan_li}">${item.fuze}</a></c:if></center></ec:column>		
	</ec:row>
</ec:table>

</body>

</html>

