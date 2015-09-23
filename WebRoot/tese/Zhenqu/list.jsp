<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/application.js"></script>  
</head>

<body>
<form action="" method="post" name="form1">
	<input type="submit" value=" �� �� " onclick="document.form1.action='${pageContext.request.contextPath}/tese/Zhenqu!create.do'"/>
	<input type="button" value=" ɾ �� " onclick="batchDelete('${pageContext.request.contextPath}/tese/Zhenqu!delete.do','items',document.forms.ec)"/>
</form>

<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="��������פ�أ��滮�ͽ�������б�" action="${pageContext.request.contextPath}/tese/Zhenqu!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="ѡ��" style="width: 15px" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
		<ec:column property="unit_id" title="�ص�"/>
		<ec:column property="year" title="���"/>
		<ec:column property="zq_renkou" title="��������פ�أ��˿�  ����"/>
		<ec:column property="zz_renkou" title="��ס�˿�  ����"/>
		<ec:column property="cz_renkou" title="��ס�˿�  ����"/>
		<ec:column property="nm_anzhi" title="ũ����ǰ�������  ��"/>
		<ec:column property="zy_laodong" title="ũ�帻���Ͷ�����ת�ư����˿�  ��"/>
		<ec:column property="gh_mianji" title="�滮�����  k�O"/>
		<ec:column property="jc_mianji" title="���������  k�O"/>
		<ec:column property="rj_jzyongdi" title="�˾������õ����  �O/��"/>
		<ec:column property="rj_yongdi" title="�˾���ס�õ����  �O/��"/>
		<ec:column property="bq_mianji" title="�������  k�O"/>
		<ec:column property="sq_mianji" title="ɽ�����  k�O"/>
		<ec:column property="gs_guimo" title="��ˮ��ʩ��ˮ����ģ  ��/��"/>
		<ec:column property="gs_guanwang" title="��ˮ��ʩ��ˮ�������� ����"/>
		<ec:column property="gs_fwrenkou" title="��ˮ��ʩ�����˿� ����"/>
		<ec:column property="ws_guimo" title="��ˮ������ʩ��ˮ�������ģ��/��"/>
		<ec:column property="ws_guanwang" title="��ˮ������ʩ��ˮ��������   ����"/>
		<ec:column property="ws_gongyi" title="��ˮ������ʩ������"/>
		<ec:column property="ws_fwrenkou" title="��ˮ������ʩ�����˿� ����"/>
		<ec:column property="lj_guimo" title="������ʩ����������ʩ�����޺�����������  ��/��"/>
		<ec:column property="lj_zhan" title="������ʩ����������ʩ������תվ   ��"/>
		<ec:column property="lj_gongyi" title="������ʩ����������ʩ����"/>
		<ec:column property="lj_shouji" title="������ʩ����������ʩ�����ռ���"/>
		<ec:column property="lj_wuhai" title="������ʩ����������ʩ�����޺���������"/>
		<ec:column property="lj_gongce" title="������ʩ������������"/>
		<ec:column property="lj_che" title="������ʩ������������"/>
		<ec:column property="bd_rigong" title="���վ�չ�����  ǧ��ʱ/��"/>
		<ec:column property="bd_yongdi" title="���վ�õع�ģ  �O"/>
		<ec:column property="kyz_geshu" title="����վ����  ��"/>
		<ec:column property="kyz_yongdi" title="����վ�õع�ģ  �O"/>
		<ec:column property="dxj_geshi" title="���ž�����  ��"/>
		<ec:column property="dxj_yongdi" title="���ž��õع�ģ  �O"/>
		<ec:column property="gg_ptlv" title="����������ʩ���״����  %"/>
		<ec:column property="rj_ggss" title="�˾�����������ʩ�õ�  �O/��"/>
		<ec:column property="dl_midi" title="��·���ܶ�  km/k�O"/>
		<ec:column property="rj_gc" title="�˾��㳡�õ�  �O/��"/>
		<ec:column property="rj_ggtcc" title="�˾�����ͣ�����õ�  �O/��"/>
		<ec:column property="gg_lvdi" title="�����̵����  k�O"/>
		<ec:column property="ld_lv" title="�̵���  %"/>
		<ec:column property="rj_ld" title="�˾������̵�  �O/��"/>
		<ec:column property="input" title="���ʱ��"/>
		<ec:column property="����" title="����" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/tese/Zhenqu!show.do?id=${item.id}">�鿴</a>&nbsp;&nbsp;&nbsp;
			<a href="${pageContext.request.contextPath}/tese/Zhenqu!edit.do?id=${item.id}">�޸�</a>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

