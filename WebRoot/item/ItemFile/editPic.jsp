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
var size=1024*1024*1;//5M
var info='上传文件不可以超过1M';//文件过大信息
$(document).ready(function(){
$("#uploadify").uploadify({
'uploader': '${pageContext.request.contextPath}/images/uploadify.swf',
'script': '${pageContext.request.contextPath}/admin/uploadFile.jsp?id=${user.guan_li}&item=${item}&leibie=2',
'cancelImg':'${pageContext.request.contextPath}/images/cancel.png',
'buttonImg':'${pageContext.request.contextPath}/images/select.png', 
'queueID': 'fileQueue',
'scriptAccess':'always',
'sizeLimit':size,
'fileDesc':'选择图片', //出现在上传对话框中的文件类型描述
'fileExt':'*.jpeg;*.jpg;*.bmp;*.png;*.gif',
'auto': true,
'multi': false,
'onSelect':function(event,queueId,fileObj){if(fileObj.size>size){alert(info);uploadifyCancel(fileObj.id);}else{document.getElementById('myshow').click();}},   
'onComplete': function(event,queueId,fileObj,response,data){
if(response!='null'&&response!='faile'){
$("#sf").html("<input type='hidden' name='pic' value='"+response+"'/><A href='${pageContext.request.contextPath}/upFile/file/${user.guan_li}/"+response+"' target=_blank><IMG border=0 src='${pageContext.request.contextPath}/upFile/file/${user.guan_li}/"+response+"' width=280 height=200></A>");
tb_remove();
i=i+1;
}
}
});
});

function mySubmit(){
if(Validator.Validate(document.form1,3)){
if($('input[name="pic"]').size()<1){
alert("请上传文件!");
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
	<input type="hidden" Id="leibie" name="leibie" value="2"/>	
	<table border="1" width="100%" class="myInput">	
    <tr>	
		<td colspan="2" class="myInputTitle"><strong>项目阶段图片信息</strong></td>	
	</tr>		
	<tr>
		<td width="15%" class="myInputTitle"><strong>图片名称</strong></td>	
		<td>
		<input type="text" Id="name" name="name" maxlength="150" dataType="Require" value="${item_file.name}"/>		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>项目所处阶段</strong></td>	
		<td>
<SELECT id="fenlei" name="fenlei">
<OPTION <c:if test="${item_file.fenlei=='县域体系规划'}">selected</c:if> value="县域体系规划">县域体系规划</OPTION>
<OPTION <c:if test="${item_file.fenlei=='实施方案'}">selected</c:if> value="实施方案阶段">实施方案</OPTION>
<OPTION <c:if test="${item_file.fenlei=='可行性研究'}">selected</c:if> value="可行性研究">可行性研究</OPTION>
<OPTION <c:if test="${item_file.fenlei=='初步设计'}">selected</c:if> value="初步设计">初步设计</OPTION>
<OPTION <c:if test="${item_file.fenlei=='施工图'}">selected</c:if> value="施工图">施工图</OPTION>
<OPTION <c:if test="${item_file.fenlei=='土建'}">selected</c:if> value="土建">土建</OPTION>
<OPTION <c:if test="${item_file.fenlei=='试运行'}">selected</c:if> value="试运行">试运行</OPTION>
<OPTION <c:if test="${item_file.fenlei=='竣工'}">selected</c:if> value="竣工">竣工</OPTION>
</SELECT>		
</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>说明</strong></td>	
		<td >
		  <textarea name="shuoming" id="shuoming" dataType="Limit" min="0" max="200" msg="200字以内描述" style="width:75%">${item_file.shuoming}</textarea>		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>项目照片</strong></td>	
		<td colspan="3">
<input type="file" name="uploadify" id="uploadify"/><font color="red"><strong>上传文件，大小不能超过1M！</strong></font><br/>
<table width="100%" border="1">
<tr><td><label id="sf"><c:if test="${fn:length(item_file.path)>0}"><input type='hidden' name='pic' value='${item_file.path}'/><a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${item_file.path}" target="_blank"><IMG border=0 src="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${item_file.path}" width=280 height=200></a></c:if></label></td></tr> 
</table></td>
	</tr>		
     <tr>	
		<td colspan="2" align="center" style="height: 30px">
	<input id="button" name="button" type="button" value=" 保　存 " onClick="return mySubmit();"/>&nbsp;&nbsp;
	<input type="button" value=" 返 回 " onclick="window.location='${pageContext.request.contextPath}/item/Item_file!list.do?item=${item_file.id==null?item:item_file.item}&leibie=2'"/>	    </td>	
	</tr>	
	</table>
</form>
<input alt="#TB_inline?height=305&width=400&inlineId=after&modal=true" id="myshow" title="" class="thickbox" type="hidden" value="..."/>
<div id="after" align="left" style="display:none;background:#FFFFEE;font-size:12px;cursor:default;">
<div id='fileQueue' class="tree" style="width:400px;height:300px;background:#FFFFEE;"></div>
</div>	
</body>

</html>