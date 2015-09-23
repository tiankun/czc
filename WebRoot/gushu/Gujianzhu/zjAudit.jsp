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
	if(value=='审核通过'){
		$("#zjsc").empty();
	}else if(value=='审核不通过'){
		$("#zjsc").empty();
		$("#zjsc").append('<td colspan="4"><table width="100%" border="1" class="myInput">'
				+'<tr>'
				+'<td width="15%" class="myInputTitle"><strong>不通过原因:</strong><span style="color: red">*</span></td>'
				+'<td colspan="3">'
				+'<textarea name="ept_op" id="ept_op" dataType="Limit" min="10" max="200" msg="10-200字描述" style="width:88%"></textarea>'
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
<form action="${pageContext.request.contextPath}/gushu/Gujianzhu!zjAudit.do" method="post" name="form1">
	<input type="hidden" Id="issub" name="issub" value="${issub}"/>
	<input type="hidden" Id="id" name="id" value="${gujianzhu.id}"/>
	<input type="hidden" Id="unit_id" name="unit_id" value="${gujianzhu.unit_id}"/>
	<input type="hidden" Id="num" name="num" value="${gujianzhu.num}"/>
	<input type="hidden" Id="diaocha" name="diaocha" value="${gujianzhu.diaocha}"/>
	<input type="hidden" Id="mingcheng" name="mingcheng" value="${gujianzhu.mingcheng}"/>
	<input type="hidden" Id="didian" name="didian" value="${gujianzhu.didian}"/>
	<input type="hidden" Id="jianzao_type" name="jianzao_type" value="${gujianzhu.jianzao_type}"/>
	<input type="hidden" Id="jianzao_nian" name="jianzao_nian" value="${gujianzhu.jianzao_nian}"/>
	<input type="hidden" Id="jianzao_chao" name="jianzao_chao" value="${gujianzhu.jianzao_chao}"/>
	<input type="hidden" Id="jiegou" name="jiegou" value="${gujianzhu.jiegou}"/>
	<input type="hidden" Id="cengshu" name="cengshu" value="${gujianzhu.cengshu}"/>
	<input type="hidden" Id="gaodu" name="gaodu" value="${gujianzhu.gaodu}"/>
	<input type="hidden" Id="mianji" name="mianji" value="${gujianzhu.mianji}"/>
	<input type="hidden" Id="xianzhuang" name="xianzhuang" value="${gujianzhu.xianzhuang}"/>
	<input type="hidden" Id="beizhu" name="beizhu" value="${gujianzhu.beizhu}"/>
	<input type="hidden" Id="zj_time" name="zj_time" value="${zj_time}"/>
	<table width="100%" border="1" class="myInput">
    <tr>	
		<td colspan="4" class="myInputTitle"><strong>古建筑调查登记表</strong></td>	
	</tr>	
	    <tr>
			<td width="15%" class="myInputTitle"><strong>编号</strong></td>	
			<td width="35%">${gujianzhu.num}</td>
			<td width="15%" class="myInputTitle"><strong>调查日期</strong></td>	
			<td width="35%">${gujianzhu.diaocha}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>项目名称</strong></td>	
			<td colspan="3">${gujianzhu.mingcheng}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>具体地点</strong></td>	
			<td colspan="3">${gujianzhu.didian}</td>
	    </tr>
	    <tr>			
			<td width="15%" class="myInputTitle"><strong>建筑年代</strong></td>	
			<td colspan="3">${gujianzhu.jianzao_type}:<c:if test="${gujianzhu.jianzao_nian!=null}"> ${gujianzhu.jianzao_nian} 年</c:if><c:if test="${gujianzhu.jianzao_chao!=null}"> ${gujianzhu.jianzao_chao}朝</c:if></td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>结构形式</strong></td>	
			<td width="35%">${gujianzhu.jiegou}</td>
			<td width="15%" class="myInputTitle"><strong>建筑层数</strong></td>	
			<td width="35%">${gujianzhu.cengshu} 层</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>建筑高度</strong></td>	
			<td width="35%">${gujianzhu.gaodu} 米</td>
			<td width="15%" class="myInputTitle"><strong>建筑面积</strong></td>	
			<td width="35%">${gujianzhu.mianji} 平方米</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>建筑现状及初步评价</strong></td>	
			<td colspan="3">${gujianzhu.xianzhuang}</td>
		</tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>照片</strong></td>	
			<td colspan="3">
<c:forEach items="${pics}" var="pic">
			<div style="float:left;width:420px">
			<table width="100%" border="1"><tr><td width="400px"><a href="${pageContext.request.contextPath}/upFile/file/${gujianzhu.unit_id}/${pic.path}" target="_blank"><img width="400px" height="300px" src="${pageContext.request.contextPath}/upFile/file/${gujianzhu.unit_id}/${pic.path}" border=0/></a></td></tr>
<tr><td>${pic.leixing}：${pic.shuoming}</td></tr></table></div>
</c:forEach>
</td>
	    </tr>
	    <tr>
	    	<td width="15%" class="myInputTitle"><strong>审核结果:</strong><span style="color: red">*</span></td>	
			<td width="35%">
			<select Id="zj_result" name="zj_result" dataType="Require" onchange="rst(this.value)">
			<option value="">未选择</option>
	        <option value="${webUtil.success}" >${webUtil.success}</option>
	        <option value="${webUtil.fail}" >${webUtil.fail}</option>  
	   		</select>
			</td>
			<td width="15%" class="myInputTitle"><strong>专家姓名:</strong><span style="color: red">*</span></td>	
			<td width="35%">
			<input type="text" Id="expert" name="expert" dataType="Require" maxlength="20"/>
			</td>
	    </tr>
	    <tr id="zjsc"></tr>
	    <tr>	
			<td colspan="4" align="center" style="height: 30px">
			<input id="button" name="button" type="button" value=" 提 交 " onClick="return mySubmit();"/>&nbsp;&nbsp;
	    </td>	
		</tr>					
	</table>
</form>
</body>
</html>