<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>	
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" /> 
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/scripts/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/scripts/easyui/themes/icon.css">
	<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/My97DatePicker/WdatePicker.js"></script>	
	<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>	
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 	 	
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/locale/easyui-lang-zh_CN.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/my.js"></script>	
<script language="JavaScript" >
function mySubmit(id){
document.form1.action="${pageContext.request.contextPath}/site/Manage!edit.do";
document.form1.id.value=id;
document.form1.submit();
}
function myDel(id){
if(window.confirm('是否要删除这条信息？')){
	document.form1.action="${pageContext.request.contextPath}/site/Manage!delInfor.do";
	document.form1.id.value=id;
	document.form1.submit();
}
}
//新增文件上传
function mycreate() {
	$('#form2')[0].reset();
	document.getElementById("xinzeng").style.display="block";
	document.getElementById("baocun").style.display="none";
	$('#unit').window('open');
}
//新增栏目信息
function edit(id,biaoti,gaiyao,times) {  
	$('#form2')[0].reset();
	$("#id").val(id);
	$("#biaoti").val(biaoti);
	$("#gaiyao").val(gaiyao);
	$("#times").val(times);
	document.getElementById("xinzeng").style.display="none";
	document.getElementById("baocun").style.display="block";
	$('#unit').window('open');    
}
function mySubmit2(){
	if(Validator.Validate(document.form2,3)){
		document.form2.submit();
	}
}
//新增文件上传
function myupload() {
	$('#form3')[0].reset();
	$('#myFile').window('open');
}
function mySubmit3(){
	if(Validator.Validate(document.form3,3)){
		document.form3.submit();
	}
}		
</script>	   
</head>
&nbsp;&nbsp;<c:choose><c:when test="${inforname=='友情链接'}"><input type="button" value="添加友情链接" style="color:#FF0000; font-weight:bold" onclick="mycreate()"/></c:when><c:when test="${(inforname=='课件下载')||(inforname=='资料下载')}"><input type="button" value="上传文件" style="color:#FF0000; font-weight:bold" onclick="myupload()"/></c:when><c:otherwise><input type="button" value="添加信息" style="color:#FF0000; font-weight:bold" onclick="mySubmit('')"/></c:otherwise></c:choose>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="返回栏目列表" onclick="window.location.href='${pageContext.request.contextPath}/site/Manage!listModule.do'"/>
<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="信息列表&nbsp;&nbsp;[&nbsp;<font style='color:#FF0000'>${inforname}</font>&nbsp;]"
	action="#" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif" style="width:99%">
	<ec:row highlightRow="true">
		<ec:column property="biaoti" title="标题" width="70%" style="height:23px"><c:choose><c:when test="${inforname=='友情链接'}"><a href="http://${item.gaiyao}" target="_blank">${item.biaoti}</a></c:when><c:when test="${(inforname=='课件下载')||(inforname=='资料下载')}"><a href="<%=request.getContextPath()%>/upFile/${item.wenjian}" target="_blank">${item.wenbieming}</a></c:when><c:otherwise><a href="<%=request.getContextPath()%>/site/Infor!findInfor.do?id=${item.id}" target="_blank">${item.biaoti}</a></c:otherwise></c:choose></ec:column>
		<ec:column property="times" title="发布时间" width="15%" style="text-align:center"/>
		<ec:column property="id" title="操作" width="15%" style="text-align:center" filterable="false"><c:choose><c:when test="${inforname=='友情链接'}"><a style="cursor:pointer" onclick="edit('${item.id}','${item.biaoti}','${item.gaiyao}','${item.times}')">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</c:when><c:when test="${(inforname=='课件下载')||(inforname=='资料下载')}"></c:when><c:otherwise><a style="cursor:pointer" onclick="mySubmit('${item.id}')">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</c:otherwise></c:choose><a style="cursor:pointer" onclick="myDel('${item.id}')">删除</a></ec:column>
	</ec:row>
</ec:table>
<form style="margin:0px" action="${pageContext.request.contextPath}/site/Manage!listInfor.do" method="post" name="form1">
<input type="hidden" name="id"/>
<input type="hidden" name="inforname" value="${inforname}"/>
</form>
<div id="unit" class="easyui-window" title="友情链接信息" data-options="modal:true,closed:true,width:450,height:260,minimizable:false,maximizable:false,collapsible:false">
<form style="margin:0px" action="${pageContext.request.contextPath}/site/Manage!save.do" method="post" name="form2" id="form2">
<input type="hidden" name="id"  id="id"/>
<input type="hidden" name="inforname" value="${inforname}"/>
<table border="1" width="100%" class="myInput">		
	<tr>		
		<td width="25%" class="myInputTitle">添加时间 &nbsp;</td>	
		<td colspan="2">
		<input onClick="WdatePicker()" class="Wdate" id="times" name="times" maxlength="0" dataType="Date" style="ime-mode:disabled"/>		</td>
	</tr>		
	<tr>
		<td width="25%" class="myInputTitle">名称 &nbsp;</td>	
		<td colspan="2">
		  <input name="biaoti" type="text" id="biaoti" style="width:80%" value="" datatype="Require" />		</td>
	</tr>
	<tr>
		<td width="25%" class="myInputTitle">链接 &nbsp;</td>	
		<td colspan="2">
		 http://<input name="gaiyao" type="text" id="gaiyao" style="width:80%" value="" datatype="Url" />		</td>
	</tr>	
	<tr>
		<td height="30" colspan="3" align="center">	<div id="xinzeng" style="display: block">
	<input type="button" value=" 新 增 " onClick="return mySubmit2();"/>
	</div>
	<div id="baocun" style="display: none">
	<input type="button" value=" 保 存 " onClick="return mySubmit2();"/>
	</div></td>	
	</tr>		
</table>	
</form>
</div>
<div id="myFile" class="easyui-window" title="上传文件&nbsp;[&nbsp;<font style='color:#FF0000'>${inforname}</font>&nbsp;]" data-options="modal:true,closed:true,width:450,height:260,minimizable:false,maximizable:false,collapsible:false">
<form style="margin:0px" action="${pageContext.request.contextPath}/site/Manage!uploadFile.do" method="post" name="form3" id="form3" enctype="multipart/form-data">
<input type="hidden" name="inforname" value="${inforname}"/>
<table border="1" width="100%" class="myInput">		
	<tr>		
		<td width="25%" class="myInputTitle">添加时间 &nbsp;</td>	
		<td colspan="2">
		<input onClick="WdatePicker()" class="Wdate" id="times" name="times" maxlength="0" dataType="Date" style="ime-mode:disabled"/>		</td>
	</tr>		
	<tr>
		<td width="25%" class="myInputTitle">选择上传文件 &nbsp;</td>	
		<td colspan="2">
		  <input name="biaoti" type="file" id="biaoti" style="width:80%" value="" datatype="Require" />		</td>
	</tr>
	<tr><td colspan="3" align="center">		
	<input type="button" value=" 保 存 " onClick="return mySubmit3();"/></td>	
	</tr>		
</table>	
</form>
</div>
<%
String err=(String)request.getAttribute("err");
if(err!=null&&!"".equals(err)){
%>
<SCRIPT language="javascript">
alert('<%=err%>');
</SCRIPT>
<%}%>
</body>

</html>

