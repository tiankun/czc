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
    <td width="120" background="${pageContext.request.contextPath}/images/t1.jpg"><font style="position: relative; top:3px;font-weight:bold">��ᾭ�����</font></td>
    <td style="height:31px" width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Plan!edit.do?unit_id=${unit_id}">�滮�������</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Facility!edit.do?unit_id=${unit_id}">������ʩ��״</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Item!list.do?unit_id=${unit_id}">��Ŀ��</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">�¼��ϱ����</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">��ʷ����</a></font></td>		
    <td width="*">&nbsp;</td>	
  </tr>
</table>
<form action="${pageContext.request.contextPath}/admin/Economy!save.do" method="post" name="form1">
  <table border="1" width="100%" class="myInput">
    <tr>
      <td colspan="4" class="myInputTitle"><strong>������Ϣ</strong>
      <input type="hidden" name="contact_id" value="${contact.id}" /><input type="hidden" name="lx_type" value="1" /></td>
    </tr> 
    <tr>
      <td class="myInputTitle">���򣨽ֵ����´�����������</td>
      <td><input name="name" type="text" id="name" value="${contact.name}"/></td>
      <td class="myInputTitle">����</td>
      <td>
        <select name="lei_xing">	
          <option value="�ֵ����´�" <c:if test="${base_info.lei_xing=='�ֵ����´�'}">selected</c:if>>�ֵ����´�</option>
          <option value="�ǹ���" <c:if test="${base_info.lei_xing=='�ǹ���'}">selected</c:if>>�ǹ���</option>
          <option value="������" <c:if test="${base_info.lei_xing=='������'}">selected</c:if>>������</option>
          <option value="��" <c:if test="${base_info.lei_xing=='��'}">selected</c:if>>��</option>
        </select>
      </td>
    </tr>
    <tr>
      <td class="myInputTitle">�����쵼</td>
      <td><input name="ling_dao" type="text" id="ling_dao" value="${contact.ling_dao}"/></td>
      <td class="myInputTitle">��ϵ��</td>
      <td><input name="lian_xi" type="text" id="lian_xi" value="${contact.lian_xi}"/></td>
    </tr>	
    <tr>
      <td class="myInputTitle">��ϵ�绰</td>
      <td><input name="lianx_dianhua" type="text" id="lianx_dianhua" value="${contact.lianx_dianhua}"/></td>
      <td class="myInputTitle">����</td>
      <td><input name="fax" type="text" id="fax" value="${contact.fax}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">�ʱ�</td>
      <td><input name="you_bian" type="text" id="you_bian" value="${contact.you_bian}"/></td>
      <td class="myInputTitle">E_mail</td>
      <td><input name="email" type="text" id="email" value="${contact.email}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">��ϵ��ַ</td>
      <td colspan="3"><input name="di_zhi" type="text" id="di_zhi" value="${contact.di_zhi}"/></td>
    </tr>
    <tr>
      <td colspan="4" class="myInputTitle"><strong>��������</strong></td>
    </tr>  
    <tr>
      <td colspan="4"><textarea name="jie_shao" rows="6" style="width:100%"><c:out value="${base_info.jie_shao}" escapeXml="true"/></textarea></td>
    </tr>
    <tr>
      <td colspan="4" class="myInputTitle"><strong>��ᾭ�����</strong>
      <input type="hidden" name="economy_id" value="${economy.id}" /></td>
    </tr>	
    <tr>
      <td class="myInputTitle" width="15%">���˿ڣ�<span class="STYLE1">����</span>��</td>
      <td width="35%"><input name="zong_ren" type="text" id="zong_ren"  value="${economy.zong_ren}"/></td>
      <td class="myInputTitle" width="15%">ũҵ�˿ڣ�<span class="STYLE1">����</span>��</td>
      <td width="35%"><input name="nong" type="text" id="nong" value="${economy.nong}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">ũ������<span class="STYLE1">��</span>��</td>
      <td><input name="nong_hu" type="text" id="nong_hu" value="${economy.nong_hu}"/></td>
      <td class="myInputTitle">ũ���Ͷ�����<span class="STYLE1">����</span>��</td>
      <td><input name="lao_dong" type="text" id="lao_dong" value="${economy.lao_dong}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">�������<span class="STYLE1">��ƽ������</span>��</td>
      <td><input name="zong_mianj" type="text" id="zong_mianj" value="${economy.zong_mianj}"/></td>
      <td class="myInputTitle">���������<span class="STYLE1">��ƽ������</span>��</td>
      <td><input name="geng_di" type="text" id="geng_di" value="${economy.geng_di}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">ȫ��������ֵ��<span class="STYLE1">��Ԫ</span>��</td>
      <td><input name="zong_shengc" type="text" id="zong_shengc" value="${economy.zong_shengc}"/></td>
      <td class="myInputTitle">ũ�徭�������루<span class="STYLE1">��Ԫ</span>��</td>
      <td><input name="jingj_zong" type="text" id="jingj_zong" value="${economy.jingj_zong}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">ũ���˾������루<span class="STYLE1">Ԫ</span>��</td>
      <td><input name="nongm_jun" type="text" id="nongm_jun" value="${economy.nongm_jun}"/></td>
      <td class="myInputTitle">��һ��ҵ��ֵ��<span class="STYLE1">��Ԫ</span>��</td>
      <td><input name="yi" type="text" id="yi" value="${economy.yi}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">�ڶ���ҵ��ֵ��<span class="STYLE1">��Ԫ</span>��</td>
      <td><input name="er" type="text" id="er" value="${economy.er}"/></td>
      <td class="myInputTitle">������ҵ��ֵ��<span class="STYLE1">��Ԫ</span>��</td>
      <td><input name="san" type="text" id="san" value="${economy.san}"/></td>
    </tr>
	<tr>
		<td width="15%" class="myInputTitle">��������פ�ؽ��������˿ڣ�<span class="STYLE1">����</span>��</td>	
		<td width="35%">
		<input type="text" Id="zhu_ren" name="zhu_ren" maxlength="22" dataType="Number" value="${economy.zhu_ren}"/>		</td>
		<td width="15%" class="myInputTitle">��������פ�ؽ������������<span class="STYLE1">��ƽ������</span>��</td>	
		<td width="35%">
		<input type="text" Id="zhu_mian" name="zhu_mian" maxlength="22" dataType="Number" value="${economy.zhu_mian}"/>		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��������פ�ؽ����������˿ڣ�<span class="STYLE1">����</span>��</td>	
		<td width="35%">
		<input type="text" Id="zhu_xin" name="zhu_xin" maxlength="22" dataType="Number" value="${economy.zhu_xin}"/>		</td>
		<td width="15%" class="myInputTitle">����ת�Ƶ������ط��˿ڣ�<span class="STYLE1">����</span>��</td>	
		<td width="35%">
		<input type="text" Id="zhu_zhuan" name="zhu_zhuan" maxlength="22" dataType="Number" value="${economy.zhu_zhuan}"/>		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">ְ������</td>	
		<td width="35%">
       <select name="zhi_neng">	
          <option value="ũҵ��" <c:if test="${economy.zhi_neng=='ũҵ��'}">selected</c:if>>ũҵ��</option>
          <option value="��ҵ��" <c:if test="${economy.zhi_neng=='��ҵ��'}">selected</c:if>>��ҵ��</option>
          <option value="��ó��" <c:if test="${economy.zhi_neng=='��ó��'}">selected</c:if>>��ó��</option>
          <option value="������" <c:if test="${economy.zhi_neng=='������'}">selected</c:if>>������</option>
          <option value="�߾��ڰ���" <c:if test="${economy.zhi_neng=='�߾��ڰ���'}">selected</c:if>>�߾��ڰ���</option>
          <option value="��̬԰����" <c:if test="${economy.zhi_neng=='��̬԰����'}">selected</c:if>>��̬԰����</option>		  
        </select>		</td>
		<td width="15%" class="myInputTitle">�Ƿ�����210����ɫС��</td>	
		<td width="35%">
