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
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Economy!xianedit.do?unit_id=${unit_id}">��ᾭ�����</a></font></td>
    <td style="height:31px" width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Plan!xianedit.do?unit_id=${unit_id}">�滮�������</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t1.jpg"><font style="position: relative; top:3px;font-weight:bold">������ʩ��״</font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Item!list.do?unit_id=${unit_id}">��Ŀ��</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">�¼��ϱ����</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">��ʷ����</a></font></td>		
    <td width="*">&nbsp;</td>	
  </tr>
</table>
<form action="${pageContext.request.contextPath}/admin/Facility!xiansave.do" method="post" name="form1">
  <table border="1" width="100%" class="myInput">
    <tr>
      <td colspan="4" class="myInputTitle"><strong>������Ϣ</strong>
      <input type="hidden" name="contact_id" value="${contact.id}" /><input type="hidden" name="lx_type" value="3" /></td>
    </tr> 
    <tr>
      <td width="15%" class="myInputTitle">���������ʩ�������ܲ���</td>
      <td width="35%"><input name="name" type="text" id="name" value="${contact.name}"/></td>
      <td width="15%" class="myInputTitle">�����쵼</td>
      <td width="35%"><input name="ling_dao" type="text" id="ling_dao" value="${contact.ling_dao}"/></td>
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
      <td height="49" colspan="4" valign="top">
	  <br/>
	  ȫ�أ������У�С����ˮ��ʩ�����������<br/>
	  <table width="100%" border="1">
        <tr>
          <td colspan="6" align="center" valign="middle" class="myInputTitle">����ˮ��</td>
          <td width="11%" rowspan="2" align="center" valign="middle" class="myInputTitle">��ˮ��ģ����������/�գ�</td>
          <td width="11%" rowspan="2" align="center" valign="middle" class="myInputTitle">�����˿ڣ����ˣ�</td>
          <td width="12%" rowspan="3" align="center" valign="middle" class="myInputTitle">�ۼ�Ͷ�ʣ���Ԫ��</td>
        </tr>
        <tr>
          <td width="11%" align="center" valign="middle" class="myInputTitle">�У���������</td>
          <td width="11%" align="center" valign="middle" class="myInputTitle">�У��������</td>
          <td width="11%" align="center" valign="middle" class="myInputTitle">�ڽ�</td>
          <td width="11%" align="center" valign="middle" class="myInputTitle">�����ڳ��С��س�</td>
          <td width="11%" align="center" valign="middle" class="myInputTitle">��</td>
          <td width="11%" align="center" valign="middle" class="myInputTitle">����</td>
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
          <td colspan="6" align="center" valign="middle" class="myInputTitle">��ˮ����</td>
          <td rowspan="2" align="center" valign="middle" class="myInputTitle">��ˮ�������ȣ����</td>
          <td rowspan="2" align="center" valign="middle" class="myInputTitle">���������ƽ�����</td>
          <td rowspan="3" align="center" valign="middle">${tongf1.zl_touzi}</td>
        </tr>
        <tr>
          <td align="center" valign="middle" class="myInputTitle">�У���������</td>
          <td align="center" valign="middle" class="myInputTitle">�У��������</td>
          <td align="center" valign="middle" class="myInputTitle">�ڽ�</td>
          <td align="center" valign="middle" class="myInputTitle">�����ڳ��С��س�</td>
          <td align="center" valign="middle" class="myInputTitle">��</td>
          <td align="center" valign="middle" class="myInputTitle">����</td>
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
<br/>ȫ�أ������У�С������ˮ������ʩ�����������<br/>
	  <table width="100%" border="1">
        <tr>
          <td colspan="6" align="center" valign="middle" class="myInputTitle">��ˮ����</td>
          <td width="15%" rowspan="2" align="center" valign="middle" class="myInputTitle">��ˮ������ģ����������/�գ�</td>
          <td width="13%" rowspan="3" align="center" valign="middle" class="myInputTitle">�ۼ�Ͷ�ʣ���Ԫ��</td>
        </tr>
        <tr>
          <td width="12%" align="center" valign="middle" class="myInputTitle">�У���������</td>
          <td width="12%" align="center" valign="middle" class="myInputTitle">�У��������</td>
          <td width="12%" align="center" valign="middle" class="myInputTitle">�ڽ�</td>
          <td width="12%" align="center" valign="middle" class="myInputTitle">�����ڳ��С��س�</td>
          <td width="12%" align="center" valign="middle" class="myInputTitle">��</td>
          <td width="12%" align="center" valign="middle" class="myInputTitle">����</td>
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
          <td colspan="6" align="center" valign="middle" class="myInputTitle">��ˮ����</td>
          <td rowspan="2" align="center" valign="middle" class="myInputTitle">��ˮ�������ȣ����</td>
          <td rowspan="3" align="center" valign="middle">${tongf2.ws_touzi}</td>
        </tr>
        <tr>
          <td align="center" valign="middle" class="myInputTitle">�У���������</td>
          <td align="center" valign="middle" class="myInputTitle">�У��������</td>
          <td align="center" valign="middle" class="myInputTitle">�ڽ�</td>
          <td align="center" valign="middle" class="myInputTitle">�����ڳ��С��س�</td>
          <td align="center" valign="middle" class="myInputTitle">��</td>
          <td align="center" valign="middle" class="myInputTitle">����</td>
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
<br/>ȫ�أ������У���������������ʩ������״��<br/>	
 	  <table width="100%" border="1">
        <tr>
          <td colspan="6" align="center" valign="middle" class="myInputTitle">����������ʩ</td>
          <td width="11%" rowspan="2" align="center" valign="middle" class="myInputTitle">�����ģ�����/�գ�</td>
          <td width="12%" rowspan="2" align="center" valign="middle" class="myInputTitle">������תվ����������</td>
          <td width="11%" rowspan="2" align="center" valign="middle" class="myInputTitle">�������˳�����������</td>
          <td width="11%" rowspan="2" align="center" valign="middle" class="myInputTitle">�ۼ�Ͷ�ʣ���Ԫ��</td>
        </tr>
        <tr>
          <td width="9%" align="center" valign="middle" class="myInputTitle">�У���������</td>
          <td width="9%" align="center" valign="middle" class="myInputTitle">�У��������</td>
          <td width="9%" align="center" valign="middle" class="myInputTitle">�ڽ�</td>
          <td width="9%" align="center" valign="middle" class="myInputTitle">�����ڳ��С��س�</td>
          <td width="9%" align="center" valign="middle" class="myInputTitle">��</td>
          <td width="10%" align="center" valign="middle" class="myInputTitle">����</td>
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
<br/>ȫ�أ������У�С���򽨳����ֵ�����ó�г�������״��<br/>
<table width="100%" border="1">
  <tr>
    <td width="20%" rowspan="2" align="center" valign="middle" class="myInputTitle">�������ֵ��������</td>
    <td width="20%" align="center" valign="middle" class="myInputTitle">�ѽ������Ƶĵ�·ϵͳ</td>
    <td width="20%" align="center" valign="middle" class="myInputTitle">���½���·</td>
    <td width="20%" align="center" valign="middle" class="myInputTitle">���������������������·</td>
    <td width="20%" align="center" valign="middle" class="myInputTitle">����</td>
  </tr>
  <tr>
    <td align="center" valign="middle">${tongf4.a}</td>
    <td align="center" valign="middle">${tongf4.b}</td>
    <td align="center" valign="middle">${tongf4.c}</td>
    <td align="center" valign="middle">${tongf4.jd_shu}</td>
  </tr>
  <tr>
    <td rowspan="2" align="center" valign="middle" class="myInputTitle">��������ó�г��������</td>
    <td align="center" valign="middle" class="myInputTitle">�ѽ��ɣ���������</td>
    <td align="center" valign="middle" class="myInputTitle">���½��г�</td>
    <td align="center" valign="middle" class="myInputTitle">��������������������г�</td>
    <td align="center" valign="middle" class="myInputTitle">����</td>
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
      <td height="49" colspan="4" align="center"><input type="submit" name="Submit" value=" �� �� " />
        &nbsp;&nbsp;
      <input type="reset" name="Submit2" value=" �� �� " /><input type="hidden" name="unit_id" value="${unit_id}" /><input type="hidden" name="year" value="${year}" /></td>
    </tr>	
	</table>
</form>

</body>
</html>