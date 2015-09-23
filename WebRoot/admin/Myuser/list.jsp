<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
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
	<input type="submit" value=" 新 增 " onclick="document.form1.action='${pageContext.request.contextPath}/admin/Myuser!create.do'"/>
	<input type="button" value=" 删 除 " onclick="batchDelete('${pageContext.request.contextPath}/admin/Myuser!delete.do','log_name',document.forms.ec)"/>
</form>

<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="系统用户列表" action="${pageContext.request.contextPath}/admin/Myuser!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif" >
	<ec:row highlightRow="true">
		<ec:column style="width:10px" property="选择" title="<input type='checkbox' onclick=\"setAllCheckboxState('log_name',this.checked)\" >"   sortable="false" filterable="false">
			<c:if test="${user.log_name!=item.log_name}"><input type="checkbox" name="log_name" value="${item.log_name}"/></c:if>
		</ec:column>
		<ec:column property="log_name" title="登录名称"/>
		<ec:column property="user_name" title="用户实际名称" style="width:40%"/>		
		<ec:column property="shu_di" title="所属地" style="width:40%"/>
		<ec:column property="type" title="用户类型" />		
		<ec:column style="width:50px" property="操作" title="操作" sortable="false" filterable="false">
			<c:if test="${item.log_name!='admin'}"><a href="${pageContext.request.contextPath}/admin/Myuser!edit.do?id=${item.id}&">修改</a></c:if>
		</ec:column>
	</ec:row>
</ec:table>
</body>
</html>