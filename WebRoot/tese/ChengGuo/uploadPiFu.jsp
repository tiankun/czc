<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@page import="java.util.*"%>
<%String id=((Map)session.getAttribute("user")).get("guan_li").toString();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>�滮�����ϴ�</title>
<link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" charset="GBK"/>  
    <link href="${pageContext.request.contextPath}/styles/uploadify.css" rel="stylesheet" type="text/css" /> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.uploadify.min.js" charset="UTF-8"></script>     
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/swfobject.js" charset="UTF-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.thickbox.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>	
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/thickbox.css" type="text/css"/>   
<script language=javascript>  
var size=1024*1024*100;//100M
var info='�ϴ��ļ������Գ���100M';//�ļ�������Ϣ
$(document).ready(function(){
$("#uploadify").uploadify({
'uploader': '${pageContext.request.contextPath}/images/uploadify.swf',
'script': '${pageContext.request.contextPath}/admin/uploadFile.jsp?id=<%=id%>',
'cancelImg': '${pageContext.request.contextPath}/images/cancel.png',
'buttonImg':'${pageContext.request.contextPath}/images/select.png',
'queueID': 'fileQueue',
'scriptAccess':'always',
'sizeLimit':size,
'auto': true,
'multi': true,
'onSelect':function(event,queueId,fileObj){if(fileObj.size>size){alert(info);uploadifyCancel(fileObj.id);}else{document.getElementById('myshow').click();}},   
'onComplete': function(event,queueId,fileObj,response,data){
if(response!='null'&&response!='faile'){
var obj=document.getElementById('sf0');
var newTr = obj.insertRow();
var newTd0 = newTr.insertCell();
newTd0.innerHTML = '<input type="hidden" Id="name" name="name" value="'+response+'"/><a href="${pageContext.request.contextPath}/upFile/file/'+<%=id%>+'/'+response+'" target="_blank">'+response+'</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=javascript:void(0) onclick=mydel0()>ɾ��</a>'; 
tb_remove();
}
}
});
$("#uploadify1").uploadify({
'uploader':'${pageContext.request.contextPath}/images/uploadify.swf',
'script': '${pageContext.request.contextPath}/admin/uploadFile.jsp?id=<%=id%>',
'cancelImg':'${pageContext.request.contextPath}/images/cancel.png',
'buttonImg':'${pageContext.request.contextPath}/images/select.png',
'queueID':'fileQueue',
'sizeLimit':size,
'auto': true,
'multi': true,
'onSelect':function(event,queueId,fileObj){if(fileObj.size>size){alert(info);uploadifyCancel(fileObj.id);}else{document.getElementById('myshow').click();}},
'onComplete': function(event,queueId,fileObj,response,data){
if(response!='null'&&response!='faile'){
var obj=document.getElementById('sf1');
var newTr = obj.insertRow();
var newTd0 = newTr.insertCell();
newTd0.innerHTML = '<input type="hidden" Id="pic" name="pic" value="'+response+'"/><a href="${pageContext.request.contextPath}/upFile/file/'+<%=id%>+'/'+response+'" target="_blank">'+response+'</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=javascript:void(0) onclick=mydel1()>ɾ��</a>'; 
tb_remove();}
}
});
$("#uploadify2").uploadify({
'uploader': '${pageContext.request.contextPath}/images/uploadify.swf',
'script': '${pageContext.request.contextPath}/admin/uploadFile.jsp?id=<%=id%>',
'cancelImg': '${pageContext.request.contextPath}/images/cancel.png',
'buttonImg':'${pageContext.request.contextPath}/images/select.png',
'queueID': 'fileQueue',
'sizeLimit':size,
'auto': true,
'multi': false,
'onSelect':function(event,queueId,fileObj){if(fileObj.size>size){alert(info);uploadifyCancel(fileObj.id);}else{document.getElementById('myshow').click();}},
'onComplete': function(event,queueId,fileObj,response,data){
if(response!='null'&&response!='faile'){
var obj=document.getElementById('sf2');
obj.innerHTML = '<input type="hidden" Id="pf_pic" name="pf_pic" value="'+response+'"/><a href="${pageContext.request.contextPath}/upFile/file/'+<%=id%>+'/'+response+'" target="_blank">'+response+'</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:mydel(\'sf2\',\'pf_pic\')">ɾ��</a>'; 
tb_remove();
}
}
});
}
);

