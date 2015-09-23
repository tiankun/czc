<%@ page contentType="text/html;charset=GBK" %>
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
<form action="" method="post" name="form1">
	<input type="submit" value=" �� �� " onclick="document.form1.action='${pageContext.request.contextPath}/admin/Popedom!create.do'"/>
	<input type="button" value=" ɾ �� " onclick="batchDelete('${pageContext.request.contextPath}/admin/Popedom!delete.do','items',document.forms.ec)"/>
</form>

<ec:table items='myList' var="item" view="compact" rowsDisplayed="20"
	action="${pageContext.request.contextPath}/admin/Popedom!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="ѡ��" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" width="10px" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
		<ec:column property="name" title="Ȩ����"/>
		<ec:column property="path" title="����·��"/>
		<ec:column property="target" title="Ŀ��"/>
		<ec:column property="type" title="Ȩ������"/>
		<ec:column property="check_up" title="�Ƿ���Ҫ��֤"/>
		<ec:column property="����" title="����" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/admin/Popedom!show.do?id=${item.id}&">�鿴</a>&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/admin/Popedom!edit.do?id=${item.id}&">�޸�</a>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

