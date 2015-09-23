<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
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
<%@ include file="../top.jsp" %>
<form action="${pageContext.request.contextPath}/item/Item_fees!save.do" method="post" name="form1" style="margin:0px">
	<%@ include file="form_include.jsp" %>
</form>
</body>
</html>