<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%
int now=java.util.Calendar.getInstance().get(java.util.Calendar.YEAR);
String atts[] = {now+"-4",now+"-3",now+"-2",now+"-1",now-1+"-4",now-1+"-3",now-1+"-2",now-1+"-1"};
request.setAttribute("atts", atts);
request.setAttribute("jidu", 3-java.util.Calendar.getInstance().get(java.util.Calendar.MONTH)/3);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>  
	<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>	  
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" /> 
<script language="JavaScript" type="text/JavaScript">
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
</SCRIPT>
<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<%@ include file="../top.jsp" %>
<form action="${pageContext.request.contextPath}/item/Item_report!${item_report.id==null?'save':'update'}.do" method="post" name="form1" style="margin:0px">
	<input type="hidden" Id="id" name="id" value="${item_report.id}"/>
	<input type="hidden" Id="type" name="type" value="2"/>
	<input type="hidden" Id="item" name="item" value="${item_report.id==null?item:item_report.item}"/>
	<input type="hidden" Id="input" name="input" value="${item_report.input}"/>		
<table border="1" width="100%" class="myInput">
  <TR>
    <TD colSpan=6 align=center class="tHead"><STRONG>====��Ŀ���ȼ������====</STRONG></TD>
  </TR>
	<tr>
		<td width="13%" class="myInputTitle">�ϱ�����</td>	
		<td width="20%">
<SELECT id="yuefen" name="yuefen">
	  <c:forEach items="${atts}" var="item" begin="${jidu}" end="${jidu+3}">
        <option value="${item}" <c:if test="${item_report.yuefen==item}">selected</c:if>>${item}</option>
      </c:forEach>
</SELECT>
		</td>
		<td width="13%" class="myInputTitle">��ǰ�����׶�</td>	
		<td width="20%">
<SELECT id="jieduan" name="jieduan">
<OPTION <c:if test="${item_report.jieduan=='������'}">selected</c:if> value="������">������</OPTION>
<OPTION <c:if test="${item_report.jieduan=='����'}">selected</c:if> value="����">����</OPTION>
</SELECT>		
		</td>
		<td colspan="2">&nbsp;</td>
	</tr>
	<tr>
		<td width="13%" class="myInputTitle">�����ȼƻ���λ�ʽ�<br/>
		  ��<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="20%">
		<input type="text" Id="jh_daowei" name="jh_daowei" maxlength="22" dataType="Double" value="${item_report.jh_daowei}"/>
		</td>
		<td width="13%" class="myInputTitle">������ʵ�ʵ�λ�ʽ�<br/>
		  ��<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="20%">
		<input type="text" Id="sj_daowei" name="sj_daowei" maxlength="22" dataType="Double" value="${item_report.sj_daowei}"/>
		</td>		
		<td width="13%" class="myInputTitle">������ʵ��ʹ���ʽ�<br/>
		  ��<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="20%"><input type="text" Id="sj_shiyong" name="sj_shiyong" maxlength="22" dataType="Double" value="${item_report.sj_shiyong}"/>
		</td>
	</tr>
	<tr>				
		<td  class="myInputTitle">��Ŀ�ƻ�Ͷ��<br/>��<span class="STYLE1">��Ԫ</span>��</td>	
		<td>${itemBuild.yu_touzi}
		</td>
		<td class="myInputTitle">��ǰ�ۼ��ѵ�λ�ʽ�<br/>��<span class="STYLE1">��Ԫ</span>��</td>	
		<td >
		<input type="text" Id="lj_daowei" name="lj_daowei" maxlength="22" dataType="Double" value="${item_report.lj_daowei}"/>
		</td>		
		<td  class="myInputTitle">��ǰ�ۼ���ʹ���ʽ�<br/>��<span class="STYLE1">��Ԫ</span>��</td>	
		<td >
		<input type="text" Id="lj_shiyong" name="lj_shiyong" maxlength="22" dataType="Double" value="${item_report.lj_shiyong}"/>
		</td>		
	</tr>
	<tr>		
		<td  class="myInputTitle">��Ŀ��չ���</td>	
		<td colspan="5">
		  <textarea name="jinzhan" rows="5" id="jinzhan" style="width:90%" datatype="Require">${item_report.jinzhan}</textarea>
		</td>
	</tr>
	<tr>
		<td  class="myInputTitle">Ŀǰ��������</td>	
		<td colspan="5">
		  <textarea name="wenti" rows="5" id="wenti" style="width:90%" datatype="">${item_report.wenti}</textarea>
		</td>
	</tr>
<tr>
<td align="center" colspan="6">
	<input id="button" name="button" type="button" value=" �� �� " onClick="return mySubmit();"/>&nbsp;&nbsp;&nbsp;
	<input type="button" value="�����б�" onclick="window.location='${pageContext.request.contextPath}/item/Item_report!list.do?item=${item_report.id==null?item:item_report.item}&type=2'"/>
</td>
</tr>	
</table>
</form>
</body>

</html>