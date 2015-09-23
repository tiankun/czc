<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/application.js"></script>
    <script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>  
</head>

<body>

<c:if test="${fn:length(fn:split(user.biao_shi,'_'))==3}">
	<input type="button" value="填写填表负责人" onclick="window.location='${pageContext.request.contextPath}/item/Item_fuze!edit.do'"/> 
</c:if>

<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="各级数据填报单位负责人及责任人情况列表" action="${pageContext.request.contextPath}/item/Item_fuze!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
	    <ec:column property="rowcount" cell="rowCount" title="序号" sortable="false" filterable="false" style="width:30px"/>
		<ec:column property="quan_ming" title="地名"/>
		<ec:column property="fz_ren" title="信息员姓名"/>
		<ec:column property="fz_danwei" title="信息员单位"/>
		<ec:column property="fz_dianhua" title="信息员电话">
		    ${item.fz_dianhua};${item.fz_phone}
		</ec:column>
		<ec:column property="zr_ren" title="责任人姓名"/>
		<ec:column property="zr_danwei" title="责任人单位"/>
		<ec:column property="zr_dianhua" title="责任人电话">
		    ${item.zr_dianhua};${item.zr_phone}
		</ec:column>
		<ec:column property="操作" title="操作" sortable="false" filterable="false" width="100px">
		     <a href="${pageContext.request.contextPath}/item/Item_fuze!show.do?id=${item.id}&">查看</a>
		     <c:if test="${item.unit_id==user.guan_li}">
		         &nbsp;&nbsp;<a href="${pageContext.request.contextPath}/item/Item_fuze!edit.do?id=${item.id}&">修改</a>&nbsp;&nbsp;
			    <a href="${pageContext.request.contextPath}/item/Item_fuze!delete.do?id=${item.id}&" onClick="return confirm('确定删除吗？');">删除</a>
		     </c:if>
		</ec:column>
	</ec:row>
</ec:table>
</body>

</html>