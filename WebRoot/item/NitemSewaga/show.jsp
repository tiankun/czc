<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />     
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>   
<head>
<style type="text/css">
.STYLE1 {
	COLOR: #ff0000;
	font-weight: bold
}
</style>
<script language="JavaScript" >
function mySubmit(){
if(Validator.Validate(document.form1,3)){
var biao_shi = parent.document.getElementById("biao_shi").value;
	    document.form1.action="${pageContext.request.contextPath}/item/Nitem_sewaga!shenhe.do?biao_shi="+biao_shi+"";
        document.form1.submit();
}
}		
</script>
</head>
<body>

	<input type="hidden" Id="guan_li" name="guan_li" value="${user.guan_li}"/>
	<input type="hidden" Id="area" name="area" value="${user.guan_li}"/>
	<input type="hidden" Id="id" name="id" value="${nitem_sewaga.id}"/>
<table border="1" width="100%" class="myInput">
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>污水在建项目基本信息</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目名称</td>	
		<td width="35%" colspan="3">${nitem_sewaga.name}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目详细地址</td>
		<td width="85%" colspan="3">${nitem_sewaga.quan_ming}&nbsp;${nitem_sewaga.dizhi}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目编号</td>	
		<td width="35%">${nitem_sewaga.num}
		</td>
		<td width="15%" class="myInputTitle">规划建设年限</td>	
		<td width="35%">${nitem_sewaga.gui_nian}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目性质</td>	
		<td width="35%">${nitem_sewaga.xingzhi}
		</td>
		<td width="15%" class="myInputTitle">项目进度</td>	
		<td width="35%">
		    <a href="${pageContext.request.contextPath}/item/Nitem_yue!uploadList.do?type=2&item_id=${nitem_rubbish.id}">查看月报</a>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">建设运营模式</td>	
		<td width="35%">${nitem_sewaga.jian_mo}&nbsp;&nbsp;&nbsp;&nbsp;${nitem_rubbish.qita_moshi}</td>
		<td width="15%" class="myInputTitle">服务面积（<span class="STYLE1">平方公里</span>）</td>	
		<td width="35%">${nitem_sewaga.fw_mianji}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">服务范围</td>	
		<td width="35%" colspan="3">${nitem_sewaga.fw_fanwei}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">所属流域（水系）</td>	
		<td width="35%">${nitem_sewaga.shuixi}
		</td>
		<td width="15%" class="myInputTitle">所属流域（湖泊）</td>	
		<td width="35%">${nitem_sewaga.hupo}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">服务人口（近期）（<span class="STYLE1">万人</span>）</td>	
		<td width="35%">${nitem_sewaga.fwrk_jinqi}
		</td>
		<td width="15%" class="myInputTitle">服务人口（远期）（<span class="STYLE1">万人</span>）</td>	
		<td width="35%">${nitem_sewaga.fwrk_yuanqi}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">服务年限（近期）</td>	
		<td width="35%">${nitem_sewaga.fwnx_jinqi}
		</td>
		<td width="15%" class="myInputTitle">服务年限（远期）</td>	
		<td width="35%">${nitem_sewaga.fwnx_yuanqi}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">设计规模（近期）（<span class="STYLE1">立方米/日</span>）</td>	
		<td width="35%">${nitem_sewaga.clgm_jinqi}
		</td>
		<td width="15%" class="myInputTitle">设计规模（远期）（<span class="STYLE1">立方米/日</span>）</td>	
		<td width="35%">${nitem_sewaga.clgm_yuanqi}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">污水处理工艺</td>	
		<td width="85%" colspan="3">${fn:substring(nitem_sewaga.shui_gongyi,1,fn:length(nitem_sewaga.shui_gongyi)-1)}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">排放标准</td>	
		<td width="35%">${nitem_sewaga.pai_biao}
		</td>
		<td width="15%" class="myInputTitle">污泥处理工艺</td>	
		<td width="35%">${fn:substring(nitem_sewaga.ni_gongyi1,1,fn:length(nitem_sewaga.ni_gongyi1)-1)}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">排水体制</td>	
		<td width="35%">${nitem_sewaga.pai_tizhi1}${nitem_sewaga.pai_tizhi2}
		</td>
		<td width="15%" class="myInputTitle">再生水用途</td>	
		<td width="35%">${fn:substring(nitem_sewaga.zai_yongtu,1,fn:length(nitem_sewaga.zai_yongtu)-1)}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">配套管网总长（<span class="STYLE1">公里</span>）</td>	
		<td width="35%">${nitem_sewaga.guan_zong}
		</td>
		<td width="15%" class="myInputTitle">管材</td>	
		<td width="35%">${nitem_sewaga.guan_cai}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">服务乡镇类型</td>	
		<td width="35%" colspan="3">${fn:substring(nitem_sewaga.xiang_type,1,fn:length(nitem_sewaga.xiang_type)-1)}
		</td>
	</tr>
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>项目投资情况</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">可研批复投资（<span class="STYLE1">万元</span>）</td>	
		<td width="35%" colspan="3">${nitem_sewaga.zong_touzi}
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">国家补助（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">${nitem_sewaga.guo_bu}
		</td>
		<td width="15%" class="myInputTitle">省级补助（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">${nitem_sewaga.sheng_bu}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">地方配套（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">${nitem_sewaga.di_pei}
		</td>
		<td width="15%" class="myInputTitle">自筹（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">${nitem_sewaga.zi_chou}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">工程直接费（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">${nitem_sewaga.gong_zhi}
		</td>
		<td width="15%" class="myInputTitle">工程间接费（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">${nitem_sewaga.gong_jian}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">工程预备费（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">${nitem_sewaga.gong_yu}
		</td>
		<td width="15%" class="myInputTitle">建设期贷款利息（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">${nitem_sewaga.jian_li}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">铺底流动资金（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">${nitem_sewaga.pu_liu}
		</td>
		<td width="15%" class="myInputTitle">水厂投资（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">${nitem_sewaga.shui_touzi}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">配套管网（<span class="STYLE1">万元</span>）</td>	
		<td width="35%" colspan="3">${nitem_sewaga.guan_chang}
    </tr>
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>实际资金下达情况</strong>
		</td>
	</tr>
    <tr>
		<td width="15%" class="myInputTitle">目前实际到位总资金（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">${zijin.dao_zijin}
		</td>
		<td width="15%" class="myInputTitle">到位率（<span class="STYLE1">实际/预计</span>）</td>	
		<td width="35%">
		<c:if test="${!empty nitem_water.zong_touzi&&nitem_sewaga.zong_touzi!=0}">
		<fmt:formatNumber type="number" pattern="#.##"><c:out value="${(zijin.dao_zijin+0.000000000001) div nitem_sewaga.zong_touzi}"></c:out></fmt:formatNumber>
		</c:if>
		</td>
	</tr>
    <tr>
		<td width="15%" class="myInputTitle">国家补助到位资金（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">${zijin.zhong_zijin}
		</td>
		<td width="15%" class="myInputTitle">到位率（<span class="STYLE1">实际/预计</span>）</td>	
		<td width="35%">
		<c:if test="${!empty nitem_sewaga.guo_bu&&nitem_sewaga.guo_bu!=0}">
		<fmt:formatNumber type="number" pattern="#.##"><c:out value="${(zijin.zhong_zijin+0.000000000001) div nitem_sewaga.guo_bu}"></c:out></fmt:formatNumber>
		</c:if>
		</td>
	</tr>
    <tr>
		<td width="15%" class="myInputTitle">省级补助到位资金（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">${zijin.sheng_zijin}
		</td>
		<td width="15%" class="myInputTitle">到位率（<span class="STYLE1">实际/预计</span>）</td>	
		<td width="35%">
		<c:if test="${!empty nitem_sewaga.sheng_bu&&nitem_sewaga.sheng_bu!=0}">
		<fmt:formatNumber type="number" pattern="#.##"><c:out value="${(zijin.sheng_zijin+0.000000000001) div nitem_sewaga.sheng_bu}"></c:out></fmt:formatNumber>
		</c:if>
		</td>
	</tr>
    <tr>
		<td width="15%" class="myInputTitle">地方到位资金（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">${zijin.difang_zijin}
		</td>
		<td width="15%" class="myInputTitle">到位率（<span class="STYLE1">实际/预计</span>）</td>	
		<td width="35%">
		<c:if test="${!empty nitem_sewaga.di_pei&&nitem_sewaga.di_pei!=0}">
		<fmt:formatNumber type="number" pattern="#.##"><c:out value="${(zijin.difang_zijin+0.000000000001) div nitem_sewaga.di_pei}"></c:out></fmt:formatNumber>
		</c:if>
		</td>
	</tr>
	<!-- 
    <tr>
		<td width="15%" class="myInputTitle">县级补助到位资金（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">${zijin.xian_zijin}
		</td>
		<td width="15%" class="myInputTitle">到位率（<span class="STYLE1">实际/预计</span>）</td>	
		<td width="35%">
		<c:if test="${!empty nitem_sewaga.zong_touzi&&nitem_sewaga.zong_touzi!=0}">
		<fmt:formatNumber type="number" pattern="#.##"><c:out value="${(zijin.dao_zijin+0.000000000001) div nitem_sewaga.zong_touzi}"></c:out></fmt:formatNumber>
		</c:if>
		</td>
	</tr>
	 -->
    <tr>
		<td width="15%" class="myInputTitle">自筹到位资金（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">${zijin.zi_zijin}
		</td>
		<td width="15%" class="myInputTitle">到位率（<span class="STYLE1">实际/预计</span>）</td>	
		<td width="35%">
		<c:if test="${!empty nitem_sewaga.zi_chou&&nitem_sewaga.zi_chou!=0}">
		<fmt:formatNumber type="number" pattern="#.##"><c:out value="${(zijin.zi_zijin+0.000000000001) div nitem_sewaga.zi_chou}"></c:out></fmt:formatNumber>
		</c:if>
		</td>
	</tr>
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>工程开展情况</strong>
		</td>
	</tr>
    <tr>
		<td width="15%" class="myInputTitle">可研批复文号</td>	
		<td width="35%">${nitem_sewaga.keyan_num}
		   <c:if test="${!empty nitem_sewaga.keyan_num_year&&nitem_sewaga.keyan_num_year!=''}">
		   【${nitem_sewaga.keyan_num_year}】
		   </c:if>${nitem_sewaga.keyan_num_order}号
		</td>
		<td width="15%" class="myInputTitle">可研编制单位</td>	
		<td width="35%">${nitem_sewaga.keyan_com}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">可研批复规模（<span class="STYLE1">立方米/日</span>）</td>	
		<td width="35%">近期：${nitem_sewaga.keyan_jinqi}&nbsp;&nbsp;远期：${nitem_sewaga.keyan_yuanqi}
		</td>
		<td width="15%" class="myInputTitle">可研批复时间</td>	
		<td width="35%">${nitem_sewaga.keyan_date}
		</td>
	</tr>
	<c:if test="${not empty keyan}">
	<tr>
		<td width="15%" class="myInputTitle">可研批复附件</td>
		<td width="35%" class="myInputTitle" colspan="3">
			<table>
				<c:forEach items="${keyan}" var="item" varStatus="i">
				<tr>
					<td align="center" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
					<td class="myInputTitle" width="80%">
					<a href="${pageContext.request.contextPath}/upFile/file/${nitem_sewaga.guan_li}/${item.path}" target="_blank">
					<font color="#113965">${item.file_name}</font></a></td>
				</tr>
				</c:forEach>
			</table>
		</td>
	</tr>
	</c:if>
	<tr>
		<td width="15%" class="myInputTitle">初设批复投资（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">${nitem_sewaga.pi_touzi}
		</td>
		<td width="15%" class="myInputTitle">初设批复文号</td>	
		<td width="35%">${nitem_sewaga.chu_num}
		   <c:if test="${!empty nitem_sewaga.chu_num_year&&nitem_sewaga.chu_num_year!=''}">
		   【${nitem_sewaga.chu_num_year}】
		   </c:if>${nitem_sewaga.chu_num_order}号
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">初设编制单位</td>	
		<td width="35%">${nitem_sewaga.chu_com}
		</td>
		<td width="15%" class="myInputTitle">初设批复时间</td>	
		<td width="35%">${nitem_sewaga.chu_date}
		</td>
	</tr>
	<c:if test="${not empty chushe}">
	<tr>
		<td width="15%" class="myInputTitle">初设批复附件</td>
		<td width="35%" class="myInputTitle" colspan="3">
			<table>
				<c:forEach items="${chushe}" var="item" varStatus="i">
				<tr>
					<td align="center" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
					<td class="myInputTitle" width="80%">
					<a href="${pageContext.request.contextPath}/upFile/file/${nitem_sewaga.guan_li}/${item.path}" target="_blank">
					<font color="#113965">${item.file_name}</font></a></td>
				</tr>
				</c:forEach>
			</table>
		</td>
	</tr>
	</c:if>
	<tr>
		<td width="15%" class="myInputTitle">实施方案文号</td>	
		<td width="35%">${nitem_sewaga.shi_num}
		   <c:if test="${!empty nitem_sewaga.shi_num_year&&nitem_sewaga.shi_num_year!=''}">
		   【${nitem_sewaga.shi_num_year}】
		   </c:if>${nitem_sewaga.shi_num_order}号
		</td>
		<td width="15%" class="myInputTitle">实施方案编制单位</td>	
		<td width="35%">${nitem_sewaga.shi_com}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">实施方案批复时间</td>	
		<td width="35%">${nitem_sewaga.shi_date}
		</td>
		<td width="15%" class="myInputTitle">项目建设年限</td>	
		<td width="35%">${nitem_sewaga.nianxian_begin}--${nitem_sewaga.nianxian_end}
		</td>
	</tr>
	<c:if test="${not empty shishi}">
	<tr>
		<td width="15%" class="myInputTitle">施工方案附件</td>
		<td width="35%" class="myInputTitle" colspan="3">
			<table>
				<c:forEach items="${shishi}" var="item" varStatus="i">
				<tr>
					<td align="center" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
					<td class="myInputTitle" width="80%">
					<a href="${pageContext.request.contextPath}/upFile/file/${nitem_sewaga.guan_li}/${item.path}" target="_blank">
					<font color="#113965">${item.file_name}</font></a></td>
				</tr>
				</c:forEach>
			</table>
		</td>
	</tr>
	</c:if>
	<tr>
		<td width="15%" class="myInputTitle">施工图编制单位</td>	
		<td width="35%">${nitem_sewaga.shigong_com}
		</td>
		<td width="15%" class="myInputTitle">施工许可证编号</td>	
		<td width="35%">${nitem_sewaga.shigong_num}
		   <c:if test="${!empty nitem_sewaga.shigong_num_year&&nitem_sewaga.shigong_num_year!=''}">
		   【${nitem_sewaga.shigong_num_year}】
		   </c:if>${nitem_sewaga.shigong_num_order}号
		</td>
	</tr>
	<c:if test="${not empty shigong}">
	<tr>
		<td width="15%" class="myInputTitle">施工方案附件</td>
		<td width="35%" class="myInputTitle" colspan="3">
			<table>
				<c:forEach items="${shigong}" var="item" varStatus="i">
				<tr>
					<td align="center" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
					<td class="myInputTitle" width="80%">
					<a href="${pageContext.request.contextPath}/upFile/file/${nitem_sewaga.guan_li}/${item.path}" target="_blank">
					<font color="#113965">${item.file_name}</font></a></td>
				</tr>
				</c:forEach>
			</table>
		</td>
	</tr>
	</c:if>
	<tr>
		<td width="15%" class="myInputTitle">工程开工时间</td>	
		<td width="35%">${nitem_sewaga.item_begin}
		</td>
		<td width="15%" class="myInputTitle">是否竣工</td>	
		<td width="35%">${nitem_sewaga.jungong}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">竣工日期</td>	
		<td width="35%" colspan="3">${nitem_sewaga.jungong_date}
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目现行收费标准</td>	
		<td width="35%">${nitem_sewaga.shou_biao}
		</td>
		<td width="15%" class="myInputTitle">收费文号</td>	
		<td width="35%">${nitem_sewaga.shou_num}
		   <c:if test="${!empty nitem_sewaga.shou_num_year&&nitem_sewaga.shou_num_year!=''}">
		   【${nitem_sewaga.shou_num_year}】
		   </c:if>${nitem_sewaga.shou_num_order}号
		</td>
	</tr>
	<c:if test="${not empty shoufei}">
	<tr>
		<td width="15%" class="myInputTitle">收费附件</td>
		<td width="35%" class="myInputTitle" colspan="3">
			<table>
				<c:forEach items="${shoufei}" var="item" varStatus="i">
				<tr>
					<td align="center" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
					<td class="myInputTitle" width="80%">
					<a href="${pageContext.request.contextPath}/upFile/file/${nitem_sewaga.guan_li}/${item.path}" target="_blank">
					<font color="#113965">${item.file_name}</font></a></td>
				</tr>
				</c:forEach>
			</table>
		</td>
	</tr>
	</c:if>
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>项目业主信息</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目业主单位</td>	
		<td width="35%" colspan="3">${nitem_sewaga.yezhu_com}
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">法人代表</td>	
		<td width="35%">${nitem_sewaga.fa_ren}
		</td>
		<td width="15%" class="myInputTitle">法人联系电话</td>	
		<td width="35%">${nitem_sewaga.fa_phone}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目负责人</td>	
		<td width="35%">${nitem_sewaga.fz_name}
		</td>
		<td width="15%" class="myInputTitle">项目负责人职务</td>	
		<td width="35%">${nitem_sewaga.fz_post}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">联系电话</td>	
		<td width="35%" colspan="3">${nitem_sewaga.fz_phone}
		</td>
	</tr>
	<tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>项目相关单位信息</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">监理单位</td>	
		<td width="35%">${nitem_sewaga.jl_unit}
		</td>
		<td width="15%" class="myInputTitle">设计单位</td>	
		<td width="35%">${nitem_sewaga.sj_unit}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">招标单位</td>	
		<td width="35%">${nitem_sewaga.zb_unit}
		</td>
		<td width="15%" class="myInputTitle">施工单位</td>	
		<td width="35%">${nitem_sewaga.sg_unit}
		</td>
	</tr>
	</table>
	<c:if test="${fn:length(fn:split(user.biao_shi,'_'))==1}">
   <form action="${pageContext.request.contextPath}/item/Nitem_sewaga!shenhe.do" method="post" name="form1" id="form1">
	<input type="hidden" Id="id" name="id" value="${nitem_sewaga.id}"/>
	<input type="hidden" Id="biaoshi" name="biaoshi" value="已读"/>
      <table border="1" width="100%" class="myInput">
         <tr>
            <td colspan="4" class="myInputTitle">审核</td>
         </tr>
         <tr>
         <!-- 已读标识
            <td width="15%" class="myInputTitle">标识</td>
            <td width="35%">
                已读<input type="radio" Id="biaoshi" name="biaoshi" value="已读" dataType="Group" <c:if test="${nitem_sewaga.biaoshi=='已读'}">checked</c:if>>&nbsp;&nbsp;&nbsp;
               未读 <input type="radio" Id="biaoshi" name="biaoshi" value="未读" <c:if test="${nitem_sewaga.biaoshi=='未读'}">checked</c:if>>
            </td>
         -->
            <td width="15%" class="myInputTitle">项目年份</td>
            <td width="35%">
		        <select Id="nianfen" name="nianfen" dataType="Require">
		           <option value="">未选择</option>
		           <option value="2013年项目" <c:if test="${nitem_sewaga.nianfen=='2013年项目'}">selected</c:if>>2013年项目</option>
		           <option value="2014年项目" <c:if test="${nitem_sewaga.nianfen=='2014年项目'}">selected</c:if>>2014年项目</option>
		           <option value="2015年项目" <c:if test="${nitem_sewaga.nianfen=='2015年项目'}">selected</c:if>>2015年项目</option>
		           <option value="2016年项目" <c:if test="${nitem_sewaga.nianfen=='2013年项目'}">selected</c:if>>2016年项目</option>
		           <option value="2017年项目" <c:if test="${nitem_sewaga.nianfen=='2013年项目'}">selected</c:if>>2017年项目</option>
		           <option value="计划外项目" <c:if test="${nitem_sewaga.nianfen=='计划外项目'}">selected</c:if>>计划外项目</option>
		        </select>
            </td>
            <td width="15%" class="myInputTitle"></td>
            <td width="35%"></td>
         </tr>
         <tr>
            <td width="15%" class="myInputTitle">备注</td>
            <td colspan="3">
                <textarea Id="beizhu" name="beizhu" style="width: 90%;">${nitem_sewaga.beizhu}</textarea>
            </td>
         </tr>
         <tr>
            <td colspan="4" align="center"><input id="button" name="button" type="button" value=" 提 交 " onClick="return mySubmit();"/>
            <input type="button" value="返回列表" onclick="parent.checkShow('${pageContext.request.contextPath}/item/Nitem_sewaga!list.do',4)"/></td>
         </tr>
      </table>
   </form>
</c:if>
<c:if test="${fn:length(fn:split(user.biao_shi,'_'))!=1}">
<center>
	<input type="button" value="返回列表" onclick="parent.checkShow('${pageContext.request.contextPath}/item/Nitem_sewaga!list.do',4)"/>
</center>
</c:if>
</body>
</html>