<c:if test="${economy.tese=='��'}">
        <input type="radio" name="tese" value="��" checked="checked"/>
      </c:if>
          <c:if test="${economy.tese!='��'}">
            <input type="radio" name="tese" value="��"/>
          </c:if>
        ��
        <c:if test="${economy.tese=='��'}">
    <input type="radio" name="tese" value="��" checked="checked"/>
  </c:if>
  <c:if test="${economy.tese!='��'}">
    <input type="radio" name="tese" value="��"/>
  </c:if>
        ��		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��ɫС��ְ������</td>	
		<td colspan="3">
          <input type="radio" name="tese_zhineng" value="����ũҵ��" <c:if test="${economy.tese_zhineng=='����ũҵ��'}">checked</c:if>/>����ũҵ��	
		  <input type="radio" name="tese_zhineng" value="��ҵ��" <c:if test="${economy.tese_zhineng=='��ҵ��'}">checked</c:if>/>��ҵ��	
		  <input type="radio" name="tese_zhineng" value="��ó��" <c:if test="${economy.tese_zhineng=='��ó��'}">checked</c:if>/>��ó��	
		  <input type="radio" name="tese_zhineng" value="������" <c:if test="${economy.tese_zhineng=='������'}">checked</c:if>/>������	
		  <input type="radio" name="tese_zhineng" value="�߾��ڰ���" <c:if test="${economy.tese_zhineng=='�߾��ڰ���'}">checked</c:if>/>�߾��ڰ���	
		  <input type="radio" name="tese_zhineng" value="��̬԰����" <c:if test="${economy.tese_zhineng=='��̬԰����'}">checked</c:if>/>��̬԰����			
