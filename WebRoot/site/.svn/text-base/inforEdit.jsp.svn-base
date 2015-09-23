<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/kindeditor/themes/default/default.css" />	 
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script> 
	<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js" charset="gbk"></script>
	<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 		
	<script charset="utf-8" src="${pageContext.request.contextPath}/scripts/kindeditor/kindeditor-min.js"></script>
	<script charset="utf-8" src="${pageContext.request.contextPath}/scripts/kindeditor/lang/zh_CN.js"></script>		
<script language="JavaScript" type="text/JavaScript">
$(function() {
var thisheight = $(document).height();
	$("#content").height(thisheight-125);
	editor=KindEditor.create('textarea[id="content"]',{uploadJson : '${pageContext.request.contextPath}/scripts/kindeditor/jsp/upload_json.jsp',allowFileManager : false,filterMode: false,
items:['undo', 'redo', '|', 'preview', 'print', 'template', 'code', 'cut', 'copy', 'paste',
        'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
        'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
        'superscript', 'clearhtml', 'quickformat', 'selectall', '|', 'fullscreen', '/',
        'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
        'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|', 'image', 'multiimage',
        'flash', 'media', 'insertfile', 'table', 'hr', 'emoticons', 'baidumap', 'pagebreak',
        'anchor', 'link', 'unlink']});
});
function mySubmit(){
    form1.content.value=editor.html()
	if(Validator.Validate(document.form1,3)){
		document.form1.submit();
	}
}
</SCRIPT>   
</head>

<body>

<form action="${pageContext.request.contextPath}/site/Manage!save.do" method="post" name="form1">
	<input type="hidden" Id="id" name="id" value="${infor.id}"/>
<table border="1" width="100%" class="myInput">
	<tr class="tHead">	
		<td colspan="4"><strong>网站信息基本信息</strong></td>	
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">栏目</td>	
		<td width="35%">
		<input type="hidden" Id="inforname" name="inforname" value="${inforname}"/>${inforname}
		</td>
		<td width="15%" class="myInputTitle">添加时间</td>	
		<td width="35%">
		<input onClick="WdatePicker()" class="Wdate" id="times" name="times" maxlength="0" dataType="Date" value="${infor.times}" style="ime-mode:disabled"/></td>		
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">标题</td>	
		<td colspan="3">
		<input type="text" Id="biaoti" name="biaoti" maxlength="127" dataType="Require" value="${infor.biaoti}"/>
		</td>
	</tr>	
	<tr>
		<td width="15%" class="myInputTitle">内容</td>	
		<td colspan="3">
		  <textarea name="gaiyao" id="content" style="width:99%"><c:out value="${infor.gaiyao}" escapeXml="true"/></textarea>
		</td>
	</tr>
     <tr>	
		<td colspan="4" align="center" style="height: 30px">
	<input id="button" name="button" type="button" value=" 提 交 " onClick="return mySubmit();"/>
	<input type="button" value="返回列表" onclick="document.form2.submit();"/>	
	    </td>	
	</tr>
</table>
</form>
<form style="margin:0px" action="${pageContext.request.contextPath}/site/Manage!listInfor.do" method="post" name="form2">
<input type="hidden" name="inforname" value="${inforname}"/>
</form>
</body>

</html>