<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld"  prefix="c"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" >
function mySubmit(){
if(Validator.Validate(document.form1,3)){
		document.form1.submit();
}
}	
function myBack(){
window.location="${pageContext.request.contextPath}/demo/itemMonthly.jsp?p_type=${param.p_type}";
}	
</script>
<STYLE type=text/css>
.STYLE1 {
	COLOR: #ff0000
}
</STYLE>

</head>

<body>
<%@ include file="gs_top.jsp" %>
   
<FORM method=post name=form1 action="#">
<TABLE border="1" width="100%" class="myInput">
  <TBODY>
  <TR>
    <TD colSpan=4 align=center class="myInputTitle"><STRONG>��Ŀ�����±�</STRONG></TD>
  </TR>
  <TR>
    <TD width="20%" class="myInputTitle">�ϱ��·�</TD>
    <TD width="30%"><SELECT id=month name=month> <OPTION 
        value=2012-01>2012-01</OPTION> <OPTION value=2012-02>2012-02</OPTION> 
        <OPTION value=2012-03>2012-03</OPTION> <OPTION 
        value=2012-04>2012-04</OPTION> <OPTION value=2012-08>2012-08</OPTION> 
        <OPTION value=2012-09>2012-09</OPTION> <OPTION 
        value=2012-10>2012-10</OPTION> <OPTION value=2012-11>2012-11</OPTION> 
        <OPTION value=2012-12>2012-12</OPTION> <OPTION 
        value=2013-01>2013-01</OPTION> <OPTION value=2013-02>2013-02</OPTION> 
        <OPTION selected value=2013-03>2013-03</OPTION> <OPTION 
        value=2013-04>2013-04</OPTION></SELECT></TD>
    <TD width="20%" class="myInputTitle">�����׶�</TD>
    <TD width="30%"><SELECT name=phase> <OPTION selected 
        value=���н׶�>���н׶�</OPTION> <OPTION value=������ƽ׶�>������ƽ׶�</OPTION> <OPTION 
        value=ʩ��ͼ�׶�>ʩ��ͼ�׶�</OPTION> <OPTION value=�����׶�>�����׶�</OPTION> <OPTION 
        value=�豸��װ�׶�>�豸��װ�׶�</OPTION> <OPTION value=�����н׶�>�����н׶�</OPTION> <OPTION 
        value=��Ŀ����>��Ŀ����</OPTION></SELECT></TD></TR>
  <TR>
    <TD width="20%" class="myInputTitle">���¼ƻ���λ�ʽ�<SPAN class=STYLE1>��Ԫ</SPAN>��</TD>
    <TD width="30%"><INPUT type="text" id=jihua name=jihua></TD>
    <TD width="20%" class="myInputTitle">����ʵ�ʵ�λ�ʽ�<SPAN class=STYLE1>��Ԫ</SPAN>��</TD>
    <TD width="30%"><INPUT type="text" id=jihua name=jihua></TD></TR>
  <TR>
    <TD width="20%" class="myInputTitle">����ʵ��ʹ���ʽ�<SPAN class=STYLE1>��Ԫ</SPAN>��</TD>
    <TD width="30%"><INPUT type="text" id=jihua name=jihua></TD>
    <TD style="BACKGROUND-COLOR: #ffffff" width="50%" colSpan=2>&nbsp;</TD></TR>
  <TR>
    <TD class="myInputTitle">��վ�����չ���</TD>
    <TD colSpan=3><TEXTAREA id=chang cols=80 rows=4 name=chang msg="��Ҫ����2000��" max="2000" min="0" dataType="Limit"></TEXTAREA></TD></TR>
  <TR>
    <TD class="myInputTitle">������չ���</TD>
    <TD colSpan=3><TEXTAREA id=fushu cols=80 rows=4 name=fushu msg="��Ҫ����2000��" max="2000" min="0" dataType="Limit"></TEXTAREA></TD></TR>
  <TR>
    <TD width="20%" class="myInputTitle">
      <P>Ŀǰ��������</P></TD>
    <TD colSpan=3><TEXTAREA id=wenti cols=80 rows=4 name=wenti msg="��Ҫ����2000��" max="2000" min="0" dataType="Limit"></TEXTAREA></TD></TR></TBODY></TABLE><BR>
