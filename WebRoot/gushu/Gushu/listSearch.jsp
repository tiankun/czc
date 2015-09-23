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
	//数据验证
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
//弹出窗口  
function openWin(id){ 
	$.ligerDialog.open({ url: '${pageContext.request.contextPath}/gushu/Gushu!showCheck.do?id='+id, width:1100,height:600,isResize:true,title:'古树名木调查登记表'});
}
function mylink(){
	parent.checkShow('${pageContext.request.contextPath}/gushu/Gushu!report.do',4);
}
</script> 
</head>

<body>    

<table width="100%" cellpadding="0" border="0" cellspacing="0" class="myInput">
	<tr class="tHead">
		<td ><span>古树名木调查登记表</span></td>
	</tr>
</table>
<form action="${pageContext.request.contextPath}/gushu/Gushu!listSearch.do" method="post" name="form1">
<table width="100%" class="myInput" border="1">
	<tr>
		<td class="myInputTitle" width="10%">填报地区：</td>
		<td><input type="text" id="quan_ming" name="quan_ming" dataType="" value="${searchMap.quan_ming}" /></td>
		<td class="myInputTitle" width="10%">树种及俗名：</td>
		<td><input type="text" id="mingcheng" name="mingcheng" dataType="" value="${searchMap.mingcheng}" /></td>
		<td class="myInputTitle" width="10%">类型：</td>
		<td>
			<select name="leixing" id="leixing">
				<option value="">未选择</option>
				<option value="古树" <c:if test="${'古树'==searchMap.leixing}">selected</c:if>>古树</option>
				<option value="古树后续资源" <c:if test="${'古树后续资源'==searchMap.leixing}">selected</c:if>>古树后续资源</option>
				<option value="古树群" <c:if test="${'古树群'==searchMap.leixing}">selected</c:if>>古树群</option>
				<option value="名木" <c:if test="${'名木'==searchMap.leixing}">selected</c:if>>名木</option>
			</select>
		</td>
	</tr>
	<tr>
		<td class="myInputTitle">古树级别：</td>
		<td>
			<select name="jibie" id="jibie">
				<option value="">未选择</option>
				<option value="特级古树" <c:if test="${'特级古树'==searchMap.jibie}">selected</c:if>>特级古树</option>
				<option value="一级古树" <c:if test="${'一级古树'==searchMap.jibie}">selected</c:if>>一级古树</option>
				<option value="二级古树" <c:if test="${'二级古树'==searchMap.jibie}">selected</c:if>>二级古树</option>
				<option value="三级古树" <c:if test="${'三级古树'==searchMap.jibie}">selected</c:if>>三级古树</option>
			</select>
		</td>
		<td class="myInputTitle">树龄（年）：</td>
		<td>
			<input type="text" style="width:27%;" id="shuling_min" name="shuling_min" dataType="Integer" require="false" value="${searchMap.shuling_min}" />
			——
			<input type="text" style="width:27%;" id="shuling_max" name="shuling_max" dataType="Integer" require="false" value="${searchMap.shuling_max}" />
		</td>
		<td class="myInputTitle">树高（米）：</td>
		<td>
			<input type="text" style="width:27%;" id="shugao_min" name="shugao_min" dataType="Number" require="false" value="${searchMap.shugao_min}" />
			——
			<input type="text" style="width:27%;" id="shugao_max" name="shugao_max" dataType="Number" require="false" value="${searchMap.shugao_max}" />
		</td>
	</tr>
	<tr>
		<td class="myInputTitle">冠幅（东西米）：</td>
		<td>
			<input type="text" style="width:27%;" id="guanfu_dx_min" name="guanfu_dx_min" dataType="Number" require="false" value="${searchMap.guanfu_dx_min}" />
			——
			<input type="text" style="width:27%;" id="guanfu_dx_max" name="guanfu_dx_max" dataType="Number" require="false" value="${searchMap.guanfu_dx_max}" />
		</td>
		<td class="myInputTitle">冠幅（南北米）：</td>
		<td>
			<input type="text" style="width:27%;" id="guanfu_nb_min" name="guanfu_nb_min" dataType="Number" require="false" value="${searchMap.guanfu_nb_min}" />
			——
			<input type="text" style="width:27%;" id="guanfu_nb_max" name="guanfu_nb_max" dataType="Number" require="false" value="${searchMap.guanfu_nb_max}" />
		</td>
		<td class="myInputTitle">胸围（米）：</td>
		<td>
			<input type="text" style="width:27%;" id="xongwei_min" name="xongwei_min" dataType="Number" require="false" value="${searchMap.xongwei_min}" />
			——
			<input type="text" style="width:27%;" id="xongwei_max" name="xongwei_max" dataType="Number" require="false" value="${searchMap.xongwei_max}" />
		</td>
	</tr>
	<tr>
		<td class="myInputTitle">生长状况：</td>
		<td><input type="text" id="shengzhang" name="shengzhang" dataType="" value="${searchMap.shengzhang}" /></td>
		<td class="myInputTitle"></td>
		<td></td>
		<td class="myInputTitle"></td>
		<td></td>
	</tr>
