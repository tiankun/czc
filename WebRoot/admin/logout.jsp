<%@ page contentType="text/html; charset=GBK"%>
<%request.getSession().invalidate();%>
<script language="JavaScript" type="text/JavaScript">
alert("个人信息已清除，可以安全退出系统了");
window.top.location="<%=request.getContextPath()%>/admin/index.jsp";
</script>

