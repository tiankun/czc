<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tld/fmt.tld" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />   
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>     
<head>
<style type="text/css">
.STYLE1 {
	COLOR: #ff0000;
	font-weight: bold
}
</style>
<script language="JavaScript" >
function mySubmit(){
if(Validator.Validate(document.form1,3)){
var biao_shi = parent.document.getElementById("biao_shi").value;
	    document.form1.action="${pageContext.request.contextPath}/item/Nitem_rubbish!shenhe.do?biao_shi="+biao_shi+"";
        document.form1.submit();
}
}		
</script>
</head>
<body>
	<input type="hidden" Id="guan_li" name="guan_li" value="${user.guan_li}"/>
	<input type="hidden" Id="area" name="area" value="${user.guan_li}"/>
	<input type="hidden" Id="id" name="id" value="${nitem_rubbish.id}"/>
<table border="1" width="100%" class="myInput">
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>�����ڽ���Ŀ������Ϣ</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��Ŀ����</td>	
		<td width="35%" colspan="3">${nitem_rubbish.name}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��Ŀ��ϸ��ַ</td>
		<td width="85%" colspan="3">${nitem_rubbish.quan_ming}&nbsp;${nitem_rubbish.dizhi}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��Ŀ���</td>	
		<td width="35%">${nitem_rubbish.num}
		</td>
		<td width="15%" class="myInputTitle">�滮��������</td>	
		<td width="35%">${nitem_rubbish.gui_nian}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��Ŀ����</td>	
		<td width="35%">${nitem_rubbish.xingzhi}
		</td>
		<td width="15%" class="myInputTitle">��Ŀ����</td>	
		<td width="35%">
		    <a href="${pageContext.request.contextPath}/item/Nitem_yue!uploadList.do?type=3&item_id=${nitem_rubbish.id}">�鿴�±�</a>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">������Ӫģʽ</td>	
		<td width="35%">${nitem_rubbish.jian_mo}&nbsp;&nbsp;&nbsp;&nbsp;${nitem_rubbish.qita_moshi}</td>
		<td width="15%" class="myInputTitle">���������<span class="STYLE1">ƽ������</span>��</td>	
		<td width="35%">${nitem_rubbish.fw_mianji}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">����Χ</td>	
		<td width="35%" colspan="3">${nitem_rubbish.fw_fanwei}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��������ˮϵ��</td>	
		<td width="35%">${nitem_rubbish.shuixi}
		</td>
		<td width="15%" class="myInputTitle">�������򣨺�����</td>	
		<td width="35%">${nitem_rubbish.hupo}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�����˿ڣ����ڣ���<span class="STYLE1">����</span>��</td>	
		<td width="35%">${nitem_rubbish.fwrk_jinqi}
		</td>
		<td width="15%" class="myInputTitle">�����˿ڣ�Զ�ڣ���<span class="STYLE1">����</span>��</td>	
		<td width="35%">${nitem_rubbish.fwrk_yuanqi}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�������ޣ����ڣ�</td>	
		<td width="35%">${nitem_rubbish.fwnx_jinqi}
		</td>
		<td width="15%" class="myInputTitle">�������ޣ�Զ�ڣ�</td>	
		<td width="35%">${nitem_rubbish.fwnx_yuanqi}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��ƹ�ģ�����ڣ���<span class="STYLE1">��/��</span>��</td>	
		<td width="35%">${nitem_rubbish.clgm_jinqi}
		</td>
		<td width="15%" class="myInputTitle">��ƹ�ģ��Զ�ڣ���<span class="STYLE1">��/��</span>��</td>	
		<td width="35%">${nitem_rubbish.clgm_yuanqi}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">����������</td>	
		<td width="35%">
		${nitem_rubbish.laji_gongyi}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��תվ��ƹ�ģ��<span class="STYLE1">��/��</span>��</td>	
		<td width="35%">${nitem_rubbish.zhong_mo}
		</td>
		<td width="15%" class="myInputTitle">��Һ������</td>	
		<td width="35%">${fn:substring(nitem_rubbish.lvye_gongyi,1,fn:length(nitem_rubbish.lvye_gongyi)-1)}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">������ʩ��<span class="STYLE1">��</span>��</td>	
		<td width="35%">${nitem_rubbish.yun_sheshi}
		</td>
		<td width="15%" class="myInputTitle">�������䳵��<span class="STYLE1">��</span>��</td>	
		<td width="35%">${nitem_rubbish.yun_car}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">������������</td>	
		<td width="35%" colspan="3">${fn:substring(nitem_rubbish.xiang_type,1,fn:length(nitem_rubbish.xiang_type)-1)}
		</td>
	</tr>
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>��ĿͶ�����</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��������Ͷ�ʣ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%" colspan="3">${nitem_rubbish.zong_touzi}
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">���Ҳ�����<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">${nitem_rubbish.guo_bu}
		</td>
		<td width="15%" class="myInputTitle">ʡ��������<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">${nitem_rubbish.sheng_bu}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�ط����ף�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">${nitem_rubbish.di_pei}
		</td>
		<td width="15%" class="myInputTitle">�Գ<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">${nitem_rubbish.zi_chou}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">����ֱ�ӷѣ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">${nitem_rubbish.gong_zhi}
		</td>
		<td width="15%" class="myInputTitle">���̼�ӷѣ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">${nitem_rubbish.gong_jian}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">����Ԥ���ѣ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">${nitem_rubbish.gong_yu}
		</td>
		<td width="15%" class="myInputTitle">�����ڴ�����Ϣ��<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">${nitem_rubbish.jian_li}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�̵������ʽ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">${nitem_rubbish.pu_liu}
		</td>
		<td width="15%" class="myInputTitle">ˮ��Ͷ�ʣ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">${nitem_rubbish.shui_touzi}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">���׹�����<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%" colspan="3">${nitem_rubbish.guan_chang}
    </tr>
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>ʵ���ʽ��´����</strong>
		</td>
	</tr>
    <tr>
		<td width="15%" class="myInputTitle">Ŀǰʵ�ʵ�λ���ʽ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">${zijin.dao_zijin}
		</td>
		<td width="15%" class="myInputTitle">��λ�ʣ�<span class="STYLE1">ʵ��/Ԥ��</span>��</td>	
		<td width="35%">
		<c:if test="${!empty nitem_rubbish.zong_touzi&&nitem_rubbish.zong_touzi!=0}">
		<fmt:formatNumber type="number" pattern="#.##"><c:out value="${(zijin.dao_zijin+0.000000000001) div nitem_rubbish.zong_touzi}"></c:out></fmt:formatNumber>
		</c:if>
		</td>
	</tr>
    <tr>
		<td width="15%" class="myInputTitle">���Ҳ�����λ�ʽ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">${zijin.zhong_zijin}
		</td>
		<td width="15%" class="myInputTitle">��λ�ʣ�<span class="STYLE1">ʵ��/Ԥ��</span>��</td>	
		<td width="35%">
		<c:if test="${!empty nitem_rubbish.guo_bu&&nitem_rubbish.guo_bu!=0}">
		<fmt:formatNumber type="number" pattern="#.##"><c:out value="${(zijin.zhong_zijin+0.000000000001) div nitem_rubbish.guo_bu}"></c:out></fmt:formatNumber>
		</c:if>
		</td>
	</tr>
    <tr>
		<td width="15%" class="myInputTitle">ʡ��������λ�ʽ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">${zijin.sheng_zijin}
		</td>
		<td width="15%" class="myInputTitle">��λ�ʣ�<span class="STYLE1">ʵ��/Ԥ��</span>��</td>	
		<td width="35%">
		<c:if test="${!empty nitem_rubbish.sheng_bu&&nitem_rubbish.sheng_bu!=0}">
		<fmt:formatNumber type="number" pattern="#.##"><c:out value="${(zijin.sheng_zijin+0.000000000001) div nitem_rubbish.sheng_bu}"></c:out></fmt:formatNumber>
		</c:if>
		</td>
	</tr>
    <tr>
		<td width="15%" class="myInputTitle">�ط���λ�ʽ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">${zijin.difang_zijin}
		</td>
		<td width="15%" class="myInputTitle">��λ�ʣ�<span class="STYLE1">ʵ��/Ԥ��</span>��</td>	
		<td width="35%">
		<c:if test="${!empty nitem_rubbish.di_pei&&nitem_rubbish.di_pei!=0}">
		<fmt:formatNumber type="number" pattern="#.##"><c:out value="${(zijin.difang_zijin+0.000000000001) div nitem_rubbish.di_pei}"></c:out></fmt:formatNumber>
		</c:if>
		</td>
	</tr>
	<!-- 
    <tr>
		<td width="15%" class="myInputTitle">�ؼ�������λ�ʽ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">${zijin.xian_zijin}
		</td>
		<td width="15%" class="myInputTitle">��λ�ʣ�<span class="STYLE1">ʵ��/Ԥ��</span>��</td>	
		<td width="35%">
		<c:if test="${!empty nitem_rubbish.zong_touzi&&nitem_rubbish.zong_touzi!=0}">
		<fmt:formatNumber type="number" pattern="#.##"><c:out value="${(zijin.dao_zijin+0.000000000001) div nitem_rubbish.zong_touzi}"></c:out></fmt:formatNumber>
		</c:if>
		</td>
	</tr>
	 -->
    <tr>
		<td width="15%" class="myInputTitle">�Գﵽλ�ʽ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">${zijin.zi_zijin}
		</td>
		<td width="15%" class="myInputTitle">��λ�ʣ�<span class="STYLE1">ʵ��/Ԥ��</span>��</td>	
		<td width="35%">
		<c:if test="${!empty nitem_rubbish.zi_chou&&nitem_rubbish.zi_chou!=0}">
		<fmt:formatNumber type="number" pattern="#.##"><c:out value="${(zijin.zi_zijin+0.000000000001) div nitem_rubbish.zi_chou}"></c:out></fmt:formatNumber>
		</c:if>
		</td>
	</tr>
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>���̿�չ���</strong>
		</td>
	</tr>
    <tr>
		<td width="15%" class="myInputTitle">���������ĺ�</td>	
		<td width="35%">${nitem_rubbish.keyan_num}
		   <c:if test="${!empty nitem_rubbish.keyan_num_year&&nitem_rubbish.keyan_num_year!=''}">
		   ��${nitem_rubbish.keyan_num_year}��
		   </c:if>${nitem_rubbish.keyan_num_order}��
		</td>
		<td width="15%" class="myInputTitle">���б��Ƶ�λ</td>	
		<td width="35%">${nitem_rubbish.keyan_com}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">����������ģ��<span class="STYLE1">��/��</span>��</td>	
		<td width="35%">���ڣ�${nitem_rubbish.keyan_jinqi}&nbsp;&nbsp;Զ�ڣ�${nitem_rubbish.keyan_yuanqi}
		</td>
		<td width="15%" class="myInputTitle">��������ʱ��</td>	
		<td width="35%">${nitem_rubbish.keyan_date}
		</td>
	</tr>
	<c:if test="${not empty keyan}">
	<tr>
		<td width="15%" class="myInputTitle">������������</td>
		<td width="35%" class="myInputTitle" colspan="3">
			<table>
				<c:forEach items="${keyan}" var="item" varStatus="i">
				<tr>
					<td align="center" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
					<td class="myInputTitle" width="80%">
					<a href="${pageContext.request.contextPath}/upFile/file/${nitem_rubbish.guan_li}/${item.path}" target="_blank">
					<font color="#113965">${item.file_name}</font></a></td>
				</tr>
				</c:forEach>
			</table>
		</td>
	</tr>
	</c:if>
	<tr>
		<td width="15%" class="myInputTitle">��������Ͷ�ʣ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">${nitem_rubbish.pi_touzi}
		</td>
		<td width="15%" class="myInputTitle">���������ĺ�</td>	
		<td width="35%">${nitem_rubbish.chu_num}
		   <c:if test="${!empty nitem_rubbish.chu_num_year&&nitem_rubbish.chu_num_year!=''}">
		   ��${nitem_rubbish.chu_num_year}��
		   </c:if>${nitem_rubbish.chu_num_order}��
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">������Ƶ�λ</td>	
		<td width="35%">${nitem_rubbish.chu_com}
		</td>
		<td width="15%" class="myInputTitle">��������ʱ��</td>	
		<td width="35%">${nitem_rubbish.chu_date}
		</td>
	</tr>
	<c:if test="${not empty chushe}">
	<tr>
		<td width="15%" class="myInputTitle">������������</td>
		<td width="35%" class="myInputTitle" colspan="3">
			<table>
				<c:forEach items="${chushe}" var="item" varStatus="i">
				<tr>
					<td align="center" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
					<td class="myInputTitle" width="80%">
					<a href="${pageContext.request.contextPath}/upFile/file/${nitem_rubbish.guan_li}/${item.path}" target="_blank">
					<font color="#113965">${item.file_name}</font></a></td>
				</tr>
				</c:forEach>
			</table>
		</td>
	</tr>
	</c:if>
	<tr>
		<td width="15%" class="myInputTitle">ʵʩ�����ĺ�</td>	
		<td width="35%">${nitem_rubbish.shi_num}
		   <c:if test="${!empty nitem_rubbish.shi_num_year&&nitem_rubbish.shi_num_year!=''}">
		   ��${nitem_rubbish.shi_num_year}��
		   </c:if>${nitem_rubbish.shi_num_order}��
		</td>
		<td width="15%" class="myInputTitle">ʵʩ�������Ƶ�λ</td>	
		<td width="35%">${nitem_rubbish.shi_com}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">ʵʩ��������ʱ��</td>	
		<td width="35%">${nitem_rubbish.shi_date}
		</td>
		<td width="15%" class="myInputTitle">��Ŀ��������</td>	
		<td width="35%">${nitem_rubbish.nianxian_begin}--${nitem_rubbish.nianxian_end}
		</td>
	</tr>
	<c:if test="${not empty shishi}">
	<tr>
		<td width="15%" class="myInputTitle">ʩ����������</td>
		<td width="35%" class="myInputTitle" colspan="3">
			<table>
				<c:forEach items="${shishi}" var="item" varStatus="i">
				<tr>
					<td align="center" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
					<td class="myInputTitle" width="80%">
					<a href="${pageContext.request.contextPath}/upFile/file/${nitem_rubbish.guan_li}/${item.path}" target="_blank">
					<font color="#113965">${item.file_name}</font></a></td>
				</tr>
				</c:forEach>
			</table>
		</td>
	</tr>
	</c:if>
	<tr>
		<td width="15%" class="myInputTitle">ʩ��ͼ���Ƶ�λ</td>	
		<td width="35%">${nitem_rubbish.shigong_com}
		</td>
		<td width="15%" class="myInputTitle">ʩ�����֤���</td>	
		<td width="35%">${nitem_rubbish.shigong_num}
		   <c:if test="${!empty nitem_rubbish.shigong_num_year&&nitem_rubbish.shigong_num_year!=''}">
		   ��${nitem_rubbish.shigong_num_year}��
		   </c:if>${nitem_rubbish.shigong_num_order}��
		</td>
	</tr>
	<c:if test="${not empty shigong}">
	<tr>
		<td width="15%" class="myInputTitle">�շѸ���</td>
		<td width="35%" class="myInputTitle" colspan="3">
			<table>
				<c:forEach items="${shigong}" var="item" varStatus="i">
				<tr>
					<td align="center" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
					<td class="myInputTitle" width="80%">
					<a href="${pageContext.request.contextPath}/upFile/file/${nitem_rubbish.guan_li}/${item.path}" target="_blank">
					<font color="#113965">${item.file_name}</font></a></td>
				</tr>
				</c:forEach>
			</table>
		</td>
	</tr>
	</c:if>
	<tr>
		<td width="15%" class="myInputTitle">���̿���ʱ��</td>	
		<td width="35%">${nitem_rubbish.item_begin}
		</td>
		<td width="15%" class="myInputTitle">�Ƿ񿢹�</td>	
		<td width="35%">${nitem_rubbish.jungong}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��������</td>	
		<td width="35%" colspan="3">${nitem_rubbish.jungong_date}
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��Ŀ�����շѱ�׼</td>	
		<td width="35%">${nitem_rubbish.shou_biao}
		</td>
		<td width="15%" class="myInputTitle">�շ��ĺ�</td>	
		<td width="35%">
		${nitem_rubbish.shou_num}
		   <c:if test="${!empty nitem_rubbish.shou_num_year&&nitem_rubbish.shou_num_year!=''}">
		   ��${nitem_rubbish.shou_num_year}��
		   </c:if>${nitem_rubbish.shou_num_order}��
		</td>
	</tr>
	<c:if test="${not empty shoufei}">
	<tr>
		<td width="15%" class="myInputTitle">�շѸ���</td>
		<td width="35%" class="myInputTitle" colspan="3">
			<table>
				<c:forEach items="${shoufei}" var="item" varStatus="i">
				<tr>
					<td align="center" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
					<td class="myInputTitle" width="80%">
					<a href="${pageContext.request.contextPath}/upFile/file/${nitem_rubbish.guan_li}/${item.path}" target="_blank">
					<font color="#113965">${item.file_name}</font></a></td>
				</tr>
				</c:forEach>
			</table>
		</td>
	</tr>
	</c:if>
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>��Ŀҵ����Ϣ</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��Ŀҵ����λ</td>	
		<td width="35%" colspan="3">${nitem_rubbish.yezhu_com}
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">���˴���</td>	
		<td width="35%">${nitem_rubbish.fa_ren}
		</td>
		<td width="15%" class="myInputTitle">������ϵ�绰</td>	
		<td width="35%">${nitem_rubbish.fa_phone}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��Ŀ������</td>	
		<td width="35%">${nitem_rubbish.fz_name}
		</td>
		<td width="15%" class="myInputTitle">��Ŀ������ְ��</td>	
		<td width="35%">${nitem_rubbish.fz_post}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��ϵ�绰</td>	
		<td width="35%" colspan="3">${nitem_rubbish.fz_phone}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">����λ</td>	
		<td width="35%">${nitem_rubbish.jl_unit}
		</td>
		<td width="15%" class="myInputTitle">��Ƶ�λ</td>	
		<td width="35%">${nitem_rubbish.sj_unit}
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�б굥λ</td>	
		<td width="35%">${nitem_rubbish.zb_unit}
		</td>
		<td width="15%" class="myInputTitle">ʩ����λ</td>	
		<td width="35%">${nitem_rubbish.sg_unit}
		</td>
	</tr>
	</table>
	
	<c:if test="${fn:length(fn:split(user.biao_shi,'_'))==1}">
   <form action="${pageContext.request.contextPath}/item/Nitem_rubbish!shenhe.do" method="post" name="form1" id="form1">
	<input type="hidden" Id="id" name="id" value="${nitem_rubbish.id}"/>
	<input type="hidden" Id="biaoshi" name="biaoshi" value="�Ѷ�"/>
      <table border="1" width="100%" class="myInput">
         <tr>
            <td colspan="4" class="myInputTitle">���</td>
         </tr>
         <tr>
         <!--
            <td width="15%" class="myInputTitle">��ʶ</td>
            <td width="35%">
                �Ѷ�<input type="radio" Id="biaoshi" name="biaoshi" value="�Ѷ�" dataType="Group" <c:if test="${nitem_rubbish.biaoshi=='�Ѷ�'}">checked</c:if>>&nbsp;&nbsp;&nbsp;
               δ�� <input type="radio" Id="biaoshi" name="biaoshi" value="δ��" <c:if test="${nitem_rubbish.biaoshi=='δ��'}">checked</c:if>>
            </td>
         -->    
            <td width="15%" class="myInputTitle">��Ŀ���</td>
            <td width="35%">
		        <select Id="nianfen" name="nianfen" dataType="Require">
		           <option value="">δѡ��</option>
		           <option value="2013����Ŀ" <c:if test="${nitem_rubbish.nianfen=='2013����Ŀ'}">selected</c:if>>2013����Ŀ</option>
		           <option value="2014����Ŀ" <c:if test="${nitem_rubbish.nianfen=='2014����Ŀ'}">selected</c:if>>2014����Ŀ</option>
		           <option value="2015����Ŀ" <c:if test="${nitem_rubbish.nianfen=='2015����Ŀ'}">selected</c:if>>2015����Ŀ</option>
		           <option value="2016����Ŀ" <c:if test="${nitem_rubbish.nianfen=='2013����Ŀ'}">selected</c:if>>2016����Ŀ</option>
		           <option value="2017����Ŀ" <c:if test="${nitem_rubbish.nianfen=='2013����Ŀ'}">selected</c:if>>2017����Ŀ</option>
		           <option value="�ƻ�����Ŀ" <c:if test="${nitem_rubbish.nianfen=='�ƻ�����Ŀ'}">selected</c:if>>�ƻ�����Ŀ</option>
		        </select>
            </td>
            <td width="15%" class="myInputTitle"></td>
            <td width="35%"></td>
         </tr>
         <tr>
            <td width="15%" class="myInputTitle">��ע</td>
            <td colspan="3">
                <textarea Id="beizhu" name="beizhu" style="width: 90%;">${nitem_rubbish.beizhu}</textarea>
            </td>
         </tr>
         <tr>
            <td colspan="4" align="center"><input id="button" name="button" type="button" value=" �� �� " onClick="return mySubmit();"/>
            <input type="button" value="�����б�" onclick="parent.checkShow('${pageContext.request.contextPath}/item/Nitem_rubbish!list.do',4)"/></td>
         </tr>
      </table>
   </form>
</c:if>
<c:if test="${fn:length(fn:split(user.biao_shi,'_'))!=1}">
<center>
	<input type="button" value="�����б�" onclick="parent.checkShow('${pageContext.request.contextPath}/item/Nitem_rubbish!list.do',4)"/>
</center>
</c:if>
</body>
</html>