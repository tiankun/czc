<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/scripts/easyui/themes/default/easyui.css">	
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>  
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/jquery.easyui.min.js"></script>		  
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" /> 
<script language="JavaScript" type="text/JavaScript">
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
</SCRIPT>   
</head>

<body>

<form action="${pageContext.request.contextPath}/tese/Zhenqu!save.do" method="post" name="form1">
    <table width="100%" border="1" cellspacing="1" cellpadding="1" class="myInput">
      <tr class="tHead">
        <td align="center" colspan="9"><strong>��������פ�أ��滮�ͽ������</strong></td>
      </tr>	
      <tr class="tHead">
        <td width="9%" align="center"><strong>���</strong></td>
        <td width="4%" align="center"><strong>���</strong></td>
        <td colspan="3" align="center"><strong>����</strong></td>
        <td width="7%" align="center"><strong>��λ</strong></td>
        <td width="20%" align="center"><strong>��״</strong></td>
        <td width="20%" align="center"><p align="center"><strong>����-</strong><strong>2015��</strong></p>        </td>
        <td width="20%" align="center"><p align="center"><strong>Զ��-</strong><strong>2030��</strong></p>        </td>
      </tr>
      <tr>
        <td rowspan="5" align="center"><strong>�˿ڹ�ģ</strong></td>
        <td align="center">1</td>
        <td colspan="3" align="center">��������פ�أ��˿�</td>
        <td align="center">����</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="zq_renkou" value="${zhenqu.zq_renkou}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="zq_renkouj" value="${zhenquj.zq_renkou}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="zq_renkouy" value="${zhenquy.zq_renkou}"/></td>
      </tr>
      <tr>
        <td align="center">2</td>
        <td colspan="3" align="center">��ס�˿�</td>
        <td align="center">����</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="zz_renkou" value="${zhenqu.zz_renkou}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="zz_renkouj" value="${zhenquj.zz_renkou}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="zz_renkouy" value="${zhenquy.zz_renkou}"/></td>
      </tr>
      <tr>
        <td align="center">3</td>
        <td colspan="3" align="center">��ס�˿�</td>
        <td align="center">����</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="cz_renkou" value="${zhenqu.cz_renkou}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="cz_renkouj" value="${zhenquj.cz_renkou}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="cz_renkouy" value="${zhenquy.cz_renkou}"/></td>
      </tr>
      <tr>
        <td align="center">4</td>
        <td colspan="3" align="center">ũ����ǰ�������</td>
        <td align="center">��</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="nm_anzhi" value="${zhenqu.nm_anzhi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="nm_anzhij" value="${zhenquj.nm_anzhi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="nm_anzhiy" value="${zhenquy.nm_anzhi}"/></td>
      </tr>
      <tr>
        <td align="center">5</td>
        <td colspan="3" align="center">ũ�帻���Ͷ�����ת�ư����˿�</td>
        <td align="center">��</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="zy_laodong" value="${zhenqu.zy_laodong}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="zy_laodongj" value="${zhenquj.zy_laodong}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="zy_laodongy" value="${zhenquy.zy_laodong}"/></td>
      </tr>
      <tr>
        <td rowspan="6" align="center"><strong>�����õ�ָ��</strong></td>
        <td align="center">6</td>
        <td colspan="3" align="center">�滮�����</td>
        <td align="center">ƽ������</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gh_mianji" value="${zhenqu.gh_mianji}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gh_mianjij" value="${zhenquj.gh_mianji}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gh_mianjiy" value="${zhenquy.gh_mianji}"/></td>
      </tr>
      <tr>
        <td align="center">7</td>
        <td colspan="3" align="center">���������</td>
        <td align="center">ƽ������</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="jc_mianji" value="${zhenqu.jc_mianji}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="jc_mianjij" value="${zhenquj.jc_mianji}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="jc_mianjiy" value="${zhenquy.jc_mianji}"/></td>
      </tr>
      <tr>
        <td align="center">8</td>
        <td colspan="3" align="center">�˾������õ����</td>
        <td align="center">ƽ����/��</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_jzyongdi" value="${zhenqu.rj_jzyongdi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_jzyongdij" value="${zhenquj.rj_jzyongdi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_jzyongdiy" value="${zhenquy.rj_jzyongdi}"/></td>
      </tr>
      <tr>
        <td align="center">9</td>
        <td colspan="3" align="center">�˾���ס�õ����</td>
        <td align="center">ƽ����/��</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_yongdi" value="${zhenqu.rj_yongdi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_yongdij" value="${zhenquj.rj_yongdi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_yongdiy" value="${zhenquy.rj_yongdi}"/></td>
      </tr>
      <tr>
        <td align="center">10</td>
        <td colspan="3" align="center">�������</td>
        <td align="center">ƽ������</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="bq_mianji" value="${zhenqu.bq_mianji}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="bq_mianjij" value="${zhenquj.bq_mianji}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="bq_mianjiy" value="${zhenquy.bq_mianji}"/></td>
      </tr>
      <tr>
        <td align="center">11</td>
        <td colspan="3" align="center">ɽ�����</td>
        <td align="center">ƽ������</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="sq_mianji" value="${zhenqu.sq_mianji}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="sq_mianjij" value="${zhenquj.sq_mianji}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="sq_mianjiy" value="${zhenquy.sq_mianji}"/></td>
      </tr>
      <tr>
        <td rowspan="20" align="center"><strong>������ʩ��ģ</strong></td>
        <td rowspan="3" align="center">12</td>
        <td width="6%" rowspan="3" align="center">��ˮ��ʩ</td>
        <td colspan="2" align="center">��ˮ����ģ</td>
        <td align="center">��/��</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gs_guimo" value="${zhenqu.gs_guimo}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gs_guimoj" value="${zhenquj.gs_guimo}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gs_guimoy" value="${zhenquy.gs_guimo}"/></td>
      </tr>
      <tr>
        <td colspan="2" align="center">��ˮ��������</td>
        <td align="center">����</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gs_guanwang" value="${zhenqu.gs_guanwang}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gs_guanwangj" value="${zhenquj.gs_guanwang}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gs_guanwangy" value="${zhenquy.gs_guanwang}"/></td>
      </tr>
      <tr>
        <td colspan="2" align="center">�����˿�</td>
        <td align="center">����</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gs_fwrenkou" value="${zhenqu.gs_fwrenkou}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gs_fwrenkouj" value="${zhenquj.gs_fwrenkou}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gs_fwrenkouy" value="${zhenquy.gs_fwrenkou}"/></td>
      </tr>
      <tr>
        <td rowspan="4" align="center">13</td>
        <td rowspan="4" align="center">��ˮ������ʩ</td>
        <td colspan="2" align="center">��ˮ�������ģ</td>
        <td align="center">��/��</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="ws_guimo" value="${zhenqu.ws_guimo}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="ws_guimoj" value="${zhenquj.ws_guimo}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="ws_guimoy" value="${zhenquy.ws_guimo}"/></td>
      </tr>
      <tr>
        <td colspan="2" align="center">��ˮ��������</td>
        <td align="center">����</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="ws_guanwang" value="${zhenqu.ws_guanwang}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="ws_guanwangj" value="${zhenquj.ws_guanwang}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="ws_guanwangy" value="${zhenquy.ws_guanwang}"/></td>
      </tr>
      <tr>
        <td colspan="2" align="center">������</td>
        <td align="center">---</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="ws_gongyi" value="${zhenqu.ws_gongyi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="ws_gongyij" value="${zhenquj.ws_gongyi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="ws_gongyiy" value="${zhenquy.ws_gongyi}"/></td>
      </tr>
      <tr>
        <td colspan="2" align="center">�����˿�</td>
        <td align="center">����</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="ws_fwrenkou" value="${zhenqu.ws_fwrenkou}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="ws_fwrenkouj" value="${zhenquj.ws_fwrenkou}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="ws_fwrenkouy" value="${zhenquy.ws_fwrenkou}"/></td>
      </tr>
      <tr>
        <td rowspan="7" align="center">14</td>
        <td rowspan="7" align="center">������ʩ</td>
        <td width="4%" rowspan="5" align="center">��������������</td>
        <td width="10%" align="center">�����޺�����������</td>
        <td align="center">��/��</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_guimo" value="${zhenqu.lj_guimo}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_guimoj" value="${zhenquj.lj_guimo}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_guimoy" value="${zhenquy.lj_guimo}"/></td>
      </tr>
      <tr>
        <td align="center">������</td>
        <td align="center">---</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_gongyi" value="${zhenqu.lj_gongyi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_gongyij" value="${zhenquj.lj_gongyi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_gongyiy" value="${zhenquy.lj_gongyi}"/></td>
      </tr>
      <tr>
        <td align="center">������תվ</td>
        <td align="center">��</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_zhan" value="${zhenqu.lj_zhan}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_zhanj" value="${zhenquj.lj_zhan}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_zhany" value="${zhenquy.lj_zhan}"/></td>
      </tr>
      <tr>
        <td align="center">�����ռ���</td>
        <td align="center">%</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_shouji" value="${zhenqu.lj_shouji}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_shoujij" value="${zhenquj.lj_shouji}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_shoujiy" value="${zhenquy.lj_shouji}"/></td>
      </tr>
      <tr>
        <td align="center">�����޺���������</td>
        <td align="center">%</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_wuhai" value="${zhenqu.lj_wuhai}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_wuhaij" value="${zhenquj.lj_wuhai}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_wuhaiy" value="${zhenquy.lj_wuhai}"/></td>
      </tr>
      <tr>
        <td rowspan="2" align="center">����</td>
        <td align="center">��������</td>
        <td align="center">��</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_gongce" value="${zhenqu.lj_gongce}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_gongcej" value="${zhenquj.lj_gongce}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_gongcey" value="${zhenquy.lj_gongce}"/></td>
      </tr>
      <tr>
        <td align="center">��������</td>
        <td align="center">��</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_che" value="${zhenqu.lj_che}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_chej" value="${zhenquj.lj_che}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="lj_chey" value="${zhenquy.lj_che}"/></td>
      </tr>
      <tr>
        <td rowspan="2" align="center">15</td>
        <td rowspan="2" align="center">���վ</td>
        <td colspan="2" align="center">�չ�����</td>
        <td align="center">ǧ��ʱ/��</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="bd_rigong" value="${zhenqu.bd_rigong}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="bd_rigongj" value="${zhenquj.bd_rigong}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="bd_rigongy" value="${zhenquy.bd_rigong}"/></td>
      </tr>
      <tr>
        <td colspan="2" align="center">�õع�ģ</td>
        <td align="center">ƽ����</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="bd_yongdi" value="${zhenqu.bd_yongdi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="bd_yongdij" value="${zhenquj.bd_yongdi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="bd_yongdiy" value="${zhenquy.bd_yongdi}"/></td>
      </tr>
      <tr>
        <td rowspan="2" align="center">16</td>
        <td rowspan="2" align="center">����վ</td>
        <td colspan="2" align="center">����</td>
        <td align="center">��</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="kyz_geshu" value="${zhenqu.kyz_geshu}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="kyz_geshuj" value="${zhenquj.kyz_geshu}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="kyz_geshuy" value="${zhenquy.kyz_geshu}"/></td>
      </tr>
      <tr>
        <td colspan="2" align="center">�õع�ģ</td>
        <td align="center">ƽ����</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="kyz_yongdi" value="${zhenqu.kyz_yongdi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="kyz_yongdij" value="${zhenquj.kyz_yongdi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="kyz_yongdiy" value="${zhenquy.kyz_yongdi}"/></td>
      </tr>
      <tr>
        <td rowspan="2" align="center">17</td>
        <td rowspan="2" align="center">���ž�</td>
        <td colspan="2" align="center">����</td>
        <td align="center">��</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="dxj_geshi" value="${zhenqu.dxj_geshi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="dxj_geshij" value="${zhenquj.dxj_geshi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="dxj_geshiy" value="${zhenquy.dxj_geshi}"/></td>
      </tr>
      <tr>
        <td colspan="2" align="center">�õع�ģ</td>
        <td align="center">ƽ����</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="dxj_yongdi" value="${zhenqu.dxj_yongdi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="dxj_yongdij" value="${zhenquj.dxj_yongdi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="dxj_yongdiy" value="${zhenquy.dxj_yongdi}"/></td>
      </tr>
      <tr>
        <td rowspan="2" align="center"><strong>����������ʩָ��</strong></td>
        <td align="center">18</td>
        <td colspan="3" align="center">����������ʩ���״����</td>
        <td align="center">%</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gg_ptlv" value="${zhenqu.gg_ptlv}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gg_ptlvj" value="${zhenquj.gg_ptlv}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gg_ptlvy" value="${zhenquy.gg_ptlv}"/></td>
      </tr>
      <tr>
        <td align="center">19</td>
        <td colspan="3" align="center">�˾�����������ʩ�õ�</td>
        <td align="center">ƽ����/��</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_ggss" value="${zhenqu.rj_ggss}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_ggssj" value="${zhenquj.rj_ggss}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_ggssy" value="${zhenquy.rj_ggss}"/></td>
      </tr>
      <tr>
        <td rowspan="3" align="center"><strong>��·�㳡�õ�ָ��</strong></td>
        <td align="center">20</td>
        <td colspan="3" align="center">��·���ܶ�</td>
        <td align="center">����/ƽ������</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="dl_midi" value="${zhenqu.dl_midi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="dl_midij" value="${zhenquj.dl_midi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="dl_midiy" value="${zhenquy.dl_midi}"/></td>
      </tr>
      <tr>
        <td align="center">21</td>
        <td colspan="3" align="center">�˾��㳡�õ�</td>
        <td align="center">ƽ����/��</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_gc" value="${zhenqu.rj_gc}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_gcj" value="${zhenquj.rj_gc}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_gcy" value="${zhenquy.rj_gc}"/></td>
      </tr>
      <tr>
        <td align="center">22</td>
        <td colspan="3" align="center">�˾�����ͣ�����õ�</td>
        <td align="center">ƽ����/��</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_ggtcc" value="${zhenqu.rj_ggtcc}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_ggtccj" value="${zhenquj.rj_ggtcc}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_ggtccy" value="${zhenquy.rj_ggtcc}"/></td>
      </tr>
      <tr>
        <td rowspan="3" align="center"><strong>�̻�ָ��</strong></td>
        <td align="center"><p>23</p>        </td>
        <td colspan="3" align="center">�����̵����</td>
        <td align="center">ƽ������</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gg_lvdi" value="${zhenqu.gg_lvdi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gg_lvdij" value="${zhenquj.gg_lvdi}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="gg_lvdiy" value="${zhenquy.gg_lvdi}"/></td>
      </tr>
      <tr>
        <td align="center">24</td>
        <td colspan="3" align="center">�̵���</td>
        <td align="center">%</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="ld_lv" value="${zhenqu.ld_lv}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="ld_lvj" value="${zhenquj.ld_lv}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="ld_lvy" value="${zhenquy.ld_lv}"/></td>
      </tr>
      <tr>
        <td align="center">25</td>
        <td colspan="3" align="center">�˾������̵�</td>
        <td align="center">ƽ����/��</td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_ld" value="${zhenqu.rj_ld}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_ldj" value="${zhenquj.rj_ld}"/></td>
        <td onmousemove="$(this).parent('tr').children('td').addClass('datagrid-row-selected');" onmouseout="$(this).parent('tr').children('td').removeClass('datagrid-row-selected');"><input type="text" name="rj_ldy" value="${zhenquy.rj_ld}"/></td>
      </tr>
      <tr>
        <td colspan="9" align="center" valign="middle" style="height:40px">
          <input type="submit" name="Submit" value=" �� �� " />
        </td>
      </tr>	  
    </table>
</form>
<c:if test="${suss=='suss'}">
<script type='text/javascript'>
alert('====�������ݳɹ���====');
</script>
</c:if>
</body>

</html>