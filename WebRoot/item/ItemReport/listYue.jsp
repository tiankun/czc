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
 <A href="${pageContext.request.contextPath}/item/Item_report!create.do?item=${item}&type=1"><STRONG>====��ӽ����±�====</STRONG></A>
</c:if>
<TABLE border=1 width="100%">
  <TR class=tHead>
    <TD width="8%" align=center>�ϱ��·�</TD>
    <TD width="10%" align=center>�����׶�</TD>
    <TD width="8%" align=center>�ۼƵ�λ�ʽ�<br/>����Ԫ��</TD>
    <TD width="8%" align=center>�ۼ�ʹ���ʽ�<br/>����Ԫ��</TD>
    <TD width="8%" align=center>�ϱ�ʱ��</TD>
    <TD width="46%" align=center>Ŀǰ��������</TD>
    <TD width="12%" align=center>����</TD></TR>
  <TBODY class=myList>
<c:forEach items="${list}" var="item">  
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">
    <TD align=center>${item.yuefen}</TD>
    <TD align=center>${item.jieduan}</TD>
    <TD align=center>${item.lj_daowei}</TD>
    <TD align=center>${item.lj_shiyong}</TD>
    <TD align=center>${item.input}</TD>
    <TD>${item.wenti}</TD>
    <TD align=center>
    <A href="${pageContext.request.contextPath}/item/Item_report!show.do?id=${item.id}&operate=show">�鿴</A>
    <c:if test="${checkQuanxian=='yes'&&empty item.pz_zhuangtai}">
    &nbsp;|&nbsp;<A href="${pageContext.request.contextPath}/item/Item_report!show.do?id=${item.id}&operate=check">���</A>
    </c:if>
    <c:if test="${checkArea==true&&empty item.pz_zhuangtai}">
       &nbsp;|&nbsp;<A href="${pageContext.request.contextPath}/item/Item_report!edit.do?id=${item.id}">�޸�</A>&nbsp;|&nbsp;<A onclick="return window.confirm('�Ƿ�ȷ��Ҫɾ��������¼��');" href="${pageContext.request.contextPath}/item/Item_report!delete.do?id=${item.id}&item=${item.item}&type=1">ɾ��</A>
    </c:if> 
    </TD>
</TR>
</c:forEach>
</TBODY>
</TABLE>	  
</body>
</html>