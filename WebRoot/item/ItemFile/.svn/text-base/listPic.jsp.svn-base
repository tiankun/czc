<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
</head>

<body>
<%@ include file="../top.jsp" %>
<c:if test="${checkArea==true}">
<A href="${pageContext.request.contextPath}/item/Item_file!create.do?item=${item}&leibie=2"><STRONG>====添加项目图片====</STRONG></A>
</c:if>
<br />
<c:forEach items="${list}" var="item"> 
<div style="width:300px;float:left;"><TABLE border=1 cellSpacing=0 cellPadding=0 width="100%">
        <TR>
          <TD align="center"><A href="${pageContext.request.contextPath}/upFile/file/${item_build.area}/${item.path}" target=_blank><IMG border=0 src="${pageContext.request.contextPath}/upFile/file/${item_build.area}/${item.path}" width=280 height=200 title="${item.shuoming}"></A></TD></TR>
<c:if test="${checkArea==true}">
        <TR>
          <TD align="center" height="25px"><A href="${pageContext.request.contextPath}/item/Item_file!edit.do?id=${item.id}">修改</A>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<A onclick="return window.confirm('是否确认要删除此条项目图片？');" href="${pageContext.request.contextPath}/item/Item_file!delete.do?id=${item.id}&item=${item.item}&leibie=2">删除</A></TD>
        </TR>
</c:if>
        <TR>
          <TD align="center" height="25px">${item.fenlei}&nbsp;(${item.shangchuan})&nbsp;</TD></TR>
        <TR>
          <TD style="WORD-BREAK: break-all" align="center" height="25px">${item.name}</TD></TR></TABLE><br/></div>
</c:forEach> 
</body>
</html>