<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 	
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.uploadify.min.js" charset="UTF-8"></script>     
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/swfobject.js" charset="UTF-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.thickbox.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/thickbox.css" type="text/css"/> 
<link href="${pageContext.request.contextPath}/styles/uploadify.css" rel="stylesheet" type="text/css" /> 	
<link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" >
var size=1024*1024*2;//5M
var i=1;
var info='上传文件不可以超过2M';//文件过大信息
$(document).ready(function(){
$("#uploadify").uploadify({
'uploader': '${pageContext.request.contextPath}/images/uploadify.swf',
'script': '${pageContext.request.contextPath}/admin/uploadFile.jsp?id=${user.guan_li}',
'cancelImg':'${pageContext.request.contextPath}/images/cancel.png',
'buttonImg':'${pageContext.request.contextPath}/images/select.png', 
'queueID': 'fileQueue',
'scriptAccess':'always',
'sizeLimit':size,
'fileDesc':'图片文件', //出现在上传对话框中的文件类型描述
'fileExt':'*.jpeg;*.jpg;*.bmp;*.png;*.gif',
'auto': true,
'multi': true,
'onSelect':function(event,queueId,fileObj){if(fileObj.size>size){alert(info);uploadifyCancel(fileObj.id);}else{document.getElementById('myshow').click();}},   
'onComplete': function(event,queueId,fileObj,response,data){
if(response!='null'&&response!='faile'){
$("#sf").append('<div style="float:left;width:480px" id="div'+i+'"><table width="100%" border="1"><tr><td width="400px">'+
'<input type="hidden" name="pic" value="'+response+'"/><a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/'+response+'" target="_blank">'+
'<img width="400px" height="300px" src="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/'+response+'" border=0/></a></td><td rowspan="2" align="center">'+
'<a href="javascript:mydel(div'+i+')">删除</a></td></tr>'+
'<tr><td>类型：<select name="type" style="width:75px"><option value="方位全景">方位全景</option><option value="内部空间">内部空间</option><option value="局部特写">局部特写</option></select>说明：<input type="text" name="remark" style="width:230px"/></td></tr></table></div>'); 
tb_remove();
i=i+1;
}
}
});
});
function mydel(id){
if(confirm('是否确认删除此照片？'))
$(id).remove(); 
}

function mySubmit(){
if(Validator.Validate(document.form1,3)){
var checkv=$('input[name="jianzao_type"]:checked').val();
var nian=$("#jianzao_nian1").val();
var chao=$("#jianzao_chao").val();
if(checkv=='古代建筑'&&nian==''&&chao==''){
alert("请填写古建筑具体年代或朝代！")
$("#jianzao_nian1").focus(); 
}if($('input[name="pic"]').size()<6){
alert("至少上传六张照片（4个方位角度的4张全景照，以及内部空间和局部特写照片2张）!");
}else
document.form1.submit();
}
}		
</script>   
</head>

<body>

<form action="${pageContext.request.contextPath}/gushu/Gujianzhu!update.do" method="post" name="form1">	
	<%@ include file="form_include.jsp" %>
</form>
</body>

</html>