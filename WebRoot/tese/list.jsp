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
<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="���磩��滮ͳ������б�" action="${pageContext.request.contextPath}/tese/Tese!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="quan_ming" title="��������"/>
		<ec:column property="type" title="��������"/>
		<ec:column property="tu" title="�滮ͼ"><center><c:if test="${item.tu!=null}"><a href="${pageContext.request.contextPath}/tese/ChengGuo/show.jsp?id=${item.guan_li}">${item.tu}</a></c:if></center></ec:column>
		<ec:column property="pifu" title="�����ļ�"><center><c:if test="${item.pifu!=null}"><a href="${pageContext.request.contextPath}/tese/ChengGuo/show.jsp?id=${item.guan_li}">${item.pifu}</a></c:if></center></ec:column>		
		<ec:column property="zhenyu" title="������Ϣͳ��"><center><c:if test="${item.zhenyu!=null}"><a href="${pageContext.request.contextPath}/tese/Zhenyu!show.do?id=${item.guan_li}">${item.zhenyu}</a></c:if></center></ec:column>
		<ec:column property="zhenqu" title="������Ϣͳ��"><center><c:if test="${item.zhenqu!=null}"><a href="${pageContext.request.contextPath}/tese/Zhenqu!show.do?id=${item.guan_li}">${item.zhenqu}</a></c:if></center></ec:column>
		<ec:column property="xiangmu" title="���ڽ�����Ŀ"><center><c:if test="${item.xiangmu!=null}"><a href="${pageContext.request.contextPath}/tese/Zhen_xiangmu!listGuan.do?id=${item.guan_li}">${item.xiangmu}</a></c:if></center></ec:column>
		<ec:column property="fuze" title="�ϱ�������"><center><c:if test="${item.fuze!=null}"><a href="${pageContext.request.contextPath}/tese/Ts_fuze!show.do?id=${item.guan_li}">${item.fuze}</a></c:if></center></ec:column>		
	</ec:row>
</ec:table>

</body>

</html>

