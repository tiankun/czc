<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
<head>
</head>
<body>
<form action="${pageContext.request.contextPath}/admin/Facility!edit.do" method="post">
	<input type="submit" value=" 编 辑 "/>
	<input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/admin/Facility!list.do'"/>

	<input type="hidden" Id="id" name="id" value="${facility.id}"/>
	<table width="100%" border="1" class="myInput">
	    <tr>
			<td width="20%" class="myInputTitle">对应用户主键</td>	
			<td width="30%">${facility.unit_id}</td>
			<td width="20%" class="myInputTitle">年份</td>	
			<td width="30%">${facility.year}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">有无供水设施</td>	
			<td width="30%">${facility.zilai}</td>
			<td width="20%" class="myInputTitle">已通自来水备注</td>	
			<td width="30%">${facility.zilai_remark}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">供水规模（万立方米/日|立方米/日）</td>	
			<td width="30%">${facility.zl_guimo}</td>
			<td width="20%" class="myInputTitle">服务人口(万人)</td>	
			<td width="30%">${facility.zl_fuwu}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">建成年份</td>	
			<td width="30%">${facility.zl_jiancheng}</td>
			<td width="20%" class="myInputTitle">建设投资（万元）</td>	
			<td width="30%">${facility.zl_touzi}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">供水管网情况</td>	
			<td width="30%">${facility.zl_guan}</td>
			<td width="20%" class="myInputTitle">供水管网长度（公里）</td>	
			<td width="30%">${facility.zl_guanchang}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">服务面积（平方公里）</td>	
			<td width="30%">${facility.zl_mianji}</td>
			<td width="20%" class="myInputTitle">居民用水水价（元/立方米）</td>	
			<td width="30%">${facility.zl_shuijia}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">经营用水水价（元/立方米）</td>	
			<td width="30%">${facility.zl_jingying}</td>
			<td width="20%" class="myInputTitle">工业用水水价（元/立方米）</td>	
			<td width="30%">${facility.zl_gongye}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">污水处理设施</td>	
			<td width="30%">${facility.ws_qingkuang}</td>
			<td width="20%" class="myInputTitle">污水设施备注</td>	
			<td width="30%">${facility.ws_remark}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">污水处理规模（万立方米/日）</td>	
			<td width="30%">${facility.ws_guimo}</td>
			<td width="20%" class="myInputTitle">建成年份</td>	
			<td width="30%">${facility.ws_jiancheng}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">建设投资（万元）</td>	
			<td width="30%">${facility.ws_touzi}</td>
			<td width="20%" class="myInputTitle">是否实现雨污分流</td>	
			<td width="30%">${facility.ws_fenliu}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">有无污水管网</td>	
			<td width="30%">${facility.ws_guan}</td>
			<td width="20%" class="myInputTitle">污水管网长度</td>	
			<td width="30%">${facility.ws_guanchang}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">排污费单价（元/立方米）</td>	
			<td width="30%">${facility.ws_fei}</td>
			<td width="20%" class="myInputTitle">垃圾处理设施情况</td>	
			<td width="30%">${facility.lj_qingkuang}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">垃圾处理设施备注</td>	
			<td width="30%">${facility.lj_remark}</td>
			<td width="20%" class="myInputTitle">垃圾处理规模</td>	
			<td width="30%">${facility.lj_guimo}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">垃圾处理设施使用年限</td>	
			<td width="30%">${facility.lj_nianxian}</td>
			<td width="20%" class="myInputTitle">建成年份</td>	
			<td width="30%">${facility.lj_jaincheng}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">建设投资（万元）</td>	
			<td width="30%">${facility.lj_touzi}</td>
			<td width="20%" class="myInputTitle">垃圾中转站数量（座）</td>	
			<td width="30%">${facility.lj_zhongzhuan}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">垃圾清运车数量（辆）</td>	
			<td width="30%">${facility.lj_che}</td>
			<td width="20%" class="myInputTitle">是否通公路</td>	
			<td width="30%">${facility.gong_lu}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">建成区街道建设情况</td>	
			<td width="30%">${facility.jd_qingkuang}</td>
			<td width="20%" class="myInputTitle">现存数量</td>	
			<td width="30%">${facility.jd_shu}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">建成区集贸市场建设情况</td>	
			<td width="30%">${facility.jm_qingkuang}</td>
			<td width="20%" class="myInputTitle">现存数量</td>	
			<td width="30%">${facility.jm_shu}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">备注</td>	
			<td width="30%">${facility.remark}</td>
	</table>
</form>
</body>
</html>