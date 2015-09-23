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
    <TD width="10%" align=center>�ƻ��շ�ʱ��</TD>
    <TD width="50%" align=center>�ƻ��շ�����</TD>
    <TD align=center>��ע</TD>
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
  <A href="${pageContext.request.contextPath}/item/Item_fees!create.do?item=${item}"><STRONG>====���ʵ���շ����====</STRONG></A>
</c:if>
<TABLE border=1 width="100%">
  <TR class=tHead>
    <TD width="10%" align=center>ʵ���շ�ʱ��</TD>
    <TD width="20%" align=center>ִ�б�׼����ʱ�估�ĺ�</TD>
    <TD width="30%" align=center>�շ�����</TD>
    <TD width="32%" align=center>����˵��</TD>
    <TD width="8%" align=center>����</TD></TR>
  <TBODY class=myList>
  <c:forEach items="${list}" var="sf"><TR onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">
    <TD align=center>${sf.shiduan}</TD>
    <TD>${sf.biaozhun}</TD>
    <TD>${sf.miaoshu}</TD>
    <TD>${sf.remark}</TD>
    <TD align=center>
<c:if test="${checkArea==true}">
    <A href="${pageContext.request.contextPath}/item/Item_fees!edit.do?id=${sf.id}">�޸�</A>&nbsp;&nbsp;|&nbsp;&nbsp;<A onclick="return window.confirm('�Ƿ�ȷ��Ҫɾ��������¼��');" href="${pageContext.request.contextPath}/item/Item_fees!delete.do?id=${sf.id}&item=${sf.item}">ɾ��</A>
</c:if>
</TD>
  </TR></c:forEach></TBODY>
</TABLE>
</body>
</html>