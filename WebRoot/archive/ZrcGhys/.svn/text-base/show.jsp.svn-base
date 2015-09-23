<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>  
<head>
<style type="text/css">
 .title {
	font-size: 28px;
	font-weight: bold;
	background-color:#EFF6FE;
	text-align:center;
}
 </style>
</head>
<body>
<%@ include file="/archive/top.jsp" %>
<form action="${pageContext.request.contextPath}/archive/Zrc_ghys!edit.do" method="post">
	<input type="hidden" Id="id" name="id" value="${zrc_ghys.id}"/>
	<table  border="1" width="100%" class="myInput">
	<input type="hidden" Id="biao_shi" name="biao_shi" value="${biao_shi}"/>
	<input type="hidden" Id="flag" name="flag" value="${flag}"/>
	<input type="hidden" Id="pingfen" name="pingfen" value="${pingfen}"/>
	<input type="hidden" Id="length" name="length" value="${length}"/>
	<input type="hidden" Id="unit_id" name="unit_id" value="${zrc_ghys.unit_id}"/>
	<input type="hidden" Id="year" name="year" value="${zrc_ghys.year}"/>
	<input type="hidden" Id="ys_shijian" name="ys_shijian" value="${zrc_ghys.ys_shijian}"/>
	<input type="hidden" Id="ys_ren" name="ys_ren" value="${zrc_ghys.ys_ren}"/>
	<input type="hidden" Id="qz_zhuanjia" name="ys_shijian" value="${zrc_ghys.qz_zhuanjia}"/>
	<input type="hidden" Id="remark" name="remark" value="${zrc_ghys.remark}"/>
	<input type="hidden" Id="user_length" name="user_length" value="${user_length}"/>
  <tr>
    <td class="title" colspan="8">自然村村庄规划验收评分表</td>
  </tr>
  <tr>
    <td colspan="3" align="center" class="myInputTitle"><strong>验收标准</strong></td>
    <td align="center" class="myInputTitle"><strong>标准分</strong></td>
    <td align="center" class="myInputTitle"><strong>验收得分</strong></td>
	<c:if test="${user_length<2}">
      <td align="center" class="myInputTitle"><strong>州级评分</strong></td>
	</c:if>
    <td align="center" class="myInputTitle"><strong>县级评分</strong></td>
    <td align="center" class="myInputTitle"><strong>验收标准</strong></td>
  </tr>
  <tr>
    <td rowspan="13" align="center" width="13%"><p align="center">规划成果资料 </p>
    （60分）</td>
    <td rowspan="4" align="center" width="13%">自然村现状分析图</td>
    <td align="center" width="20%">比例尺为1:500~1:3000</td>
    <td align="center" width="6%">4</td>
    <td width="12%" align="center">${zrc_ghys.yuan_blili}</td>
    <c:if test="${user_length<2}">
        <td width="6%" align="center">${zrc_ghys_zhou.yuan_blili}</td>
    </c:if>
    <td width="6%" align="center">${zrc_ghys_xian.yuan_blili}</td>
    <td rowspan="13" align="center" width="30%"><p align="center">评分标准： <br />
      5（4）分：该项内容在图纸上表达清晰或说明书内容清晰、规范准确； <br />
      3（2）分：该项内容在图纸上表达欠清晰或说明书内容欠清晰规范； <br />
    0分：该项内容在图纸上未表达 </p></td>
  </tr>
  <tr>
    <td align="center">建筑条件现状</td>
    <td align="center">4</td>
    <td align="center">${zrc_ghys.jz_xianzhuang}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.jz_xianzhuang}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.jz_xianzhuang}</td>
  </tr>
  <tr>
    <td align="center">道路条件现状</td>
    <td align="center">4</td>
    <td align="center">${zrc_ghys.jt_xianzhuang}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.jt_xianzhuang}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.jt_xianzhuang}</td>
  </tr>
  <tr>
    <td align="center">基础设施和公共服务设施现状</td>
    <td align="center">4</td>
    <td align="center">${zrc_ghys.jc_gg_xz}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.jc_gg_xz}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.jc_gg_xz}</td>
  </tr>
  <tr>
    <td rowspan="5" align="center">自然村建设规划图</td>
    <td align="center">比例尺为1:500~1:3000</td>
    <td align="center">4</td>
    <td align="center">${zrc_ghys.xian_bili}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.xian_bili}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.xian_bili}</td>
  </tr>
  <tr>
    <td align="center">各类用地界限</td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.yd_jiexian}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.yd_jiexian}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.yd_jiexian}</td>
  </tr>
  <tr>
    <td align="center">道路走向、红线位置、横断面，停车场位置</td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.dl_zuxiang}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.dl_zuxiang}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.dl_zuxiang}</td>
  </tr>
  <tr>
    <td align="center">绿地位置和公共活动空间景观设计意向</td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.ld_weizhi}</td>
   <c:if test="${user_length<2}">
         <td align="center">${zrc_ghys_zhou.ld_weizhi}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.ld_weizhi}</td>
  </tr>
  <tr>
    <td align="center">各类市政公用设施及管线走向、主要控制点标高 </td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.sz_yongdi}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.sz_yongdi}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.sz_yongdi}</td>
  </tr>
  <tr>
    <td rowspan="3" align="center">住房建筑方案图</td>
    <td align="center">总平面布置（院落布局、户型组合等）</td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.zf_pingmian}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.zf_pingmian}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.zf_pingmian}</td>
  </tr>
  <tr>
    <td align="center">各层平立面图</td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.zf_pingli}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.zf_pingli}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.zf_pingli}</td>
  </tr>
  <tr>
    <td align="center">彩色效果图</td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.zf_caise}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.zf_caise}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.zf_caise}</td>
  </tr>
  <tr>
    <td colspan="2" align="center">说明书</td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.shuoming}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.shuoming}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.shuoming}</td>
  </tr>
  <tr>
    <td colspan="2" rowspan="5" align="center"><p align="center">规划成果审批 </p>
    （15分）</td>
    <td align="center">经村民大会或村民代表大会讨论通过</td>
    <td align="center">3</td>
    <td align="center">${zrc_ghys.jing_tong}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.jing_tong}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.jing_tong}</td>
    <td rowspan="5" align="center"><p align="center">评分标准： <br />
      3分：完成该项审批程序 </p>
    0分：未完成该项审批程序</td>
  </tr>
  <tr>
    <td align="center">村民委员会审核</td>
    <td align="center">3</td>
    <td align="center">${zrc_ghys.xiang_shen}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.xiang_shen}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.xiang_shen}</td>
  </tr>
  <tr>
    <td align="center">乡（镇）人民政府审批</td>
    <td align="center">3</td>
    <td align="center">${zrc_ghys.xian_shen}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.xian_shen}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.xian_shen}</td>
  </tr>
  <tr>
    <td align="center">规划成果意见征求</td>
    <td align="center">3</td>
    <td align="center">${zrc_ghys.yj_zhengji}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.yj_zhengji}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.yj_zhengji}</td>
  </tr>
  <tr>
    <td align="center">规划成果公示及移交</td>
    <td align="center">3</td>
    <td align="center">${zrc_ghys.cheng_guo}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.cheng_guo}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.cheng_guo}</td>
  </tr>
  <tr>
    <td colspan="2" rowspan="2" align="center"><p align="center">规划成果管理 </p>
    （10分）</td>
    <td align="center">规划成果按要求上报主管部门</td>
    <td align="center">2</td>
    <td align="center">${zrc_ghys.cg_shangbao}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.cg_shangbao}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.cg_shangbao}</td>
    <td rowspan="2" align="center"><p align="center">评分标准： 8（2）分：完成该项管理工作 </p>
    0分：未完成该项管理工作</td>
  </tr>
  <tr>
    <td align="center">规划成果实行档案化管理</td>
    <td align="center">8</td>
    <td align="center">${zrc_ghys.cg_guidang}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.cg_guidang}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.cg_guidang}</td>
  </tr>
  <tr>
    <td rowspan="3" align="center"><p align="center">规划编制补助资金 </p>
    （10分）</td>
    <td rowspan="2" align="center">规划编制补助资金投入</td>
    <td align="center">州（市）级补助资金投入</td>
    <td align="center">4</td>
    <td align="center">${zrc_ghys.zs_buzhu}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.zs_buzhu}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.zs_buzhu}</td>
    <td rowspan="3" align="center">评分标准： <br />
      补助资金投入：
      4分：按照州（市）、县市（区）各配套1000元 <br />
      0分：未按规定数目给予资金配套  <br />
     补助资金使用：
    2分：资金使用  符合规定，项目支出与预算相符  <br />
    0分：资金使用违规，项目支出与预算不符</td>
  </tr>
  <tr>
    <td align="center">县（市、区）级补助资金投入</td>
    <td align="center">4</td>
    <td align="center">${zrc_ghys.xian_buzhu}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.xian_buzhu}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.xian_buzhu}</td>
  </tr>
  <tr>
    <td colspan="2" align="center">规划编制补助资金使用</td>
    <td align="center">2</td>
    <td align="center">${zrc_ghys.gh_bzshiyong}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.gh_bzshiyong}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.gh_bzshiyong}</td>
  </tr>
  <tr>
    <td colspan="3" align="center">奖 励分</td>
    <td align="center">5</td>
    <td align="center">${zrc_ghys.jiangli}</td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.jiangli}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.jiangli}</td>
    <td rowspan="2" align="center">奖励事由:${zrc_ghys.beizhu}</td>
  </tr>
  <tr>
    <td colspan="3" align="center">总得分</td>
    <td colspan="2" align="center">${zrc_ghys.zong}</td>
    <c:if test="${user_length<2}">
	<td align="center">${zrc_ghys_zhou.zong}</td>
    </c:if>
	<td align="center">${zrc_ghys_xian.zong}</td>
	</tr>
     <tr>	
		<td colspan="8" align="center" style="height: 30px">
	      <input type="submit" value=" 编 辑 "/>	    </td>	
	</tr>
</table>

</form>
</body>
</html>