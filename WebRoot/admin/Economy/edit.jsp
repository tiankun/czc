<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn" %>
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
    <td style="height:31px" width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Plan!edit.do?unit_id=${unit_id}">规划编制情况</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Facility!edit.do?unit_id=${unit_id}">基础设施现状</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Item!list.do?unit_id=${unit_id}">项目库</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">下级上报情况</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">历史数据</a></font></td>		
    <td width="*">&nbsp;</td>	
  </tr>
</table>
<form action="${pageContext.request.contextPath}/admin/Economy!save.do" method="post" name="form1">
  <table border="1" width="100%" class="myInput">
    <tr>
      <td colspan="4" class="myInputTitle"><strong>基本信息</strong>
      <input type="hidden" name="contact_id" value="${contact.id}" /><input type="hidden" name="lx_type" value="1" /></td>
    </tr> 
    <tr>
      <td class="myInputTitle">乡镇（街道办事处）政府名称</td>
      <td><input name="name" type="text" id="name" value="${contact.name}"/></td>
      <td class="myInputTitle">类型</td>
      <td>
        <select name="lei_xing">	
          <option value="街道办事处" <c:if test="${base_info.lei_xing=='街道办事处'}">selected</c:if>>街道办事处</option>
          <option value="城关镇" <c:if test="${base_info.lei_xing=='城关镇'}">selected</c:if>>城关镇</option>
          <option value="建制镇" <c:if test="${base_info.lei_xing=='建制镇'}">selected</c:if>>建制镇</option>
          <option value="乡" <c:if test="${base_info.lei_xing=='乡'}">selected</c:if>>乡</option>
        </select>
      </td>
    </tr>
    <tr>
      <td class="myInputTitle">乡镇领导</td>
      <td><input name="ling_dao" type="text" id="ling_dao" value="${contact.ling_dao}"/></td>
      <td class="myInputTitle">联系人</td>
      <td><input name="lian_xi" type="text" id="lian_xi" value="${contact.lian_xi}"/></td>
    </tr>	
    <tr>
      <td class="myInputTitle">联系电话</td>
      <td><input name="lianx_dianhua" type="text" id="lianx_dianhua" value="${contact.lianx_dianhua}"/></td>
      <td class="myInputTitle">传真</td>
      <td><input name="fax" type="text" id="fax" value="${contact.fax}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">邮编</td>
      <td><input name="you_bian" type="text" id="you_bian" value="${contact.you_bian}"/></td>
      <td class="myInputTitle">E_mail</td>
      <td><input name="email" type="text" id="email" value="${contact.email}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">联系地址</td>
      <td colspan="3"><input name="di_zhi" type="text" id="di_zhi" value="${contact.di_zhi}"/></td>
    </tr>
    <tr>
      <td colspan="4" class="myInputTitle"><strong>基本介绍</strong></td>
    </tr>  
    <tr>
      <td colspan="4"><textarea name="jie_shao" rows="6" style="width:100%"><c:out value="${base_info.jie_shao}" escapeXml="true"/></textarea></td>
    </tr>
    <tr>
      <td colspan="4" class="myInputTitle"><strong>社会经济情况</strong>
      <input type="hidden" name="economy_id" value="${economy.id}" /></td>
    </tr>	
    <tr>
      <td class="myInputTitle" width="15%">总人口（<span class="STYLE1">万人</span>）</td>
      <td width="35%"><input name="zong_ren" type="text" id="zong_ren"  value="${economy.zong_ren}"/></td>
      <td class="myInputTitle" width="15%">农业人口（<span class="STYLE1">万人</span>）</td>
      <td width="35%"><input name="nong" type="text" id="nong" value="${economy.nong}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">农户数（<span class="STYLE1">万户</span>）</td>
      <td><input name="nong_hu" type="text" id="nong_hu" value="${economy.nong_hu}"/></td>
      <td class="myInputTitle">农村劳动力（<span class="STYLE1">万人</span>）</td>
      <td><input name="lao_dong" type="text" id="lao_dong" value="${economy.lao_dong}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">总面积（<span class="STYLE1">万平方公里</span>）</td>
      <td><input name="zong_mianj" type="text" id="zong_mianj" value="${economy.zong_mianj}"/></td>
      <td class="myInputTitle">耕地面积（<span class="STYLE1">万平方公里</span>）</td>
      <td><input name="geng_di" type="text" id="geng_di" value="${economy.geng_di}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">全镇生产总值（<span class="STYLE1">亿元</span>）</td>
      <td><input name="zong_shengc" type="text" id="zong_shengc" value="${economy.zong_shengc}"/></td>
      <td class="myInputTitle">农村经济总收入（<span class="STYLE1">亿元</span>）</td>
      <td><input name="jingj_zong" type="text" id="jingj_zong" value="${economy.jingj_zong}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">农民人均纯收入（<span class="STYLE1">元</span>）</td>
      <td><input name="nongm_jun" type="text" id="nongm_jun" value="${economy.nongm_jun}"/></td>
      <td class="myInputTitle">第一产业产值（<span class="STYLE1">亿元</span>）</td>
      <td><input name="yi" type="text" id="yi" value="${economy.yi}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">第二产业产值（<span class="STYLE1">亿元</span>）</td>
      <td><input name="er" type="text" id="er" value="${economy.er}"/></td>
      <td class="myInputTitle">第三产业产值（<span class="STYLE1">亿元</span>）</td>
      <td><input name="san" type="text" id="san" value="${economy.san}"/></td>
    </tr>
	<tr>
		<td width="15%" class="myInputTitle">乡镇政府驻地建成区总人口（<span class="STYLE1">万人</span>）</td>	
		<td width="35%">
		<input type="text" Id="zhu_ren" name="zhu_ren" maxlength="22" dataType="Number" value="${economy.zhu_ren}"/>		</td>
		<td width="15%" class="myInputTitle">乡镇政府驻地建成区总面积（<span class="STYLE1">万平方公里</span>）</td>	
		<td width="35%">
		<input type="text" Id="zhu_mian" name="zhu_mian" maxlength="22" dataType="Number" value="${economy.zhu_mian}"/>		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">乡镇政府驻地建成区新增人口（<span class="STYLE1">万人</span>）</td>	
		<td width="35%">
		<input type="text" Id="zhu_xin" name="zhu_xin" maxlength="22" dataType="Number" value="${economy.zhu_xin}"/>		</td>
		<td width="15%" class="myInputTitle">乡镇转移到其它地方人口（<span class="STYLE1">万人</span>）</td>	
		<td width="35%">
		<input type="text" Id="zhu_zhuan" name="zhu_zhuan" maxlength="22" dataType="Number" value="${economy.zhu_zhuan}"/>		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">职能类型</td>	
		<td width="35%">
       <select name="zhi_neng">	
          <option value="农业型" <c:if test="${economy.zhi_neng=='农业型'}">selected</c:if>>农业型</option>
          <option value="工业型" <c:if test="${economy.zhi_neng=='工业型'}">selected</c:if>>工业型</option>
          <option value="商贸型" <c:if test="${economy.zhi_neng=='商贸型'}">selected</c:if>>商贸型</option>
          <option value="旅游型" <c:if test="${economy.zhi_neng=='旅游型'}">selected</c:if>>旅游型</option>
          <option value="边境口岸型" <c:if test="${economy.zhi_neng=='边境口岸型'}">selected</c:if>>边境口岸型</option>
          <option value="生态园林型" <c:if test="${economy.zhi_neng=='生态园林型'}">selected</c:if>>生态园林型</option>		  
        </select>		</td>
		<td width="15%" class="myInputTitle">是否属于210个特色小镇</td>	
		<td width="35%">
