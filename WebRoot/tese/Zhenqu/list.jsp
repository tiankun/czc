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
	<input type="submit" value=" 新 增 " onclick="document.form1.action='${pageContext.request.contextPath}/tese/Zhenqu!create.do'"/>
	<input type="button" value=" 删 除 " onclick="batchDelete('${pageContext.request.contextPath}/tese/Zhenqu!delete.do','items',document.forms.ec)"/>
</form>

<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="镇区（乡驻地）规划和建设情况列表" action="${pageContext.request.contextPath}/tese/Zhenqu!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="选择" style="width: 15px" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
		<ec:column property="unit_id" title="地点"/>
		<ec:column property="year" title="年份"/>
		<ec:column property="zq_renkou" title="镇区（乡驻地）人口  万人"/>
		<ec:column property="zz_renkou" title="暂住人口  万人"/>
		<ec:column property="cz_renkou" title="常住人口  万人"/>
		<ec:column property="nm_anzhi" title="农民进城安置数量  人"/>
		<ec:column property="zy_laodong" title="农村富余劳动力等转移安置人口  人"/>
		<ec:column property="gh_mianji" title="规划区面积  k㎡"/>
		<ec:column property="jc_mianji" title="建成区面积  k㎡"/>
		<ec:column property="rj_jzyongdi" title="人均建设用地面积  ㎡/人"/>
		<ec:column property="rj_yongdi" title="人均居住用地面积  ㎡/人"/>
		<ec:column property="bq_mianji" title="坝区面积  k㎡"/>
		<ec:column property="sq_mianji" title="山区面积  k㎡"/>
		<ec:column property="gs_guimo" title="供水设施净水厂规模  吨/日"/>
		<ec:column property="gs_guanwang" title="供水设施供水管网长度 公里"/>
		<ec:column property="gs_fwrenkou" title="供水设施服务人口 万人"/>
		<ec:column property="ws_guimo" title="污水处理设施污水厂处理规模吨/日"/>
		<ec:column property="ws_guanwang" title="污水处理设施污水管网长度   公里"/>
		<ec:column property="ws_gongyi" title="污水处理设施处理工艺"/>
		<ec:column property="ws_fwrenkou" title="污水处理设施服务人口 万人"/>
		<ec:column property="lj_guimo" title="环卫设施垃圾处理设施垃圾无害化处理能力  吨/日"/>
		<ec:column property="lj_zhan" title="环卫设施垃圾处理设施垃圾中转站   个"/>
		<ec:column property="lj_gongyi" title="环卫设施垃圾处理设施工艺"/>
		<ec:column property="lj_shouji" title="环卫设施垃圾处理设施垃圾收集率"/>
		<ec:column property="lj_wuhai" title="环卫设施垃圾处理设施垃圾无害化处理率"/>
		<ec:column property="lj_gongce" title="环卫设施其他卫生公厕"/>
		<ec:column property="lj_che" title="环卫设施其他环卫车辆"/>
		<ec:column property="bd_rigong" title="变电站日供电量  千瓦时/日"/>
		<ec:column property="bd_yongdi" title="变电站用地规模  ㎡"/>
		<ec:column property="kyz_geshu" title="客运站数量  个"/>
		<ec:column property="kyz_yongdi" title="客运站用地规模  ㎡"/>
		<ec:column property="dxj_geshi" title="电信局数量  个"/>
		<ec:column property="dxj_yongdi" title="电信局用地规模  ㎡"/>
		<ec:column property="gg_ptlv" title="公共服务设施配套达标率  %"/>
		<ec:column property="rj_ggss" title="人均公共服务设施用地  ㎡/人"/>
		<ec:column property="dl_midi" title="道路网密度  km/k㎡"/>
		<ec:column property="rj_gc" title="人均广场用地  ㎡/人"/>
		<ec:column property="rj_ggtcc" title="人均公共停车场用地  ㎡/人"/>
		<ec:column property="gg_lvdi" title="公共绿地面积  k㎡"/>
		<ec:column property="ld_lv" title="绿地率  %"/>
		<ec:column property="rj_ld" title="人均公共绿地  ㎡/人"/>
		<ec:column property="input" title="添加时间"/>
		<ec:column property="操作" title="操作" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/tese/Zhenqu!show.do?id=${item.id}">查看</a>&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/tese/Zhenqu!edit.do?id=${item.id}">修改</a>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

