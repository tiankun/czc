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
    <TD colSpan=4 class="tHead">====投融资情况====</TD>
  </TR>
  <TR>
    <TD class="myInputTitle">
      <P>性质</P></TD>
    <TD><SELECT id=quality name=quality> <OPTION selected 
        value=公有>公有</OPTION> <OPTION value=私营>私营</OPTION></SELECT></TD>
    <TD class="myInputTitle">
      <P>是否已开展投融资</P></TD>
    <TD><SELECT id=invest name=invest> <OPTION selected value=是>是</OPTION> 
        <OPTION value=否>否</OPTION></SELECT></TD></TR>
  <TR>
    <TD class="myInputTitle">
      <P>合作方式</P></TD>
    <TD><SELECT id=cooperate name=cooperate> <OPTION selected 
        value=BOT>BOT</OPTION> <OPTION value=BT>BT</OPTION> <OPTION 
        value=BLT>BLT</OPTION> <OPTION value=直接委托>直接委托</OPTION> <OPTION 
        value=自建>自建</OPTION></SELECT></TD>
    <TD class="myInputTitle">
      <P>经营范围</P></TD>
    <TD><SELECT id=manage name=manage> <OPTION selected 
        value=自来水厂>自来水厂</OPTION> <OPTION value=配套管网>配套管网</OPTION> <OPTION 
        value=自来水厂+配套管网>自来水厂+配套管网</OPTION></SELECT> </TD></TR>
  <TR>
    <TD width="15%" class="myInputTitle">
      <P>投资商出资比例（<SPAN class=STYLE1>%</SPAN>）</P></TD>
    <TD width="35%"><INPUT id=contributive name=contributive type="text"></TD>
    <TD width="15%" class="myInputTitle">
      <P>是否签订协议合同</P></TD>
    <TD width="35%"><SELECT id=pact name=pact> <OPTION selected 
        value=是>是</OPTION> <OPTION value=否>否</OPTION></SELECT></TD></TR>
  <TR>
    <TD width="15%" class="myInputTitle">
      <P>BOT投资商</P></TD>
    <TD colSpan=3><INPUT name=bot type="text"></TD></TR>
  <TR>
    <TD class="myInputTitle">
      <P>进展情况</P></TD>
    <TD colSpan=3><TEXTAREA  rows=6 name=gotAlong style="width:75%"></TEXTAREA></TD></TR>
  <TR>
    <TD class="myInputTitle">
      <P>存在的问题</P></TD>
    <TD height=50 colSpan=3><TEXTAREA id=problem  rows=6 name=problem style="width:75%"></TEXTAREA></TD></TR></TBODY></TABLE><BR>
<TABLE border=1 width="100%">
  <TBODY>
  <TR>
    <TD height=38 colSpan=4 align=center><!--c:if test="false"--><INPUT onClick="return mySubmit();" name=button value="   提   交   " type=button> 
      &nbsp; &nbsp; <INPUT name=reset value="   重   置   " type=reset> 
      &nbsp;&nbsp; <!--/c:if--><INPUT name=id type=hidden><INPUT name=item 
      value=86 type=hidden><INPUT name=type value=1 
type=hidden></TD></TR></TBODY></TABLE></FORM></BODY></HTML>
