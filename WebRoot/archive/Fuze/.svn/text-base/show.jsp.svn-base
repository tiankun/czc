<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/application.js"></script>
    <script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script> 
<head>
</head>
<body>
<%@ include file="/archive/top.jsp" %>

<ec:table items='fuzeList' var="item" view="compact" rowsDisplayed="20" title="各级数据填报单位负责人及责任人情况列表" action="#" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
	    <ec:column property="rowcount" cell="rowCount" title="序号" sortable="false" filterable="false" style="width:30px"/>
		<ec:column property="quan_ming" title="地名"/>
		<ec:column property="fz_ren" title="负责人姓名"/>
		<ec:column property="fz_danwei" title="负责人单位"/>
		<ec:column property="fz_zhiwu" title="负责人职务"/>
		<ec:column property="fz_dianhua" title="负责人电话"/>
		<ec:column property="zr_ren" title="责任人姓名"/>
		<ec:column property="zr_danwei" title="责任人单位"/>
		<ec:column property="zr_zhiwu" title="责任人职务"/>
		<ec:column property="zr_dianhua" title="责任人电话"/>
	</ec:row>
</ec:table>

</body>
</html>