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
<form action="" method="post" name="form1">
	<input type="submit" value=" 新 增 " onclick="document.form1.action='${pageContext.request.contextPath}/tese/Zhenyu!create.do'"/>
	<input type="button" value=" 删 除 " onclick="batchDelete('${pageContext.request.contextPath}/tese/Zhenyu!delete.do','items',document.forms.ec)"/>
</form>

<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="镇（乡）域规划和建设情况列表" action="${pageContext.request.contextPath}/tese/Zhenyu!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="选择" style="width: 15px" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
		<ec:column property="unit_id" title="地点"/>
		<ec:column property="year" title="年份"/>
		<ec:column property="zhen_yu" title="镇域总人口（	万人）"/>
		<ec:column property="cheng_zhen" title="城镇人口	（万人）"/>
		<ec:column property="chengz_hua" title="城镇化水平（	%）"/>
		<ec:column property="nong_ye" title="农业人口	万人"/>
		<ec:column property="fei_nong" title="非农业人口	万人"/>
		<ec:column property="zheny_mianji" title="镇域总面积	k㎡"/>
		<ec:column property="gengdi_mianji" title="耕地面积	k㎡"/>
		<ec:column property="jb_nongtian" title="基本农田面积	k㎡"/>
		<ec:column property="sl_mianji" title="林地面积	k㎡"/>
		<ec:column property="gdp" title="GDP总量	万元"/>
		<ec:column property="dy_chanye" title="第一产业总产值	万元"/>
		<ec:column property="de_chanye" title="第二产业总产值	万元"/>
		<ec:column property="ds_chanye" title="第三产业总产值	万元"/>
		<ec:column property="zy_fuyu" title="转移农村富余劳动力	人"/>
		<ec:column property="fn_jiuye" title="非农产业新增就业岗位	人"/>
		<ec:column property="rj_shouru" title="人均可支配财政收入水平	元"/>
		<ec:column property="cun_zhuang" title="村庄数量	个"/>
		<ec:column property="td_cunzhuang" title="特大村庄	个"/>
		<ec:column property="dx_cunzhuang" title="大型村庄	个"/>
		<ec:column property="zx_cunzhuang" title="中型村庄	个"/>
		<ec:column property="xx_cunzhuang" title="小型村庄	个"/>
		<ec:column property="sl_fugai" title="森林覆盖率	%"/>
		<ec:column property="input" title="填报时间"/>
		<ec:column property="操作" title="操作" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/tese/Zhenyu!show.do?id=${item.id}">查看</a>&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/tese/Zhenyu!edit.do?id=${item.id}">修改</a>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

