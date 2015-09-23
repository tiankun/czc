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
	<br /><input type="submit" value=" �� �� " onclick="document.form1.action='${pageContext.request.contextPath}/village/Village_prom!create.do?fid=${fid}&biao_shi=${biao_shi}'"/>
	<input type="button" value=" ɾ �� " onclick="batchDelete('${pageContext.request.contextPath}/village/Village_prom!delete.do?fid=${fid}&biao_shi=${biao_shi}','items',document.forms.ec)"/>
    <input type="button" value="�����б�" onclick="parent.window.location='${pageContext.request.contextPath}/village/Village_info!list.do?biao_shi=${biao_shi}'"/>
</form>

<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="������Ŀ�ʽ����"
	action="${pageContext.request.contextPath}/village/Village_prom!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
	    <ec:column property="ѡ��" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" width="10px" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
	    <ec:column property="shudi" title="��Ŀ����"/>
		<ec:column property="total_vest" title="��Ͷ��(Ԫ)"  />
		<ec:column property="total_use" title="�ܵ�λ�ʽ�(Ԫ)"/>
		<ec:column property="county_supple" title="���Ҳ���(Ԫ)"/>
		<ec:column property="county_supple_use" title="���Ҳ�����λ�ʽ�(Ԫ)"/>
		<ec:column property="province_supple" title="ʡ������(Ԫ)"/>
		<ec:column property="province_supple_use" title="ʡ��������λ�ʽ�(Ԫ)"/>
		<ec:column property="place_supple" title="ʡ������(Ԫ)"/>
		<ec:column property="place_supple_use" title="�ط����׵�λ�ʽ�(Ԫ)"/>
		<ec:column property="self" title="�Գ�(Ԫ)"/>
		<ec:column property="self_use" title="�Գﵽλ�ʽ�(Ԫ)"/>
		<ec:column property="����" title="����" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/village/Village_prom!show.do?id=${item.id}&fid=${fid}&biao_shi=${biao_shi}">�鿴</a>&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/village/Village_prom!edit.do?id=${item.id}&fid=${fid}&biao_shi=${biao_shi}">�޸�</a>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

