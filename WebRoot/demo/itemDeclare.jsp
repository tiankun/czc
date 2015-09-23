<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
</head>
  
  <body>
<%@ include file="gs_top.jsp" %>
    
<FORM method=post name=form1 action="#">
<TABLE border="1" width="100%" class="myInput">
  <TBODY>
  <TR>
    <TD colSpan="4" class="myInputTitle"><STRONG>项目申报</STRONG></TD></TR>
  <TR>
    <TD width="20%" class="myInputTitle">申报内容：</TD>
    <TD width="80%" colSpan=3><TEXTAREA cols=90 rows=4 name=content></TEXTAREA><INPUT 
      name=input value=2013-04-09 type=hidden></TD></TR></TBODY></TABLE><BR>
<TABLE border=1 width="100%">
  <TBODY>
  <TR>
    <TD height=38 colSpan=4 align=center><INPUT onClick="return mySubmit();" name=button value="   提   交   " type=button> 
      &nbsp; &nbsp; <INPUT name=reset value="   重   置   " type=reset> 
      &nbsp;&nbsp; <INPUT onclick=javascript:myBack() name=button1 value="   返   回   " type=button><INPUT 
      name=id type=hidden><INPUT name=item value=151 type=hidden><INPUT 
      name=type value=1 type=hidden></TD></TR></TBODY></TABLE></FORM>
  </body>
</html>
