<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn" %>
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
	  if('${flag}'=='youxiufile')
	  	  document.form1.action='${pageContext.request.contextPath}/archive/File!youxiuList.do?pageNumber=${nowPage-1}';
	  else	  
		  document.form1.action='${pageContext.request.contextPath}/archive/File!list.do?pageNumber=${nowPage-1}';
	  }else{
	  	  if('${flag}'=='youxiufile')
	  	  document.form1.action='${pageContext.request.contextPath}/archive/File!youxiuList.do?pageNumber=${nowPage+1}';
	  else	
		   document.form1.action='${pageContext.request.contextPath}/archive/File!list.do?pageNumber=${nowPage+1}';
	  }
	  document.form1.submit();
  }
  function fileList(){
	  document.form1.action='${pageContext.request.contextPath}/archive/File!fileList.do?pageNumber=1';
	  document.form1.submit();
  }
  function xuanyou(id){
	  document.form1.action='${pageContext.request.contextPath}/archive/File!xuanyou.do?id='+id+'&pageNumber=${nowPage}';
	  document.form1.submit();
  }
  </script>
  </head>
  
  <body>
     <%@ include file="/archive/top.jsp" %>
     <form method="post" name="form1" id="form1">
	 <input type="hidden" Id="biao_shi" name="biao_shi" value="${biao_shi}"/>
	 <input type="hidden" Id="flag" name="flag" value="${flag}"/>
	 <input type="hidden" Id="pingfen" name="pingfen" value="${pingfen}"/>
	 <input type="hidden" Id="length" name="length" value="${length}"/>
	 <table width="100%" border="0" align="center">
	   <tr>
	     <c:forEach var="fileList" items="${fileList.thisPageElements}" varStatus="i">
	       <td align="center" width="33.3%">
	        <img alt="双击查看原图" ondblclick="window.open('${pageContext.request.contextPath}/archive/File/showImg.jsp?path=${fileList.path}')" src="${pageContext.request.contextPath}/upFile/file/${fileList.vpath}"/>
	          </br>${fileList.name}&nbsp;
	          <c:if test="${fileList.remark=='优秀'}">（优秀成果）</c:if>
	          <c:if test="${fileList.remark!='优秀'}">
	            <a style="text-decoration: underline;color: #0033FF; cursor:pointer" onclick="xuanyou('${fileList.id}');">选为优秀</a>
	          </c:if>
	       </td>
	     <c:if test="${i.count%3==0}"></tr><tr></c:if>
	    </c:forEach>
	    <c:if test="${fn:length(fileList.thisPageElements)%3==1}"><td></td><td></td></c:if>
	     <c:if test="${fn:length(fileList.thisPageElements)%3==2}"><td></td></c:if>  
	   </tr>
	 <tr>
	    <td align="right" colspan="3">
	       <c:if test="${previousPage}">
	          <a style="text-decoration: underline;color: #0033FF; cursor:pointer" onclick="fanye('previous')">上一页</a>
	       </c:if> 
	       <c:if test="${nextPage}">
	          <a style="text-decoration: underline;color: #0033FF; cursor:pointer" onclick="fanye('next')">下一页</a>
	       </c:if> 
	        <c:if test="${flag=='file'}">
	       <a style="text-decoration: underline;color: #0033FF; cursor:pointer" onclick="fileList();">查看相关文件</a>
	        </c:if>
	    </td>
	 </tr>
	 </table>
     </form>
  </body>
</html>
