<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>  
<head>
</head>
<body>
<form action="${pageContext.request.contextPath}/archive/Jq_xiangmu!edit.do" method="post">
	<input type="hidden" Id="id" name="id" value="${jq_xiangmu.id}"/>
	<input type="hidden" Id="unit_id" name="unit_id" value="${unit_id}"/>
	<input type="hidden" Id="pingfen" name="pingfen" value="${pingfen}"/>
	<table width="100%" border="1" class="myInput">
    <tr>	
		<td colspan="4" class="myInputTitle"><strong>近期建设项目情况基本信息</strong></td>	
	</tr>	
	    <tr>
			<td width="15%" class="myInputTitle">对应用户主键</td>	
			<td width="35%">${jq_xiangmu.unit_id}</td>
			<td width="15%" class="myInputTitle">年份</td>	
			<td width="35%">${jq_xiangmu.year}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">项目名称</td>	
			<td width="35%">${jq_xiangmu.ming_cheng}</td>
			<td width="15%" class="myInputTitle">年限</td>	
			<td width="35%">${jq_xiangmu.nian_xian}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">规模</td>	
			<td width="35%">${jq_xiangmu.gui_mo}</td>
			<td width="15%" class="myInputTitle">计划投资金额（万元）</td>	
			<td width="35%">${jq_xiangmu.tou_zi}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">提交时间</td>	
			<td width="35%">${jq_xiangmu.tijiao}</td>
			<td width="15%" class="myInputTitle">备注</td>	
			<td width="35%">${jq_xiangmu.beizhu}</td>
	    </tr>
     <tr>	
		<td colspan="4" align="center" style="height: 30px">
	      <input type="submit" value=" 编 辑 "/>&nbsp;&nbsp;
	      <input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/archive/Jq_xiangmu!list.do'"/>		
	    </td>	
	</tr>
	</table>
</form>
</body>
</html>