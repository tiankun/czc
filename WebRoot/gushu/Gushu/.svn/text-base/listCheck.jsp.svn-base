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
	function mylink(){
		parent.checkShow('${pageContext.request.contextPath}/gushu/Shiwu!listDidian.do',4);
	}
    </script> 
</head>

<body>
<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="古树名木调查列表"
	action="${pageContext.request.contextPath}/gushu/Gushu!listCheck.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="mingcheng" title="树种及俗名"/>
		<ec:column property="leixing" title="类型"/>
		<ec:column property="jibie" title="古树级别"/>
		<ec:column property="shuling" title="树龄（年）"/>
		<ec:column property="shugao" title="树高（米）"/>
		<ec:column property="guanfu_dx" title="冠幅（东西米）"/>
		<ec:column property="guanfu_nb" title="冠幅（南北米）"/>
		<ec:column property="xongwei" title="胸围（米）"/>
		<ec:column property="shengzhang" title="生长状况"/>
		<ec:column property="操作" title="操作" sortable="false" filterable="false" width="70px">
			<a href="" onclick="openWin('${item.id}');return false;">查看</a>
		</ec:column>
	</ec:row>
</ec:table>

<table border="0" width="100%" class="myInput">	
     <tr>	
		<td colspan="4" align="center" style="height: 30px">
			<input type="button" value=" 返  回 " onclick="mylink();"/>
	    </td>	
	</tr>	
</table>

</body>

</html>

