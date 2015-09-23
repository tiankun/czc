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
<form action="${pageContext.request.contextPath}/archive/Jing_ji!edit.do" method="post">
	<input type="hidden" Id="id" name="id" value="${jing_ji.id}"/>
	<input type="hidden" Id="unit_id" name="unit_id" value="${unit_id}"/>
	<input type="hidden" Id="pingfen" name="pingfen" value="${pingfen}"/>
	<table width="100%" border="1" class="myInput">
    <tr>	
		<td colspan="4" class="myInputTitle"><strong>经济发展情况基本信息</strong></td>	
	</tr>
	    <tr>
			<td width="15%" class="myInputTitle">村级年收入（万元）</td>	
			<td width="35%">${jing_ji.nian_shouru}</td>
			<td width="15%" class="myInputTitle">农民人均纯收入（万元）</td>	
			<td width="35%">${jing_ji.rj_shouru}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">村级总产值（万元）</td>	
			<td width="35%">${jing_ji.cj_zongchanzhi}</td>
			<td width="15%" class="myInputTitle">第一产业总产值（万元）</td>	
			<td width="35%">${jing_ji.dy_chanzhi}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">第二产业总产值（万元）</td>	
			<td width="35%">${jing_ji.de_chanzhi}</td>
			<td width="15%" class="myInputTitle">第三产业总产值（万元）</td>	
			<td width="35%">${jing_ji.ds_chanzhi}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">产值较高的2-3个主要产业</td>	
			<td width="35%">${jing_ji.zhu_chanye}</td>
			<td width="15%" class="myInputTitle">特色产品</td>	
			<td width="35%">${jing_ji.tese_chanpin}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">村内企业个数</td>	
			<td width="35%">${jing_ji.qiye_shu}</td>
			<td width="15%" class="myInputTitle">村内企业总产值（万元）</td>	
			<td width="35%">${jing_ji.qiye_chanzbhi}</td>
	    </tr>
	</table>
</form>
</body>
</html>