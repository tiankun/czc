<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>	
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" /> 
<script language="JavaScript" >
function mySubmit(name){
document.form1.action="${pageContext.request.contextPath}/site/Manage!listInfor.do";
document.form1.inforname.value=name;
document.form1.submit();
}
function myAdd(name){
document.form1.action="${pageContext.request.contextPath}/site/Manage!edit.do";
document.form1.inforname.value=name;
document.form1.submit();
}		
</script>	   
</head>

<ec:table items='list' var="item" view="compact" rowsDisplayed="50" title="网站栏目列表" filterable="false"
	action="#" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif" style="width:99%">
	<ec:row highlightRow="true">
		<ec:column property="inforname" title="栏目名称" width="40%" style="height:20px"/>
		<ec:column property="beizhu" title="备注" width="40%"/>
		<ec:column property="id" title="操作" width="20%" style="text-align:center"><c:if test="${item.inforname!='友情链接'&&item.inforname!='资料下载'&&item.inforname!='课件下载'}"><a style="cursor:pointer" onclick="myAdd('${item.inforname}')">添加信息</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</c:if><a style="cursor:pointer" onclick="mySubmit('${item.inforname}')">进入列表</a></ec:column>
	</ec:row>
</ec:table>
<form style="margin:0px" action="${pageContext.request.contextPath}/site/Manage!listInfor.do" method="post" name="form1" >
<input type="hidden" name="inforname"/>
</form>
</body>

</html>

