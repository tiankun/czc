<%@ page contentType="text/html;charset=GBK" %>
<style type="text/css">
 .title {
	font-size: 28px;
	font-weight: bold;
	background-color:#EFF6FE;
	text-align:center;
}
 </style>
 <script language="JavaScript" >
 function sumFen(){
	 var yuan_blili = Number(document.getElementById("yuan_blili").value);
	 var jz_xianzhuang = Number(document.getElementById("jz_xianzhuang").value);
	 var jt_xianzhuang = Number(document.getElementById("jt_xianzhuang").value);
	 var jc_gg_xz = Number(document.getElementById("jc_gg_xz").value);
	 var xian_bili = Number(document.getElementById("xian_bili").value);
	 var yd_jiexian = Number(document.getElementById("yd_jiexian").value);
	 var dl_zuxiang = Number(document.getElementById("dl_zuxiang").value);
	 var ld_weizhi = Number(document.getElementById("ld_weizhi").value);
	 var sz_yongdi = Number(document.getElementById("sz_yongdi").value);
	 var zf_pingmian = Number(document.getElementById("zf_pingmian").value);
	 var zf_pingli = Number(document.getElementById("zf_pingli").value);
	 var zf_caise = Number(document.getElementById("zf_caise").value);
	 var shuoming = Number(document.getElementById("shuoming").value);
	 var jing_tong = Number(document.getElementById("jing_tong").value);
	 var xiang_shen = Number(document.getElementById("xiang_shen").value);
	 var xian_shen = Number(document.getElementById("xian_shen").value);
	 var yj_zhengji = Number(document.getElementById("yj_zhengji").value);
	 var cheng_guo = Number(document.getElementById("cheng_guo").value);
	 var cg_shangbao = Number(document.getElementById("cg_shangbao").value);
	 var cg_guidang = Number(document.getElementById("cg_guidang").value);
	 var zs_buzhu = Number(document.getElementById("zs_buzhu").value);
	 var xian_buzhu = Number(document.getElementById("xian_buzhu").value);
	 var gh_bzshiyong = Number(document.getElementById("gh_bzshiyong").value);
	 var jiangli = Number(document.getElementById("jiangli").value);
	 
	 var zongfen = yuan_blili+jz_xianzhuang+jt_xianzhuang+jc_gg_xz+xian_bili+yd_jiexian+dl_zuxiang+ld_weizhi+sz_yongdi
	 +zf_pingmian+zf_pingli+zf_caise+shuoming+jing_tong+xiang_shen+xian_shen
	 +yj_zhengji+cheng_guo+cg_shangbao+cg_guidang+zs_buzhu+xian_buzhu+gh_bzshiyong+jiangli;
	 document.getElementById("zong").value=zongfen;
 }
 </script>
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
    <td width="12%" align="center"><input type="text" Id="yuan_blili" name="yuan_blili" onblur="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.yuan_blili}"/></td>
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
    <td align="center"><input type="text" Id="jz_xianzhuang" name="jz_xianzhuang"  onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.jz_xianzhuang}"/></td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.jz_xianzhuang}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.jz_xianzhuang}</td>
  </tr>
  <tr>
    <td align="center">道路条件现状</td>
    <td align="center">4</td>
    <td align="center"><input type="text" Id="jt_xianzhuang" name="jt_xianzhuang" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.jt_xianzhuang}"/></td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.jt_xianzhuang}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.jt_xianzhuang}</td>
  </tr>
  <tr>
    <td align="center">基础设施和公共服务设施现状</td>
    <td align="center">4</td>
    <td align="center"><input type="text" Id="jc_gg_xz" name="jc_gg_xz" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.jc_gg_xz}"/></td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.jc_gg_xz}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.jc_gg_xz}</td>
  </tr>
  <tr>
    <td rowspan="5" align="center">自然村建设规划图</td>
    <td align="center">比例尺为1:500~1:3000</td>
    <td align="center">4</td>
    <td align="center"><input type="text" Id="xian_bili" name="xian_bili" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.xian_bili}"/></td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.xian_bili}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.xian_bili}</td>
  </tr>
  <tr>
    <td align="center">各类用地界限</td>
    <td align="center">5</td>
    <td align="center"><input type="text" Id="yd_jiexian" name="yd_jiexian" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.yd_jiexian}"/></td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.yd_jiexian}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.yd_jiexian}</td>
  </tr>
  <tr>
    <td align="center">道路走向、红线位置、横断面，停车场位置</td>
    <td align="center">5</td>
    <td align="center"><input type="text" Id="dl_zuxiang" name="dl_zuxiang" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.dl_zuxiang}"/></td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.dl_zuxiang}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.dl_zuxiang}</td>
  </tr>
  <tr>
    <td align="center">绿地位置和公共活动空间景观设计意向</td>
    <td align="center">5</td>
    <td align="center"><input type="text" Id="ld_weizhi" name="ld_weizhi" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.ld_weizhi}"/></td>
   <c:if test="${user_length<2}">
         <td align="center">${zrc_ghys_zhou.ld_weizhi}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.ld_weizhi}</td>
  </tr>
  <tr>
    <td align="center">各类市政公用设施及管线走向、主要控制点标高 </td>
    <td align="center">5</td>
    <td align="center"><input type="text" Id="sz_yongdi" name="sz_yongdi" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.sz_yongdi}"/></td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.sz_yongdi}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.sz_yongdi}</td>
  </tr>
  <tr>
    <td rowspan="3" align="center">住房建筑方案图</td>
    <td align="center">总平面布置（院落布局、户型组合等）</td>
    <td align="center">5</td>
    <td align="center"><input type="text" Id="zf_pingmian" name="zf_pingmian" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.zf_pingmian}"/></td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.zf_pingmian}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.zf_pingmian}</td>
  </tr>
  <tr>
    <td align="center">各层平立面图</td>
    <td align="center">5</td>
    <td align="center"><input type="text" Id="zf_pingli" name="zf_pingli" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.zf_pingli}"/></td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.zf_pingli}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.zf_pingli}</td>
  </tr>
  <tr>
    <td align="center">彩色效果图</td>
    <td align="center">5</td>
    <td align="center"><input type="text" Id="zf_caise" name="zf_caise" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.zf_caise}"/></td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.zf_caise}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.zf_caise}</td>
  </tr>
  <tr>
    <td colspan="2" align="center">说明书</td>
    <td align="center">5</td>
    <td align="center"><input type="text" Id="shuoming" name="shuoming" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.shuoming}"/></td>
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
    <td align="center"><input type="text" Id="jing_tong" name="jing_tong" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.jing_tong}"/></td>
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
    <td align="center"><input type="text" Id="xiang_shen" name="xiang_shen" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.xiang_shen}"/></td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.xiang_shen}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.xiang_shen}</td>
  </tr>
  <tr>
    <td align="center">乡（镇）人民政府审批</td>
    <td align="center">3</td>
    <td align="center"><input type="text" Id="xian_shen" name="xian_shen" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.xian_shen}"/></td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.xian_shen}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.xian_shen}</td>
  </tr>
  <tr>
    <td align="center">规划成果意见征求</td>
    <td align="center">3</td>
    <td align="center"><input type="text" Id="yj_zhengji" name="yj_zhengji" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.yj_zhengji}"/></td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.yj_zhengji}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.yj_zhengji}</td>
  </tr>
  <tr>
    <td align="center">规划成果公示及移交</td>
    <td align="center">3</td>
    <td align="center"><input type="text" Id="cheng_guo" name="cheng_guo" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.cheng_guo}"/></td>
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
    <td align="center"><input type="text" Id="cg_shangbao" name="cg_shangbao" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.cg_shangbao}"/></td>
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
    <td align="center"><input type="text" Id="cg_guidang" name="cg_guidang" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.cg_guidang}"/></td>
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
    <td align="center"><input type="text" Id="zs_buzhu" name="zs_buzhu" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.zs_buzhu}"/></td>
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
    <td align="center"><input type="text" Id="xian_buzhu" name="xian_buzhu" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.xian_buzhu}"/></td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.xian_buzhu}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.xian_buzhu}</td>
  </tr>
  <tr>
    <td colspan="2" align="center">规划编制补助资金使用</td>
    <td align="center">2</td>
    <td align="center"><input type="text" Id="gh_bzshiyong" name="gh_bzshiyong" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.gh_bzshiyong}"/></td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.gh_bzshiyong}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.gh_bzshiyong}</td>
  </tr>
  <tr>
    <td colspan="3" align="center">奖 励分</td>
    <td align="center">5</td>
    <td align="center"><input type="text" Id="jiangli" name="jiangli" onkeypress="sumFen();" style="width:20px" dataType="Double" value="${zrc_ghys.jiangli}"/></td>
    <c:if test="${user_length<2}">
        <td align="center">${zrc_ghys_zhou.jiangli}</td>
    </c:if>
    <td align="center">${zrc_ghys_xian.jiangli}</td>
    <td rowspan="2" align="center">注明奖励事由:<input type="text" id="beizhu" name="beizhu" dataType="Require" value="${zrc_ghys.beizhu}"/></td>
  </tr>
  <tr>
    <td colspan="3" align="center">总得分</td>
    <td colspan="2" align="center"><input type="text" id="zong" name="zong" value="${zrc_ghys.zong}" readonly="readonly" style="background-color:#CCCCCC;"/></td>
	<c:if test="${user_length<2}">
       <td align="center">${zrc_ghys_zhou.zong}</td>
	</c:if>
	<td align="center">${zrc_ghys_xian.zong}</td>
  </tr>
  <tr>
    <td align="center" colspan="8">    <c:if test="${user_length<=2}"><input type="button" id="button" name="button" value=" 保 存 " onclick="return mySubmit();"/></c:if></td>
  </tr>
</table>
