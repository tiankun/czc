<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
<head>
</head>
<body>
<form action="${pageContext.request.contextPath}/admin/Item!edit.do" method="post">
	<input type="submit" value=" 编 辑 "/>
	<input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/admin/Item!list.do'"/>

	<input type="hidden" Id="id" name="id" value="${item.id}"/>
	<table width="100%" border="1" class="myInput">
	    <tr>
			<td width="20%" class="myInputTitle">对应用户主键</td>	
			<td width="30%">${item.unit_id}</td>
			<td width="20%" class="myInputTitle">项目名称</td>	
			<td width="30%">${item.name}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">业主</td>	
			<td width="30%">${item.ye_zhu}</td>
			<td width="20%" class="myInputTitle">联系人</td>	
			<td width="30%">${item.lian_xi}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">联系电话</td>	
			<td width="30%">${item.lianx_dianhua}</td>
			<td width="20%" class="myInputTitle">项目分类</td>	
			<td width="30%">${item.fen_lei}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">项目经营性质</td>	
			<td width="30%">${item.xiang_zhi}</td>
			<td width="20%" class="myInputTitle">项目所处阶段</td>	
			<td width="30%">${item.jie_duan}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">拟建地址</td>	
			<td width="30%">${item.gh_dizhi}</td>
			<td width="20%" class="myInputTitle">拟建时间</td>	
			<td width="30%">${item.gh_shijian}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">拟建规模</td>	
			<td width="30%">${item.gh_guimo}</td>
			<td width="20%" class="myInputTitle">立项选址</td>	
			<td width="30%">${item.lx_dizhi}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">环境影响评价</td>	
			<td width="30%">${item.lx_pingjia}</td>
			<td width="20%" class="myInputTitle">环评编制单位</td>	
			<td width="30%">${item.lx_hpbainzhi}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">环评报审批部门</td>	
			<td width="30%">${item.lx_hpshenp}</td>
			<td width="20%" class="myInputTitle">环评报审批时间</td>	
			<td width="30%">${item.lx_hpshijian}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">可行性研究报告</td>	
			<td width="30%">${item.lx_keybao}</td>
			<td width="20%" class="myInputTitle">可研编制单位</td>	
			<td width="30%">${item.lx_kybian}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">可研报审批部门</td>	
			<td width="30%">${item.lx_kybaop}</td>
			<td width="20%" class="myInputTitle">可研报审批时间</td>	
			<td width="30%">${item.lx_kyshijian}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">投资估算</td>	
			<td width="30%">${item.lx_touzi}</td>
			<td width="20%" class="myInputTitle">设计规模（近）</td>	
			<td width="30%">${item.lx_shejkai}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">设计规模（远）</td>	
			<td width="30%">${item.lx_shejyuan}</td>
			<td width="20%" class="myInputTitle">资金筹措方式</td>	
			<td width="30%">${item.lx_zijin}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">备件选址</td>	
			<td width="30%">${item.bj_dizhi}</td>
			<td width="20%" class="myInputTitle">立项皮批复时间</td>	
			<td width="30%">${item.bj_lx}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">地址勘察</td>	
			<td width="30%">${item.bj_kanc}</td>
			<td width="20%" class="myInputTitle">勘察单位</td>	
			<td width="30%">${item.bj_kancha}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">初步设计</td>	
			<td width="30%">${item.bj_sj}</td>
			<td width="20%" class="myInputTitle">初步设计单位</td>	
			<td width="30%">${item.bj_sheji}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">初设报审批部门</td>	
			<td width="30%">${item.bj_sjbaopi}</td>
			<td width="20%" class="myInputTitle">初设报审批时间</td>	
			<td width="30%">${item.bj_sjbaotime}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">初设批复时间</td>	
			<td width="30%">${item.bj_sjpifu}</td>
			<td width="20%" class="myInputTitle">设计规模（近）</td>	
			<td width="30%">${item.bj_sj_jin}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">设计规模（远）</td>	
			<td width="30%">${item.bj_sj_yuan}</td>
			<td width="20%" class="myInputTitle">投资概算</td>	
			<td width="30%">${item.bj_touzi}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">资金筹措方式</td>	
			<td width="30%">${item.bj_zijin}</td>
			<td width="20%" class="myInputTitle">施工图设计</td>	
			<td width="30%">${item.bj_tu}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">施工图设计单位</td>	
			<td width="30%">${item.bj_tusheji}</td>
			<td width="20%" class="myInputTitle">招标工作</td>	
			<td width="30%">${item.bj_zhaob}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">招标公告</td>	
			<td width="30%">${item.bj_fabiao}</td>
			<td width="20%" class="myInputTitle">中标结果文件</td>	
			<td width="30%">${item.bj_zhongbiao}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">在建选址</td>	
			<td width="30%">${item.zj_dizhi}</td>
			<td width="20%" class="myInputTitle">施工单位</td>	
			<td width="30%">${item.zj_shigong}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">监理单位</td>	
			<td width="30%">${item.zj_jianli}</td>
			<td width="20%" class="myInputTitle">开工时间</td>	
			<td width="30%">${item.zj_kaishi}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">计划工期</td>	
			<td width="30%">${item.zj_gongqi}</td>
			<td width="20%" class="myInputTitle">建成地址</td>	
			<td width="30%">${item.jg_dizhi}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">竣工验收时间</td>	
			<td width="30%">${item.jg_shijian}</td>
			<td width="20%" class="myInputTitle">竣工验收单位</td>	
			<td width="30%">${item.jg_yanshou}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">添加时间</td>	
			<td width="30%">${item.tian_jia}</td>
			<td width="20%" class="myInputTitle">备注</td>	
			<td width="30%">${item.remark}</td>
	    </tr>
	</table>
</form>
</body>
</html>