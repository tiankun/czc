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
    <td width="120" background="${pageContext.request.contextPath}/images/t1.jpg"><font style="position: relative; top:3px;font-weight:bold">��ᾭ�����</font></td>
    <td style="height:31px" width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Plan!xianedit.do?unit_id=${unit_id}">�滮�������</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Facility!xianedit.do?unit_id=${unit_id}">������ʩ��״</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Item!list.do?unit_id=${unit_id}">��Ŀ��</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">�¼��ϱ����</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">��ʷ����</a></font></td>		
    <td width="*">&nbsp;</td>	
  </tr>
</table>
<form action="${pageContext.request.contextPath}/admin/Economy!xiansave.do" method="post" name="form1">
  <table border="1" width="100%" class="myInput">
    <tr>
      <td colspan="4" class="myInputTitle"><strong>������Ϣ</strong>
      <input type="hidden" name="contact_id" value="${contact.id}" /><input type="hidden" name="lx_type" value="1" /></td>
    </tr> 
    <tr>
      <td class="myInputTitle">�������ܲ���</td>
      <td><input name="name" type="text" id="name" value="${contact.name}"/></td>
      <td class="myInputTitle">�����쵼</td>
      <td><input name="ling_dao" type="text" id="ling_dao" value="${contact.ling_dao}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">��ϵ��</td>
      <td><input name="lian_xi" type="text" id="lian_xi" value="${contact.lian_xi}"/></td>
      <td class="myInputTitle">��ϵ�绰</td>
      <td><input name="lianx_dianhua" type="text" id="lianx_dianhua" value="${contact.lianx_dianhua}"/></td>
    </tr>	
    <tr>
      <td class="myInputTitle">����</td>
      <td><input name="fax" type="text" id="fax" value="${contact.fax}"/></td>
      <td class="myInputTitle">�ʱ�</td>
      <td><input name="you_bian" type="text" id="you_bian" value="${contact.you_bian}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">E_mail</td>
      <td><input name="email" type="text" id="email" value="${contact.email}"/></td>
      <td class="myInputTitle">��ϵ��ַ</td>
      <td><input name="di_zhi" type="text" id="di_zhi" value="${contact.di_zhi}"/></td>
    </tr>
    
    <tr>
      <td colspan="4" class="myInputTitle"><strong>��ᾭ�����</strong>
      </td>
    </tr>	
    <tr>
      <td class="myInputTitle" width="15%">���˿�</td>
      <td width="35%">${economy.zong_ren}<span class="STYLE1">����</span></td>
      <td class="myInputTitle" width="15%">ũҵ�˿�</td>
      <td width="35%">${economy.nong}<span class="STYLE1">����</span></td>
    </tr>
    <tr>
      <td class="myInputTitle">ũ����</td>
      <td>${economy.nong_hu}<span class="STYLE1">��</span></td>
      <td class="myInputTitle">ũ���Ͷ���</td>
      <td>${economy.lao_dong}<span class="STYLE1">����</span></td>
    </tr>
    <tr>
      <td class="myInputTitle">�����</td>
      <td>${economy.zong_mianj}<span class="STYLE1">��ƽ������</span></td>
      <td class="myInputTitle">�������</td>
      <td>${economy.geng_di}<span class="STYLE1">��ƽ������</span></td>
    </tr>
    <tr>
      <td class="myInputTitle">ȫ��������ֵ</td>
      <td>${economy.zong_shengc}<span class="STYLE1">��Ԫ</span></td>
      <td class="myInputTitle">ũ�徭��������</td>
      <td>${economy.jingj_zong}<span class="STYLE1">��Ԫ</span></td>
    </tr>
    <tr>
      <td class="myInputTitle">ũ���˾�������</td>
      <td>${economy.nongm_jun}<span class="STYLE1">Ԫ</span></td>
      <td class="myInputTitle">��һ��ҵ��ֵ</td>
      <td>${economy.yi}<span class="STYLE1">��Ԫ</span></td>
    </tr>
    <tr>
      <td class="myInputTitle">�ڶ���ҵ��ֵ</td>
      <td>${economy.er}<span class="STYLE1">��Ԫ</span></td>
      <td class="myInputTitle">������ҵ��ֵ</td>
      <td>${economy.san}<span class="STYLE1">��Ԫ</span></td>
    </tr>
	<tr>
		<td width="15%" class="myInputTitle">��������פ�ؽ��������˿�</td>	
		<td width="35%">${economy.zhu_ren}<span class="STYLE1">����</span></td>
		<td width="15%" class="myInputTitle">��������פ�ؽ����������</td>	
		<td width="35%">${economy.zhu_mian}<span class="myInputTitle"><span class="STYLE1">��ƽ������</span></span></td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��������פ�ؽ����������˿�</td>	
		<td width="35%">${economy.zhu_xin}<span class="myInputTitle"><span class="STYLE1">����</span></span></td>
		<td width="15%" class="myInputTitle">����ת�Ƶ������ط��˿�</td>	
		<td width="35%">${economy.zhu_zhuan}<span class="STYLE1">����</span></td>
	</tr>
    <tr>
      <td height="49" colspan="4" valign="top"><br/>ȫ�أ������У����򻮷֣�<br/>
        <table width="100%" border="1">
          <tr>
            <td width="14%" align="center" class="myInputTitle">����</td>
            <td width="26%" align="center" class="myInputTitle">�ֵ����´�</td>
            <td width="20%" align="center" class="myInputTitle">�ǹ���</td>
            <td width="23%" align="center" class="myInputTitle">������</td>
            <td width="17%" align="center" class="myInputTitle">��</td>
          </tr>
          <tr>
            <td align="center">${economy.mycount}</td>
            <td align="center">${economy.a1}</td>
            <td align="center">${economy.a2}</td>
            <td align="center">${economy.a3}</td>
            <td align="center">${economy.a4}</td>
          </tr>
        </table>
