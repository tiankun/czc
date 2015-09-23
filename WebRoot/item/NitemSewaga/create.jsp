<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" >
function mySubmit(){
if(Validator.Validate(document.form1,3)){
	var ke_touzi = document.getElementById("zong_touzi").value;
	var chu_touzi = document.getElementById("pi_touzi").value;
	if(chu_touzi>ke_touzi*1.1){
		alert("初设批复投资不能超过可研批复投资的10%！");
	}else{
	    var biao_shi = parent.document.getElementById("biao_shi").value;
	    document.form1.action="${pageContext.request.contextPath}/item/Nitem_sewaga!save.do?biao_shi="+biao_shi+"";
        document.form1.submit();
	}
}
}		
</script>
</head>

<body>
<form action="${pageContext.request.contextPath}/item/Nitem_sewaga!save.do" method="post" name="form1">
	<%@ include file="form_include.jsp" %>
</form>

<div id="after" align="left" style="display:none;background:#FFFFEE;font-size:12px;cursor:default;">
<button id='selareayes' onclick='clsbox()'>&nbsp;确 定&nbsp;</button> <button id='selareano' onclick='tb_remove()'>&nbsp;取 消&nbsp;</button>
<div style='border:1px dotted #cccccc;background:#ffffff;line-height:2em'>
选中的地区:
<span id='selarea'></span>
<input name="hidarea1" id="hidarea1" type="hidden" value=""/>
</div>
<div id='treeDemo' class="tree" style="width:390px;height:390px;background:#FFFFEE;overflow:scroll"></div>
</div>
</body>
</html>