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
    <td style="height:31px" width="120" background="${pageContext.request.contextPath}/images/t1.jpg"><font style="position: relative; top:3px;font-weight:bold">规划编制情况</font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Facility!xianedit.do?unit_id=${unit_id}">基础设施现状</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Item!list.do?unit_id=${unit_id}">项目库</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">下级上报情况</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">历史数据</a></font></td>		
    <td width="*">&nbsp;</td>	
  </tr>
</table>
<form action="${pageContext.request.contextPath}/admin/Plan!xiansave.do" method="post" name="form1">
  <table border="1" width="100%" class="myInput">
    <tr>
      <td colspan="4" class="myInputTitle"><strong>基本信息</strong>
      <input type="hidden" name="contact_id" value="${contact.id}" /><input type="hidden" name="lx_type" value="2" /></td>
    </tr> 
    <tr>
      <td width="15%" class="myInputTitle">村镇规划编制主管部门</td>
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
	  <br/>全县（区、市）乡镇域总体规划编制情况：<br/>
        <table width="100%" border="1">
          <tr>
            <td align="center" width="20%" class="myInputTitle">乡镇总数</td>
            <td align="center" width="20%" class="myInputTitle">有</td>
            <td align="center" width="20%" class="myInputTitle">无</td>
            <td align="center" width="20%" class="myInputTitle">在编</td>
            <td align="center" width="20%" class="myInputTitle">过期</td>
          </tr>
          <tr>
            <td align="center">${tonga[0].mycount}</td>
            <td align="center">&nbsp;${a.a}</td>
            <td align="center">&nbsp;${a.b}</td>
            <td align="center">&nbsp;${a.c}</td>
            <td align="center">&nbsp;${a.d}</td>
          </tr>
        </table>
	  <br/>
	  全县（区、市）乡镇政府驻地规划编制情况：<br/>
        <table width="100%" border="1">
          <tr>
            <td align="center" width="20%" class="myInputTitle">乡镇总数</td>
            <td align="center" width="20%" class="myInputTitle">有</td>
            <td align="center" width="20%" class="myInputTitle">无</td>
            <td align="center" width="20%" class="myInputTitle">在编</td>
            <td align="center" width="20%" class="myInputTitle">过期</td>
          </tr>
          <tr>
            <td align="center">${tonga[0].mycount}</td>
            <td align="center">&nbsp;${b.a}</td>
            <td align="center">&nbsp;${b.b}</td>
            <td align="center">&nbsp;${b.c}</td>
            <td align="center">&nbsp;${b.d}</td>
          </tr>
        </table>
	  <br/>
	  全县（区、市）乡镇五年近期建设规划编制情况：<br/>
        <table width="100%" border="1">
          <tr>
            <td align="center" width="20%" class="myInputTitle">乡镇总数</td>
            <td align="center" width="20%" class="myInputTitle">有</td>
            <td align="center" width="20%" class="myInputTitle">无</td>
            <td align="center" width="20%" class="myInputTitle">在编</td>
            <td align="center" width="20%" class="myInputTitle">过期</td>
          </tr>
          <tr>
            <td align="center">${tonga[0].mycount}</td>
            <td align="center">&nbsp;${c.a}</td>
            <td align="center">&nbsp;${c.b}</td>
            <td align="center">&nbsp;${c.c}</td>
            <td align="center">&nbsp;${c.d}</td>
          </tr>
        </table>
	  <br/>
	  全县（区、市）建制村规划编制情况：<br/>
        <table width="100%" border="1">
          <tr>
            <td align="center" width="20%" class="myInputTitle">建制村总数</td>
            <td align="center" width="20%" class="myInputTitle">有</td>
            <td align="center" width="20%" class="myInputTitle">无</td>
            <td align="center" width="20%" class="myInputTitle">在编</td>
            <td align="center" width="20%" class="myInputTitle">过期</td>
          </tr>
          <tr>
            <td align="center">${tonga[1].mycount}</td>
            <td align="center">&nbsp;${d.a}</td>
            <td align="center">&nbsp;${d.b}</td>
            <td align="center">&nbsp;${d.c}</td>
            <td align="center">&nbsp;${d.d}</td>
          </tr>
        </table>
	  <br/>
	  全县（区、市）自然村规划编制情况：<br/>
        <table width="100%" border="1">
          <tr>
            <td align="center" width="20%" class="myInputTitle">自然村总数</td>
            <td align="center" width="20%" class="myInputTitle">有</td>
            <td align="center" width="20%" class="myInputTitle">无</td>
            <td align="center" width="20%" class="myInputTitle">在编</td>
            <td align="center" width="20%" class="myInputTitle">过期</td>
          </tr>
          <tr>
            <td align="center">${tonga[2].mycount}</td>
            <td align="center">&nbsp;${e.a}</td>
            <td align="center">&nbsp;${e.b}</td>
            <td align="center">&nbsp;${e.c}</td>
            <td align="center">&nbsp;${e.d}</td>
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