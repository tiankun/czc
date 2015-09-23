<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" >
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}		
</script>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
</head>

<body>
<table width="100%" background="${pageContext.request.contextPath}/images/tbg.jpg">
  <tr align="center">
    <td width="120" background="${pageContext.request.contextPath}/images/t1.jpg"><font style="position: relative; top:3px;font-weight:bold">社会经济情况</font></td>
    <td style="height:31px" width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Plan!xianedit.do?unit_id=${unit_id}">规划编制情况</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Facility!xianedit.do?unit_id=${unit_id}">基础设施现状</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Item!list.do?unit_id=${unit_id}">项目库</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">下级上报情况</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">历史数据</a></font></td>		
    <td width="*">&nbsp;</td>	
  </tr>
</table>
<form action="${pageContext.request.contextPath}/admin/Economy!xiansave.do" method="post" name="form1">
  <table border="1" width="100%" class="myInput">
    <tr>
      <td colspan="4" class="myInputTitle"><strong>基本信息</strong>
      <input type="hidden" name="contact_id" value="${contact.id}" /><input type="hidden" name="lx_type" value="1" /></td>
    </tr> 
    <tr>
      <td class="myInputTitle">村镇主管部门</td>
      <td><input name="name" type="text" id="name" value="${contact.name}"/></td>
      <td class="myInputTitle">部门领导</td>
      <td><input name="ling_dao" type="text" id="ling_dao" value="${contact.ling_dao}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">联系人</td>
      <td><input name="lian_xi" type="text" id="lian_xi" value="${contact.lian_xi}"/></td>
      <td class="myInputTitle">联系电话</td>
      <td><input name="lianx_dianhua" type="text" id="lianx_dianhua" value="${contact.lianx_dianhua}"/></td>
    </tr>	
    <tr>
      <td class="myInputTitle">传真</td>
      <td><input name="fax" type="text" id="fax" value="${contact.fax}"/></td>
      <td class="myInputTitle">邮编</td>
      <td><input name="you_bian" type="text" id="you_bian" value="${contact.you_bian}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">E_mail</td>
      <td><input name="email" type="text" id="email" value="${contact.email}"/></td>
      <td class="myInputTitle">联系地址</td>
      <td><input name="di_zhi" type="text" id="di_zhi" value="${contact.di_zhi}"/></td>
    </tr>
    
    <tr>
      <td colspan="4" class="myInputTitle"><strong>社会经济情况</strong>
      </td>
    </tr>	
    <tr>
      <td class="myInputTitle" width="15%">总人口</td>
      <td width="35%">${economy.zong_ren}<span class="STYLE1">万人</span></td>
      <td class="myInputTitle" width="15%">农业人口</td>
      <td width="35%">${economy.nong}<span class="STYLE1">万人</span></td>
    </tr>
    <tr>
      <td class="myInputTitle">农户数</td>
      <td>${economy.nong_hu}<span class="STYLE1">万户</span></td>
      <td class="myInputTitle">农村劳动力</td>
      <td>${economy.lao_dong}<span class="STYLE1">万人</span></td>
    </tr>
    <tr>
      <td class="myInputTitle">总面积</td>
      <td>${economy.zong_mianj}<span class="STYLE1">万平方公里</span></td>
      <td class="myInputTitle">耕地面积</td>
      <td>${economy.geng_di}<span class="STYLE1">万平方公里</span></td>
    </tr>
    <tr>
      <td class="myInputTitle">全镇生产总值</td>
      <td>${economy.zong_shengc}<span class="STYLE1">亿元</span></td>
      <td class="myInputTitle">农村经济总收入</td>
      <td>${economy.jingj_zong}<span class="STYLE1">亿元</span></td>
    </tr>
    <tr>
      <td class="myInputTitle">农民人均纯收入</td>
      <td>${economy.nongm_jun}<span class="STYLE1">元</span></td>
      <td class="myInputTitle">第一产业产值</td>
      <td>${economy.yi}<span class="STYLE1">亿元</span></td>
    </tr>
    <tr>
      <td class="myInputTitle">第二产业产值</td>
      <td>${economy.er}<span class="STYLE1">亿元</span></td>
      <td class="myInputTitle">第三产业产值</td>
      <td>${economy.san}<span class="STYLE1">亿元</span></td>
    </tr>
	<tr>
		<td width="15%" class="myInputTitle">乡镇政府驻地建成区总人口</td>	
		<td width="35%">${economy.zhu_ren}<span class="STYLE1">万人</span></td>
		<td width="15%" class="myInputTitle">乡镇政府驻地建成区总面积</td>	
		<td width="35%">${economy.zhu_mian}<span class="myInputTitle"><span class="STYLE1">万平方公里</span></span></td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">乡镇政府驻地建成区新增人口</td>	
		<td width="35%">${economy.zhu_xin}<span class="myInputTitle"><span class="STYLE1">万人</span></span></td>
		<td width="15%" class="myInputTitle">乡镇转移到其它地方人口</td>	
		<td width="35%">${economy.zhu_zhuan}<span class="STYLE1">万人</span></td>
	</tr>
    <tr>
      <td height="49" colspan="4" valign="top"><br/>全县（区、市）乡镇划分：<br/>
        <table width="100%" border="1">
          <tr>
            <td width="14%" align="center" class="myInputTitle">总数</td>
            <td width="26%" align="center" class="myInputTitle">街道办事处</td>
            <td width="20%" align="center" class="myInputTitle">城关镇</td>
            <td width="23%" align="center" class="myInputTitle">建制镇</td>
            <td width="17%" align="center" class="myInputTitle">乡</td>
          </tr>
          <tr>
            <td align="center">${economy.mycount}</td>
            <td align="center">${economy.a1}</td>
            <td align="center">${economy.a2}</td>
            <td align="center">${economy.a3}</td>
            <td align="center">${economy.a4}</td>
          </tr>
        </table>
