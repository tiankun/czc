<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK"/>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>  
    <script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>   
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" /> 
<script language="JavaScript" >
function mySubmit(){
if(Validator.Validate(document.form1,3)){
     document.form1.submit();
}
}		
</script>
</head>

<body>
<%@ include file="/archive/top.jsp" %>
<form action="${pageContext.request.contextPath}/archive/Zrc_ghys!update.do" method="post" name="form1" id="form1">
	<input type="hidden" Id="id" name="id" value="${zrc_ghys.id}"/>
	<%@ include file="form_include.jsp" %>
</form>
</body>

</html>