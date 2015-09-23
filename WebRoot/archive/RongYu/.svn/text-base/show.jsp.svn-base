<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>  
<head>
</head>
<body>
<%@ include file="/archive/top.jsp" %>
<form action="${pageContext.request.contextPath}/archive/Rong_yu!edit.do" method="post">
	<input type="hidden" Id="id" name="id" value="${rong_yu.id}"/>
	<input type="hidden" Id="unit_id" name="unit_id" value="${unit_id}"/>
	<input type="hidden" Id="pingfen" name="pingfen" value="${pingfen}"/>
	<table width="100%" border="1" class="myInput">
    <tr>	
		<td colspan="4" class="myInputTitle"><strong>荣获名录及相关情况基本信息</strong></td>	
	</tr>	
	    <tr>
			<td width="15%" class="myInputTitle">对应用户主键</td>	
			<td width="35%">${rong_yu.unit_id}</td>
			<td width="15%" class="myInputTitle">年份</td>	
			<td width="35%">${rong_yu.year}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">村庄列入哪一级重点发展</td>	
			<td width="35%">${rong_yu.zd_fazhan}</td>
			<td width="15%" class="myInputTitle">荣获称号</td>	
			<td width="35%">${rong_yu.cheng_hao}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">村庄是否获相关政策支持</td>	
			<td width="35%">${rong_yu.zhi_chi}</td>
			<td width="15%" class="myInputTitle">行政村简介</td>	
			<td width="35%">${rong_yu.jianjie}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">提交时间</td>	
			<td width="35%">${rong_yu.tijiao}</td>
			<td width="15%" class="myInputTitle">备注</td>	
			<td width="35%">${rong_yu.beizhu}</td>
	    </tr>
     <tr>	
	</tr>
	</table>
</form>
</body>
</html>