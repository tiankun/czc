<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/application.js"></script>
	<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/calendar.js"></script>
    <script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>	
<script language="JavaScript" type="text/JavaScript">
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
</SCRIPT>
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
</head>

<body>
<form action="" method="post" name="form1">
<c:if test="${code==null}">
	<input type="button" value=" 新 增 " onclick="document.form1.action='${pageContext.request.contextPath}/admin/Code!save.do';return mySubmit();"/>
</c:if>
<c:if test="${code!=null}">
	<input type="button" value=" 更 新 " onclick="document.form1.action='${pageContext.request.contextPath}/admin/Code!update.do';return mySubmit();"/>
</c:if>
	<input type="button" value=" 删 除 " onclick="batchDelete('${pageContext.request.contextPath}/admin/Code!delete.do?reference_id=${reference_id}','items',document.forms.ec)"/>
	<input type="button" value=" 返 回 " onclick="window.location='${pageContext.request.contextPath}/admin/Reference!list.do'"/>	
	 <input type="hidden" Id="id" name="id" value="${code.id}"/>
     <input type="hidden" Id="reference_id" name="reference_id" value="${reference_id}"/>	
<table border="1" width="100%" class="myInput">		
<tr>
		<td width="20%" class="myInputTitle">字典内容 &nbsp;</td>	
		<td width="30%">
		<input type="text" Id="name" name="name" maxlength="25" dataType="Require" value="${code.name}"/>
		</td>
		<td width="20%" class="myInputTitle">显示顺序 &nbsp;</td>	
		<td width="30%">
		<input type="text" Id="shun_xu" name="shun_xu" maxlength="10" dataType="Integer" value="${code.shun_xu}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">备注 &nbsp;</td>	
		<td width="80%" colspan="3">
		<input type="text" Id="remark" name="remark" maxlength="200" dataType="" value="${code.remark}"/>
		</td>
	</tr>
</table>		
</form>

<ec:table items='myList' var="item" view="compact" rowsDisplayed="20" action="${pageContext.request.contextPath}/admin/Code!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="选择" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" width="10px" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
		<ec:column property="name" title="字典内容" width="20%"/>
		<ec:column property="shun_xu" title="显示顺序" width="10%"/>
		<ec:column property="remark" title="备注" width="60%"/>
		<ec:column property="操作" title="操作" sortable="false" filterable="false" width="40px">
			<a href="${pageContext.request.contextPath}/admin/Code!edit.do?id=${item.id}&reference_id=${item.reference_id}">修改</a>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