</td>
	</tr>	
	<tr>
	  <td class="myInputTitle">����ռ�λ�õ���</td>
	  <td>
<c:if test="${economy.di_xing=='����'}">
        <input type="radio" name="di_xing" value="����" checked="checked"/>
      </c:if>
          <c:if test="${economy.di_xing!='����'}">
            <input type="radio" name="di_xing" value="����"/>
          </c:if>
        ����
        <c:if test="${economy.di_xing=='ɽ��'}">
    <input type="radio" name="di_xing" value="ɽ��" checked="checked"/>
  </c:if>
  <c:if test="${economy.di_xing!='ɽ��'}">
    <input type="radio" name="di_xing" value="ɽ��"/>
  </c:if>
        ɽ��			  
</td>
		<td class="myInputTitle">����ռ��ϵ</td>
		<td>
       <select name="kong_jian">	
          <option value="Զ����С��سǶ�����չ" <c:if test="${economy.kong_jian=='Զ����С��سǶ�����չ'}">selected</c:if>>Զ����С��سǶ�����չ</option>
          <option value="���С��س��ܱ�10���ﷶΧ��" <c:if test="${economy.kong_jian=='���С��س��ܱ�10���ﷶΧ��'}">selected</c:if>>���С��س��ܱ�10���ﷶΧ��</option>
          <option value="����С��سǽ�������Ƭ" <c:if test="${economy.kong_jian=='����С��سǽ�������Ƭ'}">selected</c:if>>����С��سǽ�������Ƭ</option>	  
        </select></td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">����ռ�λ���������򣨿ɶ�ѡ��</td>	
		<td colspan="3">
		<input type="checkbox" name="te_shu" value="a" <c:if test="${fn:contains(economy.te_shu,'a')}">checked</c:if>/>��6��ˮϵ9���ԭ�����ܱ�
		<input type="checkbox" name="te_shu" value="b" <c:if test="${fn:contains(economy.te_shu,'b')}">checked</c:if>/>�����С��س��ܱ�
		<input type="checkbox" name="te_shu" value="c" <c:if test="${fn:contains(economy.te_shu,'c')}">checked</c:if>/>������ˮԴ������
		<input type="checkbox" name="te_shu" value="d" <c:if test="${fn:contains(economy.te_shu,'d')}">checked</c:if>/>���羰��ʤ������
		<input type="checkbox" name="te_shu" value="e" <c:if test="${fn:contains(economy.te_shu,'e')}">checked</c:if>/>����������Ա�����
		<input type="checkbox" name="te_shu" value="f" <c:if test="${fn:contains(economy.te_shu,'f')}">checked</c:if>/>����
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