<br/>全县（区、市）小城镇（建制镇＋乡）人口规模划分及只能类型：<br/>	
<table width="100%" border="1">
  <tr>
    <td width="8%" rowspan="2" align="center" valign="middle" class="myInputTitle">总数</td>
    <td colspan="4" align="center" valign="middle" class="myInputTitle">人口规模</td>
    <td colspan="6" align="center" valign="middle" class="myInputTitle">职能类型</td>
    </tr>
  <tr>
    <td width="11%" align="center" valign="middle" class="myInputTitle">特大型（&gt;50000人）</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">大型（30001～50000人）</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">中型（10001～30000人）</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">小型（&lt;=10000人）</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">农业型</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">工业型</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">商贸型</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">旅游型</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">边境口岸型</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">生态园林型</td>
  </tr>
  <tr>
    <td align="center" valign="middle">&nbsp;${tongb.mycount}</td>
    <td align="center" valign="middle">&nbsp;${tongb.a1}</td>
    <td align="center" valign="middle">&nbsp;${tongb.a2}</td>
    <td align="center" valign="middle">&nbsp;${tongb.a3}</td>
    <td align="center" valign="middle">&nbsp;${tongb.a4}</td>
    <td align="center" valign="middle">&nbsp;${tongb.b1}</td>
    <td align="center" valign="middle">&nbsp;${tongb.b2}</td>
    <td align="center" valign="middle">&nbsp;${tongb.b3}</td>
    <td align="center" valign="middle">&nbsp;${tongb.b4}</td>
    <td align="center" valign="middle">&nbsp;${tongb.b5}</td>
    <td align="center" valign="middle">&nbsp;${tongb.b6}</td>
  </tr>