<br/>ȫ�أ������У�С���򣨽������磩�˿ڹ�ģ���ּ�ֻ�����ͣ�<br/>	
<table width="100%" border="1">
  <tr>
    <td width="8%" rowspan="2" align="center" valign="middle" class="myInputTitle">����</td>
    <td colspan="4" align="center" valign="middle" class="myInputTitle">�˿ڹ�ģ</td>
    <td colspan="6" align="center" valign="middle" class="myInputTitle">ְ������</td>
    </tr>
  <tr>
    <td width="11%" align="center" valign="middle" class="myInputTitle">�ش��ͣ�&gt;50000�ˣ�</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">���ͣ�30001��50000�ˣ�</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">���ͣ�10001��30000�ˣ�</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">С�ͣ�&lt;=10000�ˣ�</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">ũҵ��</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">��ҵ��</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">��ó��</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">������</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">�߾��ڰ���</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">��̬԰����</td>
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
<br/>ȫ�أ������У���ɫС��������ְ�����ͣ�<br/>
<table width="100%" border="1">
  <tr>
    <td width="14%" align="center" class="myInputTitle">����</td>
    <td width="15%" align="center" class="myInputTitle">�ִ�ũҵ��</td>
    <td width="15%" align="center" class="myInputTitle">��ҵ��</td>
    <td width="14%" align="center" class="myInputTitle">��ó��</td>
    <td width="14%" align="center" class="myInputTitle">������</td>
    <td width="14%" align="center" class="myInputTitle">�߾��ڰ���</td>
    <td width="14%" align="center" class="myInputTitle">��̬԰����</td>
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
<br/>ȫ�أ������У�����ռ�λ�������<br/>
<table width="100%" border="1">
  <tr>
    <td width="8%" rowspan="2" align="center" valign="middle" class="myInputTitle">����</td>
    <td colspan="2" align="center" valign="middle" class="myInputTitle">����</td>
    <td colspan="6" align="center" valign="middle" class="myInputTitle">��������</td>
    <td colspan="3" align="center" valign="middle" class="myInputTitle">�ռ��ϵ</td>
    </tr>
  <tr>
    <td width="10%" align="center" valign="middle" class="myInputTitle">����</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">ɽ��</td>
    <td width="8%" align="center" valign="middle" class="myInputTitle">6��ˮϵ9���ԭ�����ܱ�</td>
    <td width="8%" align="center" valign="middle" class="myInputTitle">���С��س��ܱ�</td>
    <td width="8%" align="center" valign="middle" class="myInputTitle">����ˮԴ������</td>
    <td width="8%" align="center" valign="middle" class="myInputTitle">�羰��ʤ������</td>
    <td width="8%" align="center" valign="middle" class="myInputTitle">��̬�����Ա�����</td>
    <td width="8%" align="center" valign="middle" class="myInputTitle">����</td>
    <td width="8%" align="center" valign="middle" class="myInputTitle">Զ����С��سǶ�����չ</td>
    <td width="8%" align="center" valign="middle" class="myInputTitle">���С��س�10���ﷶΧ��</td>
    <td width="9%" align="center" valign="middle" class="myInputTitle">����С��سǽ�������Ƭ</td>
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
<br/>ȫ�أ������У���ׯ������<br/>
<table width="100%" border="1">
  <tr>
    <td width="50%" align="center" class="myInputTitle">���ƴ�</td>
    <td width="50%" align="center" class="myInputTitle">��Ȼ��</td>
  </tr>
  <tr>
    <td align="center">&nbsp;${tongd[0].mycount}</td>
    <td align="center">&nbsp;${tongd[1].mycount}</td>
  </tr>
</table></td>
    </tr>	
    <tr>
      <td height="49" colspan="4" align="center"><input type="submit" name="Submit" value=" �� �� " />
        &nbsp;&nbsp;
      <input type="reset" name="Submit2" value=" �� �� " /><input type="hidden" name="unit_id" value="${unit_id}" /><input type="hidden" name="year" value="${year}" /></td>
    </tr>	
	</table>
</form>

</body>
</html>