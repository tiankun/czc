<%@ page contentType="text/html; charset=GBK" language="java" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>权限认证失败</title>
</head>

<body>
<script language=javascript>
alert("权限认证失败，请登录后重试!");
window.top.location="<%=request.getContextPath()%>/admin/index.jsp";
</script>
</body>
</html>
