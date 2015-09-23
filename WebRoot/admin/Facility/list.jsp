<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/application.js"></script>
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
</head>

<body>
<form action="" method="post" name="form1">
	<input type="submit" value=" 新 增 " onclick="document.form1.action='${pageContext.request.contextPath}/admin/Facility!create.do'"/>
	<input type="button" value=" 删 除 " onclick="batchDelete('${pageContext.request.contextPath}/admin/Facility!delete.do','items',document.forms.ec)"/>
</form>

<ec:table items='page.thisPageElements' var="item" view="compact" rowsDisplayed="20"
	retrieveRowsCallback="limit" sortRowsCallback="limit" filterRowsCallback="limit"
	action="${pageContext.request.contextPath}/admin/Facility!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="选择" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" width="10px" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
		<ec:column property="unit_id" title="对应用户主键"/>
		<ec:column property="year" title="年份"/>
		<ec:column property="zilai" title="有无供水设施"/>
		<ec:column property="zilai_remark" title="已通自来水备注"/>
		<ec:column property="zl_guimo" title="供水规模（万立方米/日|立方米/日）"/>
		<ec:column property="zl_fuwu" title="服务人口(万人)"/>
		<ec:column property="zl_jiancheng" title="建成年份"/>
		<ec:column property="zl_touzi" title="建设投资（万元）"/>
		<ec:column property="zl_guan" title="供水管网情况"/>
		<ec:column property="zl_guanchang" title="供水管网长度（公里）"/>
		<ec:column property="zl_mianji" title="服务面积（平方公里）"/>
		<ec:column property="zl_shuijia" title="居民用水水价（元/立方米）"/>
		<ec:column property="zl_jingying" title="经营用水水价（元/立方米）"/>
		<ec:column property="zl_gongye" title="工业用水水价（元/立方米）"/>
		<ec:column property="ws_qingkuang" title="污水处理设施"/>
		<ec:column property="ws_remark" title="污水设施备注"/>
		<ec:column property="ws_guimo" title="污水处理规模（万立方米/日）"/>
		<ec:column property="ws_jiancheng" title="建成年份"/>
		<ec:column property="ws_touzi" title="建设投资（万元）"/>
		<ec:column property="ws_fenliu" title="是否实现雨污分流"/>
		<ec:column property="ws_guan" title="有无污水管网"/>
		<ec:column property="ws_guanchang" title="污水管网长度"/>
		<ec:column property="ws_fei" title="排污费单价（元/立方米）"/>
		<ec:column property="lj_qingkuang" title="垃圾处理设施情况"/>
		<ec:column property="lj_remark" title="垃圾处理设施备注"/>
		<ec:column property="lj_guimo" title="垃圾处理规模"/>
		<ec:column property="lj_nianxian" title="垃圾处理设施使用年限"/>
		<ec:column property="lj_jaincheng" title="建成年份"/>
		<ec:column property="lj_touzi" title="建设投资（万元）"/>
		<ec:column property="lj_zhongzhuan" title="垃圾中转站数量（座）"/>
		<ec:column property="lj_che" title="垃圾清运车数量（辆）"/>
		<ec:column property="gong_lu" title="是否通公路"/>
		<ec:column property="jd_qingkuang" title="建成区街道建设情况"/>
		<ec:column property="jd_shu" title="现存数量"/>
		<ec:column property="jm_qingkuang" title="建成区集贸市场建设情况"/>
		<ec:column property="jm_shu" title="现存数量"/>
		<ec:column property="remark" title="备注"/>
		<ec:column property="操作" title="操作" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/admin/Facility!show.do?id=${item.id}&">查看</a>&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/admin/Facility!edit.do?id=${item.id}&">修改</a>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