</table>
<table width="100%" class="myInput">
	<tr>
		<td class="myInputTitle">
			<input type="hidden" name="pageno" id="pageno"/>
			<input type="hidden" name="biao_shi" id="biao_shi" value="${biao_shi}"/>
			<input type="button" value=" 查  询 " onclick="return mySubmit(1);"/>
			<input type="button" value=" 返  回 " onclick="mylink();"/>
		</td>
	</tr>
</table>
</form> 
<div align="right" class="wordlabel">
	共找到<font color="red">${page.totalNumberOfElements} </font>条记录
</div>
<table class="myInput" width="100%" border="1">
	<tr align="center" class="tHead">
		<td height="30" width="20%" >填报地区</td>
		<td width="10%" >树种及俗名</td>
		<td width="5%" >类型</td>
		<td width="5%" >古树级别</td>
		<td width="7%" >树龄（年）</td>
		<td width="7%" >树高（米）</td>
		<td width="9%" >冠幅（东西米）</td>
		<td width="9%" >冠幅（南北米）</td>
		<td width="7%" >胸围（米）</td>
		<td width="11%" >生长状况</td>
		<td width="10%" >相关操作</td>
	</tr>
	<!-- C标签循环显示表数据 -->
	<c:forEach var="item" items="${page.thisPageElements}">
		<tr align="center"  onMouseOver="JavaScript:tableRowIn(this);"
			onMouseOut="tableRowOut(this);">
			<td height="30">${item.quan_ming}</td>
			<td>${item.mingcheng}</td>
			<td>${item.leixing}</td>
			<td>${item.jibie}</td>
			<td>${item.shuling}</td>
			<td>${item.shugao}</td>
			<td>${item.guanfu_dx}</td>
			<td>${item.guanfu_nb}</td>
			<td>${item.xongwei}</td>
			<td>${item.shengzhang}</td>
			<td>
				<a href="" onclick="openWin('${item.id}');return false;">查看</a>
			</td>
		</tr>
	</c:forEach>
</table>
			
<!-- 利用Page实现分页 -->
<table  width="100%" border="1">
	<tr>
		<td align="center">
			<table class="linktable wordlabel">
				<tr>
					<td align="center" height="20">
						<a href="#" onclick="mySubmit(1);">首页</a>&nbsp;&nbsp;
						<a href="#" onclick="mySubmit(${page.previousPageNumber});">上一页</a>&nbsp;&nbsp;
						<a href="#" onclick="mySubmit(${page.nextPageNumber});">下一页</a>&nbsp;&nbsp;
						<a href="#" onclick="mySubmit(${page.lastPageNumber});">末页</a>&nbsp;&nbsp;第
						<font color="red">${page.thisPageNumber}</font> 页&nbsp;&nbsp;共
						<font color="red">${page.lastPageNumber}</font> 页
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

</body>

</html>

