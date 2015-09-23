<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld"  prefix="c"%>
<%@page import="com.zsc.util.WebUtil"%>
<c:set var="webUtil" value="<%=new WebUtil()%>"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/application.js"></script>
	<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/ligerUI/ligerui.min.js"></script>
    <link href="${pageContext.request.contextPath}/scripts/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css"></link> 
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" /> 
<script language="JavaScript" type="text/javascript"> 	
function mySubmit(num) {
	//������֤
	if(Validator.Validate(document.form1,3)){
		document.form1.pageno.value = num;
		document.form1.submit();
	}
}

function tableRowIn(tr) {
	tr.style.backgroundColor = "#9EDBFF";
}

function tableRowOut(tr) {
	if (tr.style.backgroundColor == "#9edbff")
		tr.style.backgroundColor = "";
}
//��������  
function openWin(id){ 
	$.ligerDialog.open({ url: '${pageContext.request.contextPath}/gushu/Gujianzhu!showCheck.do?id='+id, width:1100,height:600,isResize:true,title:'�Ž�������ǼǱ�'});
}
function mylink(){
	parent.checkShow('${pageContext.request.contextPath}/gushu/Gujianzhu!report.do',4);
}
</script> 
</head>

<body>    

<table width="100%" cellpadding="0" border="0" cellspacing="0" class="myInput">
	<tr class="tHead">
		<td><span>�Ž�������ǼǱ�</span></td>
	</tr>
</table>
<form action="${pageContext.request.contextPath}/gushu/Gujianzhu!listSearch.do" method="post" name="form1">
<table width="100%" class="myInput" border="1">
	<tr>
		<td class="myInputTitle" width="12%">�������</td>
		<td><input type="text" id="quan_ming" name="quan_ming" dataType="" value="${searchMap.quan_ming}" /></td>
		<td class="myInputTitle" width="12%">��Ŀ���ƣ�</td>
		<td><input type="text" id="mingcheng" name="mingcheng" dataType="" value="${searchMap.mingcheng}" /></td>
		<td class="myInputTitle" width="12%">�ṹ��ʽ��</td>
		<td>
			<input type="text" id="jiegou" name="jiegou" dataType="" value="${searchMap.jiegou}" />
		</td>
	</tr>
	<tr>
		<td class="myInputTitle">���쳯����</td>
		<td><input type="text" id="jianzao_chao" name="jianzao_chao" dataType="" value="${searchMap.jianzao_chao}" /></td>
		<td class="myInputTitle">���������</td>
		<td>
			<input type="text" style="width:27%;" id="jianzao_nian_min" name="jianzao_nian_min" dataType="Integer" require="false" value="${searchMap.jianzao_nian_min}" />
			����
			<input type="text" style="width:27%;" id="jianzao_nian_max" name="jianzao_nian_max" dataType="Integer" require="false" value="${searchMap.jianzao_nian_max}" />
		</td>
		<td class="myInputTitle">�����������㣩��</td>
		<td>
			<input type="text" style="width:27%;" id="cengshu_min" name="cengshu_min" dataType="Number" require="false" value="${searchMap.cengshu_min}" />
			����
			<input type="text" style="width:27%;" id="cengshu_max" name="cengshu_max" dataType="Number" require="false" value="${searchMap.cengshu_max}" />
		</td>
	</tr>
	<tr>
		<td class="myInputTitle">�����߶ȣ��ף���</td>
		<td>
			<input type="text" style="width:27%;" id="gaodu_min" name="gaodu_min" dataType="Number" require="false" value="${searchMap.gaodu_min}" />
			����
			<input type="text" style="width:27%;" id="gaodu_max" name="gaodu_max" dataType="Number" require="false" value="${searchMap.gaodu_max}" />
		</td>
		<td class="myInputTitle">���������ƽ���ף���</td>
		<td>
			<input type="text" style="width:27%;" id="mianji_min" name="mianji_min" dataType="Number" require="false" value="${searchMap.mianji_min}" />
			����
			<input type="text" style="width:27%;" id="mianji_max" name="mianji_max" dataType="Number" require="false" value="${searchMap.mianji_max}" />
		</td>
		<td class="myInputTitle"></td>
		<td></td>
	</tr>
</table>
<table width="100%" class="myInput">
	<tr>
		<td class="myInputTitle">
			<input type="hidden" name="pageno" id="pageno"/>
			<input type="hidden" name="biao_shi" id="biao_shi" value="${biao_shi}"/>
			<input type="button" value=" ��  ѯ " onclick="return mySubmit(1);"/>
			<input type="button" value=" ��  �� " onclick="mylink();"/>
		</td>
	</tr>
</table>
</form> 
<div align="right" class="wordlabel">
	���ҵ�<font color="red">${page.totalNumberOfElements} </font>����¼
</div>
<table class="myInput" width="100%" border="1">
	<tr align="center" class="tHead">
		<td height="30" width="20%" >�����</td>
		<td width="10%" >��Ŀ����</td>
		<td width="5%" >�������</td>
		<td width="5%" >�ṹ��ʽ</td>
		<td width="7%" >�����������㣩</td>
		<td width="7%" >�����߶ȣ��ף�</td>
		<td width="9%" >���������ƽ���ף�</td>
		<td width="10%" >��ز���</td>
	</tr>
	<!-- C��ǩѭ����ʾ������ -->
	<c:forEach var="item" items="${page.thisPageElements}">
		<tr align="center"  onMouseOver="JavaScript:tableRowIn(this);"
			onMouseOut="tableRowOut(this);">
			<td height="30">${item.quan_ming}</td>
			<td>${item.mingcheng}</td>
			<td>${item.juti}</td>
			<td>${item.jiegou}</td>
			<td>${item.cengshu}</td>
			<td>${item.gaodu}</td>
			<td>${item.mianji}</td>
			<td>
				<a href="" onclick="openWin('${item.id}');return false;">�鿴</a>
			</td>
		</tr>
	</c:forEach>
</table>
			
<!-- ����Pageʵ�ַ�ҳ -->
<table  width="100%" border="1">
	<tr>
		<td align="center">
			<table class="linktable wordlabel">
				<tr>
					<td align="center" height="20">
						<a href="#" onclick="mySubmit(1);">��ҳ</a>&nbsp;&nbsp;
						<a href="#" onclick="mySubmit(${page.previousPageNumber});">��һҳ</a>&nbsp;&nbsp;
						<a href="#" onclick="mySubmit(${page.nextPageNumber});">��һҳ</a>&nbsp;&nbsp;
						<a href="#" onclick="mySubmit(${page.lastPageNumber});">ĩҳ</a>&nbsp;&nbsp;��
						<font color="red">${page.thisPageNumber}</font> ҳ&nbsp;&nbsp;��
						<font color="red">${page.lastPageNumber}</font> ҳ
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

</body>

</html>