<c:if test="${economy.tese=='是'}">
        <input type="radio" name="tese" value="是" checked="checked"/>
      </c:if>
          <c:if test="${economy.tese!='是'}">
            <input type="radio" name="tese" value="是"/>
          </c:if>
        是
        <c:if test="${economy.tese=='否'}">
    <input type="radio" name="tese" value="否" checked="checked"/>
  </c:if>
  <c:if test="${economy.tese!='否'}">
    <input type="radio" name="tese" value="否"/>
  </c:if>
        否		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">特色小镇职能类型</td>	
		<td colspan="3">
          <input type="radio" name="tese_zhineng" value="现在农业型" <c:if test="${economy.tese_zhineng=='现在农业型'}">checked</c:if>/>现在农业型	
		  <input type="radio" name="tese_zhineng" value="工业型" <c:if test="${economy.tese_zhineng=='工业型'}">checked</c:if>/>工业型	
		  <input type="radio" name="tese_zhineng" value="商贸型" <c:if test="${economy.tese_zhineng=='商贸型'}">checked</c:if>/>商贸型	
		  <input type="radio" name="tese_zhineng" value="旅游型" <c:if test="${economy.tese_zhineng=='旅游型'}">checked</c:if>/>旅游型	
		  <input type="radio" name="tese_zhineng" value="边境口岸型" <c:if test="${economy.tese_zhineng=='边境口岸型'}">checked</c:if>/>边境口岸型	
		  <input type="radio" name="tese_zhineng" value="生态园林型" <c:if test="${economy.tese_zhineng=='生态园林型'}">checked</c:if>/>生态园林型			
