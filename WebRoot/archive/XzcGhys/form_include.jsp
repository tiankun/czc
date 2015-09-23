<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
 
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
	 var fen_bu = Number(document.getElementById("fen_bu").value);
	 var yd_xianzhuang = Number(document.getElementById("yd_xianzhuang").value);
	 var jt_xianzhuang = Number(document.getElementById("jt_xianzhuang").value);
	 var jc_gg_xz = Number(document.getElementById("jc_gg_xz").value);
	 var xian_bili = Number(document.getElementById("xian_bili").value);
	 var jj_fangxiang = Number(document.getElementById("jj_fangxiang").value);
	 var zhengzhi = Number(document.getElementById("zhengzhi").value);
	 var zd_buju = Number(document.getElementById("zd_buju").value);
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
	 
	 var zongfen = yuan_blili+fen_bu+yd_xianzhuang+jt_xianzhuang+jc_gg_xz+xian_bili+jj_fangxiang+zhengzhi+zd_buju+shuoming+jing_tong+xiang_shen+xian_shen
	 +yj_zhengji+cheng_guo+cg_shangbao+cg_guidang+zs_buzhu+xian_buzhu+gh_bzshiyong+jiangli;
	 document.getElementById("zong").value=zongfen;
 }
 </script>
<table  border="1" width="100%" class="myInput">
	<input type="hidden" Id="id" name="id" value="${xzc_ghys.id}"/>
	<input type="hidden" Id="biao_shi" name="biao_shi" value="${biao_shi}"/>
	<input type="hidden" Id="flag" name="flag" value="${flag}"/>
	<input type="hidden" Id="pingfen" name="pingfen" value="${pingfen}"/>
	<input type="hidden" Id="length" name="length" value="${length}"/>
	<input type="hidden" Id="unit_id" name="unit_id" value="${xzc_ghys.unit_id}"/>
	<input type="hidden" Id="year" name="year" value="${xzc_ghys.year}"/>
	<input type="hidden" Id="ys_shijian" name="ys_shijian" value="${xzc_ghys.ys_shijian}"/>
	<input type="hidden" Id="ys_ren" name="ys_ren" value="${xzc_ghys.ys_ren}"/>
	<input type="hidden" Id="qz_zhuanjia" name="ys_shijian" value="${xzc_ghys.qz_zhuanjia}"/>
	<input type="hidden" Id="remark" name="remark" value="${xzc_ghys.remark}"/>
	<input type="hidden" Id="user_length" name="user_length" value="${user_length}"/>
  <tr>
    <td class="title" colspan="8">行政村村庄规划验收评分表</td>
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
    <td rowspan="11" align="center" width="13%"><p align="center">规划成果资料 </p>
    （60分）</td>
    <td rowspan="5" align="center" width="13%">行政村现状分析图</td>
    <td align="center" width="20%" height="22">比例尺为1:5000-1:10000</td>
    <td align="center" width="6%">5</td>
    <td width="12%" align="center"><input type="text" id="yuan_blili" name="yuan_blili" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.yuan_blili}"/></td>
    <c:if test="${user_length<2}">
      <td width="6%" align="center">${xzc_ghys_zhou.yuan_blili}</td>
     </c:if>
    <td width="6%" align="center">${xzc_ghys_xian.yuan_blili}</td>
    <td rowspan="11" align="center" width="30%"><p>评分标准： <br />
      6（5）分：该项内容在图纸上表达清晰或说明书内容清晰、规范准确； <br />
      3分：该项内容在图纸上表达欠清晰或说明书内容欠清晰规范； <br />
    0分：该项内容在图纸上未表达 </p>    </td>
  </tr>
  <tr>
    <td align="center" height="22">自然村分布现状</td>
    <td align="center">5</td>
    <td align="center"><input type="text" id="fen_bu" name="fen_bu" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.fen_bu}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.fen_bu}</td>
    </c:if>
     <td align="center">${xzc_ghys_xian.fen_bu}</td>
  </tr>
  <tr>
    <td align="center" height="22">用地现状</td>
    <td align="center">5</td>
    <td align="center"><input type="text" id="yd_xianzhuang" name="yd_xianzhuang" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.yd_xianzhuang}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.yd_xianzhuang}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.yd_xianzhuang}</td>
  </tr>
  <tr>
    <td align="center" height="22">对外交通现状</td>
    <td align="center">5</td>
    <td align="center"><input type="text" id="jt_xianzhuang" name="jt_xianzhuang" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.jt_xianzhuang}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.jt_xianzhuang}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.jt_xianzhuang}</td>
  </tr>
  <tr>
    <td align="center" height="22">基础设施和公共设施现状</td>
    <td align="center">5</td>
    <td align="center"><input type="text" id="jc_gg_xz" name="jc_gg_xz" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.jc_gg_xz}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.jc_gg_xz}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.jc_gg_xz}</td>
  </tr>
  <tr>
    <td rowspan="5" align="center">行政村总体规划图</td>
    <td align="center" height="22">比例尺为1:5000-1:10000 </td>
    <td align="center">6</td>
    <td align="center"><input type="text" id="xian_bili" name="xian_bili" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.xian_bili}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.xian_bili}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.xian_bili}</td>
  </tr>
  <tr>
    <td align="center" height="22">建设用地发展方向</td>
    <td align="center">6</td>
    <td align="center"><input type="text" id="jj_fangxiang" name="jj_fangxiang" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.jj_fangxiang}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.jj_fangxiang}</td>
    </c:if>
     <td align="center">${xzc_ghys_xian.jj_fangxiang}</td>
  </tr>
  <tr>
    <td align="center" height="22">各自然村整治类型</td>
    <td align="center">6</td>
    <td align="center"><input type="text" id="zhengzhi" name="zhengzhi" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.zhengzhi}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.zhengzhi}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.zhengzhi}</td>
  </tr>
  <tr>
    <td align="center" height="22">村级基础设施和公共设施布局</td>
    <td align="center">6</td>
    <td align="center"><input type="text" id="cj_gonggong" name="cj_gonggong" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.cj_gonggong}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.cj_gonggong}</td>
    </c:if>
     <td align="center">${xzc_ghys_xian.cj_gonggong}</td>
  </tr>
  <tr>
    <td align="center" height="22">重点建设项目布局</td>
    <td align="center">6</td>
    <td align="center"><input type="text" id="zd_buju" name="zd_buju" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.zd_buju}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.zd_buju}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.zd_buju}</td>
  </tr>
  <tr>
    <td colspan="2" align="center" height="22">说明书</td>
    <td align="center">5</td>
    <td align="center"><input type="text" id="shuoming" name="shuoming" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.shuoming}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.shuoming}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.shuoming}</td>
  </tr>
  
  <tr>
    <td colspan="2" rowspan="5" align="center"><p align="center">规划成果审批 </p>
    （15分）</td>
    <td align="center" height="22">经村民大会或村民代表大会讨论通过</td>
    <td align="center">3</td>
    <td align="center"><input type="text" id="jing_tong" name="jing_tong" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.jing_tong}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.jing_tong}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.jing_tong}</td>
    <td rowspan="5" align="center"><p>评分标准： <br />
      3分：完成该项审批程序 </p>
      0分：未完成该项审批程序      <p align="center">&nbsp;</p>    </td>
  </tr>
  <tr>
    <td align="center" height="22">乡（镇）人民政府审核</td>
    <td align="center">3</td>
    <td align="center"><input type="text" id="xiang_shen" name="xiang_shen" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.xiang_shen}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.xiang_shen}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.xiang_shen}</td>
  </tr>
  <tr>
    <td align="center" height="22">县（市、区）人民政府审批</td>
    <td align="center">3</td>
    <td align="center"><input type="text" id="xian_shen" name="xian_shen" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.xian_shen}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.xian_shen}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.xian_shen}</td>
  </tr>
  <tr>
    <td align="center" height="22">规划成果意见征求</td>
    <td align="center">3</td>
    <td align="center"><input type="text" id="yj_zhengji" name="yj_zhengji" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.yj_zhengji}"/></td>
   <c:if test="${user_length<2}">
       <td align="center">${xzc_ghys_zhou.yj_zhengji}</td>
    </c:if>
     <td align="center">${xzc_ghys_xian.yj_zhengji}</td>
  </tr>
  <tr>
    <td align="center" height="22">规划成果公示及移交</td>
    <td align="center">3</td>
    <td align="center"><input type="text" id="cheng_guo" name="cheng_guo" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.cheng_guo}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.cheng_guo}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.cheng_guo}</td>
  </tr>
  <tr>
    <td colspan="2" rowspan="2" align="center">规划成果管理 <br />
    （10分）</td>
    <td align="center" height="22">规划成果按要求上报主管部门</td>
    <td align="center">2</td>
    <td align="center"><input type="text" id="cg_shangbao" name="cg_shangbao" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.cg_shangbao}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.cg_shangbao}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.cg_shangbao}</td>
    <td rowspan="2" align="center">评分标准： <br />
      8（2）分：完成该项管理工作 <br />
      0分：未完成该项管理工作    </td>
  </tr>
  <tr>
    <td align="center" height="22">规划成果实行档案化管理</td>
    <td align="center">8</td>
    <td align="center"><input type="text" id="cg_guidang" name="cg_guidang" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.cg_guidang}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.cg_guidang}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.cg_guidang}</td>
  </tr>
  <tr>
    <td rowspan="3" align="center"><p align="center">规划编制补助资金 </p>
    （10分）</td>
    <td rowspan="2" align="center">规划编制补助资金投入</td>
    <td align="center">州（市）级补助资金投入</td>
    <td align="center">4</td>
    <td align="center"><input type="text" id="zs_buzhu" name="zs_buzhu" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.zs_buzhu}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.zs_buzhu}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.zs_buzhu}</td>
    <td rowspan="3" align="center">评分标准： <br />
      补助资金投入：
      4分：按照州（市）、县市（区）各配套1000元 <br />
        0分：未按规定数目给予资金配套 <br />
        补助资金使用：
        2分：资金使用符合规定，项目支出与预算相符
      0分：资金使用违规，项目支出与预算不符    </td>
  </tr>
  <tr>
    <td align="center">县（市、区）级补助资金投入</td>
    <td align="center">4</td>
    <td align="center"><input type="text" id="xian_buzhu" name="xian_buzhu" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.xian_buzhu}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.xian_buzhu}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.xian_buzhu}</td>
  </tr>
  <tr>
    <td colspan="2" align="center">规划编制补助资金使用</td>
    <td align="center">2</td>
    <td align="center"><input type="text" id="gh_bzshiyong" name="gh_bzshiyong" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.gh_bzshiyong}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.gh_bzshiyong}</td>
     </c:if>
    <td align="center">${xzc_ghys_xian.gh_bzshiyong}</td>
  </tr>
  <tr>
    <td colspan="3" align="center">奖 励 分</td>
    <td align="center">5</td>
    <td align="center"><input type="text" id="jiangli" name="jiangli" dataType="Double" style="width:20px" onblur="sumFen();" value="${xzc_ghys.jiangli}"/></td>
    <c:if test="${user_length<2}">
      <td align="center">${xzc_ghys_zhou.jiangli}</td>
    </c:if>
    <td align="center">${xzc_ghys_xian.jiangli}</td>
    <td rowspan="2" align="center">注明奖励事由:<input type="text" id="beizhu" name="beizhu" dataType="Require" value="${xzc_ghys.beizhu}"/></td>
  </tr>
  <tr>
    <td colspan="3" align="center">总 得 分</td>
    <td colspan="2" align="center"><input type="text" id="zong" name="zong" value="${xzc_ghys.zong}" readonly="readonly" style="background-color:#CCCCCC;"/></td>  
	<c:if test="${user_length<2}">
	<td align="center">${xzc_ghys_zhou.zong}</td>
	 </c:if>
    <td align="center">${xzc_ghys_xian.zong}</td>
  </tr>
  <tr>
    <td align="center" colspan="8">    <c:if test="${user_length<=2}"><input type="button" id="button" name="button" value=" 保 存 " onclick="return mySubmit();"/></c:if></td>
  </tr>
</table>
