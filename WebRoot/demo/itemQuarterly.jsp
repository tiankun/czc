<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
<SCRIPT language=JavaScript src="itemWeekly_files/status.js"></SCRIPT>
</head>
<body>
<%@ include file="gs_top.jsp" %>
<A href="${pageContext.request.contextPath}/demo/create_quarterly.jsp?p_type=${param.p_type}"><STRONG>====添加进度季报====</STRONG></A> 

<TABLE border=1 width="100%">
  <TBODY>
  <TR class=tHead>
    <TD width="10%" align=center>所处阶段</TD>
    <TD width="8%" align=center>使用资金</TD>
    <TD width="6%" align=center>上报季度</TD>
    <TD width="10%" align=center>上报时间</TD>
    <TD width="54%" align=center>上报内容</TD>
    <TD width="12%" align=center>操作</TD></TR>
  <TBODY class=myList>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD align=center>可研阶段</TD>
    <TD align=center>3.0&nbsp;万元</TD>
    <TD align=center>2010-04</TD>
    <TD align=center>2010-12-06</TD>
    <TD>完成环评评审待批复，完成可研评审未通过。正编制地质详勘、水土保持方案及上报土地审批。</TD>
    <TD align=center><A 
      href="${pageContext.request.contextPath}/demo/create_quarterly.jsp?p_type=${param.p_type}">修改</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A 
      onclick="return window.confirm('是否确认要删除这条记录？');" 
      href="#">删除</A><BR><A 
      href="${pageContext.request.contextPath}/demo/create_quarterly.jsp?p_type=${param.p_type}">查看/审核</A></TD></TR>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD align=center>可研阶段</TD>
    <TD align=center>0.0&nbsp;万元</TD>
    <TD align=center>2010-03</TD>
    <TD align=center>2010-09-06</TD>
    <TD>已完成可研编制，正上报评审。</TD>
    <TD align=center><A 
      href="${pageContext.request.contextPath}/demo/create_quarterly.jsp?p_type=${param.p_type}">修改</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A 
      onclick="return window.confirm('是否确认要删除这条记录？');" 
      href="#">删除</A><BR><A 
      href="${pageContext.request.contextPath}/demo/create_quarterly.jsp?p_type=${param.p_type}">查看/审核</A></TD></TR>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD align=center>可研阶段</TD>
    <TD align=center>0.0&nbsp;万元</TD>
    <TD align=center>2010-02</TD>
    <TD align=center>2010-06-04</TD>
    <TD>已完成可研初审，正在修编可研，编制环评。</TD>
    <TD align=center><A 
      href="${pageContext.request.contextPath}/demo/create_quarterly.jsp?p_type=${param.p_type}">修改</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A 
      onclick="return window.confirm('是否确认要删除这条记录？');" 
      href="#">删除</A><BR><A 
      href="${pageContext.request.contextPath}/demo/create_quarterly.jsp?p_type=${param.p_type}">查看/审核</A></TD></TR>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD align=center>可研阶段</TD>
    <TD align=center>2.0&nbsp;万元</TD>
    <TD align=center>2010-01</TD>
    <TD align=center>2010-03-08</TD>
    <TD>正编制可研，环评，地质灾害评估报告，</TD>
    <TD align=center><A 
      href="${pageContext.request.contextPath}/demo/create_quarterly.jsp?p_type=${param.p_type}">修改</A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A 
      onclick="return window.confirm('是否确认要删除这条记录？');" 
      href="#">删除</A><BR><A 
      href="${pageContext.request.contextPath}/demo/create_quarterly.jsp?p_type=${param.p_type}">查看/审核</A></TD></TR></TBODY></TABLE>
  </body>
</html>
