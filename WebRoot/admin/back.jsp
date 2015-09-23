<%@ page contentType="text/html;charset=GBK" errorPage="/error.jsp" %>
<%
String error=(String)request.getAttribute("error");
%>
<script type='text/javascript'>
alert('<%=error%>');
if(typeof(window.parent)!="undefined"){
history.back();
}else{
window.close();
}
</script>