<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�ޱ����ĵ�</title>
<link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
</head>

<body>

<FORM method="post" name="form1" action="#">
<%@ include file="gs_top.jsp" %>
<TABLE class=myInput border=1 cellSpacing=1 cellPadding=5 width="100%">
  <TBODY>
  <TR>
    <TD colSpan=4 align=center><STRONG>====��Ŀ <SELECT style="WIDTH: 55px" 
      id=year name=year> <OPTION selected value=2012>2012</OPTION> <OPTION 
        value=2013>2013</OPTION></SELECT> ����ȱ���====</STRONG></TD></TR>
  <TR>
    <TD width="20%" class="myInputTitle">��Ŀ�����չ����� </TD>
    <TD width="80%" colSpan=3><TEXTAREA id=evolution cols=90 rows=3 name=evolution></TEXTAREA></TD></TR>
  <TR>
    <TD width="20%" class="myInputTitle">��Ŀ�ʽ�λ��ʹ�������</TD>
    <TD colSpan=3><TEXTAREA id=bankroll cols=90 rows=3 name=bankroll></TEXTAREA></TD></TR>
  <TR>
    <TD class="myInputTitle">��Ŀ������������� </TD>
    <TD 
    colSpan=3><TEXTAREA id=quality cols=90 rows=3 name=quality></TEXTAREA></TD></TR>
  <TR>
    <TD class="myInputTitle">��ˮ�������ȡ��ʹ�������</TD>
    <TD colSpan=3><TEXTAREA id=use cols=90 rows=3 name=use></TEXTAREA></TD></TR>
  <TR>
    <TD class="myInputTitle">��ע��</TD>
    <TD 
  colSpan=3><TEXTAREA id=remark cols=90 rows=3 name=remark></TEXTAREA></TD></TR></TBODY></TABLE><BR>
<TABLE border=1 width="100%">
  <TBODY>
  <TR>
    <TD height=38 colSpan=4 align=center><INPUT onClick="return mySubmit();" name=button value=" �� �� " type=button> 
      &nbsp; &nbsp; <INPUT name=reset value=" �� �� " type=reset> &nbsp;&nbsp; <INPUT onclick=javascript:myBack() name=button value=" �� �� " type=button> 
      <INPUT name=id type=hidden><INPUT name=item value=151 type=hidden><INPUT 
      name=type value=1 type=hidden></TD></TR></TBODY></TABLE></FORM>
</body>
</html>