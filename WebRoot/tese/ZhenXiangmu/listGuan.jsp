<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/application.js"></script>  
</head>

<body>
<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="${didian.quan_ming}&nbsp;&nbsp;镇（乡）近期建设项目情况列表" action="${pageContext.request.contextPath}/tese/Zhen_xiangmu!listGuan.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="fen_lei" title="项目分类"/>
		<ec:column property="ming_cheng" title="项目名称"/>
		<ec:column property="xing_zhi" title="建设性质"/>
		<ec:column property="gui_mo" title="建设规模"/>
		<ec:column property="zong_touzi" title="总投资（万元）"/>
		<ec:column property="nian_xian" title="建设年限"/>
		<ec:column property="lei_bie" title="类别（用途）"/>
		<ec:column property="yong_di" title="用地规模"/>
		<ec:column property="yongdi_nianxian" title="用地使用年限"/>
		<ec:column property="xinzeng_yongdi" title="新增建设用地规模"/>
	</ec:row>
</ec:table>
<center><input type="button" name="button" value=" 返 回 " onclick="history.back();"/></center>
</body>

</html>

