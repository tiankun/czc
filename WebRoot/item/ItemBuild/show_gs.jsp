<%@ page contentType="text/html;charset=GBK"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/default.css">
<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/scripts/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" language="javascript">
function mySubmit() {
	if (Validator.Validate(document.form1, 3)) {
		document.form1.submit();
	}
}
</script>
<style type="text/css">
.STYLE1 {
	COLOR: #ff0000;
	font-weight: bold
}
</style>
</head>
<body>
<%@ include file="../top.jsp" %>
	<table class="myInput" border="1" width="100%">
			<tr>
				<td colspan="4" align="center" class="myInputTitle">
					<strong>供水项目建设情况</strong>
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle" width="15%">
					<strong>项目名称:</strong>
				</td>
				<td colspan="3">${itemBuild.name}
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle" width="15%">
					<strong>建设地点:</strong>
				</td>
				<td colspan="3">${itemBuild.dizhi}
				</td>
			</tr>
			<tr>
				<td width="15%" align="center" class="myInputTitle">
					<strong>工程质量监督单位:</strong>
				</td>
				<td width="35%">${itemBuild.jiandu}
				</td>
				<td width="15%" align="center" class="myInputTitle">
					<strong>建设性质:</strong>
				</td>
				<td width="35%">${itemBuild.xiangzhi}
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle">
					<strong>自来水厂建设运营模式:</strong>
				</td>
				<td>${itemBuild.chang_mo}
				</td>
				<td align="center" class="myInputTitle">
					<strong>管网建设运营模式:</strong>
				</td>
				<td>${itemBuild.guan_mo}
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle">
					<strong>其他建设内容</strong>
				</td>
				<td colspan="3">${itemBuild.qita_neirong}
				</td>
			</tr>
			<tr>
				<td colspan="4" align="center" class="myInputTitle">
					<strong>项目资金筹措计划构成情况</strong>
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle">
					<strong>项目计划投资（<span class="STYLE1">万元</span>）</strong>
				</td>
				<td>${itemBuild.yu_touzi}
				</td>
				<td colspan="2"></td>
			</tr>					
			<tr>
				<td align="center" class="myInputTitle">
					<strong>其中自来水厂计划投资（<span class="STYLE1">万元</span>）</strong>
				</td>
				<td>${itemBuild.chang_touzi}
				</td>
				<td align="center" class="myInputTitle">
					<strong>配套管网计划投资（<span class="STYLE1">万元</span>）</strong>
				</td>
				<td>${itemBuild.wang_touzi}
				</td>
			</tr>
			<tr>
				<td colspan="4" class="myInputTitle">
					<strong>其中：</strong>
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle">
					<strong>国家财政（<span class="STYLE1">万元</span>）</strong>
				</td>
				<td>${itemBuild.guo_cai}
				</td>
				<td align="center" class="myInputTitle">
					<strong>省级财政（<span class="STYLE1">万元</span>）:</strong>
				</td>
				<td>${itemBuild.sheng_cai}
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle">
					<strong>地方财政（<span class="STYLE1">万元</span>）</strong>
				</td>
				<td>${itemBuild.difang_cai}
				</td>
				<td align="center" class="myInputTitle">
					<strong>其他（<span class="STYLE1">万元</span>）:</strong>
				</td>
				<td>${itemBuild.qiata_cai}
				</td>
			</tr>
			<tr>
				<td colspan="4" align="center" class="myInputTitle">
					<strong>项目建设阶段相关信息</strong>
				</td>
			</tr>					
			<tr>
				<td align="center" class="myInputTitle">
					<strong>可研编制单位</strong>
				</td>
				<td>${itemBuild.keyan_unit}
				</td>
				<td align="center" class="myInputTitle">
					<strong>可研批复单位及文号</strong>
				</td>
				<td>${itemBuild.keyan_hao}
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle">
					<strong>初设编制单位</strong>
				</td>
				<td>${itemBuild.chushe_unit}
				</td>
				<td align="center" class="myInputTitle">
					<strong>初设批复文号</strong>
				</td>
				<td>${itemBuild.chushe_hao}
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle">
					<strong>施工图编制单位</strong>
				</td>
				<td>${itemBuild.tu_bianzhi}
				</td>
				<td align="center" class="myInputTitle">
					<strong>施工图审图单位</strong>
				</td>
				<td>${itemBuild.tu_shencha}
				</td>
			</tr>
			<TR>
				<td align="center" class="myInputTitle">
					<strong>项目施工单位</strong>
				</td>
				<td>${itemBuild.shigong_unit}
				</td>
				<td align="center" class="myInputTitle">
						<strong>施工监理单位</strong>
				</td>
				<td>${itemBuild.jianli_unit}
				</td>
			</TR>
			<TR>
				<td align="center" class="myInputTitle">
					<strong>实际开工时间</strong>
				</td>
				<td>${itemBuild.kaishi}
				</td>
				<td align="center" class="myInputTitle">
					<strong>实际竣工时间</strong>
				</td>
				<td>${itemBuild.jiesu}
				</td>
			</TR>
			<TR>
				<td align="center" class="myInputTitle">
					<strong>施工许可证文号</strong>
				</td>
				<td>${itemBuild.shigong_hao}
				</td>
				<td align="center" class="myInputTitle">
					<strong>项目竣工验收备案文号</strong>
				</td>
				<td>${itemBuild.jungong_hao}
				</td>
			</TR>
			<TR>
				<td align="center" class="myInputTitle">
					<strong>项目结算投资（<span class="STYLE1">万元</span>）</strong>
				</td>
				<td>${itemBuild.js_touzi}
				</td>
				<td colspan="2"></td>
			</TR>
	</table>		
	<table class="myInput" border="1" width="100%">		
			<tr>
				<td colspan="6" align="center" class="myInputTitle">
					<strong>业主单位及相关责任人</strong>
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle" width="10%">
					<strong>项目业主单位</strong>
				</td>
				<td colspan="5">${itemBuild.yezhu}
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle" width="10%">
					<strong>法定代表人</strong>
				</td>
				<td width="15%">${itemBuild.yz_faren}
				</td>
				<td align="center" class="myInputTitle" width="10%">
					<strong>单位性质</strong>
				</td>
				<td width="15%">${itemBuild.xiangzhi}
				</td>
				<td align="center" class="myInputTitle" width="10%">
					<strong>单位联系电话</strong>
				</td>
				<td width="15%">${itemBuild.yz_dianhua}
				</td>
			</tr>
			<tr>
				<td align="center" class="myInputTitle">
					<strong>项目负责人</strong>
				</td>
				<td>${itemBuild.fuze}
				</td>
				<td align="center" class="myInputTitle">
					<strong>职务</strong>
				</td>
				<td>${itemBuild.fuze_zhiwu}
				</td>
				<td align="center" class="myInputTitle">
					<strong>联系电话</strong>
				</td>
				<td>${itemBuild.fuze_dianhua}
				</td>
			</tr>
	</table>
</body>
</html>