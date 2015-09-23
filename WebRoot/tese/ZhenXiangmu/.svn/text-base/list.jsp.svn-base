<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/application.js"></script>  
</head>

<body>
<form action="" method="post" name="form1">
	<input type="submit" value=" 新 增 " onclick="document.form1.action='${pageContext.request.contextPath}/tese/Zhen_xiangmu!create.do'"/>
	<input type="button" value=" 删 除 " onclick="batchDelete('${pageContext.request.contextPath}/tese/Zhen_xiangmu!delete.do','items',document.forms.ec)"/>
</form>

<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="镇（乡）近期建设项目情况列表" action="${pageContext.request.contextPath}/tese/Zhen_xiangmu!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="选择" style="width: 15px" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
		<ec:column property="fen_lei" title="项目分类"/>
		<ec:column property="ming_cheng" title="项目名称"/>
		<ec:column property="xing_zhi" title="建设性质"/>
		<ec:column property="gui_mo" title="建设规模(平方米)"/>
		<ec:column property="zong_touzi" title="总投资（万元）"/>
		<ec:column property="操作" title="操作" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/tese/Zhen_xiangmu!show.do?id=${item.id}">查看</a>&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/tese/Zhen_xiangmu!edit.do?id=${item.id}">修改</a>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

