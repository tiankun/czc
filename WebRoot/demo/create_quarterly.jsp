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
<script language="JavaScript" >
function mySubmit(){
if(Validator.Validate(document.form1,3)){
		document.form1.submit();
}
}
function myBack(){
window.location="${pageContext.request.contextPath}/demo/itemQuarterly.jsp?p_type=${param.p_type}";
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

<FORM method=post name=form1 
action="#">
<TABLE border="1" width="100%" class="myInput">
  <TBODY>
  <TR>
    <TD colSpan=4 align=center class="myInputTitle"><STRONG>项目进度季报</STRONG></TD>
  </TR>
  <TR>
    <TD width="20%" class="myInputTitle">上报季度：</TD>
    <TD width="30%"><SELECT id=month name=month> <OPTION 
        value=2012-01>2012-01</OPTION> <OPTION value=2012-02>2012-02</OPTION> 
        <OPTION value=2012-03>2012-03</OPTION> <OPTION 
        value=2012-04>2012-04</OPTION></SELECT> </TD>
    <TD width="20%" class="myInputTitle">所处阶段：</TD>
    <TD width="30%"><SELECT name=phase> <OPTION selected 
        value=可研阶段>可研阶段</OPTION> <OPTION value=初步设计阶段>初步设计阶段</OPTION> <OPTION 
        value=施工图阶段>施工图阶段</OPTION> <OPTION value=土建阶段>土建阶段</OPTION> <OPTION 
        value=设备安装阶段>设备安装阶段</OPTION> <OPTION value=试运行阶段>试运行阶段</OPTION> <OPTION 
        value=项目竣工>项目竣工</OPTION></SELECT></TD></TR>
  <TR>
    <TD width="20%" class="myInputTitle">本季计划到位资金（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD width="30%"><INPUT type="text" id=jihua name=jihua></TD>
    <TD style="BACKGROUND-COLOR: #ffffff" width="50%" colSpan=2>&nbsp;</TD></TR>
  <TR>
    <TD class="myInputTitle">国家财政（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD><INPUT type="text" id=jhGuojia name=jhGuojia></TD>
    <TD class="myInputTitle">省级财政（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD><INPUT type="text" id=jhSheng name=jhSheng></TD></TR>
  <TR>
    <TD class="myInputTitle">地方财政（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD><INPUT type="text" id=jhDifang name=jhDifang></TD>
    <TD class="myInputTitle">其他（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD><INPUT type="text" id=jhQita name=jhQita></TD></TR>
  <TR>
    <TD class="myInputTitle">其他资金具体说明</TD>
    <TD colSpan=3><INPUT type="text" id=jhQitaJuti name=jhQitaJuti></TD></TR>
  <TR>
    <TD width="20%" class="myInputTitle">本季实际到位资金（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD width="30%"><INPUT type="text" id=shiji name=shiji></TD>
    <TD style="BACKGROUND-COLOR: #ffffff" width="50%" colSpan=2>&nbsp;</TD></TR>
  <TR>
    <TD class="myInputTitle">国家财政（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD><INPUT type="text" id=sjGuojia name=sjGuojia></TD>
    <TD class="myInputTitle">省级财政（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD><INPUT type="text" id=sjSheng name=sjSheng></TD></TR>
  <TR>
    <TD class="myInputTitle">地方财政（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD><INPUT type="text" id=sjDifang name=sjDifang></TD>
    <TD class="myInputTitle">其他（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD><INPUT type="text" id=sjQita name=sjQita></TD></TR>
  <TR>
    <TD class="myInputTitle">其他资金具体说明</TD>
    <TD colSpan=3><INPUT type="text" id=sjQitaJuti name=sjQitaJuti></TD></TR>
  <TR>
    <TD width="20%" class="myInputTitle">本季实际使用资金（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD width="30%"><INPUT type="text" id=shiyong name=shiyong></TD>
    <TD style="BACKGROUND-COLOR: #ffffff" width="50%" colSpan=2>&nbsp;</TD></TR>
  <TR>
    <TD class="myInputTitle">国家财政（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD><INPUT type="text" id=syGuojia name=syGuojia></TD>
    <TD class="myInputTitle">省级财政（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD><INPUT type="text" id=sySheng name=sySheng></TD></TR>
  <TR>
    <TD class="myInputTitle">地方财政（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD><INPUT type="text" id=syDifang name=syDifang></TD>
    <TD class="myInputTitle">其他（<SPAN class=STYLE1>万元</SPAN>）</TD>
    <TD><INPUT type="text" id=syQita name=syQita></TD></TR>
  <TR>
    <TD class="myInputTitle">其他资金具体说明</TD>
    <TD colSpan=3><INPUT type="text" id=syQitaJuti name=syQitaJuti></TD></TR>
  <TR>
    <TD width="20%" class="myInputTitle">本季增加管网（<SPAN class=STYLE1>公里</SPAN>）</TD>
    <TD width="30%" colSpan=3><INPUT type="text" id=xzguanwang name=xzguanwang msg="必填" 
      dataType="Require"></TD></TR>
  <TR>
    <TD width="20%" class="myInputTitle">建设进度季报内容</TD>
    <TD width="80%" colSpan=3><TEXTAREA id=content cols=80 rows=4 name=content msg="建设进度月报内容必须在4个字以上2000字以内" dataType="Limit" max="2000" min="4"></TEXTAREA></TD></TR></TBODY></TABLE><BR>	
<TABLE border=1 width="100%">
  <TBODY>
  <TR>
    <TD height=38 colSpan=4 align=center><INPUT  name=button value="   提   交   " type="submit"> 
      &nbsp; &nbsp; <INPUT name=reset value="   重   置   " type=reset> 
      &nbsp;&nbsp; <INPUT onclick=javascript:myBack() name=button1 value="   返   回   " type=button></TD></TR></TBODY></TABLE></FORM>
  </body>
</html>
