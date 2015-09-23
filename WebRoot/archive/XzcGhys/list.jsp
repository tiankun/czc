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
	<input type="submit" value=" 新 增 " onclick="document.form1.action='${pageContext.request.contextPath}/archive/Xzc_ghys!create.do'"/>
	<input type="button" value=" 删 除 " onclick="batchDelete('${pageContext.request.contextPath}/archive/Xzc_ghys!delete.do','items',document.forms.ec)"/>
</form>

<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="行政村总体规划成果质量验收评分表情况列表" action="${pageContext.request.contextPath}/archive/Xzc_ghys!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="选择" style="width: 15px" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
		<ec:column property="unit_id" title="对应用户主键"/>
		<ec:column property="year" title="年份"/>
		<ec:column property="yuan_blili" title="比例尺为1:5000-1:10000"/>
		<ec:column property="fen_bu" title="自然村分布现状"/>
		<ec:column property="yd_xianzhuang" title="用地现状"/>
		<ec:column property="jt_xianzhuang" title="对外交通现状"/>
		<ec:column property="jc_gg_xz" title="基础设施和公共设施现状"/>
		<ec:column property="xian_bili" title="比例尺为1:5000-1:10000（规划）"/>
		<ec:column property="jj_fangxiang" title="建设用地发展方向"/>
		<ec:column property="zhengzhi" title="各自然村整治类型"/>
		<ec:column property="cj_gonggong" title="村级基础设施和公共设施布局"/>
		<ec:column property="zd_buju" title="重点建设项目布局"/>
		<ec:column property="shuoming" title="说明书"/>
		<ec:column property="jing_tong" title="经村民大会或村民代表大会讨论通过"/>
		<ec:column property="xiang_shen" title="乡（镇）人民政府审核"/>
		<ec:column property="xian_shen" title="县（市、区）人民政府审批"/>
		<ec:column property="yj_zhengji" title="规划成果意见征求"/>
		<ec:column property="cheng_guo" title="规划成果公示及移交"/>
		<ec:column property="cg_shangbao" title="规划成果按要求上报主管部门"/>
		<ec:column property="cg_guidang" title="规划成果实行档案化管理提高分值"/>
		<ec:column property="zs_buzhu" title="州（市）级补助资金投入"/>
		<ec:column property="xian_buzhu" title="县（市、区）级补助资金投入"/>
		<ec:column property="gh_bzshiyong" title="规划编制补助资金使用"/>
		<ec:column property="jiangli" title="奖励分"/>
		<ec:column property="zong" title="总得分"/>
		<ec:column property="ys_ren" title="验收人"/>
		<ec:column property="ys_shijian" title="验收时间"/>
		<ec:column property="qz_zhuanjia" title="签名专家"/>
		<ec:column property="tijiao" title="提交时间"/>
		<ec:column property="beizhu" title="备注"/>
		<ec:column property="操作" title="操作" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/archive/Xzc_ghys!show.do?id=${item.id}">查看</a>&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/archive/Xzc_ghys!edit.do?id=${item.id}">修改</a>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

