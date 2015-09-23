<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>    
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" /> 
<script language="JavaScript" type="text/JavaScript">
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
</SCRIPT>   
</head>

<body>

<form action="${pageContext.request.contextPath}/village/Village_base!update.do?biao_shi=${biao_shi}" method="post" name="form1">
    <input type="hidden" Id="id" name="id" value="${village_base.id}"/>
	<input type="hidden" name="city" value="${village_base.city}">
	<input type="hidden" name="shudi" value="${village_base.shudi}">
	<input type="hidden" name="fid"   value="${village_base.fid} "/>
	<%@ include file="form_include.jsp" %>
</form>
</body>

</html>