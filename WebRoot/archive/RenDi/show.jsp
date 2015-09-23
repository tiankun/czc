<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>  
<head>
</head>
<body>
<%@ include file="/archive/top.jsp" %>
<form action="${pageContext.request.contextPath}/archive/Ren_di!edit.do" method="post">
	<input type="hidden" Id="id" name="id" value="${ren_di.id}"/>
	<input type="hidden" Id="unit_id" name="unit_id" value="${unit_id}"/>
	<input type="hidden" Id="pingfen" name="pingfen" value="${pingfen}"/>
	<table width="100%" border="1" class="myInput">
    <tr>	
		<td colspan="4" class="myInputTitle"><strong>�˿����õ����������Ϣ</strong></td>	
	</tr>	
	    <tr>
			<td width="15%" class="myInputTitle">���������</td>	
			<td width="35%">&nbsp;${ren_di.cy_mianji}ƽ������</td>
			<td width="15%" class="myInputTitle">��ׯռ�����</td>	
			<td width="35%">&nbsp;${ren_di.cz_zhandi}Ķ</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">��ׯ�滮����Χ</td>	
			<td width="35%">&nbsp;${ren_di.cz_guihua}Ķ</td>
			<td width="15%" class="myInputTitle">�����õ�</td>	
			<td width="35%">&nbsp;${ren_di.js_yongdi}Ķ</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">�������</td>	
			<td width="35%">&nbsp;${ren_di.gd_mianji}Ķ</td>
			<td width="15%" class="myInputTitle">����ũ�����</td>	
			<td width="35%">&nbsp;${ren_di.nongtian}Ķ</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">�����������</td>	
			<td width="35%">&nbsp;${ren_di.gy_tudi}Ķ</td>
			<td width="15%" class="myInputTitle">�����������</td>	
			<td width="35%">&nbsp;${ren_di.jt_tudi}Ķ</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">������ռ������%��</td>	
			<td width="35%">&nbsp;${ren_di.bq_bili}</td>
			<td width="15%" class="myInputTitle">ɽ����ռ������%��</td>	
			<td width="35%">&nbsp;${ren_di.sq_bili}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">�滮���������õ�</td>	
			<td width="35%">&nbsp;${ren_di.gh_xzdi}Ķ</td>
			<td width="15%" class="myInputTitle">�滮��������</td>	
			<td width="35%">&nbsp;${ren_di.gh_xzhu}��</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">��ò����</td>	
			<td width="85%" colspan="3">&nbsp;${ren_di.dimao}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">ũ�����˿�</td>	
			<td width="35%">&nbsp;${ren_di.renkou}��</td>
			<td width="15%" class="myInputTitle">ũ���ܻ���</td>	
			<td width="35%">&nbsp;${ren_di.hushu}��</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">�����˿�</td>	
			<td width="35%">&nbsp;${ren_di.huji}��</td>
			<td width="15%" class="myInputTitle">��ס�˿�</td>	
			<td width="35%">&nbsp;${ren_di.changzhu}��</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">ũҵ�˿�</td>	
			<td width="35%">&nbsp;${ren_di.ny_renkou}��</td>
			<td width="15%" class="myInputTitle">��ũҵ�˿�</td>	
			<td width="35%">&nbsp;${ren_di.fny_renkou}��</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">��ĩ�Ͷ�������</td>	
			<td width="35%">&nbsp;${ren_di.nm_renkou}��</td>
			<td width="15%" class="myInputTitle">��Ҫ����</td>	
			<td width="35%">&nbsp;${ren_di.zy_minzu}</td>
	    </tr>
	    <tr>
			<td width="15%" class="myInputTitle">��������ռ���˿ڱ�����%��</td>	
			<td width="35%">&nbsp;${ren_di.ssmz_bili}</td>
			<td width="15%" class="myInputTitle">��ɫ��λ</td>	
			<td width="35%">&nbsp;${ren_di.tese}</td>
	    </tr>
	</table>
</form>
</body>
</html>