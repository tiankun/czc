<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0079)http://192.168.17.94/cjc/admin/itemArranged.do -->
<HTML><HEAD>
<META content="text/html; charset=GBK" http-equiv=Content-Type><LINK 
rel=stylesheet type=text/css href="${pageContext.request.contextPath}/styles/default.css">
<SCRIPT language=JavaScript src="${pageContext.request.contextPath}/scripts/status.js"></SCRIPT>

<SCRIPT language=javascript src="${pageContext.request.contextPath}/scripts/Validator.js"></SCRIPT>
<SCRIPT language=JavaScript src="${pageContext.request.contextPath}/scripts/jquery-1.8.0.min.js"></SCRIPT>
<script type="text/javascript" language="javascript">   
function myback(){
document.form1.method.value="back"
document.form1.submit();
}
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
</SCRIPT>

<META name=GENERATOR content="MSHTML 9.00.8112.16470"></HEAD>
<BODY>
<%@ include file="gs_top.jsp" %>
<TABLE border=1 width="100%">
  <TBODY>
  <TR class=tHead>
    <TD width="15%" align=center>�ƻ��׶�</TD>
    <TD width="9%" align=center>��ʼʱ��</TD>
    <TD width="9%" align=center>����ʱ��</TD>
    <TD width="58%" align=center>��ע</TD></TR>
  <TBODY class=myList>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD align=center>���н׶�</TD>
    <TD align=center>2010-01</TD>
    <TD align=center>2010-2</TD>
    <TD>ͬ���ϱ���</TD></TR>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD align=center>������ƽ׶�</TD>
    <TD align=center>2010-03</TD>
    <TD align=center>2010-3</TD>
    <TD></TD></TR>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD align=center>ʩ��ͼ�׶�</TD>
    <TD align=center>2010-01</TD>
    <TD align=center>2010-11</TD>
    <TD>ͬ���ϱ���</TD></TR>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD align=center>�����׶�</TD>
    <TD align=center>2010-12</TD>
    <TD align=center></TD>
    <TD>ͬ���ϱ���</TD></TR></TBODY></TABLE><BR><BR>
<TABLE border=1 width="100%" align=center>
  <TBODY>
  <TR class=tHead>
    <TD height=22 width="10%" align=center>�ϱ�ʱ��</TD>
    <TD width="11%" align=center>���״̬</TD>
    <TD width="45%" align=center>�������</TD>
    <TD width="34%" align=center>ʡ�����</TD></TR>
  <TBODY class=myList>
  <TR onMouseOver="this.style.backgroundColor='#fdecae'" 
  onmouseout="this.style.backgroundColor=''">
    <TD height=18 align=center>2011-01-07</TD>
    <TD align=center>�����...</TD>
    <TD align=center>ͬ���ϱ���</TD>
    <TD align=center></TD></TR></TBODY></TABLE></BODY></HTML>
