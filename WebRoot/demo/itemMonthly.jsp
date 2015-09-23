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
<A 
href="${pageContext.request.contextPath}/demo/create_monthly.jsp?p_type=${param.p_type}"><STRONG>====添加进度月报====</STRONG></A> 

<TABLE border=1 width="100%">
  <TBODY>
  <TR class=tHead>
    <TD width="10%" align=center>所处阶段</TD>
    <TD width="8%" align=center>累计计划到位资金</TD>
    <TD width="8%" align=center>累计实际到位资金</TD>
    <TD width="8%" align=center>累计实际使用资金</TD>
    <TD width="8%" align=center>上报时间</TD>
    <TD width="46%" align=center>目前存在问题</TD>
    <TD width="12%" align=center>操作</TD></TR>
  <TBODY class=myList>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD align=center>设备安装阶段</TD>
    <TD align=center>1358.0&nbsp;万元</TD>
    <TD align=center>1698.3795&nbsp;万元</TD>
    <TD align=center>1698.3795&nbsp;万元</TD>
    <TD align=center>2012-06-23<BR>
      (2012-06)</TD>
    <TD>雨季无法施工</TD>
    <TD align=center><A 
      href="${pageContext.request.contextPath}/demo/create_monthly.jsp?p_type=${param.p_type}">查看/审核</A></TD></TR>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD align=center>设备安装阶段</TD>
    <TD align=center>1358.0&nbsp;万元</TD>
    <TD align=center>1698.3795&nbsp;万元</TD>
    <TD align=center>1698.3795&nbsp;万元</TD>
    <TD align=center>2012-05-14<BR>
      (2012-05)</TD>
    <TD>雨季施工难度大</TD>
    <TD align=center><A 
      href="#">查看/审核</A></TD></TR>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD align=center>土建阶段</TD>
    <TD align=center>508.0&nbsp;万元</TD>
    <TD align=center>702.9528&nbsp;万元</TD>
    <TD align=center>702.9528&nbsp;万元</TD>
    <TD align=center>2011-04-18<BR>
      (2011-04)</TD>
    <TD>1.资金缺口大 2.一周在下雨,严重影响施工进度.</TD>
    <TD align=center><A 
      href="${pageContext.request.contextPath}/demo/create_monthly.jsp?p_type=${param.p_type}">查看/审核</A></TD></TR>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD align=center>土建阶段</TD>
    <TD align=center>508.0&nbsp;万元</TD>
    <TD align=center>702.9528&nbsp;万元</TD>
    <TD align=center>702.9528&nbsp;万元</TD>
    <TD align=center>2011-03-12<BR>
      (2011-03)</TD>
    <TD>资金缺口大</TD>
    <TD align=center><A 
      href="${pageContext.request.contextPath}/demo/create_monthly.jsp?p_type=${param.p_type}">查看/审核</A></TD></TR>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD align=center>土建阶段</TD>
    <TD align=center>370.0&nbsp;万元</TD>
    <TD align=center>586.7161&nbsp;万元</TD>
    <TD align=center>702.9528&nbsp;万元</TD>
    <TD align=center>2011-02-08<BR>
      (2011-02)</TD>
    <TD>资金缺口大</TD>
    <TD align=center><A 
      href="${pageContext.request.contextPath}/demo/create_monthly.jsp?p_type=${param.p_type}">查看/审核</A></TD></TR>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD align=center>施工图阶段</TD>
    <TD align=center>370.0&nbsp;万元</TD>
    <TD align=center>536.0973&nbsp;万元</TD>
    <TD align=center>702.9528&nbsp;万元</TD>
    <TD align=center>2011-01-24<BR>
      (2011-01)</TD>
    <TD>资金缺口较大</TD>
    <TD align=center><A 
      href="${pageContext.request.contextPath}/demo/create_monthly.jsp?p_type=${param.p_type}">查看/审核</A></TD></TR>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD align=center>可研阶段</TD>
    <TD align=center>40.0&nbsp;万元</TD>
    <TD align=center>57.79&nbsp;万元</TD>
    <TD align=center>702.9528&nbsp;万元</TD>
    <TD align=center>2010-12-27<BR>
      (2010-12)</TD>
    <TD>前期工作经费不够</TD>
    <TD align=center><A 
      href="${pageContext.request.contextPath}/demo/create_monthly.jsp?p_type=${param.p_type}">查看/审核</A></TD></TR></TBODY></TABLE>
  </body>
</html>
