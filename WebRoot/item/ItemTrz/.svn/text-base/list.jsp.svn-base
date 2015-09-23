<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/application.js"></script>
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
</head>

<body>
<%@ include file="../top.jsp" %>
<c:if test="${checkArea==true}">
<A href="${pageContext.request.contextPath}/item/Item_trz!create.do?item=${item}"><STRONG>====添加项目投融资情况====</STRONG></A>
</c:if>
<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="项目投融资情况列表"
	action="#" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="tz_shang" title="投资商"/>
		<ec:column property="xingzhi" title="性质"/>
		<ec:column property="kaizhan" title="开始投融资"/>
		<ec:column property="hezuo" title="合作方式"/>
		<ec:column property="fanwei" title="经营范围"/>
		<ec:column property="bili" title="投资商出资比例（%）"/>
		<ec:column property="hetong" title="签订协议合同"/>
		<ec:column property="操作" title="操作" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/item/Item_trz!show.do?id=${item.id}">查看</a>&nbsp;&nbsp;&nbsp;
            <c:if test="${checkArea==true}">
			<a href="${pageContext.request.contextPath}/item/Item_trz!edit.do?id=${item.id}">修改</a>
			<a href="${pageContext.request.contextPath}/item/Item_trz!delete.do?item=${item}&items=${item.id}">修改</a>
			</c:if>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

