<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld"  prefix="c"%>
<%@page import="com.zsc.util.WebUtil"%>
<c:set var="webUtil" value="<%=new WebUtil()%>"/>
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
<form action="" method="post" name="form1">
	<c:if test="${shiwu_gushu==null||shiwu_gushu.status!=webUtil.applied}">
		<input type="submit" value=" 新 增 " onclick="document.form1.action='${pageContext.request.contextPath}/gushu/Gujianzhu!create.do'"/>
		<input type="button" value=" 删 除 " onclick="batchDelete('${pageContext.request.contextPath}/gushu/Gujianzhu!delete.do','items',document.forms.ec)"/>
	</c:if>
</form>

<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="古建筑调查登记表"
	action="${pageContext.request.contextPath}/gushu/Gujianzhu!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<c:if test="${shiwu_gushu==null||shiwu_gushu.status!=webUtil.applied}">
		<ec:column property="选择" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" width="10px" sortable="false" filterable="false">
			<c:if test="${item.num==null}">
				<input type="checkbox" name="items" value="${item.id}"/>
			</c:if>
		</ec:column>
		</c:if>
		<ec:column property="mingcheng" title="项目名称"/>
		<ec:column property="juti" title="建造年代"/>
		<ec:column property="jiegou" title="结构形式"/>
		<ec:column property="cengshu" title="建筑层数（层）"/>
		<ec:column property="gaodu" title="建筑高度（米）"/>
		<ec:column property="mianji" title="建筑面积（平方米）"/>
		<ec:column property="操作" title="操作" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/gushu/Gujianzhu!show.do?id=${item.id}&">查看</a>
			<c:if test="${shiwu_gushu==null||shiwu_gushu.status!=webUtil.applied}">
				<c:if test="${item.num==null}">
					&nbsp;&nbsp;&nbsp;
					<a href="${pageContext.request.contextPath}/gushu/Gujianzhu!edit.do?id=${item.id}&">修改</a>
				</c:if>
			</c:if>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

