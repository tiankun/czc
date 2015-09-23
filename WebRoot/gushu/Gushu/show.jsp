<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@page import="com.zsc.util.WebUtil"%>
<c:set var="webUtil" value="<%=new WebUtil()%>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
<head>
</head>
<body>
<form action="${pageContext.request.contextPath}/gushu/Gushu!edit.do" method="post">
	<input type="hidden" Id="id" name="id" value="${gushu.id}"/>
	<table width="100%" border="1" class="myInput">
    <tr>	
		<td colspan="4" class="myInputTitle"><strong>古树名木调查登记表</strong></td>	
	</tr>	
	    <tr>
			<td width="15%" class="myInputTitle"><strong>编号</strong></td>	
			<td width="35%">${gushu.num}</td>
			<td width="15%" class="myInputTitle"><strong>调查年月</strong></td>	
			<td width="35%">${gushu.diaocha}</td>			
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>树种及俗名</strong></td>	
			<td width="35%">${gushu.mingcheng}</td>
			<td width="15%" class="myInputTitle"><strong>具体地点</strong></td>	
			<td width="35%">${gushu.didian}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>类型</strong></td>	
			<td width="35%">${gushu.leixing}</td>
			<td width="15%" class="myInputTitle"><strong>古树级别</strong></td>	
			<td width="35%">${gushu.jibie}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>树龄 </strong></td>	
			<td width="35%">${gushu.shuling} 年</td>
			<td width="15%" class="myInputTitle"><strong>树高 </strong></td>	
			<td width="35%">${gushu.shugao} 米</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>冠幅</strong></td>	
			<td width="35%">东西 ${gushu.guanfu_dx} 米，南北 ${gushu.guanfu_nb} 米</td>
			<td width="15%" class="myInputTitle"><strong>胸围</strong></td>	
			<td width="35%">${gushu.xongwei} 米</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>生长状况</strong></td>	
			<td width="35%">${gushu.shengzhang}</td>
			<td width="15%" class="myInputTitle"><strong>四周环境情况</strong></td>	
			<td width="35%">${gushu.huanjing}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>保护现状</strong></td>	
			<td colspan="3">${gushu.baohu}</td>
	    </tr>
	    <c:if test="${not empty gushu.zj_result}">
	    <tr>
	    	<td width="15%" class="myInputTitle"><strong>审核结果:</strong></td>	
			<td width="35%">${gushu.zj_result}
			</td>
			<td width="15%" class="myInputTitle"><strong>专家姓名:</strong></td>	
			<td width="35%">${gushu.expert}
			</td>
	    </tr>
	    <c:if test="${gushu.zj_result=='审核通过'}">
	    <tr>
	    	<td width="15%" class="myInputTitle"><strong>拉丁学名:</strong></td>	
			<td width="35%">${gushu.latin}
			</td>
			<td width="15%" class="myInputTitle"><strong>中文学名:</strong></td>	
			<td width="35%">${gushu.chn}
			</td>
	    </tr>
	    <tr>
	    	<td width="15%" class="myInputTitle"><strong>科:</strong></td>	
			<td width="35%">${gushu.ke}
			</td>
			<td width="15%" class="myInputTitle"><strong>属:</strong></td>	
			<td width="35%">${gushu.shu}
			</td>
	    </tr>
	    </c:if>
	    <c:if test="${gushu.zj_result=='审核不通过'}">
	    <tr>
	    	<td width="15%" class="myInputTitle"><strong>不通过原因:</strong></td>	
			<td width="35%" colspan="3">
			<textarea style="width:88%">${gushu.ept_op}</textarea>
			</td>
	    </tr>
	    </c:if>
	    </c:if>
	    <tr>
			<td width="15%" class="myInputTitle"><strong>照片</strong></td>	
			<td colspan="3">
<c:forEach items="${pics}" var="pic">
			<div style="float:left;width:420px">
			<table width="100%" border="1"><tr><td width="400px"><a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${pic.path}" target="_blank"><img width="400px" height="300px" src="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${pic.path}" border=0/></a></td></tr>
<tr><td>${pic.leixing}：${pic.shuoming}</td></tr></table></div>
</c:forEach>
</td>
	    </tr>		
     <tr>	
		<td colspan="4" align="center" style="height: 30px">
			<c:if test="${shiwu_gushu==null||shiwu_gushu.status!=webUtil.applied}">
				<c:if test="${gushu.num==null}">
					<input type="submit" value=" 编 辑 "/>&nbsp;&nbsp;
				</c:if>
			</c:if>    
			<input type="button" value=" 返 回 " onclick="window.location='${pageContext.request.contextPath}/gushu/Gushu!list.do'"/>	
		</td>	
	</tr>		
	</table>
</form>
</body>
</html>