<TABLE class=myInput border=1 cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD colSpan=6 class="myInputTitle"><STRONG>ʩ�����ȱ��棨<FONT 
      color=#ff0000>�ѽ���ʩ���׶ε���Ŀ��д</FONT>��</STRONG></TD></TR>
  <TR>
    <TD style="BACKGROUND-COLOR: #ffffff">&nbsp;</TD>
    <TD class="myInputTitle">
      <P><STRONG>�ƻ�������</STRONG></P></TD>
    <TD class="myInputTitle">
      <P><STRONG>�������</STRONG></P></TD>
    <TD>&nbsp;</TD>
    <TD class="myInputTitle">
      <P><STRONG>�ƻ�������</STRONG></P></TD>
    <TD class="myInputTitle">
      <P><STRONG>�������</STRONG></P></TD></TR>
  <TR>
    <TD class="myInputTitle">��ʯ���ܷ���</TD>
    <TD width="18%"><INPUT type="text" id=tsjh name=tsjh></TD>
    <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff" width="17%"><INPUT type="text" 
      id=tssj name=tssj></TD>
    <TD  class="myInputTitle"
    width="15%">ˮ��������</TD>
    <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff" width="18%"><INPUT type="text" 
      id=gjjh name=gjjh></TD>
    <TD width="17%"><INPUT type="text" id=gjsj name=gjsj></TD></TR>
  <TR>
    <TD class="myInputTitle">
      <P>������</P></TD>
    <TD><INPUT type="text" id=qtjh name=qtjh></TD>
    <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT type="text" id=qtsj 
      name=qtsj></TD>
    <TD class="myInputTitle">
      <P>��������</P></TD>
    <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT type="text" id=gwjh 
      name=gwjh></TD>
    <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT type="text" id=gwsj 
      name=gwsj></TD></TR>
  <TR>
    <TD class="myInputTitle">
      <P>�豸���̰�װ</P></TD>
    <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT type="text" id=sbjh 
      name=sbjh></TD>
    <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT type="text" id=sbsj 
      name=sbsj></TD>
    <TD style="TEXT-ALIGN: center; BACKGROUND-COLOR: #eff6fe">����</TD>
    <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT type="text" id=qitajh 
      name=qitajh></TD>
    <TD><INPUT type="text" id=qitasj name=qitasj></TD></TR>
  <TR>
    <TD class="myInputTitle">
      <P>������Ͷ�ʶ�</P></TD>
    <TD colSpan=2><INPUT type="text" id=zongtou name=zongtou></TD>
    <TD class="myInputTitle">
      <P>Ŀǰ�����Ͷ�ʶ�</P></TD>
    <TD colSpan=2><INPUT type="text" id=wancheng name=wancheng></TD></TR>
  <TR>
    <TD class="myInputTitle">
      <P>���Ͷ�ʱ���</P></TD>
    <TD colSpan=2><INPUT type="text" id=bili name=bili></TD>
    <TD class="myInputTitle">��·�</TD>
    <TD colSpan=2><SELECT id=month name=month> <OPTION 
        value=2012-04>2012-04</OPTION> <OPTION value=2012-05>2012-05</OPTION> 
        <OPTION value=2012-06>2012-06</OPTION> <OPTION 
        value=2012-07>2012-07</OPTION> <OPTION value=2012-08>2012-08</OPTION> 
        <OPTION value=2012-09>2012-09</OPTION> <OPTION 
        value=2012-10>2012-10</OPTION> <OPTION value=2012-11>2012-11</OPTION> 
        <OPTION value=2012-12>2012-12</OPTION> <OPTION 
        value=2013-01>2013-01</OPTION> <OPTION value=2013-02>2013-02</OPTION> 
        <OPTION value=2013-03>2013-03</OPTION> <OPTION selected 
        value=2013-04>2013-04</OPTION></SELECT> </TD></TR>
  <TR>
    <TD class="myInputTitle">
      <P>��������ȫ���</P></TD>
    <TD colSpan=5><TEXTAREA style="WIDTH: 90%" id=zhiliang rows=4 name=zhiliang></TEXTAREA></TD></TR>
  <TR>
    <TD class="myInputTitle">
      <P>�����������</P></TD>
    <TD colSpan=5><TEXTAREA style="WIDTH: 90%" id=qita rows=3 name=qita></TEXTAREA></TD></TR>
  <TR>
    <TD class="myInputTitle">��ע</TD>
    <TD colSpan=5><TEXTAREA style="WIDTH: 90%" id=remark rows=3 name=remark></TEXTAREA></TD></TR></TBODY></TABLE>	
<TABLE border=1 width="100%">
  <TBODY>
  <TR>
    <TD height=38 colSpan=4 align=center><INPUT name=button value="   ��   ��   " type="submit"> 
      &nbsp; &nbsp; <INPUT name=reset value="   ��   ��   " type=reset> 
      &nbsp;&nbsp; <INPUT onclick=javascript:myBack() name=button1 value="   ��   ��   " type=button></TD></TR></TBODY></TABLE></FORM>
  </body>
</html>
