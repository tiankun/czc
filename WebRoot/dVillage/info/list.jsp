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
		<input type="submit" value=" �� �� " onclick="document.form1.action='${pageContext.request.contextPath}/dVillage/Demonstration_village!create.do'"/>
		<input type="button" value=" ɾ �� " onclick="batchDelete('${pageContext.request.contextPath}/dVillage/Demonstration_village!delete.do','items',document.forms.ec)"/>
	</c:if>
</form>

<ec:table items='dvlist' var="item" view="compact" rowsDisplayed="20" title="ʡ���滮����ʾ������Ϣͳ�Ʊ�"
	action="${pageContext.request.contextPath}/dVillage/Demonstration_village!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
	    <ec:column property="ѡ��" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" width="10px" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
		<ec:column property="area_name" title="����"/>
		<ec:column property="lxr" title="��ϵ��"/>
		<ec:column property="cymj" title="�������"/>
		<ec:column property="hjrk" title="�����˿�"/>
		<ec:column property="zymz" title="��Ҫ����"/>
		<ec:column property="zycy" title="��Ҫ��ҵ"/>
		<ec:column property="����" title="����" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/dVillage/Demonstration_village!show.do?id=${item.id}&biao_shi=${biao_shi}">�鿴</a>
			<a href="${pageContext.request.contextPath}/dVillage/Demonstration_village!edit.do?id=${item.id}&biao_shi=${biao_shi}">�޸�</a>
		</ec:column>
	</ec:row>
</ec:table>
</body>

</html>

