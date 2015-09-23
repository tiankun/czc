<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
    <link href="${pageContext.request.contextPath}/scripts/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css"></link> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/ligerUI/ligerui.min.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/application.js"></script>
    <script language="JavaScript" type="text/javascript">
	//弹出窗口  
	function openWin(id){ 
		$.ligerDialog.open({ url: '${pageContext.request.contextPath}/gushu/Gushu!showCheck.do?id='+id, width:1100,height:600,isResize:true});
	}
	
	function zjAudit(id){
		$.ligerDialog.open({ url: '${pageContext.request.contextPath}/gushu/Gushu!zjAudit.do?id='+id, width:1100,height:600,isResize:true});
	}
    </script> 
</head>

<body>
<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="古树名木调查列表"
	action="${pageContext.request.contextPath}/gushu/Gushu!listZj.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="quan_ming" title="属地"/>
		<ec:column property="mingcheng" title="树种及俗名"/>
		<ec:column property="leixing" title="类型"/>
		<ec:column property="jibie" title="古树级别"/>
		<ec:column property="shuling" title="树龄（年）"/>
		<ec:column property="shugao" title="树高（米）"/>
		<ec:column property="xongwei" title="胸围（米）"/>
		<ec:column property="shengzhang" title="生长状况"/>
		<ec:column property="latin" title="拉丁学名"/>
		<ec:column property="chn" title="中文学名"/>
		<ec:column property="zj_result" title="审查情况" sortable="false">
			<c:if test="${empty item.zj_result}"><font color="#ff9955">未审</font></c:if>
			<c:if test="${item.zj_result=='审核不通过'}"><font color="red">${item.zj_result}</font></c:if>
			<c:if test="${item.zj_result=='审核通过'}"><font color="green">${item.zj_result}</font></c:if>
		</ec:column>
		<ec:column property="expert" title="专家名"/>
		<ec:column property="操作" title="操作" sortable="false" filterable="false" width="70px">
			<a href="" onclick="openWin('${item.id}');return false;">查看</a>
			<c:if test="${empty item.zj_result}">
			<a href="" onclick="zjAudit('${item.id}');return false;">审查</a>
			</c:if>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

