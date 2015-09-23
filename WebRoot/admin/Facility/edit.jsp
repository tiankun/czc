<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>  
    <script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>      
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" /> 
<script language="JavaScript" type="text/JavaScript">
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
</SCRIPT>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>   
</head>

<body>
<table width="100%" background="${pageContext.request.contextPath}/images/tbg.jpg">
  <tr align="center">
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Economy!edit.do?unit_id=${unit_id}">社会经济情况</a></font></td>
    <td style="height:31px" width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Plan!edit.do?unit_id=${unit_id}">规划编制情况</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t1.jpg"><font style="position: relative; top:3px;font-weight:bold">基础设施现状</font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Item!list.do?unit_id=${unit_id}">项目库</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">下级上报情况</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">历史数据</a></font></td>		
    <td width="*">&nbsp;</td>	
  </tr>
</table>
<form action="${pageContext.request.contextPath}/admin/Facility!save.do" method="post" name="form1">
	<table border="1" width="100%" class="myInput">
    <tr>
      <td colspan="4" class="myInputTitle"><strong>基本信息</strong>
      <input type="hidden" name="contact_id" value="${contact.id}" /><input type="hidden" name="lx_type" value="3" /></td>
    </tr> 
    <tr>
      <td class="myInputTitle" width="15%">村镇基础设施建设负责单位</td>
      <td width="35%"><input name="name" type="text" id="name" value="${contact.name}"/></td>
      <td class="myInputTitle" width="15%">单位领导</td>
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
      <td colspan="4" class="myInputTitle"><strong>社会经济情况</strong>
      <input type="hidden" name="economy_id" value="${economy.id}" /></td>
    </tr>
     <tr>
		<td class="myInputTitle">有无自来水厂</td>	
		<td>
       <select name="zilai">	
          <option value="有，满足需求" <c:if test="${economy.zilai=='有，满足需求'}">selected</c:if>>有，满足需求</option>
          <option value="有，需改扩建" <c:if test="${economy.zilai=='有，需改扩建'}">selected</c:if>>有，需改扩建</option>
          <option value="依托于城市、县城" <c:if test="${economy.zilai=='依托于城市、县城'}">selected</c:if>>依托于城市、县城</option>
          <option value="在建" <c:if test="${economy.zilai=='在建'}">selected</c:if>>在建</option>
          <option value="无" <c:if test="${economy.zilai=='无'}">selected</c:if>>无</option>	  
        </select></td>
		<td class="myInputTitle">供水规模（<span class="STYLE1">万立方米/日</span>）</td>
		<td><input type="text" id="zl_guimo" name="zl_guimo" maxlength="22" datatype="Number" value="${facility.zl_guimo}"/>        </td>
     </tr>
	<tr>
	  <td class="myInputTitle">服务人口(<span class="STYLE1">万人</span>)</td>
	  <td><input type="text" id="zl_fuwu" name="zl_fuwu" maxlength="22" datatype="Number" value="${facility.zl_fuwu}"/>      </td>
		<td class="myInputTitle">建成年份</td>
		<td><input type="text" id="zl_jiancheng" name="zl_jiancheng" maxlength="10" datatype="Integer" value="${facility.zl_jiancheng}"/>        </td>
	</tr>
	<tr>
	  <td class="myInputTitle">建设投资（<span class="STYLE1">万元</span>）</td>
	  <td><input type="text" id="zl_touzi" name="zl_touzi" maxlength="22" datatype="Number" value="${facility.zl_touzi}"/>      </td>
		<td class="myInputTitle">供水管网情况</td>
		<td>
