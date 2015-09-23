<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
</head>
<BODY>
<%@ include file="gs_top.jsp" %>
<TABLE border=1 width="100%">
  <TBODY>
  <TR class=tHead>
    <TD width="7%" align=center>收费时段</TD>
    <TD width="43%" align=center>计划收费描述</TD>
    <TD align=center>备注</TD></TR>
  <TBODY class=myList>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">
    <TD align=center>2010年1月1日~</TD>
    <TD 
      align=center>1、征收范围：凡在杞麓湖盆区内的直接或间接排放污水的机关、团体、部队、企事业单位、个体工商户及居民（包括自备水源的单位）。
    </TD>
    <TD 
  align=center>根据国家有关政策，及时调整收费标准，不足部分由当地政府进行补助，确保相关污水处理厂的正常运行。</TD></TR></TBODY></TABLE><BR><BR><BR><A 
href="${pageContext.request.contextPath}/demo/create_shoufei.jsp"><STRONG>====添加实际收费情况====</STRONG></A> 

<TABLE border=1 width="100%">
  <TBODY>
  <TR class=tHead>
    <TD width="7%" align=center>收费时段</TD>
    <TD width="23%" align=center>现行执行标准</TD>
    <TD width="30%" align=center>批复时间及文号</TD>
    <TD width="22%" align=center>收费描述</TD>
    <TD width="8%" align=center>操作</TD></TR>
  <TBODY class=myList>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD align=center>2010年3月~</TD>
    <TD align=center>0.90元/立方米</TD>
    <TD align=center>2010年3月18日 通发改价格[2010]3号</TD>
    <TD 
      align=center>
      1、县城规划区范围内的自备井及自建供水设施供水的污水处理费价格按每立方米0.90元执行。2、县城规划区内的农村居民用水户不征收污水处理费。</TD>
    <TD align=center><A 
      href="#">修改</A>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<A 
      onclick="return window.confirm('是否确认要删除这条记录？');" 
      href="#">删除</A></TD></TR>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD align=center>1999年12月1日~</TD>
    <TD align=center>0.70元/立方米</TD>
    <TD align=center>1999年11月18日 通政发[1999]71号</TD>
    <TD 
      align=center>1、征收范围：凡在县城规划区内的直接或间接排放污水的机关、团体、部队、企事业单位、个体工商户及居民（包括自备水源的单位）；</TD>
    <TD align=center><A href="#">修改</A>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<A onclick="return window.confirm('是否确认要删除这条记录？');" href="#">删除</A></TD></TR></TBODY></TABLE>
    </BODY>
    </HTML>
