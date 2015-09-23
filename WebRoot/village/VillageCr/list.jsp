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
	<br /><input type="submit" value=" �� �� " onclick="document.form1.action='${pageContext.request.contextPath}/village/Village_cr!create.do?fid=${fid}&biao_shi=${biao_shi}'"/>
	<input type="button" value=" ɾ �� " onclick="batchDelete('${pageContext.request.contextPath}/village/Village_cr!delete.do?fid=${fid}&biao_shi=${biao_shi}','items',document.forms.ec)"/>
	<input type="button" value="�����б�" onclick="parent.window.location='${pageContext.request.contextPath}/village/Village_info!list.do?biao_shi=${biao_shi}'"/>
</form>

<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="����ͷ������Ļ��Ų���������(��Ŀƽ������${list2[0].avg}%)"
	action="${pageContext.request.contextPath}/village/Village_cr!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
	    <ec:column property="ѡ��" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" width="10px" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
	    <ec:column property="shudi" title="��Ŀ����"/>
		<ec:column property="pro_id" title="��Ŀ���"/>
		<ec:column property="pro_name" title="��Ŀ����"/>
		<ec:column property="pro_content" title="��Ŀ����"/>
		<ec:column property="pro_scope" title="��Ŀ��ģ"/>
		<ec:column property="pro_progress" title="��Ŀ����(%)"/>
		<ec:column property="stime" title="���̿���ʱ��"/>
		<ec:column property="ftime" title="��������"/>
		<ec:column property="permenent_residents" title="��������(��)"/>
		<ec:column property="flag" title="�Ƿ񿢹�"/>	
		<ec:column property="����" title="����" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/village/Village_cr!show.do?id=${item.id}&fid=${fid}&biao_shi=${biao_shi}">�鿴</a>&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/village/Village_cr!edit.do?id=${item.id}&fid=${fid}&biao_shi=${biao_shi}">�޸�</a>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

