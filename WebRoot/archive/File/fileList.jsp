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
  function fileList(){
	  document.form1.action='${pageContext.request.contextPath}/archive/File!fileList.do?pageNumber=1';
  }
  </script>
  </head>
  
  <body>
     <%@ include file="/archive/top.jsp" %>
     <form action="#" method="post" name="form1" id="form1">
	 <input type="hidden" Id="biao_shi" name="biao_shi" value="${biao_shi}"/>
	 <input type="hidden" Id="flag" name="flag" value="${flag}"/>
	 <input type="hidden" Id="pingfen" name="pingfen" value="${pingfen}"/>
	 <input type="hidden" Id="length" name="length" value="${length}"/>
	 <table width="100%" border="0" align="center">
	 <c:forEach var="fileList" items="${fileList.thisPageElements}" varStatus="i">
	   <tr>
	     <td align="left">
	        &nbsp;&nbsp;●&nbsp;<a style="text-decoration: underline;color: #0033FF;" href="${pageContext.request.contextPath}/upFile/file/${fileList.path}" target="_blank"">${fileList.name}</a>
	     </td>
	   </tr>
	 </c:forEach>
	 <!-- 
	 <tr>
	    <td align="right">
	       <c:if test="${previousPage}">
	          <a href="#" onclick="fanye('previous')">上一页</a>
	       </c:if> 
	       <c:if test="${nextPage}">
	          <a href="#" onclick="fanye('next')">下一页</a>
	       </c:if> 
	       <a href="#" onclick="fileList();">查看相关文件</a>
	    </td>
	 </tr>
	  -->
	 </table>
	 <table ></table>
     </form>
  </body>
</html>