<select name="zl_guan">	
          <option value="有，满足需求" <c:if test="${economy.zl_guan=='有，满足需求'}">selected</c:if>>有，满足需求</option>
          <option value="有，需改扩建" <c:if test="${economy.zl_guan=='有，需改扩建'}">selected</c:if>>有，需改扩建</option>
          <option value="依托于城市、县城" <c:if test="${economy.zl_guan=='依托于城市、县城'}">selected</c:if>>依托于城市、县城</option>
          <option value="在建" <c:if test="${economy.zl_guan=='在建'}">selected</c:if>>在建</option>
          <option value="无" <c:if test="${economy.zl_guan=='无'}">selected</c:if>>无</option>	  
        </select>		
 </td>
	</tr>
	<tr>
	  <td class="myInputTitle">供水管网长度（<span class="STYLE1">公里</span>）</td>
	  <td><input type="text" id="zl_guanchang" name="zl_guanchang" maxlength="22" datatype="Number" value="${facility.zl_guanchang}"/>      </td>
		<td class="myInputTitle">服务面积（<span class="STYLE1">平方公里</span>）</td>
		<td><input type="text" id="zl_mianji" name="zl_mianji" maxlength="22" datatype="Number" value="${facility.zl_mianji}"/>        </td>
	</tr>
	<tr>
	  <td class="myInputTitle">居民用水水价（<span class="STYLE1">元/立方米</span>）</td>
	  <td><input type="text" id="zl_shuijia" name="zl_shuijia" maxlength="22" datatype="Number" value="${facility.zl_shuijia}"/>      </td>
		<td class="myInputTitle">经营用水水价（<span class="STYLE1">元/立方米</span>）</td>
		<td><input type="text" id="zl_jingying" name="zl_jingying" maxlength="22" datatype="Number" value="${facility.zl_jingying}"/>        </td>
	</tr>
	<tr>
	  <td class="myInputTitle">工业用水水价（<span class="STYLE1">元/立方米</span>）</td>
	  <td><input type="text" id="zl_gongye" name="zl_gongye" maxlength="22" datatype="Number" value="${facility.zl_gongye}"/>      </td>
		<td colspan="2">&nbsp;</td>	
	  </tr>
	<tr>
		<td class="myInputTitle" colspan="4" style="height:1px"></td>	
	</tr>	  
	<tr>
		<td class="myInputTitle">有无污水处理厂（站）</td>	
		<td><select name="ws_qingkuang">	
          <option value="有，满足需求" <c:if test="${economy.ws_qingkuang=='有，满足需求'}">selected</c:if>>有，满足需求</option>
          <option value="有，需改扩建" <c:if test="${economy.ws_qingkuang=='有，需改扩建'}">selected</c:if>>有，需改扩建</option>
          <option value="依托于城市、县城" <c:if test="${economy.ws_qingkuang=='依托于城市、县城'}">selected</c:if>>依托于城市、县城</option>
          <option value="在建" <c:if test="${economy.ws_qingkuang=='在建'}">selected</c:if>>在建</option>
          <option value="无" <c:if test="${economy.ws_qingkuang=='无'}">selected</c:if>>无</option>	  
        </select></td>
		<td class="myInputTitle">污水处理规模（<span class="STYLE1">万立方米/日</span>）</td>
		<td><input type="text" id="ws_guimo" name="ws_guimo" maxlength="22" datatype="Number" value="${facility.ws_guimo}"/>        </td>
	</tr>
	<tr>
	  <td class="myInputTitle">建成年份</td>
	  <td><input type="text" id="ws_jiancheng" name="ws_jiancheng" maxlength="10" datatype="Integer" value="${facility.ws_jiancheng}"/>      </td>
		<td class="myInputTitle">建设投资（<span class="STYLE1">万元</span>）</td>
		<td><input type="text" id="ws_touzi" name="ws_touzi" maxlength="22" datatype="Number" value="${facility.ws_touzi}"/>        </td>
	</tr>
	<tr>
	  <td class="myInputTitle">是否实现雨污分流</td>
	  <td>
<select name="ws_fenliu">	
          <option value="是" <c:if test="${economy.ws_fenliu=='是'}">selected</c:if>>是</option>
          <option value="否" <c:if test="${economy.ws_fenliu=='否'}">selected</c:if>>否</option>	  
        </select>	  </td>
		<td class="myInputTitle">有无污水管网</td>
		<td>
<select name="ws_guan">	
          <option value="有，满足需求" <c:if test="${economy.ws_guan=='有，满足需求'}">selected</c:if>>有，满足需求</option>
          <option value="有，需改扩建" <c:if test="${economy.ws_guan=='有，需改扩建'}">selected</c:if>>有，需改扩建</option>
          <option value="依托于城市、县城" <c:if test="${economy.ws_guan=='依托于城市、县城'}">selected</c:if>>依托于城市、县城</option>
          <option value="在建" <c:if test="${economy.ws_guan=='在建'}">selected</c:if>>在建</option>
          <option value="无" <c:if test="${economy.ws_guan=='无'}">selected</c:if>>无</option>	  
        </select>		
</td>
	</tr>
	<tr>
	  <td class="myInputTitle">污水管网长度（<span class="STYLE1">公里</span>）</td>
	  <td><input type="text" id="ws_guanchang" name="ws_guanchang" maxlength="22" datatype="Number" value="${facility.ws_guanchang}"/>      </td>
		<td class="myInputTitle">排污费单价（<span class="STYLE1">元/立方米</span>）</td>
		<td><input type="text" id="ws_fei" name="ws_fei" maxlength="22" datatype="Number" value="${facility.ws_fei}"/>        </td>
	</tr>
	<tr>
	  <td colspan="4" class="myInputTitle" style="height:1px"></td>
	  </tr>	
	<tr>
	  <td class="myInputTitle">垃圾处理设施情况</td>
	  <td>
