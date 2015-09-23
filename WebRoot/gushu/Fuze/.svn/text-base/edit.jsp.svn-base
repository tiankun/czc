<%@ page contentType="text/html;charset=gb2312" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
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
</head>

<body>

<form action="${pageContext.request.contextPath}/gushu/Gs_fuze!save.do" method="post" name="form1">
    <table width="100%" border="1" cellspacing="1" cellpadding="1" class="myInput">
      <tr class="tHead">
        <td align="center" colspan="4"><strong>古树名木及古建筑信息上报相关责任信息</strong></td>
      </tr>
      <tr>
        <td width="15%" class="myInputTitle">负责人姓名</td>
		<td width="35%"><input type="text" Id="fz_ren" name="fz_ren" dataType="Require" value="${fu_ze.fz_ren}"/></td>
		<td width="15%" class="myInputTitle">责任人姓名</td>
		<td width="35%"><input type="text" Id="zr_ren" name="zr_ren" dataType="Require" value="${fu_ze.zr_ren}"/></td>
      </tr>	
      <tr>
        <td class="myInputTitle">负责单位</td>
		<td><input type="text" Id="fz_danwei" name="fz_danwei" dataType="" value="${fu_ze.fz_danwei}"/></td>
		<td class="myInputTitle">责任单位</td>
		<td><input type="text" Id="zr_danwei" name="zr_danwei" dataType="" value="${fu_ze.zr_danwei}"/></td>
      </tr>
      <tr>
        <td class="myInputTitle">负责人职务</td>
		<td><input type="text" Id="fz_zhiwu" name="fz_zhiwu" dataType="" value="${fu_ze.fz_zhiwu}"/></td>
		<td class="myInputTitle">责任人职务</td>
		<td><input type="text" Id="zr_zhiwu" name="zr_zhiwu" dataType="" value="${fu_ze.zr_zhiwu}"/></td>
      </tr>	  
      <tr>
        <td class="myInputTitle">负责人电话</td>
		<td><input type="text" Id="fz_dianhua" name="fz_dianhua" dataType="Require" value="${fu_ze.fz_dianhua}"/></td>
		<td class="myInputTitle">责任人电话</td>
		<td><input type="text" Id="zr_dianhua" name="zr_dianhua" dataType="Require" value="${fu_ze.zr_dianhua}"/></td>
      </tr>
      <tr>
        <td width="15%" class="myInputTitle">其它说明</td>
		<td colspan="3"><input type="text" Id="remark" name="remark" dataType="" value="${fu_ze.remark}"/></td>
      </tr>	  	  	  	    		
      <tr>
        <td colspan="4" align="center" valign="middle" style="height:40px"><input type="button" name="Submit" value=" 提 交 " onClick="return mySubmit();"/></td>
      </tr>	  
    </table>
</form>
<c:if test="${suss=='suss'}">
<script type='text/javascript'>
alert('====保存数据成功！====');
</script>
</c:if>
</body>

</html>