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
	<br /><input type="submit" value=" 新 增 " onclick="document.form1.action='${pageContext.request.contextPath}/village/Village_cr!create.do?fid=${fid}&biao_shi=${biao_shi}'"/>
	<input type="button" value=" 删 除 " onclick="batchDelete('${pageContext.request.contextPath}/village/Village_cr!delete.do?fid=${fid}&biao_shi=${biao_shi}','items',document.forms.ec)"/>
	<input type="button" value="返回列表" onclick="parent.window.location='${pageContext.request.contextPath}/village/Village_info!list.do?biao_shi=${biao_shi}'"/>
</form>

<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="文物和非物质文化遗产保护利用(项目平均进度${list2[0].avg}%)"
	action="${pageContext.request.contextPath}/village/Village_cr!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
	    <ec:column property="选择" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" width="10px" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
	    <ec:column property="shudi" title="项目属地"/>
		<ec:column property="pro_id" title="项目序号"/>
		<ec:column property="pro_name" title="项目名称"/>
		<ec:column property="pro_content" title="项目内容"/>
		<ec:column property="pro_scope" title="项目规模"/>
		<ec:column property="pro_progress" title="项目进度(%)"/>
		<ec:column property="stime" title="工程开工时间"/>
		<ec:column property="ftime" title="竣工日期"/>
		<ec:column property="permenent_residents" title="建设年限(年)"/>
		<ec:column property="flag" title="是否竣工"/>	
		<ec:column property="操作" title="操作" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/village/Village_cr!show.do?id=${item.id}&fid=${fid}&biao_shi=${biao_shi}">查看</a>&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/village/Village_cr!edit.do?id=${item.id}&fid=${fid}&biao_shi=${biao_shi}">修改</a>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

