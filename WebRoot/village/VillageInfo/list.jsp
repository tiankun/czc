<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" Fcontent="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/application.js"></script>
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
</head>

<body>
<form action="" method="post" name="form1">

	<%-- <input type="submit" value=" �� �� " onclick="document.form1.action='${pageContext.request.contextPath}/village/Village_info!create.do?&biao_shi=${biao_shi}'"/>
	<input type="button" value=" ɾ �� " onclick="batchDelete('${pageContext.request.contextPath}/village/Village_info!delete.do?&biao_shi=${biao_shi}','items',document.forms.ec)"/> --%>

	<br/><input type="submit" value=" �� �� " onclick="document.form1.action='${pageContext.request.contextPath}/village/Village_info!create.do'"/>
	<input type="button" value=" ɾ �� " onclick="batchDelete('${pageContext.request.contextPath}/village/Village_info!delete.do','items',document.forms.ec)"/>

</form>

<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="���������Ϣ(ƽ���ܽ���${countNum}%)"
	action="${pageContext.request.contextPath}/village/Village_info!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
	    <ec:column property="ѡ��" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" width="10px" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
	    <ec:column property="shudi" title="�������С�������������"/>   
		<ec:column property="name" title="��������"/>
		<ec:column property="area" title="�������(ƽ����)"/>
		<ec:column property="space" title="��ׯռ�����(ƽ����)"/>
		<ec:column property="permenent_residents" title="��ס�˿�(��)"/>
		<ec:column property="revenue" title="�弯��������(Ԫ)"/>
		<ec:column property="national" title="��Ҫ����"/>
		<ec:column property="traditional_village_groups" title="��ͳ��������" />
		<ec:column property="request_money_groups" title="�����ʽ�����"/>
		<ec:column property="avg" title="�ܽ������(%)"/>
		<ec:column property="ave_income" title="�����˾�������(Ԫ)"/>
		<ec:column property="����" title="����" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/village/Village_info!show.do?id=${item.id}&biao_shi=${biao_shi}">�鿴</a>&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/village/Village_info!edit.do?id=${item.id}&biao_shi=${biao_shi}">�޸�</a>
		</ec:column>
	</ec:row>
</ec:table>
</body>
</html>

