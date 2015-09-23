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

	<%-- <input type="submit" value=" 新 增 " onclick="document.form1.action='${pageContext.request.contextPath}/village/Village_info!create.do?&biao_shi=${biao_shi}'"/>
	<input type="button" value=" 删 除 " onclick="batchDelete('${pageContext.request.contextPath}/village/Village_info!delete.do?&biao_shi=${biao_shi}','items',document.forms.ec)"/> --%>

	<br/><input type="submit" value=" 新 增 " onclick="document.form1.action='${pageContext.request.contextPath}/village/Village_info!create.do'"/>
	<input type="button" value=" 删 除 " onclick="batchDelete('${pageContext.request.contextPath}/village/Village_info!delete.do','items',document.forms.ec)"/>

</form>

<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="村落基本信息(平均总进度${countNum}%)"
	action="${pageContext.request.contextPath}/village/Village_info!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
	    <ec:column property="选择" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" width="10px" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
	    <ec:column property="shudi" title="所属州市、县市区、乡镇"/>   
		<ec:column property="name" title="村落名称"/>
		<ec:column property="area" title="村落面积(平方米)"/>
		<ec:column property="space" title="村庄占地面积(平方米)"/>
		<ec:column property="permenent_residents" title="常住人口(人)"/>
		<ec:column property="revenue" title="村集体年收入(元)"/>
		<ec:column property="national" title="主要民族"/>
		<ec:column property="traditional_village_groups" title="传统村落批次" />
		<ec:column property="request_money_groups" title="申请资金批次"/>
		<ec:column property="avg" title="总进度情况(%)"/>
		<ec:column property="ave_income" title="村民人均年收入(元)"/>
		<ec:column property="操作" title="操作" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/village/Village_info!show.do?id=${item.id}&biao_shi=${biao_shi}">查看</a>&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/village/Village_info!edit.do?id=${item.id}&biao_shi=${biao_shi}">修改</a>
		</ec:column>
	</ec:row>
</ec:table>
</body>
</html>

