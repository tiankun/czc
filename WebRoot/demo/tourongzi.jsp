<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML><HEAD>
<META content="text/html; charset=GBK" http-equiv=Content-Type>
<LINK href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css">
<SCRIPT language=JavaScript src="${pageContext.request.contextPath}/scripts/status.js"></SCRIPT>
<SCRIPT language=javascript src="${pageContext.request.contextPath}/scripts/Validator.js"></SCRIPT>
<script type="text/javascript" language="javascript">   
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
</SCRIPT>

<STYLE type=text/css>.STYLE1 {
	COLOR: #ff0000
}
</STYLE>

</HEAD>
<BODY>
	<%@ include file="gs_top.jsp" %>
<FORM method=post name=form1 action="#">
<TABLE class=myInput border=1 width="100%" align=center>
  <TBODY>
  <TR>
    <TD colSpan=4 class="tHead">====Ͷ�������====</TD>
  </TR>
  <TR>
    <TD class="myInputTitle">
      <P>����</P></TD>
    <TD><SELECT id=quality name=quality> <OPTION selected 
        value=����>����</OPTION> <OPTION value=˽Ӫ>˽Ӫ</OPTION></SELECT></TD>
    <TD class="myInputTitle">
      <P>�Ƿ��ѿ�չͶ����</P></TD>
    <TD><SELECT id=invest name=invest> <OPTION selected value=��>��</OPTION> 
        <OPTION value=��>��</OPTION></SELECT></TD></TR>
  <TR>
    <TD class="myInputTitle">
      <P>������ʽ</P></TD>
    <TD><SELECT id=cooperate name=cooperate> <OPTION selected 
        value=BOT>BOT</OPTION> <OPTION value=BT>BT</OPTION> <OPTION 
        value=BLT>BLT</OPTION> <OPTION value=ֱ��ί��>ֱ��ί��</OPTION> <OPTION 
        value=�Խ�>�Խ�</OPTION></SELECT></TD>
    <TD class="myInputTitle">
      <P>��Ӫ��Χ</P></TD>
    <TD><SELECT id=manage name=manage> <OPTION selected 
        value=����ˮ��>����ˮ��</OPTION> <OPTION value=���׹���>���׹���</OPTION> <OPTION 
        value=����ˮ��+���׹���>����ˮ��+���׹���</OPTION></SELECT> </TD></TR>
  <TR>
    <TD width="15%" class="myInputTitle">
      <P>Ͷ���̳��ʱ�����<SPAN class=STYLE1>%</SPAN>��</P></TD>
    <TD width="35%"><INPUT id=contributive name=contributive type="text"></TD>
    <TD width="15%" class="myInputTitle">
      <P>�Ƿ�ǩ��Э���ͬ</P></TD>
    <TD width="35%"><SELECT id=pact name=pact> <OPTION selected 
        value=��>��</OPTION> <OPTION value=��>��</OPTION></SELECT></TD></TR>
  <TR>
    <TD width="15%" class="myInputTitle">
      <P>BOTͶ����</P></TD>
    <TD colSpan=3><INPUT name=bot type="text"></TD></TR>
  <TR>
    <TD class="myInputTitle">
      <P>��չ���</P></TD>
    <TD colSpan=3><TEXTAREA  rows=6 name=gotAlong style="width:75%"></TEXTAREA></TD></TR>
  <TR>
    <TD class="myInputTitle">
      <P>���ڵ�����</P></TD>
    <TD height=50 colSpan=3><TEXTAREA id=problem  rows=6 name=problem style="width:75%"></TEXTAREA></TD></TR></TBODY></TABLE><BR>
<TABLE border=1 width="100%">
  <TBODY>
  <TR>
    <TD height=38 colSpan=4 align=center><!--c:if test="false"--><INPUT onClick="return mySubmit();" name=button value="   ��   ��   " type=button> 
      &nbsp; &nbsp; <INPUT name=reset value="   ��   ��   " type=reset> 
      &nbsp;&nbsp; <!--/c:if--><INPUT name=id type=hidden><INPUT name=item 
      value=86 type=hidden><INPUT name=type value=1 
type=hidden></TD></TR></TBODY></TABLE></FORM></BODY></HTML>