</table>
<br/>全县（区、市）特色小镇数量及职能类型：<br/>
<table width="100%" border="1">
  <tr>
    <td width="14%" align="center" class="myInputTitle">总数</td>
    <td width="15%" align="center" class="myInputTitle">现代农业型</td>
    <td width="15%" align="center" class="myInputTitle">工业型</td>
    <td width="14%" align="center" class="myInputTitle">商贸型</td>
    <td width="14%" align="center" class="myInputTitle">旅游型</td>
    <td width="14%" align="center" class="myInputTitle">边境口岸型</td>
    <td width="14%" align="center" class="myInputTitle">生态园林型</td>
  </tr>
  <tr>
    <td align="center">&nbsp;${tongc.mycount}</td>
    <td align="center">&nbsp;${tongc.a1}</td>
    <td align="center">&nbsp;${tongc.a2}</td>
    <td align="center">&nbsp;${tongc.a3}</td>
    <td align="center">&nbsp;${tongc.a4}</td>
    <td align="center">&nbsp;${tongc.a5}</td>
    <td align="center">&nbsp;${tongc.a6}</td>
  </tr>
</table>
<br/>全县（区、市）乡镇空间位置情况：<br/>
<table width="100%" border="1">
  <tr>
    <td width="8%" rowspan="2" align="center" valign="middle" class="myInputTitle">总数</td>
    <td colspan="2" align="center" valign="middle" class="myInputTitle">地形</td>
    <td colspan="6" align="center" valign="middle" class="myInputTitle">特殊区域</td>
    <td colspan="3" align="center" valign="middle" class="myInputTitle">空间关系</td>
    </tr>
  <tr>
    <td width="10%" align="center" valign="middle" class="myInputTitle">坝区</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">山区</td>
    <td width="8%" align="center" valign="middle" class="myInputTitle">6大水系9大高原湖泊周边</td>
    <td width="8%" align="center" valign="middle" class="myInputTitle">城市、县城周边</td>
    <td width="8%" align="center" valign="middle" class="myInputTitle">饮用水源保护区</td>
    <td width="8%" align="center" valign="middle" class="myInputTitle">风景名胜保护区</td>
    <td width="8%" align="center" valign="middle" class="myInputTitle">生态多样性保护区</td>
    <td width="8%" align="center" valign="middle" class="myInputTitle">其他</td>
    <td width="8%" align="center" valign="middle" class="myInputTitle">远离城市、县城独立发展</td>
    <td width="8%" align="center" valign="middle" class="myInputTitle">城市、县城10公里范围内</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">与城市、县城建成区连片</td>
  </tr>
  <tr>
    <td align="center" valign="middle">&nbsp;${economy.mycount}&nbsp;</td>
    <td align="center" valign="middle">${economy.baqu}</td>
    <td align="center" valign="middle">${economy.shanqu}</td>
    <td align="center" valign="middle">${economy.b1}</td>
    <td align="center" valign="middle">${economy.b2}</td>
    <td align="center" valign="middle">${economy.b3}</td>
    <td align="center" valign="middle">${economy.b4}</td>
    <td align="center" valign="middle">${economy.b5}</td>
    <td align="center" valign="middle">${economy.b6}</td>
    <td align="center" valign="middle">${economy.c1}</td>
    <td align="center" valign="middle">${economy.c2}</td>
    <td align="center" valign="middle">${economy.c3}</td>
  </tr>
</table>
<br/>全县（区、市）村庄数量：<br/>
<table width="100%" border="1">
  <tr>
    <td width="50%" align="center" class="myInputTitle">建制村</td>
    <td width="50%" align="center" class="myInputTitle">自然村</td>
  </tr>
  <tr>
    <td align="center">&nbsp;${tongd[0].mycount}</td>
    <td align="center">&nbsp;${tongd[1].mycount}</td>
  </tr>
</table></td>
    </tr>	
    <tr>
      <td height="49" colspan="4" align="center"><input type="submit" name="Submit" value=" 提 交 " />
        &nbsp;&nbsp;
      <input type="reset" name="Submit2" value=" 重 置 " /><input type="hidden" name="unit_id" value="${unit_id}" /><input type="hidden" name="year" value="${year}" /></td>
    </tr>	
	</table>
</form>

</body>
</html>