<select name="lj_qingkuang">	
          <option value="有，满足需求" <c:if test="${economy.lj_qingkuang=='有，满足需求'}">selected</c:if>>有，满足需求</option>
          <option value="有，需改扩建" <c:if test="${economy.lj_qingkuang=='有，需改扩建'}">selected</c:if>>有，需改扩建</option>
          <option value="依托于城市、县城" <c:if test="${economy.lj_qingkuang=='依托于城市、县城'}">selected</c:if>>依托于城市、县城</option>
          <option value="在建" <c:if test="${economy.lj_qingkuang=='在建'}">selected</c:if>>在建</option>
          <option value="无" <c:if test="${economy.lj_qingkuang=='无'}">selected</c:if>>无</option>	  
        </select>	  
</td>
		<td class="myInputTitle">垃圾处理规模（<span class="STYLE1">吨/日</span>）</td>
		<td><input type="text" id="lj_guimo" name="lj_guimo" maxlength="22" datatype="Number" value="${facility.lj_guimo}"/>        </td>
	</tr>
	<tr>
	  <td class="myInputTitle">使用年限（<span class="STYLE1">年</span>）</td>
	  <td><input type="text" id="lj_nianxian" name="lj_nianxian" maxlength="22" datatype="Number" value="${facility.lj_nianxian}"/>      </td>
		<td class="myInputTitle">建成年份</td>
		<td><input type="text" id="lj_jaincheng" name="lj_jaincheng" maxlength="10" datatype="Integer" value="${facility.lj_jaincheng}"/>        </td>
	</tr>
	<tr>
	  <td class="myInputTitle">建设投资（<span class="STYLE1">万元</span>）</td>
	  <td><input type="text" id="lj_touzi" name="lj_touzi" maxlength="22" datatype="Number" value="${facility.lj_touzi}"/>      </td>
		<td class="myInputTitle">垃圾中转站数量（<span class="STYLE1">座</span>）</td>
		<td><input type="text" id="lj_zhongzhuan" name="lj_zhongzhuan" maxlength="10" datatype="Integer" value="${facility.lj_zhongzhuan}"/>        </td>
	</tr>
	<tr>
	  <td class="myInputTitle">垃圾清运车数量（<span class="STYLE1">辆</span>）</td>
	  <td><input type="text" id="lj_che" name="lj_che" maxlength="10" datatype="Integer" value="${facility.lj_che}"/>      </td>
		<td colspan="2">&nbsp;</td>	
	  </tr>
	<tr>
		<td colspan="4" class="myInputTitle" style="height:1px"></td>	
	  </tr>
	<tr>
		<td class="myInputTitle">建成区街道建设情况</td>	
		<td >
<select name="jd_qingkuang" id="jd_qingkuang">
        <option value="已建成完善的道路系统" <c:if test="${facility.jd_qingkuang=='已建成完善的道路系统'}">selected</c:if>>已建成完善的道路系统</option>
        <option value="需新建道路" <c:if test="${facility.jd_qingkuang=='需新建道路'}">selected</c:if>>需新建道路</option>	
		<option value="不能满足需求，需改扩建道路系统" <c:if test="${facility.jd_qingkuang=='不能满足需求，需改扩建道路系统'}">selected</c:if>>不能满足需求，需改扩建道路系统</option>	
      </select>		
</td>
		<td class="myInputTitle">现存数量（<span class="STYLE1">条</span>）</td>	
		<td >
		<input type="text" Id="jd_shu" name="jd_shu" maxlength="10" dataType="Integer" value="${facility.jd_shu}"/>		</td>
	</tr>
	<tr>
		<td class="myInputTitle">建成区集贸市场建设情况</td>	
		<td >
<select name="jm_qingkuang" id="jm_qingkuang">
        <option value="已建成，满足需求" <c:if test="${facility.jm_qingkuang=='已建成，满足需求'}">selected</c:if>>已建成，满足需求</option>
        <option value="需新建市场" <c:if test="${facility.jm_qingkuang=='需新建市场'}">selected</c:if>>需新建市场</option>	
		<option value="不能满足需求，需改扩建市场系统" <c:if test="${facility.jm_qingkuang=='不能满足需求，需改扩建市场系统'}">selected</c:if>>不能满足需求，需改扩建市场系统</option>	
      </select></td>
		<td class="myInputTitle">现存数量（<span class="STYLE1">个</span>）</td>	
		<td >
		<input type="text" Id="jm_shu" name="jm_shu" maxlength="10" dataType="Integer" value="${facility.jm_shu}"/>		</td>
	</tr>
    <tr>
      <td height="49" colspan="4" align="center"><input type="submit" name="Submit" value=" 提 交 " />
        &nbsp;&nbsp;
      <input type="reset" name="Submit2" value=" 重 置 " /><input type="hidden" name="unit_id" value="3" /><input type="hidden" name="year" value="2010" /></td>
    </tr>		
	</table>
</form>
</body>

</html>