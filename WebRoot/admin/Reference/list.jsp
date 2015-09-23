<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
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
	<input type="submit" value=" 新 增 " onclick="document.form1.action='${pageContext.request.contextPath}/admin/Reference!save.do'"/>
<table border="1" width="100%" class="myInput">		
	<tr>
		<td width="20%" class="myInputTitle">目录名称 &nbsp;</td>	
		<td width="30%">
		<input type="text" Id="name" name="name" maxlength="25" dataType="Require" value="${reference.name}"/>
		</td>
		<td width="20%" class="myInputTitle">备注 &nbsp;</td>	
		<td width="30%">
		<input type="text" Id="remark" name="remark" maxlength="200" dataType="" value="${reference.remark}"/>
		</td>
	</tr>
</table>		
</form>

<ec:table items='page.thisPageElements' var="item" view="compact" rowsDisplayed="20"
	retrieveRowsCallback="limit" sortRowsCallback="limit" filterRowsCallback="limit"
	action="${pageContext.request.contextPath}/admin/Reference!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true" onclick="window.location='${pageContext.request.contextPath}/admin/Code!list.do?reference_id=${item.id}'">
		<ec:column property="name" title="目录名称" width="20%" style="height:20px"><center>${item.name}</center></ec:column>
		<ec:column property="remark" title="备注"/>
	</ec:row>
</ec:table>

</body>

</html>

