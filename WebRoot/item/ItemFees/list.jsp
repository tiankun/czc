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
<TABLE border=1 width="100%">
  <TR class=tHead>
    <TD width="10%" align=center>计划收费时段</TD>
    <TD width="50%" align=center>计划收费描述</TD>
    <TD align=center>备注</TD>
  </TR>
  <TBODY class=myList>
 <c:forEach items="${jihuas}" var="jihua"><TR onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">
    <TD align=center>${jihua.shiduan}</TD>
    <TD>${jihua.miaoshu}</TD>
    <TD>${jihua.remark}</TD>
    </TR></c:forEach> 
 </TBODY>   
 </TABLE>
<BR><BR>
<c:if test="${checkArea==true}">
  <A href="${pageContext.request.contextPath}/item/Item_fees!create.do?item=${item}"><STRONG>====添加实际收费情况====</STRONG></A>
</c:if>
<TABLE border=1 width="100%">
  <TR class=tHead>
    <TD width="10%" align=center>实际收费时段</TD>
    <TD width="20%" align=center>执行标准批复时间及文号</TD>
    <TD width="30%" align=center>收费描述</TD>
    <TD width="32%" align=center>其他说明</TD>
    <TD width="8%" align=center>操作</TD></TR>
  <TBODY class=myList>
  <c:forEach items="${list}" var="sf"><TR onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">
    <TD align=center>${sf.shiduan}</TD>
    <TD>${sf.biaozhun}</TD>
    <TD>${sf.miaoshu}</TD>
    <TD>${sf.remark}</TD>
    <TD align=center>
<c:if test="${checkArea==true}">
    <A href="${pageContext.request.contextPath}/item/Item_fees!edit.do?id=${sf.id}">修改</A>&nbsp;&nbsp;|&nbsp;&nbsp;<A onclick="return window.confirm('是否确认要删除这条记录？');" href="${pageContext.request.contextPath}/item/Item_fees!delete.do?id=${sf.id}&item=${sf.item}">删除</A>
</c:if>
</TD>
  </TR></c:forEach></TBODY>
</TABLE>
</body>
</html>