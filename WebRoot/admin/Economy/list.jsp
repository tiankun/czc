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
	<input type="submit" value=" 新 增 " onclick="document.form1.action='${pageContext.request.contextPath}/admin/Economy!create.do'"/>
	<input type="button" value=" 删 除 " onclick="batchDelete('${pageContext.request.contextPath}/admin/Economy!delete.do','items',document.forms.ec)"/>
</form>

<ec:table items='page.thisPageElements' var="item" view="compact" rowsDisplayed="20"
	retrieveRowsCallback="limit" sortRowsCallback="limit" filterRowsCallback="limit"
	action="${pageContext.request.contextPath}/admin/Economy!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="选择" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" width="10px" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
		<ec:column property="year" title="年份"/>
		<ec:column property="zong_ren" title="总人口（万人）"/>
		<ec:column property="nong" title="农业人口（万人）"/>
		<ec:column property="nong_hu" title="农户数（万户）"/>
		<ec:column property="lao_dong" title="农村劳动力（万人）"/>
		<ec:column property="zong_mianj" title="总面积（万平方公里）"/>
		<ec:column property="geng_di" title="耕地面积（万平方公里）"/>
		<ec:column property="zong_shengc" title="全镇生产总值（亿元）"/>
		<ec:column property="jingj_zong" title="农村经济总收入（亿元）"/>
		<ec:column property="nongm_jun" title="农民人均纯收入（元）"/>
		<ec:column property="yi" title="第一产业总值（亿元）"/>
		<ec:column property="er" title="第二产业总值（亿元）"/>
		<ec:column property="san" title="第三产业总值（亿元）"/>
		<ec:column property="zhu_ren" title="乡镇政府驻地建成区总人口（万人）"/>
		<ec:column property="zhu_mian" title="乡镇政府驻地建成区总面积（万平方公里）"/>
		<ec:column property="zhu_xin" title="乡镇政府驻地建成区新增人口（万人）"/>
		<ec:column property="zhu_zhuan" title="乡镇转移到其它地方人口（万人）"/>
		<ec:column property="zhi_neng" title="职能类型"/>
		<ec:column property="tese" title="是否属于210个特色小镇"/>
		<ec:column property="tese_zhineng" title="特色小镇职能类型"/>
		<ec:column property="di_xing" title="乡镇空间位置地形"/>
		<ec:column property="te_shu" title="乡镇空间位置特殊区域（可多选）"/>
		<ec:column property="kong_jian" title="城镇空间关系"/>
		<ec:column property="remark" title="备注"/>
		<ec:column property="操作" title="操作" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/admin/Economy!show.do?id=${item.id}&">查看</a>&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/admin/Economy!edit.do?id=${item.id}&">修改</a>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

