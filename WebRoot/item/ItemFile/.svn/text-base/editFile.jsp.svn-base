<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script> 	
<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 	
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.uploadify.min.js" charset="UTF-8"></script>     
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/swfobject.js" charset="UTF-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.thickbox.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/thickbox.css" type="text/css"/> 
<link href="${pageContext.request.contextPath}/styles/uploadify.css" rel="stylesheet" type="text/css" /> 	
<link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
<style type="text/css"> 
.odd{background:#EEEEEE;border: 2px solid #EEEEEE;} 
.STYLE1 {color: #FF0000}
</style> 
<script language="JavaScript" >
var size=1024*1024*5;//5M
var i=1;
var info='上传文件不可以超过5M';//文件过大信息
$(document).ready(function(){
$("#uploadify").uploadify({
'uploader': '${pageContext.request.contextPath}/images/uploadify.swf',
'script': '${pageContext.request.contextPath}/admin/uploadFile.jsp?id=${user.guan_li}&item=${item}&leibie=1',
'cancelImg':'${pageContext.request.contextPath}/images/cancel.png',
'buttonImg':'${pageContext.request.contextPath}/images/select.png', 
'queueID': 'fileQueue',
'scriptAccess':'always',
'sizeLimit':size,
'fileDesc':'选择文件', //出现在上传对话框中的文件类型描述
'fileExt':'*.jpeg;*.jpg;*.bmp;*.png;*.gif;*.rar;*.zip;*.doc;*.docx;*.xls;*.xlsx;*.pdf',
'auto': true,
'multi': true,
'onSelect':function(event,queueId,fileObj){if(fileObj.size>size){alert(info);uploadifyCancel(fileObj.id);}else{document.getElementById('myshow').click();}},   
'onComplete': function(event,queueId,fileObj,response,data){
if(response!='null'&&response!='faile'){
$("#sf").append('<div style="width:380px" id="div'+i+'"><table width="100%" border="1"><tr><td width="300px" height="28px">'+
'<input type="hidden" name="pic" value="'+response+'"/>&nbsp;<a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/'+response+'" target="_blank">'+
''+response+'</a></td><td align="center">'+
'<a href="javascript:mydel(div'+i+')">删除</a></td></tr>'+
'</table></div>'); 
tb_remove();
i=i+1;
}
}
});
});
function mydel(id){
if(confirm('是否确认删除此文件？'))
$(id).remove(); 
}

function mySubmit(){
if(Validator.Validate(document.form1,3)){
if($('input[name="pic"]').size()<1){
alert("至少上传一个文件!");
}else
document.form1.submit();
}
}		
</script>  
</head>

<body>
<%@ include file="../top.jsp" %>
<form action="${pageContext.request.contextPath}/item/Item_file!${item_file.id==null?'save':'update'}.do" method="post" name="form1" style="margin:0px">
	<input type="hidden" Id="id" name="id" value="${gujianzhu.id}"/>
	<input type="hidden" Id="item" name="item" value="${item_file.id==null?item:item_file.item}"/>	
	<input type="hidden" Id="leibie" name="leibie" value="1"/>	
	<table border="1" width="100%" class="myInput">	
    <tr>	
		<td colspan="2" class="myInputTitle"><strong>项目文件信息</strong></td>	
	</tr>		
	<tr>
		<td width="15%" class="myInputTitle"><strong>文件名称</strong></td>	
		<td>
		<input type="text" Id="name" name="name" maxlength="150" dataType="Require" value="${item_file.name}"/>		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>分类</td>	
		<td>
<SELECT id="fenlei" name="fenlei">
<OPTION <c:if test="${item_file.fenlei=='立项文件'}">selected</c:if> value="立项文件">立项文件</OPTION>
<OPTION <c:if test="${item_file.fenlei=='建设规划用地文件'}">selected</c:if> value="建设规划用地文件">建设规划用地文件</OPTION>
<OPTION <c:if test="${item_file.fenlei=='勘察设计文件'}">selected</c:if> value="勘察设计文件">勘察设计文件</OPTION>
<OPTION <c:if test="${item_file.fenlei=='招投标、合同文件'}">selected</c:if> value="招投标、合同文件">招投标、合同文件</OPTION>
<OPTION <c:if test="${item_file.fenlei=='工程开工文件'}">selected</c:if> value="工程开工文件">工程开工文件</OPTION>
<OPTION <c:if test="${item_file.fenlei=='商务文件'}">selected</c:if> value="商务文件">商务文件</OPTION>
<OPTION <c:if test="${item_file.fenlei=='工程竣工验收及备案文件'}">selected</c:if> value="工程竣工验收及备案文件">工程竣工验收及备案文件</OPTION>
<OPTION <c:if test="${item_file.fenlei=='其他文件'}">selected</c:if> value="其他文件">其他文件</OPTION>
</SELECT>			
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>说明</strong></td>	
		<td >
		  <textarea name="shuoming" id="shuoming" dataType="Limit" min="0" max="200" msg="200字以内描述" style="width:75%">${item_file.shuoming}</textarea>		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>文件<br/>（一次可上传多个文件）</strong></td>	
		<td colspan="3">
<input type="file" name="uploadify" id="uploadify"/><font color="red"><strong>上传文件，单个大小不能超过5M！</strong></font><br/>
<table width="100%" border="1">
<tr><td><label id="sf"><c:if test="${fn:length(item_file.path)>0}"><c:set var="pics" value='${fn:split(item_file.path,";")}'/>
<c:forEach items="${pics}" var="pic" varStatus="i">
<div style="width:380px" height="28px" id="div${2000+i.index}"><table width="100%" border="1"><tr><td width="300px" height="28px">
<input type="hidden" name="pic" value="${pic}"/>&nbsp;<a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${pic}" target="_blank">${pic}</a></td><td align="center">
<a href="javascript:mydel(div${2000+i.index})">删除</a></td></tr>
<tr></tr></table></div>
</c:forEach></c:if>
</label></td></tr> 
</table></td>
	</tr>		
     <tr>	
		<td colspan="2" align="center" style="height: 30px">
	<input id="button" name="button" type="button" value=" 保　存 " onClick="return mySubmit();"/>&nbsp;&nbsp;
	<input type="button" value=" 返 回 " onclick="window.location='${pageContext.request.contextPath}/item/Item_file!list.do?item=${item_file.id==null?item:item_file.item}&leibie=1'"/>	    </td>	
	</tr>	
	</table>
</form>
<input alt="#TB_inline?height=305&width=400&inlineId=after&modal=true" id="myshow" title="" class="thickbox" type="hidden" value="..."/>
<div id="after" align="left" style="display:none;background:#FFFFEE;font-size:12px;cursor:default;">
<div id='fileQueue' class="tree" style="width:400px;height:300px;background:#FFFFEE;"></div>
</div>	
</body>

</html>