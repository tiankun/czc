<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@page import="com.zsc.util.WebUtil"%>
<c:set var="webUtil" value="<%=new WebUtil()%>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
	<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 
<script language="JavaScript" >
function mySubmit(){
if(Validator.Validate(document.form1,3)){
$.ajax({   
		 url:'${pageContext.request.contextPath}/gushu/Shiwu!ajaxCheck.do', 
		 data : $("#form1").serializeArray(),type: 'POST',  
		 //data:{name:value.trim()},type: 'POST',   
		 success:function(data){   
			 if(data=='ok'){
			 	alert('审核完成！');
			 }else{
			 	alert('审核失败！');
		 	 }       
		 	 parent.window.location='${pageContext.request.contextPath}/gushu/Shiwu!listDidian.do?biao_shi=${biao_shi}';
	     }
	   });
}
}		
</script>
</head>

<body>
<form method="post" name="form1" id="form1">
	<input type="hidden" Id="unit_id" name="unit_id" value="${shiwu.unit_id}"/>
	
	<table border="1" width="100%" class="myInput">	
    <tr>	
		<td colspan="2" class="myInputTitle"><strong>${didian.quan_ming}&nbsp;&nbsp;审核信息</strong></td>	
	</tr>
	</table>
	<table border="1" width="100%" class="myInput">	
	<tr>
		<td width="20%" class="myInputTitle">审核结果:</td>	
		<td width="30%">
		<select Id="status" name="status" dataType="Require">
		  <option value="">未选择</option>
          <option value="${webUtil.success}" >${webUtil.success}</option>
          <option value="${webUtil.fail}" >${webUtil.fail}</option>  
	    </select>
		</td>
		<td width="20%" class="myInputTitle">当前状态：</td>	
		<td width="30%">${shiwu.status}</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">审核人:</td>	
		<td width="30%">
		<input type="text" maxlength="5" id="opname" name="opname" dataType="Require" style="width:95%"/>
		</td>
		<td width="20%" class="myInputTitle">联系电话:</td>	
		<td width="30%">
		<input type="text" maxlength="13" id="opphone" name="opphone" dataType="Require" style="width:95%"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">审核意见:</td>	
		<td width="30%" colspan="3">
		<textarea Id="result" name="result" rows="7" style="width:95%" dataType="" >${shiwu.result}</textarea>
		</td>
	</tr>
	</table>
	<table border="0" width="100%" class="myInput">	
     <tr>	
		<td colspan="2" align="center" style="height: 30px">
			<input id="button" name="button" type="button" value=" 提 交 " onClick="return mySubmit();"/>
	    </td>	
	</tr>	
	</table>
</form>

</body>
</html>