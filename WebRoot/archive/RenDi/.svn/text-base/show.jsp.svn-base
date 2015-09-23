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
<form action="${pageContext.request.contextPath}/archive/Ren_di!edit.do" method="post">
	<input type="hidden" Id="id" name="id" value="${ren_di.id}"/>
	<input type="hidden" Id="unit_id" name="unit_id" value="${unit_id}"/>
	<input type="hidden" Id="pingfen" name="pingfen" value="${pingfen}"/>
	<table width="100%" border="1" class="myInput">
    <tr>	
		<td colspan="4" class="myInputTitle"><strong>人口与用地情况基本信息</strong></td>	
	</tr>	
	    <tr>
			<td width="15%" class="myInputTitle">村域总面积</td>	
			<td width="35%">&nbsp;${ren_di.cy_mianji}平方公里</td>
			<td width="15%" class="myInputTitle">村庄占地面积</td>	
			<td width="35%">&nbsp;${ren_di.cz_zhandi}亩</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">村庄规划区范围</td>	
			<td width="35%">&nbsp;${ren_di.cz_guihua}亩</td>
			<td width="15%" class="myInputTitle">建设用地</td>	
			<td width="35%">&nbsp;${ren_di.js_yongdi}亩</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">耕地面积</td>	
			<td width="35%">&nbsp;${ren_di.gd_mianji}亩</td>
			<td width="15%" class="myInputTitle">基本农田面积</td>	
			<td width="35%">&nbsp;${ren_di.nongtian}亩</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">国有土地面积</td>	
			<td width="35%">&nbsp;${ren_di.gy_tudi}亩</td>
			<td width="15%" class="myInputTitle">集体土地面积</td>	
			<td width="35%">&nbsp;${ren_di.jt_tudi}亩</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">坝区所占比例（%）</td>	
			<td width="35%">&nbsp;${ren_di.bq_bili}</td>
			<td width="15%" class="myInputTitle">山区所占比例（%）</td>	
			<td width="35%">&nbsp;${ren_di.sq_bili}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">规划新增建设用地</td>	
			<td width="35%">&nbsp;${ren_di.gh_xzdi}亩</td>
			<td width="15%" class="myInputTitle">规划新增户数</td>	
			<td width="35%">&nbsp;${ren_di.gh_xzhu}户</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">地貌特征</td>	
			<td width="85%" colspan="3">&nbsp;${ren_di.dimao}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">农村总人口</td>	
			<td width="35%">&nbsp;${ren_di.renkou}人</td>
			<td width="15%" class="myInputTitle">农村总户数</td>	
			<td width="35%">&nbsp;${ren_di.hushu}户</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">户籍人口</td>	
			<td width="35%">&nbsp;${ren_di.huji}人</td>
			<td width="15%" class="myInputTitle">常住人口</td>	
			<td width="35%">&nbsp;${ren_di.changzhu}人</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">农业人口</td>	
			<td width="35%">&nbsp;${ren_di.ny_renkou}人</td>
			<td width="15%" class="myInputTitle">非农业人口</td>	
			<td width="35%">&nbsp;${ren_di.fny_renkou}人</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">年末劳动力人数</td>	
			<td width="35%">&nbsp;${ren_di.nm_renkou}人</td>
			<td width="15%" class="myInputTitle">主要民族</td>	
			<td width="35%">&nbsp;${ren_di.zy_minzu}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">少数民族占总人口比例（%）</td>	
			<td width="35%">&nbsp;${ren_di.ssmz_bili}</td>
			<td width="15%" class="myInputTitle">特色定位</td>	
			<td width="35%">&nbsp;${ren_di.tese}</td>
	    </tr>
	</table>
</form>
</body>
</html>