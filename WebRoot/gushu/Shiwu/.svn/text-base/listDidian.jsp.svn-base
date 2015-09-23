<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@page import="com.zsc.util.WebUtil"%>
<c:set var="webUtil" value="<%=new WebUtil()%>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
    <link href="${pageContext.request.contextPath}/scripts/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css"></link> 
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/application.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/ligerUI/ligerui.min.js"></script>
    <script language="JavaScript" type="text/javascript">
	//弹出窗口  
	function openWin(id,biao_shi){ 
		$.ligerDialog.open({ url: '${pageContext.request.contextPath}/gushu/Shiwu!check.do?id='+id+'&biao_shi='+biao_shi, width:600,height:260,isResize:true,title:'古树名木及古建筑审核'});
	}
	function openWinCheck(id,biao_shi){ 
		$.ligerDialog.open({ url: '${pageContext.request.contextPath}/gushu/Shiwu!show.do?id='+id+'&biao_shi='+biao_shi, width:600,height:260,isResize:true,title:'古树名木及古建筑审核'});
	}
    </script> 
<style type="text/css">
.beixuan{
   position: relative; 
   font-weight:bold
}
.weixuan{
   position: relative; 
}
</style>     
</head>

<body>
<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="古树名木及古建筑信息上报情况列表" action="${pageContext.request.contextPath}/gushu/Shiwu!listDidian.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="quan_ming" title="上报地区名称"/>
		<ec:column property="gushu" title="古树名木"><center><c:if test="${item.gushu!=null}"><a href="${pageContext.request.contextPath}/gushu/Gushu!listCheck.do?id=${item.guan_li}">${item.gushu}</a></c:if></center></ec:column>
		<ec:column property="gujianzhu" title="古建筑"><center><c:if test="${item.gujianzhu!=null}"><a href="${pageContext.request.contextPath}/gushu/Gujianzhu!listCheck.do?id=${item.guan_li}">${item.gujianzhu}</a></c:if></center></ec:column>		
		<ec:column property="fuze" title="上报负责人"><center><c:if test="${item.fuze!=null}"><a href="${pageContext.request.contextPath}/gushu/Gs_fuze!show.do?id=${item.guan_li}">${item.fuze}</a></c:if></center></ec:column>		
		<ec:column property="status_name" title="审核状态">
			<center><a href="" onclick="openWinCheck('${item.guan_li}','${biao_shi}');return false;">${item.status_name}</a></center>
		</ec:column>
		<ec:column property="操作" title="操作" sortable="false" filterable="false" width="70px">
			<c:if test="${item.status==webUtil.applied&&bLength>2&&item.operator_xian==null}">
				<a href="" onclick="openWin('${item.guan_li}','${biao_shi}');return false;">审核</a>
			</c:if>
			<c:if test="${item.status==webUtil.success&&bLength<=2&&bLength!=1&&item.operator_xian!=null&&item.operator_zhou==null}">
				<a href="" onclick="openWin('${item.guan_li}','${biao_shi}');return false;">审核</a>
			</c:if>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

