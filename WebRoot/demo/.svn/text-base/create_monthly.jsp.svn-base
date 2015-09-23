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
    <TD colSpan=4 align=center class="myInputTitle"><STRONG>项目进度月报</STRONG></TD>
  </TR>
  <TR>
    <TD width="20%" class="myInputTitle">上报月份</TD>
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
    <TD width="20%" class="myInputTitle">所处阶段</TD>
    <TD width="30%"><SELECT name=phase> <OPTION selected 
        value=可研阶段>可研阶段</OPTION> <OPTION value=初步设计阶段>初步设计阶段</OPTION> <OPTION 
        value=施工图阶段>施工图阶段</OPTION> <OPTION value=土建阶段>土建阶段</OPTION> <OPTION 
        value=设备安装阶段>设备安装阶段</OPTION> <OPTION value=试运行阶段>试运行阶段</OPTION> <OPTION 
        value=项目竣工>项目竣工</OPTION></SELECT></TD></TR>
  <TR>
    <TD width="20%" class="myInputTitle">本月计划到位资金（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD width="30%"><INPUT type="text" id=jihua name=jihua></TD>
    <TD width="20%" class="myInputTitle">本月实际到位资金（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD width="30%"><INPUT type="text" id=jihua name=jihua></TD></TR>
  <TR>
    <TD width="20%" class="myInputTitle">本月实际使用资金（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD width="30%"><INPUT type="text" id=jihua name=jihua></TD>
    <TD style="BACKGROUND-COLOR: #ffffff" width="50%" colSpan=2>&nbsp;</TD></TR>
  <TR>
    <TD class="myInputTitle">厂站建设进展情况</TD>
    <TD colSpan=3><TEXTAREA id=chang cols=80 rows=4 name=chang msg="不要超过2000字" max="2000" min="0" dataType="Limit"></TEXTAREA></TD></TR>
  <TR>
    <TD class="myInputTitle">管网进展情况</TD>
    <TD colSpan=3><TEXTAREA id=fushu cols=80 rows=4 name=fushu msg="不要超过2000字" max="2000" min="0" dataType="Limit"></TEXTAREA></TD></TR>
  <TR>
    <TD width="20%" class="myInputTitle">
      <P>目前存在问题</P></TD>
    <TD colSpan=3><TEXTAREA id=wenti cols=80 rows=4 name=wenti msg="不要超过2000字" max="2000" min="0" dataType="Limit"></TEXTAREA></TD></TR></TBODY></TABLE><BR>
<TABLE class=myInput border=1 cellSpacing=0 cellPadding=0 width="100%">
  <TBODY>
  <TR>
    <TD colSpan=6 class="myInputTitle"><STRONG>施工进度报告（<FONT 
      color=#ff0000>已进入施工阶段的项目填写</FONT>）</STRONG></TD></TR>
  <TR>
    <TD style="BACKGROUND-COLOR: #ffffff">&nbsp;</TD>
    <TD class="myInputTitle">
      <P><STRONG>计划工作量</STRONG></P></TD>
    <TD class="myInputTitle">
      <P><STRONG>已完成量</STRONG></P></TD>
    <TD>&nbsp;</TD>
    <TD class="myInputTitle">
      <P><STRONG>计划工作量</STRONG></P></TD>
    <TD class="myInputTitle">
      <P><STRONG>已完成量</STRONG></P></TD></TR>
  <TR>
    <TD class="myInputTitle">土石方总方量</TD>
    <TD width="18%"><INPUT type="text" id=tsjh name=tsjh></TD>
    <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff" width="17%"><INPUT type="text" 
      id=tssj name=tssj></TD>
    <TD  class="myInputTitle"
    width="15%">水工构件物</TD>
    <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff" width="18%"><INPUT type="text" 
      id=gjjh name=gjjh></TD>
    <TD width="17%"><INPUT type="text" id=gjsj name=gjsj></TD></TR>
  <TR>
    <TD class="myInputTitle">
      <P>建筑物</P></TD>
    <TD><INPUT type="text" id=qtjh name=qtjh></TD>
    <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT type="text" id=qtsj 
      name=qtsj></TD>
    <TD class="myInputTitle">
      <P>管网改造</P></TD>
    <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT type="text" id=gwjh 
      name=gwjh></TD>
    <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT type="text" id=gwsj 
      name=gwsj></TD></TR>
  <TR>
    <TD class="myInputTitle">
      <P>设备工程安装</P></TD>
    <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT type="text" id=sbjh 
      name=sbjh></TD>
    <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT type="text" id=sbsj 
      name=sbsj></TD>
    <TD style="TEXT-ALIGN: center; BACKGROUND-COLOR: #eff6fe">其他</TD>
    <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT type="text" id=qitajh 
      name=qitajh></TD>
    <TD><INPUT type="text" id=qitasj name=qitasj></TD></TR>
  <TR>
    <TD class="myInputTitle">
      <P>工程总投资额</P></TD>
    <TD colSpan=2><INPUT type="text" id=zongtou name=zongtou></TD>
    <TD class="myInputTitle">
      <P>目前已完成投资额</P></TD>
    <TD colSpan=2><INPUT type="text" id=wancheng name=wancheng></TD></TR>
  <TR>
    <TD class="myInputTitle">
      <P>完成投资比例</P></TD>
    <TD colSpan=2><INPUT type="text" id=bili name=bili></TD>
    <TD class="myInputTitle">填报月份</TD>
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
      <P>质量、安全情况</P></TD>
    <TD colSpan=5><TEXTAREA style="WIDTH: 90%" id=zhiliang rows=4 name=zhiliang></TEXTAREA></TD></TR>
  <TR>
    <TD class="myInputTitle">
      <P>其他方面情况</P></TD>
    <TD colSpan=5><TEXTAREA style="WIDTH: 90%" id=qita rows=3 name=qita></TEXTAREA></TD></TR>
  <TR>
    <TD class="myInputTitle">备注</TD>
    <TD colSpan=5><TEXTAREA style="WIDTH: 90%" id=remark rows=3 name=remark></TEXTAREA></TD></TR></TBODY></TABLE>	
<TABLE border=1 width="100%">
  <TBODY>
  <TR>
    <TD height=38 colSpan=4 align=center><INPUT name=button value="   提   交   " type="submit"> 
      &nbsp; &nbsp; <INPUT name=reset value="   重   置   " type=reset> 
      &nbsp;&nbsp; <INPUT onclick=javascript:myBack() name=button1 value="   返   回   " type=button></TD></TR></TBODY></TABLE></FORM>
  </body>
</html>
