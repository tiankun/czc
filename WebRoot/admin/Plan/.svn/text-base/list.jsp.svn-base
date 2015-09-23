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
	<input type="submit" value=" 新 增 " onclick="document.form1.action='${pageContext.request.contextPath}/admin/Plan!create.do'"/>
	<input type="button" value=" 删 除 " onclick="batchDelete('${pageContext.request.contextPath}/admin/Plan!delete.do','items',document.forms.ec)"/>
</form>

<ec:table items='page.thisPageElements' var="item" view="compact" rowsDisplayed="20"
	retrieveRowsCallback="limit" sortRowsCallback="limit" filterRowsCallback="limit"
	action="${pageContext.request.contextPath}/admin/Plan!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="选择" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" width="10px" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
		<ec:column property="unit_id" title="对应用户主键"/>
		<ec:column property="year" title="年份"/>
		<ec:column property="lei_xing" title="规划分类"/>
		<ec:column property="zhuang_kuang" title="规划情况"/>
		<ec:column property="begin" title="规划开始年份"/>
		<ec:column property="end" title="规划结束年份"/>
		<ec:column property="bian_zhi" title="规划编制单位"/>
		<ec:column property="shen_pi" title="规划审批部门"/>
		<ec:column property="cheng_guo" title="成果存储位置"/>
		<ec:column property="remark" title="备注"/>
		<ec:column property="操作" title="操作" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/admin/Plan!show.do?id=${item.id}&">查看</a>&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/admin/Plan!edit.do?id=${item.id}&">修改</a>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