function mydel0(){
if(confirm('�Ƿ�ȷ��ɾ�����ļ���'))
document.all.sf0.deleteRow(window.event.srcElement.parentElement.parentElement.rowIndex);
}
function mydel1(){
if(confirm('�Ƿ�ȷ��ɾ�����ļ���'))
document.all.sf1.deleteRow(window.event.srcElement.parentElement.parentElement.rowIndex);
}
function mydel(id,hid){
if(confirm('�Ƿ�ȷ��ɾ�����ļ���'))
document.getElementById(id).innerHTML='<input type="hidden" Id="'+hid+'" name="'+hid+'"/>';
}
function check() 
{
if(Validator.Validate(document.form1,3)){
var divProcessing=document.getElementById("divProcessing");
divProcessing.style.top = '300px';
divProcessing.style.left = '200px';
divProcessing.style.display = '';	
}else
return false;	
}
</SCRIPT>  
</script>
<style type="text/css">
<!--
.style1 {color: #FF0000}
body,td,th {
	font-size: 12px;
}
input[type=text]{width:75%}
-->
</style>
</head>
<body leftmargin="0" topmargin="0" style="margin-top:0px">
<div id="divProcessing" style="width:200px;height:30px;position:absolute;display:none">
<table border=0 cellpadding=0 cellspacing=1 bgcolor="#000000" width="100%" height="100%"><tr><td bgcolor=#3A6EA5>
<!--�����Ҫ�����ܵİ�behavior="alternate"��Ϊ��direction="left"-->
<marquee align="middle" behavior="alternate"  scrollamount="5" style="font-size:9pt"><font color=#FFFFFF>...Զ�̷��������ڶ�ͼƬ���д���...��ȴ�...</font></marquee></td></tr></table>
</div>
<form action="<%=request.getContextPath()%>/tese/Tu!save.do" method="post" name="form1" onSubmit="return check();" style="margin:0px; padding:0px">
<table width="100%" border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td class="tHead" colspan="2">���磩�滮��Ϣ�</td>
  </tr>
  <tr>
    <td class="myInputTitle">�滮����</td>
    <td><select name="type" style="width:150px">
      <option value="����滮">����滮</option>
      <c:if test="${user.type=='��ɫС��'}"><option value="��ɫ�滮">��ɫ�滮</option>
      <option value="���ڽ���滮">���ڽ���滮</option></c:if>	  	  
      <option value="��������ϸ�滮">��������ϸ�滮</option>
      <option value="�޽�����ϸ�滮">�޽�����ϸ�滮</option>
      <option value="ר��滮">ר��滮</option>
    </select><strong class="style1">һ��滮��Ϊһ�����ݣ�֧�ֶ��ļ��ϴ���</strong></td>
  </tr>
  <tr>
    <td class="myInputTitle">�滮˵���ļ�(<font color="red">֧�ֶ��ļ�</font>)��</td>
    <td><table width="300px" border="1" id="sf0"> 
</table><input type="file" name="uploadify" id="uploadify"/></td>
  </tr>
  <tr>
    <td class="myInputTitle">�滮ͼֽ�ļ�(<font color="red">֧�ֶ��ļ�</font>)��</td>
    <td><table width="300px" border="1" id="sf1">
</table><input type="file" name="uploadify1" id="uploadify1"/></td>
  </tr>   
  <tr>
    <td class="myInputTitle">�滮����</td>
    <td><input name="nian_xian" type="text" style="width:75%"></td>
  </tr>
   <tr>
    <td width="25%" class="myInputTitle">�����ļ�</td>
    <td><table width="300px" border="1"> <tr><td id="sf2"></td></tr>
</table><input type="file" name="uploadify2" id="uploadify2"/></td>
  </tr>  
  <tr>
    <td class="myInputTitle">�����ļ������ļ���</td>
    <td><input name="pi_fu" type="text" style="width:75%"></td>
  </tr>
  <tr>
    <td class="myInputTitle">�滮���Ƶ�λ��λ����</td>
    <td><input name="gh_danwei" type="text" style="width:75%" dataType="Require"></td>
  </tr>
  <tr>
    <td class="myInputTitle">�滮���Ƶ�λ��ϵ��</td>
    <td><input name="gh_ren" type="text" style="width:75%" dataType="Require"></td>
  </tr>
   <tr>
    <td class="myInputTitle">�滮���Ƶ�λ��ϵ�绰</td>
    <td><input name="gh_dianhua" type="text" style="width:75%" dataType="Require"></td>
  </tr> 
   <tr>
    <td colspan="2" align="center" style="height:30px"><input type="submit" name="Submit" value=" �� �� " style="height:25px; width:60px">&nbsp;&nbsp;
<input name="cmdCancel" type=button id="cmdCancel" onClick="history.back();" value=' ȡ �� ' style="height:25px; width:60px"></td>
  </tr>
   <tr>
    <td colspan="2" align="center" style="height:30px"><p align="center" class="style1"><strong>һ��滮��Ϊһ�����ݣ�֧�ֶ��ļ��ϴ������ļ���С���ܳ���5M��</strong></p></td>
  </tr>    
</table>
</form>
<input alt="#TB_inline?height=305&width=400&inlineId=after&modal=true" id="myshow" title="" class="thickbox" type="hidden" value="..."/>
<div id="after" align="left" style="display:none;background:#FFFFEE;font-size:12px;cursor:default;">
<div id='fileQueue' class="tree" style="width:400px;height:300px;background:#FFFFEE;"></div>
</div>
</body>
</html>
