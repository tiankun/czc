<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn" %>
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
<A href="${pageContext.request.contextPath}/item/Item_file!create.do?item=${item}&leibie=1"><STRONG>====添加项目文件====</STRONG></A>
</c:if>
<table class=myInput border=1 cellSpacing=1 cellPadding=5 width="100%">
  <tr class=tHead>
    <td width="30">&nbsp;</td>
    <td>标题</td>
    <td width="500">文件</td>
    <td width="120">分类</td>
    <td width="75">上传时间</td>
    <td width="80px">操作</td>
  </tr>
 <c:forEach items="${list}" var="item" varStatus="n"> 
  <tr onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''" title="${item.shuoming}">
    <td align="center">${n.count}</td>
    <td>${item.name}</td>
    <td><c:if test="${fn:length(item.path)>0}"><c:set var="mpics" value='${fn:split(item.path,";")}'/>
<c:forEach items="${mpics}" var="mpic" varStatus="i"><a href="${pageContext.request.contextPath}/upFile/file/${item_build.area}/${mpic}" target="_blank" ><img src='${pageContext.request.contextPath}/images/pic.jpg' border="0"/></a>&nbsp;<c:if test="${i.count%15==0}"><br/></c:if></c:forEach></c:if></td>
    <td>${item.fenlei}</td>
    <td align="center">${item.shangchuan}</td>
    <td align="center">
<c:if test="${checkArea==true}">
    <A href="${pageContext.request.contextPath}/item/Item_file!edit.do?id=${item.id}">修改</A>&nbsp;&nbsp;|&nbsp;&nbsp;<A onclick="return window.confirm('是否确认要删除这条记录？');" href="${pageContext.request.contextPath}/item/Item_file!delete.do?id=${item.id}&item=${item.item}&leibie=1">删除</A>
</c:if>
    </td>
  </tr>
 </c:forEach> 
</table>

</body>

</html>

