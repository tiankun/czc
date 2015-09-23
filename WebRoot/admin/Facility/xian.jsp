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
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Economy!xianedit.do?unit_id=${unit_id}">社会经济情况</a></font></td>
    <td style="height:31px" width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Plan!xianedit.do?unit_id=${unit_id}">规划编制情况</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t1.jpg"><font style="position: relative; top:3px;font-weight:bold">基础设施现状</font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Item!list.do?unit_id=${unit_id}">项目库</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">下级上报情况</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">历史数据</a></font></td>		
    <td width="*">&nbsp;</td>	
  </tr>
</table>
<form action="${pageContext.request.contextPath}/admin/Facility!xiansave.do" method="post" name="form1">
  <table border="1" width="100%" class="myInput">
    <tr>
      <td colspan="4" class="myInputTitle"><strong>基本信息</strong>
      <input type="hidden" name="contact_id" value="${contact.id}" /><input type="hidden" name="lx_type" value="3" /></td>
    </tr> 
    <tr>
      <td width="15%" class="myInputTitle">村镇基础设施建设主管部门</td>
      <td width="35%"><input name="name" type="text" id="name" value="${contact.name}"/></td>
      <td width="15%" class="myInputTitle">部门领导</td>
      <td width="35%"><input name="ling_dao" type="text" id="ling_dao" value="${contact.ling_dao}"/></td>
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
      <td height="49" colspan="4" valign="top">
	  <br/>
	  全县（区、市）小城镇供水设施节能设情况：<br/>
	  <table width="100%" border="1">
        <tr>
          <td colspan="6" align="center" valign="middle" class="myInputTitle">自来水厂</td>
          <td width="11%" rowspan="2" align="center" valign="middle" class="myInputTitle">供水规模（万立方米/日）</td>
          <td width="11%" rowspan="2" align="center" valign="middle" class="myInputTitle">服务人口（万人）</td>
          <td width="12%" rowspan="3" align="center" valign="middle" class="myInputTitle">累计投资（万元）</td>
        </tr>
        <tr>
          <td width="11%" align="center" valign="middle" class="myInputTitle">有，满足需求</td>
          <td width="11%" align="center" valign="middle" class="myInputTitle">有，需改扩建</td>
          <td width="11%" align="center" valign="middle" class="myInputTitle">在建</td>
          <td width="11%" align="center" valign="middle" class="myInputTitle">依托于城市、县城</td>
          <td width="11%" align="center" valign="middle" class="myInputTitle">无</td>
          <td width="11%" align="center" valign="middle" class="myInputTitle">总数</td>
          </tr>
        <tr>
          <td align="center" valign="middle">${tongf1.a}</td>
          <td align="center" valign="middle">${tongf1.b}</td>
          <td align="center" valign="middle">${tongf1.c}</td>
          <td align="center" valign="middle">${tongf1.d}</td>
          <td align="center" valign="middle">${tongf1.e}</td>
          <td align="center" valign="middle">${tongf1.f}</td>
          <td align="center" valign="middle">${tongf1.zl_guimo}</td>
          <td align="center" valign="middle">${tongf1.zl_fuwu}</td>
          </tr>
        <tr>
          <td colspan="6" align="center" valign="middle" class="myInputTitle">供水管网</td>
          <td rowspan="2" align="center" valign="middle" class="myInputTitle">供水管网长度（公里）</td>
          <td rowspan="2" align="center" valign="middle" class="myInputTitle">服务面积（平方公里）</td>
          <td rowspan="3" align="center" valign="middle">${tongf1.zl_touzi}</td>
        </tr>
        <tr>
          <td align="center" valign="middle" class="myInputTitle">有，满足需求</td>
          <td align="center" valign="middle" class="myInputTitle">有，需改扩建</td>
          <td align="center" valign="middle" class="myInputTitle">在建</td>
          <td align="center" valign="middle" class="myInputTitle">依托于城市、县城</td>
          <td align="center" valign="middle" class="myInputTitle">无</td>
          <td align="center" valign="middle" class="myInputTitle">总数</td>
          </tr>
        <tr>
          <td align="center" valign="middle">${tongf1.a1}</td>
          <td align="center" valign="middle">${tongf1.b1}</td>
          <td align="center" valign="middle">${tongf1.c1}</td>
          <td align="center" valign="middle">${tongf1.d1}</td>
          <td align="center" valign="middle">${tongf1.e1}</td>
          <td align="center" valign="middle">${tongf1.f1}</td>
          <td align="center" valign="middle">${tongf1.zl_guanchang}</td>
          <td align="center" valign="middle">${tongf1.zl_mianji}</td>
          </tr>
      </table>
