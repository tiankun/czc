<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 
  <head>
  <script type="text/javascript">
  function fanye(oprate){
	  if(oprate=='previous'){
		  document.form1.action='${pageContext.request.contextPath}/archive/File!list.do?pageNumber=${nowPage-1}';
	  }else{
		   document.form1.action='${pageContext.request.contextPath}/archive/File!list.do?pageNumber=${nowPage+1}';
	  }
	  document.form1.submit();
  }
  </script>
  </head>
  
  <body>
   

	        <img src="${pageContext.request.contextPath}/upFile/file/<%=request.getParameter("path")%> "/>
	  
  </body>
</html>
