<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@page import="com.zsc.util.WebUtil"%>
<c:set var="webUtil" value="<%=new WebUtil()%>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<head>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 
<link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
<script language="JavaScript">
function mySubmit(){
	if(Validator.Validate(document.form1,3)){
		document.form1.submit();
	}
}

function rst(value){
	if(value=='���ͨ��'){
		$("#zjsc").empty();
		$("#zjsc").append('<td colspan="4"><table width="100%" border="1" class="myInput"><tr>'
		    	+'<td width="15%" class="myInputTitle"><strong>����ѧ��:</strong><span style="color: red">*</span></td>'	
		    	+'<td width="35%">'
		    	+'<input type="text" Id="latin" name="latin" dataType="Require" maxlength="50"/>'
		    	+'</td>'
		    	+'<td width="15%" class="myInputTitle"><strong>����ѧ��:</strong><span style="color: red">*</span></td>'	
		    	+'<td width="35%">'
		    	+'<input type="text" Id="chn" name="chn" dataType="Require" maxlength="50"/>'
		    	+'</td>'
		    	+'</tr>'
		    	+'<tr>'
		    	+'<td width="15%" class="myInputTitle"><strong>��:</strong><span style="color: red">*</span></td>	'
		    	+'<td width="35%">'
		    	+'<input type="text" Id="ke" name="ke" dataType="Require" maxlength="50"/>'
		    	+'</td>'
		    	+'<td width="15%" class="myInputTitle"><strong>��:</strong><span style="color: red">*</span></td>	'
		    	+'<td width="35%">'
		    	+'<input type="text" Id="shu" name="shu" dataType="Require" maxlength="50"/>'
		    	+'</td>'
		    	+'</tr></table></td>');
	}else if(value=='��˲�ͨ��'){
		$("#zjsc").empty();
		$("#zjsc").append('<td colspan="4"><table width="100%" border="1" class="myInput">'
				+'<tr>'
				+'<td width="15%" class="myInputTitle"><strong>��ͨ��ԭ��:</strong><span style="color: red">*</span></td>'
				+'<td colspan="3">'
				+'<textarea name="ept_op" id="ept_op" dataType="Limit" min="10" max="200" msg="10-200������" style="width:88%"></textarea>'
				+'</td>'
				+'</tr>'
				+'</table></td>');
	}else{
		$("#zjsc").empty();
	}
}
</script>
</head>
<body>
<script language="JavaScript">${issave}</script>
<form action="${pageContext.request.contextPath}/gushu/Gushu!zjAudit.do" method="post" name="form1">
	<input type="hidden" Id="issub" name="issub" value="${issub}"/>
	<input type="hidden" Id="zj_time" name="zj_time" value="${zj_time}"/>
	<input type="hidden" Id="id" name="id" value="${gushu.id}"/>
	<input type="hidden" Id="unit_id" name="unit_id" value="${gushu.unit_id}"/>
	<input type="hidden" Id="num" name="num" value="${gushu.num}"/>
	<input type="hidden" Id="diaocha" name="diaocha" value="${gushu.diaocha}"/>
	<input type="hidden" Id="mingcheng" name="mingcheng" value="${gushu.mingcheng}"/>
	<input type="hidden" Id="didian" name="didian" value="${gushu.didian}"/>
	<input type="hidden" Id="leixing" name="leixing" value="${gushu.leixing}"/>
	<input type="hidden" Id="jibie" name="jibie" value="${gushu.jibie}"/>
	<input type="hidden" Id="shuling" name="shuling" value="${gushu.shuling}"/>
	<input type="hidden" Id="shugao" name="shugao" value="${gushu.shugao}"/>
	<input type="hidden" Id="guanfu_dx" name="guanfu_dx" value="${gushu.guanfu_dx}"/>
	<input type="hidden" Id="guanfu_nb" name="guanfu_nb" value="${gushu.guanfu_nb}"/>
	<input type="hidden" Id="xongwei" name="xongwei" value="${gushu.xongwei}"/>
	<input type="hidden" Id="shengzhang" name="shengzhang" value="${gushu.shengzhang}"/>
	<input type="hidden" Id="huanjing" name="huanjing" value="${gushu.huanjing}"/>
	<input type="hidden" Id="baohu" name="baohu" value="${gushu.baohu}"/>
	<input type="hidden" Id="qun" name="qun" value="${gushu.qun}"/>
	<input type="hidden" Id="beizhu" name="beizhu" value="${gushu.beizhu}"/>
	<input type="hidden" Id="input" name="input" value="${gushu.input}"/>
	<table width="100%" border="1" class="myInput">
    <tr>	
		<td colspan="4" class="myInputTitle"><strong>������ľ����ǼǱ�</strong></td>	
	</tr>	
	    <tr>
			<td width="15%" class="myInputTitle"><strong>���</strong></td>	
			<td width="35%">${gushu.num}</td>
			<td width="15%" class="myInputTitle"><strong>��������</strong></td>	
			<td width="35%">${gushu.diaocha}</td>			
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>���ּ�����</strong></td>	
			<td width="35%">${gushu.mingcheng}</td>
			<td width="15%" class="myInputTitle"><strong>����ص�</strong></td>	
			<td width="35%">${gushu.didian}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>����</strong></td>	
			<td width="35%">${gushu.leixing}</td>
			<td width="15%" class="myInputTitle"><strong>��������</strong></td>	
			<td width="35%">${gushu.jibie}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>���� </strong></td>	
			<td width="35%">${gushu.shuling} ��</td>
			<td width="15%" class="myInputTitle"><strong>���� </strong></td>	
			<td width="35%">${gushu.shugao} ��</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>�ڷ�</strong></td>	
			<td width="35%">���� ${gushu.guanfu_dx} �ף��ϱ� ${gushu.guanfu_nb} ��</td>
			<td width="15%" class="myInputTitle"><strong>��Χ</strong></td>	
			<td width="35%">${gushu.xongwei} ��</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>����״��</strong></td>	
			<td width="35%">${gushu.shengzhang}</td>
			<td width="15%" class="myInputTitle"><strong>���ܻ������</strong></td>	
			<td width="35%">${gushu.huanjing}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>������״</strong></td>	
			<td colspan="3">${gushu.baohu}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>��Ƭ</strong></td>	
			<td colspan="3">