<br/>全县（区、市）小城镇污水处理设施节能设情况：<br/>
	  <table width="100%" border="1">
        <tr>
          <td colspan="6" align="center" valign="middle" class="myInputTitle">污水处理厂</td>
          <td width="15%" rowspan="2" align="center" valign="middle" class="myInputTitle">污水处理厂规模（万立方米/日）</td>
          <td width="13%" rowspan="3" align="center" valign="middle" class="myInputTitle">累计投资（万元）</td>
        </tr>
        <tr>
          <td width="12%" align="center" valign="middle" class="myInputTitle">有，满足需求</td>
          <td width="12%" align="center" valign="middle" class="myInputTitle">有，需改扩建</td>
          <td width="12%" align="center" valign="middle" class="myInputTitle">在建</td>
          <td width="12%" align="center" valign="middle" class="myInputTitle">依托于城市、县城</td>
          <td width="12%" align="center" valign="middle" class="myInputTitle">无</td>
          <td width="12%" align="center" valign="middle" class="myInputTitle">总数</td>
          </tr>
        <tr>
          <td align="center" valign="middle">${tongf2.a}</td>
          <td align="center" valign="middle">${tongf2.b}</td>
          <td align="center" valign="middle">${tongf2.c}</td>
          <td align="center" valign="middle">${tongf2.d}</td>
          <td align="center" valign="middle">${tongf2.e}</td>
          <td align="center" valign="middle">${tongf2.f}</td>
          <td align="center" valign="middle"><span class="myInputTitle">${tongf2.ws_guimo}</span></td>
          </tr>
        <tr>
          <td colspan="6" align="center" valign="middle" class="myInputTitle">污水管网</td>
          <td rowspan="2" align="center" valign="middle" class="myInputTitle">污水管网长度（公里）</td>
          <td rowspan="3" align="center" valign="middle">${tongf2.ws_touzi}</td>
        </tr>
        <tr>
          <td align="center" valign="middle" class="myInputTitle">有，满足需求</td>
          <td align="center" valign="middle" class="myInputTitle">有，需改扩建</td>
          <td align="center" valign="middle" class="myInputTitle">在建</td>
          <td align="center" valign="middle" class="myInputTitle">依托于城市、县城</td>
          <td align="center" valign="middle" class="myInputTitle">无</td>
          <td align="center" valign="middle" class="myInputTitle">总数</td>
          </tr>
        <tr>
          <td align="center" valign="middle">${tongf2.a1}</td>
          <td align="center" valign="middle">${tongf2.b1}</td>
          <td align="center" valign="middle">${tongf2.c1}</td>
          <td align="center" valign="middle">${tongf2.d1}</td>
          <td align="center" valign="middle">${tongf2.e1}</td>
          <td align="center" valign="middle">${tongf2.f1}</td>
          <td align="center" valign="middle"><span class="myInputTitle">${tongf2.ws_guanchang}</span></td>
          </tr>
      </table>	
<br/>全县（区、市）乡镇垃圾处理设施建设现状：<br/>	
 	  <table width="100%" border="1">
        <tr>
          <td colspan="6" align="center" valign="middle" class="myInputTitle">垃圾处理设施</td>
          <td width="11%" rowspan="2" align="center" valign="middle" class="myInputTitle">处理规模（万吨/日）</td>
          <td width="12%" rowspan="2" align="center" valign="middle" class="myInputTitle">垃圾中转站数量（座）</td>
          <td width="11%" rowspan="2" align="center" valign="middle" class="myInputTitle">垃圾清运车数量（辆）</td>
          <td width="11%" rowspan="2" align="center" valign="middle" class="myInputTitle">累计投资（万元）</td>
        </tr>
        <tr>
          <td width="9%" align="center" valign="middle" class="myInputTitle">有，满足需求</td>
          <td width="9%" align="center" valign="middle" class="myInputTitle">有，需改扩建</td>
          <td width="9%" align="center" valign="middle" class="myInputTitle">在建</td>
          <td width="9%" align="center" valign="middle" class="myInputTitle">依托于城市、县城</td>
          <td width="9%" align="center" valign="middle" class="myInputTitle">无</td>
          <td width="10%" align="center" valign="middle" class="myInputTitle">总数</td>
          </tr>
        <tr>
          <td align="center" valign="middle">${tongf3.a}</td>
          <td align="center" valign="middle">${tongf3.b}</td>
          <td align="center" valign="middle">${tongf3.c}</td>
          <td align="center" valign="middle">${tongf3.d}</td>
          <td align="center" valign="middle">${tongf3.e}</td>
          <td align="center" valign="middle">${tongf3.f}</td>
          <td align="center" valign="middle">${tongf3.lj_guimo}</td>
          <td align="center" valign="middle">${tongf3.lj_zhongzhuan}</td>
          <td align="center" valign="middle">${tongf3.lj_che}</td>
          <td width="11%" align="center" valign="middle">${tongf3.lj_touzi}</td>
        </tr>
        </table>
<br/>全县（区、市）小城镇建成区街道及集贸市场建设现状：<br/>
<table width="100%" border="1">
  <tr>
    <td width="20%" rowspan="2" align="center" valign="middle" class="myInputTitle">建成区街道建设情况</td>
    <td width="20%" align="center" valign="middle" class="myInputTitle">已建成完善的道路系统</td>
    <td width="20%" align="center" valign="middle" class="myInputTitle">需新建道路</td>
    <td width="20%" align="center" valign="middle" class="myInputTitle">不能满足需求，需改扩建道路</td>
    <td width="20%" align="center" valign="middle" class="myInputTitle">总数</td>
  </tr>
  <tr>
    <td align="center" valign="middle">${tongf4.a}</td>
    <td align="center" valign="middle">${tongf4.b}</td>
    <td align="center" valign="middle">${tongf4.c}</td>
    <td align="center" valign="middle">${tongf4.jd_shu}</td>
  </tr>
  <tr>
    <td rowspan="2" align="center" valign="middle" class="myInputTitle">建成区集贸市场建设情况</td>
    <td align="center" valign="middle" class="myInputTitle">已建成，满足需求</td>
    <td align="center" valign="middle" class="myInputTitle">需新建市场</td>
    <td align="center" valign="middle" class="myInputTitle">不能满足需求，需改扩建市场</td>
    <td align="center" valign="middle" class="myInputTitle">总数</td>
  </tr>
  <tr>
    <td align="center" valign="middle">${tongf4.a1}</td>
    <td align="center" valign="middle">${tongf4.b1}</td>
    <td align="center" valign="middle">${tongf4.c1}</td>
    <td align="center" valign="middle">${tongf4.jm_shu}</td>
  </tr>    
</table>
</td>
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