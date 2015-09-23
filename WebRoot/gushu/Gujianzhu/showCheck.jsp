<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
<head>
</head>
<body>
<form action="${pageContext.request.contextPath}/gushu/Gujianzhu!edit.do" method="post">
	<input type="hidden" Id="id" name="id" value="${gujianzhu.id}"/>
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
		<c:if test="${not empty gujianzhu.zj_result}">
	    <tr>
	    	<td width="15%" class="myInputTitle"><strong>审核结果:</strong></td>	
			<td width="35%">${gujianzhu.zj_result}
			</td>
			<td width="15%" class="myInputTitle"><strong>专家姓名:</strong></td>	
			<td width="35%">${gujianzhu.expert}
			</td>
	    </tr>
		<c:if test="${gujianzhu.zj_result=='审核不通过'}">
	    <tr>
	    	<td width="15%" class="myInputTitle"><strong>不通过原因:</strong></td>	
			<td width="35%" colspan="3">
			<textarea style="width:88%">${gujianzhu.ept_op}</textarea>
			</td>
	    </tr>
	    </c:if>
	    </c:if>
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
	</table>
</form>
</body>
</html>