</td>
	</tr>	
	<tr>
	  <td class="myInputTitle">乡镇空间位置地形</td>
	  <td>
<c:if test="${economy.di_xing=='坝区'}">
        <input type="radio" name="di_xing" value="坝区" checked="checked"/>
      </c:if>
          <c:if test="${economy.di_xing!='坝区'}">
            <input type="radio" name="di_xing" value="坝区"/>
          </c:if>
        坝区
        <c:if test="${economy.di_xing=='山区'}">
    <input type="radio" name="di_xing" value="山区" checked="checked"/>
  </c:if>
  <c:if test="${economy.di_xing!='山区'}">
    <input type="radio" name="di_xing" value="山区"/>
  </c:if>
        山区			  
</td>
		<td class="myInputTitle">城镇空间关系</td>
		<td>
       <select name="kong_jian">	
          <option value="远离城市、县城独立发展" <c:if test="${economy.kong_jian=='远离城市、县城独立发展'}">selected</c:if>>远离城市、县城独立发展</option>
          <option value="城市、县城周边10公里范围内" <c:if test="${economy.kong_jian=='城市、县城周边10公里范围内'}">selected</c:if>>城市、县城周边10公里范围内</option>
          <option value="与城市、县城建成区连片" <c:if test="${economy.kong_jian=='与城市、县城建成区连片'}">selected</c:if>>与城市、县城建成区连片</option>	  
        </select></td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">乡镇空间位置特殊区域（可多选）</td>	
		<td colspan="3">
		<input type="checkbox" name="te_shu" value="a" <c:if test="${fn:contains(economy.te_shu,'a')}">checked</c:if>/>属6大水系9大高原湖泊周边
		<input type="checkbox" name="te_shu" value="b" <c:if test="${fn:contains(economy.te_shu,'b')}">checked</c:if>/>属城市、县城周边
		<input type="checkbox" name="te_shu" value="c" <c:if test="${fn:contains(economy.te_shu,'c')}">checked</c:if>/>属引用水源保护区
		<input type="checkbox" name="te_shu" value="d" <c:if test="${fn:contains(economy.te_shu,'d')}">checked</c:if>/>属风景名胜保护区
		<input type="checkbox" name="te_shu" value="e" <c:if test="${fn:contains(economy.te_shu,'e')}">checked</c:if>/>属生物多样性保护区
		<input type="checkbox" name="te_shu" value="f" <c:if test="${fn:contains(economy.te_shu,'f')}">checked</c:if>/>其他
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