<c:forEach items="${pics}" var="pic">
			<div style="float:left;width:420px">
			<table width="100%" border="1"><tr><td width="400px"><a href="${pageContext.request.contextPath}/upFile/file/${gushu.unit_id}/${pic.path}" target="_blank"><img width="400px" height="300px" src="${pageContext.request.contextPath}/upFile/file/${gushu.unit_id}/${pic.path}" border=0/></a></td></tr>
		<tr><td>${pic.leixing}��${pic.shuoming}</td></tr></table></div>
		</c:forEach>
		</td>
	    </tr>
	    </br>
	    <tr>	
			<td colspan="4" class="myInputTitle"><strong>������</strong></td>	
		</tr>
	    <tr>
	    	<td width="15%" class="myInputTitle"><strong>��˽��:</strong><span style="color: red">*</span></td>	
			<td width="35%">
			<select Id="zj_result" name="zj_result" dataType="Require" onchange="rst(this.value)">
			<option value="">δѡ��</option>
	        <option value="${webUtil.success}" >${webUtil.success}</option>
	        <option value="${webUtil.fail}" >${webUtil.fail}</option>  
	   		</select>
			</td>
			<td width="15%" class="myInputTitle"><strong>ר������:</strong><span style="color: red">*</span></td>	
			<td width="35%">
			<input type="text" Id="expert" name="expert" dataType="Require" maxlength="20"/>
			</td>
	    </tr>
	    <tr id="zjsc"></tr>
	    <tr>	
			<td colspan="4" align="center" style="height: 30px">
			<input id="button" name="button" type="button" value=" �� �� " onClick="return mySubmit();"/>&nbsp;&nbsp;
	    </td>	
		</tr>			
	</table>
</form>
</body>
</html>