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
</script>
</head>

<body>
<%@ include file="gs_top.jsp" %>
<form action="#" method="post" name="form1">
	<table border="1" width="100%" class="myInput">
	     <tr>
	       <td colspan="2" class="myInputTitle"><STRONG>���ʵ���շ����</STRONG></td>
	     </tr>
	     <tr>
	       <td width="15%" class="myInputTitle">�շ�ʱ��</td>
	       <td><input type="text" style="width: 50%"/></td>
	     </tr>
	     <tr>
	       <td width="15%" class="myInputTitle">����ִ�б�׼</td>
	       <td><input type="text" style="width: 50%"/></td>
	     </tr>
	     <tr>
	       <td width="15%" class="myInputTitle">����ʱ�估�ĺ�</td>
	       <td><input type="text" style="width: 50%"/></td>
	     </tr>
	     <tr>
	       <td width="15%" class="myInputTitle">�շ�����</td>
	       <td><textarea style="width: 50%"></textarea></td>
	     </tr>
	     <tr>
	       <td align="center" colspan="2"><input type="button" value="�ύ"/></td>
	     </tr>
	</table>
</form>