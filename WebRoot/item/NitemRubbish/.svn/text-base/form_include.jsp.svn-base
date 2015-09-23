<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn"%>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/scripts/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.ztree-2.6.min.js"></script>
<script src="${pageContext.request.contextPath}/scripts/jquery.thickbox.js" type=text/javascript></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/zTreeStyle.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/thickbox.css" type="text/css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.uploadify.min.js" charset="UTF-8"></script>     
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/swfobject.js" charset="UTF-8"></script>
<link href="${pageContext.request.contextPath}/styles/uploadify.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" >
var zTree1;
var setting;
var simpleNodes =[{id:${me.id},pId:${me.parent},name:"${me.name}",quan_ming:"${me.quan_ming}",isParent:true<c:if test="${nitem_rubbish==null}">,open:true</c:if>}<c:forEach items="${list}" var="dizhi">,{id:${dizhi.id},pId:${dizhi.parent},name:"${dizhi.name}",quan_ming:"${dizhi.quan_ming}",isParent:true}</c:forEach>];
setting = {
isSimpleData : true,
treeNodeKey : "id",
treeNodeParentKey : "pId",
checkable : false,
expandSpeed : false,
async : true,
asyncUrl : "${pageContext.request.contextPath}/admin/node.jsp",
asyncParam : ["id"],
callback:{
click:	zTreeOnClick
}
};
	$(document).ready(function(){
		zTree1 = $("#treeDemo").zTree(setting,simpleNodes);
		//设置初始值
		zTree1.selectNode(simpleNodes[0]);
		$("#selarea").html(getNodePath(simpleNodes[0]));
		$("#hidarea1").attr("value", simpleNodes[0].id);
	});
	function getNodePath(treeNode) {
		if (!treeNode) return "";
		var p = treeNode.quan_ming;
		var pNode = treeNode.parentNode;
		p = p;
		return p;
	}
	function zTreeOnClick(event, treeId, treeNode) {
		$("#selarea").empty();
		$("#selarea").html(getNodePath(treeNode));
		$("#hidarea1").attr("value", treeNode.id);
	}
function clsbox()
{
	var e=document.getElementById("selarea");
	var e1=document.getElementById("hidarea1");
	var t=document.getElementById("area_name");
	var h=document.getElementById("area");
	t.value=e.innerHTML;
	h.value=e1.value;
	tb_remove();
}

function stopInput(id){
	document.getElementById(id).onclick="";
	document.getElementById(id).style.backgroundColor="#666666";
	document.getElementById(id).require="false";
	}
function allowInput(id){
	document.getElementById(id).onclick=function onclick(event){WdatePicker();};
	document.getElementById(id).style.backgroundColor="";
	document.getElementById(id).require="true";
}

//文件过大信息
var size=1024*1024*2;//2M
var i=1;
var info='上传文件不可以超过2M';
$(document).ready(function(){
/*可研批复附件
function keyan(){
	$("#keyanTR").empty();
	$("#keyanTR").append("<td width='15%' class='myInputTitle'><font color='red'>可研批复附件</font></td>"+	
				"<td width='35%' colspan='3'>"+
				"<input type='file' name='uploadifyKy' id='uploadifyKy'/>"+
				"<table width='100%' border='1' id='keyanFj' class='myInput'></table></td>");
*/	
$("#uploadifyKy").uploadify({
'uploader': '${pageContext.request.contextPath}/images/uploadify.swf',
'script': '${pageContext.request.contextPath}/admin/uploadFileW.jsp?id=${user.guan_li}',
'cancelImg':'${pageContext.request.contextPath}/images/cancel.png',
'buttonImg':'${pageContext.request.contextPath}/images/select.png', 
'queueID': 'fileQueue',
'scriptAccess':'always',
'sizeLimit':size,
'fileDesc':'所有文件', //出现在上传对话框中的文件类型描述
'fileExt':'*.jpeg;*.jpg;*.bmp;*.png;*.gif;*.doc;*.docx;*.pdf',
'auto': true,
'multi': true,
'onSelect':function(event,queueId,fileObj){if(fileObj.size>size){alert(info);uploadifyCancel(fileObj.id);}else{document.getElementById('myshow').click();}},   
'onComplete': 
	function(event,queueId,fileObj,response,data){
	var fileName = response.substr(response.indexOf("/")+1);
	var path = response.substr(0,response.indexOf("/")).trim();
	var fileExt = path.substr(response.indexOf(".")+1);
		if(response!='null'&&response!='faile'){
			$("#kyTemp").attr("dataType","");
			$("#keyanFj").append('<tr id="div'+i+'"><td align="center" class="myInputTitle" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/'+fileExt+'.png"/></td>'+
				'<td class="myInputTitle" width="80%">'+
				'<input type="hidden" dataType="Require" msg="请上传可研批复附件" id="kyPath" name="path" value="'+path+'"/>'+
				'<input type="hidden" name="file_name" value="'+fileName+'"/>'+
				'<input type="hidden" name="file_ext" value="'+fileExt+'"/>'+
				'<input type="hidden" name="pic_type" value="可研"/>'+
				'<a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/'+path+'" target="_blank">'+
				'<font color="#113965">'+fileName+'</font></a></td><td align="center" width="10%">'+
				'<a href="javascript:mydel(div'+i+')">删除</a></td></tr>'); 
			tb_remove();
			i=i+1;
		}
	}
});
//}

/*初设
function chushe(){
	$("#chusheTR").empty();
	$("#chusheTR").append("<td width='15%' class='myInputTitle'><font color='red'>初设批复附件</font></td>"+	
			"<td width='35%' colspan='3'>"+
			"<input type='file' name='uploadifyCs' id='uploadifyCs'/>"+
			"<table width='100%' border='1' id='chusheFj' class='myInput'></table></td>");
*/
$("#uploadifyCs").uploadify({
'uploader': '${pageContext.request.contextPath}/images/uploadify.swf',
'script': '${pageContext.request.contextPath}/admin/uploadFileW.jsp?id=${user.guan_li}',
'cancelImg':'${pageContext.request.contextPath}/images/cancel.png',
'buttonImg':'${pageContext.request.contextPath}/images/select.png', 
'queueID': 'fileQueue',
'scriptAccess':'always',
'sizeLimit':size,
'fileDesc':'所有文件', //出现在上传对话框中的文件类型描述
'fileExt':'*.jpeg;*.jpg;*.bmp;*.png;*.gif;*.doc;*.docx;*.pdf',
'auto': true,
'multi': true,
'onSelect':function(event,queueId,fileObj){if(fileObj.size>size){alert(info);uploadifyCancel(fileObj.id);}else{document.getElementById('myshow').click();}},   
'onComplete': 
	function(event,queueId,fileObj,response,data){
	var fileName = response.substr(response.indexOf("/")+1);
	var path = response.substr(0,response.indexOf("/")).trim();
	var fileExt = path.substr(response.indexOf(".")+1);
		if(response!='null'&&response!='faile'){
			$("#csTemp").attr("dataType","");
			$("#chusheFj").append('<tr id="div'+i+'"><td align="center" class="myInputTitle" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/'+fileExt+'.png"/></td>'+
				'<td class="myInputTitle" width="80%">'+
				'<input type="hidden" name="pic_type" value="初设"/>'+
				'<input type="hidden" name="file_name" value="'+fileName+'"/>'+
				'<input type="hidden" name="file_ext" value="'+fileExt+'"/>'+
				'<input type="hidden" dataType="Require" msg="请上传初设批复附件" id="csPath" name="path" value="'+path+'"/><a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/'+path+'" target="_blank">'+
				'<font color="#113965">'+fileName+'</font></a></td><td align="center" width="10%">'+
				'<a href="javascript:mydel(div'+i+')">删除</a></td></tr>'); 
			tb_remove();
			i=i+1;
		}
	}
});
//}

/*实施
function shishi(){
	$("#shishiTR").empty();
	$("#shishiTR").append("<td width='15%' class='myInputTitle'><font color='red'>实施方案附件</font></td>"+	
			"<td width='35%' colspan='3'>"+
			"<input type='file' name='uploadifySs' id='uploadifySs'/>"+
			"<table width='100%' border='1' id='shishiFj' class='myInput'></table></td>");
*/
$("#uploadifySs").uploadify({
'uploader': '${pageContext.request.contextPath}/images/uploadify.swf',
'script': '${pageContext.request.contextPath}/admin/uploadFileW.jsp?id=${user.guan_li}',
'cancelImg':'${pageContext.request.contextPath}/images/cancel.png',
'buttonImg':'${pageContext.request.contextPath}/images/select.png', 
'queueID': 'fileQueue',
'scriptAccess':'always',
'sizeLimit':size,
'fileDesc':'所有文件', //出现在上传对话框中的文件类型描述
'fileExt':'*.jpeg;*.jpg;*.bmp;*.png;*.gif;*.doc;*.docx;*.pdf',
'auto': true,
'multi': true,
'onSelect':function(event,queueId,fileObj){if(fileObj.size>size){alert(info);uploadifyCancel(fileObj.id);}else{document.getElementById('myshow').click();}},   
'onComplete': 
	function(event,queueId,fileObj,response,data){
	var fileName = response.substr(response.indexOf("/")+1);
	var path = response.substr(0,response.indexOf("/")).trim();
	var fileExt = path.substr(response.indexOf(".")+1);
		if(response!='null'&&response!='faile'){
			$("#ssTemp").attr("dataType","");
			$("#shishiFj").append('<tr id="div'+i+'"><td align="center" class="myInputTitle" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/'+fileExt+'.png"/></td>'+
				'<td class="myInputTitle" width="80%">'+
				'<input type="hidden" name="pic_type" value="实施"/>'+
				'<input type="hidden" name="file_name" value="'+fileName+'"/>'+
				'<input type="hidden" name="file_ext" value="'+fileExt+'"/>'+
				'<input type="hidden" dataType="Require" msg="请上传实施方案附件" id="ssPath" name="path" value="'+path+'"/><a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/'+path+'" target="_blank">'+
				'<font color="#113965">'+fileName+'</font></a></td><td align="center" width="10%">'+
				'<a href="javascript:mydel(div'+i+')">删除</a></td></tr>'); 
			tb_remove();
			i=i+1;
		}
	}
});
//}

/*施工
function shigong(){
	$("#shigongTR").empty();
	$("#shigongTR").append("<td width='15%' class='myInputTitle'><font color='red'>施工许可证附件</font></td>"+	
			"<td width='35%' colspan='3'>"+
			"<input type='file' name='uploadifySg' id='uploadifySg'/>"+
			"<table width='100%' border='1' id='shigongFj' class='myInput'></table></td>");
*/	
$("#uploadifySg").uploadify({
'uploader': '${pageContext.request.contextPath}/images/uploadify.swf',
'script': '${pageContext.request.contextPath}/admin/uploadFileW.jsp?id=${user.guan_li}',
'cancelImg':'${pageContext.request.contextPath}/images/cancel.png',
'buttonImg':'${pageContext.request.contextPath}/images/select.png', 
'queueID': 'fileQueue',
'scriptAccess':'always',
'sizeLimit':size,
'fileDesc':'所有文件',//出现在上传对话框中的文件类型描述
'fileExt':'*.jpeg;*.jpg;*.bmp;*.png;*.gif;*.doc;*.docx;*.pdf',
'auto': true,
'multi': true,
'onSelect':function(event,queueId,fileObj){if(fileObj.size>size){alert(info);uploadifyCancel(fileObj.id);}else{document.getElementById('myshow').click();}},   
'onComplete': 
	function(event,queueId,fileObj,response,data){
	var fileName = response.substr(response.indexOf("/")+1);
	var path = response.substr(0,response.indexOf("/")).trim();
	var fileExt = path.substr(response.indexOf(".")+1);
		if(response!='null'&&response!='faile'){
			$("#sgTemp").attr("dataType","");
			$("#shigongFj").append('<tr id="div'+i+'"><td align="center" class="myInputTitle" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/'+fileExt+'.png"/></td>'+
				'<td class="myInputTitle" width="80%">'+
				'<input type="hidden" name="pic_type" value="施工"/>'+
				'<input type="hidden" name="file_name" value="'+fileName+'"/>'+
				'<input type="hidden" name="file_ext" value="'+fileExt+'"/>'+
				'<input type="hidden" dataType="Require" msg="请上传施工许可证附件" id="sgPath" name="path" value="'+path+'"/><a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/'+path+'" target="_blank">'+
				'<font color="#113965">'+fileName+'</font></a></td><td align="center" width="10%">'+
				'<a href="javascript:mydel(div'+i+')">删除</a></td></tr>'); 
			tb_remove();
			i=i+1;
		}
	}
});
//}

$("#uploadifySf").uploadify({
'uploader': '${pageContext.request.contextPath}/images/uploadify.swf',
'script': '${pageContext.request.contextPath}/admin/uploadFileW.jsp?id=${user.guan_li}',
'cancelImg':'${pageContext.request.contextPath}/images/cancel.png',
'buttonImg':'${pageContext.request.contextPath}/images/select.png', 
'queueID': 'fileQueue',
'scriptAccess':'always',
'sizeLimit':size,
'fileDesc':'所有文件',//出现在上传对话框中的文件类型描述
'fileExt':'*.jpeg;*.jpg;*.bmp;*.png;*.gif;*.doc;*.docx;*.pdf',
'auto': true,
'multi': true,
'onSelect':function(event,queueId,fileObj){if(fileObj.size>size){alert(info);uploadifyCancel(fileObj.id);}else{document.getElementById('myshow').click();}},   
'onComplete': 
	function(event,queueId,fileObj,response,data){
	var fileName = response.substr(response.indexOf("/")+1);
	var path = response.substr(0,response.indexOf("/")).trim();
	var fileExt = path.substr(response.indexOf(".")+1);
		if(response!='null'&&response!='faile'){
			$("#sfTemp").attr("dataType","");
			$("#shoufeiFj").append('<tr id="div'+i+'"><td align="center" class="myInputTitle" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/'+fileExt+'.png"/></td>'+
				'<td class="myInputTitle" width="80%">'+
				'<input type="hidden" name="pic_type" value="收费"/>'+
				'<input type="hidden" name="file_name" value="'+fileName+'"/>'+
				'<input type="hidden" name="file_ext" value="'+fileExt+'"/>'+
				'<input type="hidden" dataType="Require" msg="请上传施工许可证附件" id="sfPath" name="path" value="'+path+'"/><a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/'+path+'" target="_blank">'+
				'<font color="#113965">'+fileName+'</font></a></td><td align="center" width="10%">'+
				'<a href="javascript:mydel(div'+i+')">删除</a></td></tr>'); 
			tb_remove();
			i=i+1;
		}
	}
});
//}
});

function mydel(id){
if(confirm('是否确认删除此文件？'))
$(id).remove(); 
}

function keyan(){
	alert("请上传可研批复附件");
	$("#kyTemp").attr("dataType","Require");
}
function chushe(){
	alert("请上传初设批复附件");
	$("#csTemp").attr("dataType","Require");
}
function shishi(){
	alert("请上传实施方案附件");
	$("#ssTemp").attr("dataType","Require");
}
function shigong(){
	alert("请上传施工许可证附件");
	$("#sgTemp").attr("dataType","Require");
}
function shoufei(){
	alert("请上传收费附件");
	$("#sfTemp").attr("dataType","Require");
}

function moshi(type){
	if(type=='其他'){
		$("#qita_moshi").removeAttr("disabled");
	}else{
		$("#qita_moshi").attr("disabled","disabled");
	}
}

</script>
<style type="text/css">
.STYLE1 {
	COLOR: #ff0000;
	font-weight: bold
}
</style>
	<input type="hidden" Id="guan_li" name="guan_li" value="${user.guan_li}"/>
	<input type="hidden" Id="id" name="id" value="${nitem_rubbish.id}"/>
	<input type="hidden" Id="cdate" name="cdate" value="${nitem_rubbish.cdate}"/>
	<input type="hidden" Id="biaoshi" name="biaoshi" value="${nitem_rubbish.biaoshi}"/>
	<c:if test="${xiangzhen=='yes'}">
	  <input type="hidden" Id="area" name="area" value="${user.guan_li}"/>
	  <input name="area_name" id="area_name" type="hidden" value="${user.shu_di}"/>
	</c:if>
<table border="1" width="100%" class="myInput">
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>垃圾在建项目基本信息</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目名称</td>	
		<td width="35%" colspan="3">
		<input type="text" Id="name" name="name" maxlength="500" dataType="Require" value="${nitem_rubbish.name}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目详细地址</td>
		<td width="85%" colspan="3">
		<c:if test="${fn:length(fn:split(user.biao_shi,'_'))<=3}">
		<input name="area_name" id="area_name" type="text" value="${nitem_rubbish.area_name}" readonly='readonly' dataType="Require" style="width: 200px;"/>
		<input name="area" id="area" type="hidden" value="${nitem_rubbish.area}"/><input alt="#TB_inline?height=455&width=400&inlineId=after&modal=true" title="" class="thickbox" type="button" value="..."/>
		</c:if><!--<c:if test="${!empty nitem_rubbish.chu_num_order}">readonly='readonly' style='background-color:#666666;'</c:if>  -->
		<c:if test="${xiangzhen=='yes'}">
	    ${user.shu_di}
	    </c:if>
		&nbsp;<input type="text" Id="dizhi" name="dizhi" dataType="Require" value="${nitem_rubbish.dizhi}" style="width: 250px;"/>
		<c:if test="${fn:length(fn:split(user.biao_shi,'_'))==1}"> 项目分配至：
		县级<input type="radio" Id="shixian" name="shixian" value="县" dataType="Group" <c:if test="${nitem_rubbish.shixian=='县'}">checked</c:if>>
		市级<input type="radio" Id="shixian" name="shixian" value="市" <c:if test="${nitem_rubbish.shixian=='市'}">checked</c:if>>  
		</c:if>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目编号</td>	
		<td width="35%">
		<input type="text" Id="num" name="num" maxlength="250" dataType="" value="${nitem_rubbish.num}"/>
		</td>
		<td width="15%" class="myInputTitle">规划建设年限</td>	
		<td width="35%">
		<select Id="gui_nian" name="gui_nian" style="width:100px">
		    <option value="">未选择</option>
		    <option value="2008" <c:if test="${nitem_rubbish.gui_nian=='2008'}">selected</c:if>>2008</option>
		    <option value="2009" <c:if test="${nitem_rubbish.gui_nian=='2009'}">selected</c:if>>2009</option>
		    <option value="2010" <c:if test="${nitem_rubbish.gui_nian=='2010'}">selected</c:if>>2010</option>
		    <option value="2011" <c:if test="${nitem_rubbish.gui_nian=='2011'}">selected</c:if>>2011</option>
		    <option value="2012" <c:if test="${nitem_rubbish.gui_nian=='2012'}">selected</c:if>>2012</option>
		    <option value="2013" <c:if test="${nitem_rubbish.gui_nian=='2013'}">selected</c:if>>2013</option>
		    <option value="2014" <c:if test="${nitem_rubbish.gui_nian=='2014'}">selected</c:if>>2014</option>
		    <option value="2015" <c:if test="${nitem_rubbish.gui_nian=='2015'}">selected</c:if>>2015</option>
		    <option value="2016" <c:if test="${nitem_rubbish.gui_nian=='2016'}">selected</c:if>>2016</option>
		    <option value="2017" <c:if test="${nitem_rubbish.gui_nian=='2017'}">selected</c:if>>2017</option>
		    <option value="2018" <c:if test="${nitem_rubbish.gui_nian=='2018'}">selected</c:if>>2018</option>
		    <option value="2019" <c:if test="${nitem_rubbish.gui_nian=='2019'}">selected</c:if>>2019</option>
		    <option value="2020" <c:if test="${nitem_rubbish.gui_nian=='2020'}">selected</c:if>>2020</option>
		</select>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目性质</td>	
		<td width="35%">
			<select id="xingzhi" name="xingzhi" style="width: 100px;">
				<option value="新建" <c:if test="${nitem_rubbish.xingzhi=='新建'}">selected</c:if>>新建</option>
				<option value="改建" <c:if test="${nitem_rubbish.xingzhi=='改建'}">selected</c:if>>改建</option>
				<option value="扩建" <c:if test="${nitem_rubbish.xingzhi=='扩建'}">selected</c:if>>扩建</option>
			</select>
		</td>
		<td width="15%" class="myInputTitle">项目进度</td>	
		<td width="35%">
		    <a href="${pageContext.request.contextPath}/item/Nitem_yue!uploadList.do?type=3&item_id=${nitem_rubbish.id}">进入月报</a>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">建设运营模式</td>	
		<td width="35%">
			<select id="jian_mo" name="jian_mo" onchange="moshi(this.value)" style="width: 100px;">
				<option value="BOT" <c:if test="${nitem_rubbish.jian_mo=='BOT'}">selected</c:if>>BOT</option>
				<option value="BT" <c:if test="${nitem_rubbish.jian_mo=='BT'}">selected</c:if>>BT</option>
				<option value="TOT" <c:if test="${nitem_rubbish.jian_mo=='TOT'}">selected</c:if>>TOT</option>
				<option value="托管" <c:if test="${nitem_rubbish.jian_mo=='托管'}">selected</c:if>>托管</option>
				<option value="其他" <c:if test="${nitem_rubbish.jian_mo=='其他'}">selected</c:if>>其他</option>
			</select>
			<input type="text" name="qita_moshi" id="qita_moshi" disabled="false" value="${nitem_rubbish.qita_moshi}"/>
		</td>
		<td width="15%" class="myInputTitle">服务面积（<span class="STYLE1">平方公里</span>）</td>	
		<td width="35%">
		<input type="text" Id="fw_mianji" name="fw_mianji" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.fw_mianji}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">服务范围</td>	
		<td width="35%" colspan="3">
		<textarea Id="fw_fanwei" name="fw_fanwei" style="width: 90%;" rows="2">${nitem_rubbish.fw_fanwei}</textarea>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">所属流域（水系）</td>	
		<td width="35%">
		    <select id="shuixi" name="shuixi" style="width: 100px;">
				<option value="长江水系" <c:if test="${nitem_rubbish.shuixi=='长江水系'}">selected</c:if>>长江水系</option>
				<option value="珠江水系" <c:if test="${nitem_rubbish.shuixi=='珠江水系'}">selected</c:if>>珠江水系</option>
				<option value="元江（红河）水系" <c:if test="${nitem_rubbish.shuixi=='元江（红河）水系'}">selected</c:if>>元江（红河）水系</option>
				<option value="澜沧江（湄公河）水系" <c:if test="${nitem_rubbish.shuixi=='澜沧江（湄公河）水系'}">selected</c:if>>澜沧江（湄公河）水系</option>
				<option value="怒江水系" <c:if test="${nitem_rubbish.shuixi=='怒江水系'}">selected</c:if>>怒江水系</option>
				<option value="伊洛瓦底江水系" <c:if test="${nitem_rubbish.shuixi=='伊洛瓦底江水系'}">selected</c:if>>伊洛瓦底江水系</option>
			</select>
		</td>
		<td width="15%" class="myInputTitle">所属流域（湖泊）</td>	
		<td width="35%">
		    <select id="hupo" name="hupo" style="width: 100px;">
				<option value="滇池" <c:if test="${nitem_rubbish.hupo=='滇池'}">selected</c:if>>滇池</option>
				<option value="洱海" <c:if test="${nitem_rubbish.hupo=='洱海'}">selected</c:if>>洱海</option>
				<option value="抚仙湖" <c:if test="${nitem_rubbish.hupo=='抚仙湖'}">selected</c:if>>抚仙湖</option>
				<option value="程海" <c:if test="${nitem_rubbish.hupo=='程海'}">selected</c:if>>程海</option>
				<option value="泸沽湖" <c:if test="${nitem_rubbish.hupo=='泸沽湖'}">selected</c:if>>泸沽湖</option>
				<option value="杞麓湖" <c:if test="${nitem_rubbish.hupo=='杞麓湖'}">selected</c:if>>杞麓湖</option>
				<option value="星云湖" <c:if test="${nitem_rubbish.hupo=='星云湖'}">selected</c:if>>星云湖</option>
				<option value="阳宗海" <c:if test="${nitem_rubbish.hupo=='阳宗海'}">selected</c:if>>阳宗海</option>
				<option value="异龙湖" <c:if test="${nitem_rubbish.hupo=='异龙湖'}">selected</c:if>>异龙湖</option>
			</select>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">服务人口（近期）（<span class="STYLE1">万人</span>）</td>	
		<td width="35%">
		<input type="text" Id="fwrk_jinqi" name="fwrk_jinqi" maxlength="22" require="false" dataType="Double"  value="${nitem_rubbish.fwrk_jinqi}"/>
		</td>
		<td width="15%" class="myInputTitle">服务人口（远期）（<span class="STYLE1">万人</span>）</td>	
		<td width="35%">
		<input type="text" Id="fwrk_yuanqi" name="fwrk_yuanqi" maxlength="22" require="false" dataType="Double"  value="${nitem_rubbish.fwrk_yuanqi}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">服务年限（近期）</td>	
		<td width="35%">
		<input type="text" Id="fwnx_jinqi" name="fwnx_jinqi" maxlength="250" dataType="" value="${nitem_rubbish.fwnx_jinqi}"/>
		</td>
		<td width="15%" class="myInputTitle">服务年限（远期）</td>	
		<td width="35%">
		<input type="text" Id="fwnx_yuanqi" name="fwnx_yuanqi" maxlength="250" dataType="" value="${nitem_rubbish.fwnx_yuanqi}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">设计规模（近期）（<span class="STYLE1">吨/日</span>）</td>	
		<td width="35%">
		<input type="text" Id="clgm_jinqi" name="clgm_jinqi" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.clgm_jinqi}"/>
		</td>
		<td width="15%" class="myInputTitle">设计规模（远期）（<span class="STYLE1">吨/日</span>）</td>	
		<td width="35%">
		<input type="text" Id="clgm_yuanqi" name="clgm_yuanqi" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.clgm_yuanqi}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">垃圾处理工艺</td>	
		<td width="35%">
		卫生填埋<input type="checkbox" id="laji_gongyi" name="laji_gongyi" value="卫生填埋"
					<c:if test="${fn:contains(nitem_rubbish.laji_gongyi,';卫生填埋;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		焚烧<input type="checkbox" id="laji_gongyi" name="laji_gongyi" value="焚烧" dataType="Group"
					<c:if test="${fn:contains(nitem_rubbish.laji_gongyi,';焚烧;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		堆肥<input type="checkbox" id="laji_gongyi" name="laji_gongyi" value="堆肥" dataType="Group"
					<c:if test="${fn:contains(nitem_rubbish.laji_gongyi,';堆肥;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		其他<input type="checkbox" id="laji_gongyi" name="laji_gongyi" value="其他" dataType="Group"
					<c:if test="${fn:contains(nitem_rubbish.laji_gongyi,';其他;')}">checked</c:if>>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">中转站设计规模（<span class="STYLE1">吨/日</span>）</td>	
		<td width="35%">
		<input type="text" Id="zhong_mo" name="zhong_mo" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.zhong_mo}"/>
		</td>
		<td width="15%" class="myInputTitle">滤液处理工艺</td>	
		<td width="35%">
		<input type="text" Id="lvye_gongyi" name="lvye_gongyi" value="${nitem_rubbish.lvye_gongyi}">
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">收运设施（<span class="STYLE1">箱</span>）</td>	
		<td width="35%">
		<input type="text" Id="yun_sheshi" name="yun_sheshi" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.yun_sheshi}"/>
		</td>
		<td width="15%" class="myInputTitle">垃圾运输车（<span class="STYLE1">辆</span>）</td>	
		<td width="35%">
		<input type="text" Id="yun_car" name="yun_car" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.yun_car}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">服务乡镇类型</td>	
		<td width="35%" colspan="3">
		兴边富民<input type="checkbox" Id="xiang_type" name="xiang_type" value="兴边富民"
					<c:if test="${fn:contains(nitem_rubbish.xiang_type,';兴边富民;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		特色小镇<input type="checkbox" Id="xiang_type" name="xiang_type" value="特色小镇"
					<c:if test="${fn:contains(nitem_rubbish.xiang_type,';特色小镇;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		民族示范区<input type="checkbox" Id="xiang_type" name="xiang_type" value="民族示范区"
					<c:if test="${fn:contains(nitem_rubbish.xiang_type,';民族示范区;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		连片扶贫<input type="checkbox" Id="xiang_type" name="xiang_type" value="连片扶贫"
					<c:if test="${fn:contains(nitem_rubbish.xiang_type,';连片扶贫;')}">checked</c:if>>
		</td>
	</tr>
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>项目投资情况</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">可研批复投资（<span class="STYLE1">万元</span>）</td>	
		<td width="35%" colspan="3">
		<input type="text" Id="zong_touzi" name="zong_touzi" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.zong_touzi}"/>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">国家补助（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">
		<input type="text" Id="guo_bu" name="guo_bu" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.guo_bu}"/>
		</td>
		<td width="15%" class="myInputTitle">省级补助（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">
		<input type="text" Id="sheng_bu" name="sheng_bu" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.sheng_bu}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">地方配套（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">
		<input type="text" Id="di_pei" name="di_pei" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.di_pei}"/>
		</td>
		<td width="15%" class="myInputTitle">自筹（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">
		<input type="text" Id="zi_chou" name="zi_chou" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.zi_chou}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">工程直接费（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">
		<input type="text" Id="gong_zhi" name="gong_zhi" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.gong_zhi}"/>
		</td>
		<td width="15%" class="myInputTitle">工程间接费（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">
		<input type="text" Id="gong_jian" name="gong_jian" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.gong_jian}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">工程预备费（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">
		<input type="text" Id="gong_yu" name="gong_yu" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.gong_yu}"/>
		</td>
		<td width="15%" class="myInputTitle">建设期贷款利息（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">
		<input type="text" Id="jian_li" name="jian_li" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.jian_li}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">铺底流动资金（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">
		<input type="text" Id="pu_liu" name="pu_liu" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.pu_liu}"/>
		</td>
		<td width="15%" class="myInputTitle">水厂投资（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">
		<input type="text" Id="shui_touzi" name="shui_touzi" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.shui_touzi}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">配套管网（<span class="STYLE1">万元</span>）</td>	
		<td width="35%" colspan="3">
		<input type="text" Id="guan_chang" name="guan_chang" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.guan_chang}"/>
    </tr>
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>工程开展情况</strong>
		</td>
	</tr>
    <tr>
		<td width="15%" class="myInputTitle">可研批复文号</td>	
		<td width="35%">
		<input type="text" Id="keyan_num" name="keyan_num" style="width: 70px;" maxlength="500" dataType="" value="${nitem_rubbish.keyan_num}"/>
		【<select Id="keyan_num_year" name="keyan_num_year" style="width:100px">
		    <option value="">未选择</option>
		    <option value="2008" <c:if test="${nitem_rubbish.keyan_num_year=='2008'}">selected</c:if>>2008</option>
		    <option value="2009" <c:if test="${nitem_rubbish.keyan_num_year=='2009'}">selected</c:if>>2009</option>
		    <option value="2010" <c:if test="${nitem_rubbish.keyan_num_year=='2010'}">selected</c:if>>2010</option>
		    <option value="2011" <c:if test="${nitem_rubbish.keyan_num_year=='2011'}">selected</c:if>>2011</option>
		    <option value="2012" <c:if test="${nitem_rubbish.keyan_num_year=='2012'}">selected</c:if>>2012</option>
		    <option value="2013" <c:if test="${nitem_rubbish.keyan_num_year=='2013'}">selected</c:if>>2013</option>
		    <option value="2014" <c:if test="${nitem_rubbish.keyan_num_year=='2014'}">selected</c:if>>2014</option>
		    <option value="2015" <c:if test="${nitem_rubbish.keyan_num_year=='2015'}">selected</c:if>>2015</option>
		    <option value="2016" <c:if test="${nitem_rubbish.keyan_num_year=='2016'}">selected</c:if>>2016</option>
		    <option value="2017" <c:if test="${nitem_rubbish.keyan_num_year=='2017'}">selected</c:if>>2017</option>
		    <option value="2018" <c:if test="${nitem_rubbish.keyan_num_year=='2018'}">selected</c:if>>2018</option>
		    <option value="2019" <c:if test="${nitem_rubbish.keyan_num_year=='2019'}">selected</c:if>>2019</option>
		    <option value="2020" <c:if test="${nitem_rubbish.keyan_num_year=='2020'}">selected</c:if>>2020</option>
		</select>】
		<input type="text" Id="keyan_num_order" name="keyan_num_order" onchange="keyan()" style="width: 70px;" maxlength="500" require="false" dataType="Number" value="${nitem_rubbish.keyan_num_order}"/>
		号
		</td>
		<td width="15%" class="myInputTitle">可研编制单位</td>	
		<td width="35%">
		<input type="text" Id="keyan_com" name="keyan_com" maxlength="500" dataType="" value="${nitem_rubbish.keyan_com}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">可研批复规模（<span class="STYLE1">吨/日</span>）</td>	
		<td width="35%">近期：
		<input type="text" Id="keyan_jinqi" name="keyan_jinqi" style="width: 100px;" maxlength="250" dataType="" value="${nitem_rubbish.keyan_jinqi}"/>
		远期：
		<input type="text" Id="keyan_yuanqi" name="keyan_yuanqi" style="width: 100px;" maxlength="250" dataType="" value="${nitem_rubbish.keyan_yuanqi}"/>
		</td>
		<td width="15%" class="myInputTitle">可研批复时间</td>	
		<td width="35%">
		<input id="keyan_date" name="keyan_date" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${nitem_rubbish.keyan_date}" style="ime-mode:disabled;"/>
		</td>
	</tr>
	<tr id="keyanTR">
		<td width="15%" class="myInputTitle"><font color="red">可研批复附件</font></td>	
		<td width="35%" colspan="3">
		<input type="file" name="uploadifyKy" id="uploadifyKy"/>
		<table width="100%" border="1" id="keyanFj" class="myInput">
		<input type="hidden" Id="kyTemp" name="kyTemp" msg="请上传可研批复附件" dataType=""/>
			<c:forEach items="${keyan}" var="item" varStatus="i">
			<tr id="div${2000+i.index}"><td align="center" class="myInputTitle" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
			<td class="myInputTitle" width="80%">
			<input type="hidden" datatype="Require" id="kyPath" name="path" value="${item.path}"/>
			<input type="hidden" name="file_name" value="${item.file_name}"/>
			<input type="hidden" name="file_ext" value="${item.file_ext}"/>
			<input type="hidden" name="pic_type" value="${item.pic_type}"/>
			<a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${item.path}" target="_blank">
			<font color="#113965">${item.file_name}</font></a></td><td align="center" width="10%">
			<a href="javascript:mydel(div${2000+i.index})">删除</a></td></tr>
			</c:forEach>
		</table>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">初设批复投资（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">
		<input type="text" Id="pi_touzi" name="pi_touzi" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.pi_touzi}"/>
		</td>
		<td width="15%" class="myInputTitle">初设批复文号</td>	
		<td width="35%">
		<input type="text" Id="chu_num" name="chu_num" style="width: 70px;" maxlength="500" dataType="" value="${nitem_rubbish.chu_num}"/>
		【<select Id="chu_num_year" name="chu_num_year" style="width:100px">
		    <option value="">未选择</option>
		    <option value="2008" <c:if test="${nitem_rubbish.chu_num_year=='2008'}">selected</c:if>>2008</option>
		    <option value="2009" <c:if test="${nitem_rubbish.chu_num_year=='2009'}">selected</c:if>>2009</option>
		    <option value="2010" <c:if test="${nitem_rubbish.chu_num_year=='2010'}">selected</c:if>>2010</option>
		    <option value="2011" <c:if test="${nitem_rubbish.chu_num_year=='2011'}">selected</c:if>>2011</option>
		    <option value="2012" <c:if test="${nitem_rubbish.chu_num_year=='2012'}">selected</c:if>>2012</option>
		    <option value="2013" <c:if test="${nitem_rubbish.chu_num_year=='2013'}">selected</c:if>>2013</option>
		    <option value="2014" <c:if test="${nitem_rubbish.chu_num_year=='2014'}">selected</c:if>>2014</option>
		    <option value="2015" <c:if test="${nitem_rubbish.chu_num_year=='2015'}">selected</c:if>>2015</option>
		    <option value="2016" <c:if test="${nitem_rubbish.chu_num_year=='2016'}">selected</c:if>>2016</option>
		    <option value="2017" <c:if test="${nitem_rubbish.chu_num_year=='2017'}">selected</c:if>>2017</option>
		    <option value="2018" <c:if test="${nitem_rubbish.chu_num_year=='2018'}">selected</c:if>>2018</option>
		    <option value="2019" <c:if test="${nitem_rubbish.chu_num_year=='2019'}">selected</c:if>>2019</option>
		    <option value="2020" <c:if test="${nitem_rubbish.chu_num_year=='2020'}">selected</c:if>>2020</option>
		</select>】
		<input type="text" Id="chu_num_order" name="chu_num_order" onchange="chushe()" style="width: 70px;" maxlength="500" require="false" dataType="Number" value="${nitem_rubbish.chu_num_order}"/>
		号
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">初设编制单位</td>	
		<td width="35%">
		<input type="text" Id="chu_com" name="chu_com" maxlength="500" dataType="" value="${nitem_rubbish.chu_com}"/>
		</td>
		<td width="15%" class="myInputTitle">初设批复时间</td>	
		<td width="35%">
		<input id="chu_date" name="chu_date" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${nitem_rubbish.chu_date}" style="ime-mode:disabled;"/>
		</td>
	</tr>
	<tr id="chusheTR">
		<td width="15%" class="myInputTitle"><font color="red">初设批复附件</font></td>	
		<td width="35%" colspan="3">
		<input type="file" name="uploadifyCs" id="uploadifyCs"/>
		<table width="100%" border="1" id="chusheFj" class="myInput">
			<input type="hidden" Id="csTemp" name="csTemp" msg="请上传初设批复附件" dataType=""/>
			<c:forEach items="${chushe}" var="item" varStatus="i">
			<tr id="div${4000+i.index}"><td align="center" class="myInputTitle" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
			<td class="myInputTitle" width="80%">
			<input type="hidden" datatype="Require" id="csPath" name="path" value="${item.path}"/>
			<input type="hidden" name="file_name" value="${item.file_name}"/>
			<input type="hidden" name="file_ext" value="${item.file_ext}"/>
			<input type="hidden" name="pic_type" value="${item.pic_type}"/>
			<a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${item.path}" target="_blank">
			<font color="#113965">${item.file_name}</font></a></td><td align="center" width="10%">
			<a href="javascript:mydel(div${4000+i.index})">删除</a></td></tr>
			</c:forEach>
		</table>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">实施方案文号</td>	
		<td width="35%">
		<input type="text" Id="shi_num" name="shi_num" style="width: 70px;" maxlength="500" dataType="" value="${nitem_rubbish.shi_num}"/>
		【<select Id="shi_num_year" name="shi_num_year" style="width:100px">
		    <option value="">未选择</option>
		    <option value="2008" <c:if test="${nitem_rubbish.shi_num_year=='2008'}">selected</c:if>>2008</option>
		    <option value="2009" <c:if test="${nitem_rubbish.shi_num_year=='2009'}">selected</c:if>>2009</option>
		    <option value="2010" <c:if test="${nitem_rubbish.shi_num_year=='2010'}">selected</c:if>>2010</option>
		    <option value="2011" <c:if test="${nitem_rubbish.shi_num_year=='2011'}">selected</c:if>>2011</option>
		    <option value="2012" <c:if test="${nitem_rubbish.shi_num_year=='2012'}">selected</c:if>>2012</option>
		    <option value="2013" <c:if test="${nitem_rubbish.shi_num_year=='2013'}">selected</c:if>>2013</option>
		    <option value="2014" <c:if test="${nitem_rubbish.shi_num_year=='2014'}">selected</c:if>>2014</option>
		    <option value="2015" <c:if test="${nitem_rubbish.shi_num_year=='2015'}">selected</c:if>>2015</option>
		    <option value="2016" <c:if test="${nitem_rubbish.shi_num_year=='2016'}">selected</c:if>>2016</option>
		    <option value="2017" <c:if test="${nitem_rubbish.shi_num_year=='2017'}">selected</c:if>>2017</option>
		    <option value="2018" <c:if test="${nitem_rubbish.shi_num_year=='2018'}">selected</c:if>>2018</option>
		    <option value="2019" <c:if test="${nitem_rubbish.shi_num_year=='2019'}">selected</c:if>>2019</option>
		    <option value="2020" <c:if test="${nitem_rubbish.shi_num_year=='2020'}">selected</c:if>>2020</option>
		</select>】
		<input type="text" Id="shi_num_order" name="shi_num_order" onchange="shishi()" style="width: 70px;" maxlength="500" require="false" dataType="Number" value="${nitem_rubbish.shi_num_order}"/>
		号
		</td>
		<td width="15%" class="myInputTitle">实施方案编制单位</td>	
		<td width="35%">
		<input type="text" Id="shi_com" name="shi_com" maxlength="500" dataType="" value="${nitem_rubbish.shi_com}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">实施方案批复时间</td>	
		<td width="35%">
		<input id="shi_date" name="shi_date" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${nitem_rubbish.shi_date}" style="ime-mode:disabled;"/>
		</td>
		<td width="15%" class="myInputTitle">项目建设年限</td>	
		<td width="35%">
		<select Id="nianxian_begin" name="nianxian_begin" style="width:100px">
		    <option value="">未选择</option>
		    <option value="2008" <c:if test="${nitem_rubbish.nianxian_begin=='2008'}">selected</c:if>>2008</option>
		    <option value="2009" <c:if test="${nitem_rubbish.nianxian_begin=='2009'}">selected</c:if>>2009</option>
		    <option value="2010" <c:if test="${nitem_rubbish.nianxian_begin=='2010'}">selected</c:if>>2010</option>
		    <option value="2011" <c:if test="${nitem_rubbish.nianxian_begin=='2011'}">selected</c:if>>2011</option>
		    <option value="2012" <c:if test="${nitem_rubbish.nianxian_begin=='2012'}">selected</c:if>>2012</option>
		    <option value="2013" <c:if test="${nitem_rubbish.nianxian_begin=='2013'}">selected</c:if>>2013</option>
		    <option value="2014" <c:if test="${nitem_rubbish.nianxian_begin=='2014'}">selected</c:if>>2014</option>
		    <option value="2015" <c:if test="${nitem_rubbish.nianxian_begin=='2015'}">selected</c:if>>2015</option>
		    <option value="2016" <c:if test="${nitem_rubbish.nianxian_begin=='2016'}">selected</c:if>>2016</option>
		    <option value="2017" <c:if test="${nitem_rubbish.nianxian_begin=='2017'}">selected</c:if>>2017</option>
		    <option value="2018" <c:if test="${nitem_rubbish.nianxian_begin=='2018'}">selected</c:if>>2018</option>
		    <option value="2019" <c:if test="${nitem_rubbish.nianxian_begin=='2019'}">selected</c:if>>2019</option>
		    <option value="2020" <c:if test="${nitem_rubbish.nianxian_begin=='2020'}">selected</c:if>>2020</option>
		</select>
		--
		<select Id="nianxian_end" name="nianxian_end" style="width:100px">
		    <option value="">未选择</option>
		    <option value="2008" <c:if test="${nitem_rubbish.nianxian_end=='2008'}">selected</c:if>>2008</option>
		    <option value="2009" <c:if test="${nitem_rubbish.nianxian_end=='2009'}">selected</c:if>>2009</option>
		    <option value="2010" <c:if test="${nitem_rubbish.nianxian_end=='2010'}">selected</c:if>>2010</option>
		    <option value="2011" <c:if test="${nitem_rubbish.nianxian_end=='2011'}">selected</c:if>>2011</option>
		    <option value="2012" <c:if test="${nitem_rubbish.nianxian_end=='2012'}">selected</c:if>>2012</option>
		    <option value="2013" <c:if test="${nitem_rubbish.nianxian_end=='2013'}">selected</c:if>>2013</option>
		    <option value="2014" <c:if test="${nitem_rubbish.nianxian_end=='2014'}">selected</c:if>>2014</option>
		    <option value="2015" <c:if test="${nitem_rubbish.nianxian_end=='2015'}">selected</c:if>>2015</option>
		    <option value="2016" <c:if test="${nitem_rubbish.nianxian_end=='2016'}">selected</c:if>>2016</option>
		    <option value="2017" <c:if test="${nitem_rubbish.nianxian_end=='2017'}">selected</c:if>>2017</option>
		    <option value="2018" <c:if test="${nitem_rubbish.nianxian_end=='2018'}">selected</c:if>>2018</option>
		    <option value="2019" <c:if test="${nitem_rubbish.nianxian_end=='2019'}">selected</c:if>>2019</option>
		    <option value="2020" <c:if test="${nitem_rubbish.nianxian_end=='2020'}">selected</c:if>>2020</option>
		</select>
		</td>
	</tr>
	<tr id="shishiTR">
		<td width="15%" class="myInputTitle"><font color="red">实施方案附件</font></td>	
		<td width="35%" colspan="3">
		<input type="file" name="uploadifySs" id="uploadifySs"/>
		<table width="100%" border="1" id="shishiFj" class="myInput">
			<input type="hidden" Id="ssTemp" name="ssTemp" msg="请上传实施方案附件" dataType=""/>
			<c:forEach items="${shishi}" var="item" varStatus="i">
			<tr id="div${6000+i.index}"><td align="center" class="myInputTitle" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
			<td class="myInputTitle" width="80%">
			<input type="hidden" datatype="Require" id="ssPath" name="path" value="${item.path}"/>
			<input type="hidden" name="file_name" value="${item.file_name}"/>
			<input type="hidden" name="file_ext" value="${item.file_ext}"/>
			<input type="hidden" name="pic_type" value="${item.pic_type}"/>
			<a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${item.path}" target="_blank">
			<font color="#113965">${item.file_name}</font></a></td><td align="center" width="10%">
			<a href="javascript:mydel(div${6000+i.index})">删除</a></td></tr>
			</c:forEach>
		</table>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">施工图编制单位</td>	
		<td width="35%">
		<input type="text" Id="shigong_com" name="shigong_com" maxlength="500" dataType="" value="${nitem_rubbish.shigong_com}"/>
		</td>
		<td width="15%" class="myInputTitle">施工许可证编号</td>	
		<td width="35%">
		<input type="text" Id="shigong_num" name="shigong_num" style="width: 70px;" maxlength="500" dataType="" value="${nitem_rubbish.shigong_num}"/>
		【<select Id="shigong_num_year" name="shigong_num_year" style="width:100px">
		    <option value="">未选择</option>
		    <option value="2008" <c:if test="${nitem_rubbish.shigong_num_year=='2008'}">selected</c:if>>2008</option>
		    <option value="2009" <c:if test="${nitem_rubbish.shigong_num_year=='2009'}">selected</c:if>>2009</option>
		    <option value="2010" <c:if test="${nitem_rubbish.shigong_num_year=='2010'}">selected</c:if>>2010</option>
		    <option value="2011" <c:if test="${nitem_rubbish.shigong_num_year=='2011'}">selected</c:if>>2011</option>
		    <option value="2012" <c:if test="${nitem_rubbish.shigong_num_year=='2012'}">selected</c:if>>2012</option>
		    <option value="2013" <c:if test="${nitem_rubbish.shigong_num_year=='2013'}">selected</c:if>>2013</option>
		    <option value="2014" <c:if test="${nitem_rubbish.shigong_num_year=='2014'}">selected</c:if>>2014</option>
		    <option value="2015" <c:if test="${nitem_rubbish.shigong_num_year=='2015'}">selected</c:if>>2015</option>
		    <option value="2016" <c:if test="${nitem_rubbish.shigong_num_year=='2016'}">selected</c:if>>2016</option>
		    <option value="2017" <c:if test="${nitem_rubbish.shigong_num_year=='2017'}">selected</c:if>>2017</option>
		    <option value="2018" <c:if test="${nitem_rubbish.shigong_num_year=='2018'}">selected</c:if>>2018</option>
		    <option value="2019" <c:if test="${nitem_rubbish.shigong_num_year=='2019'}">selected</c:if>>2019</option>
		    <option value="2020" <c:if test="${nitem_rubbish.shigong_num_year=='2020'}">selected</c:if>>2020</option>
		</select>】
		<input type="text" Id="shigong_num_order" name="shigong_num_order" onchange="shigong()" style="width: 70px;" maxlength="500" require="false" dataType="Number" value="${nitem_rubbish.shigong_num_order}"/>
		号
		</td>
	</tr>
	<tr id="shigongTR">
		<td width="15%" class="myInputTitle"><font color="red">施工许可证附件</font></td>	
		<td width="35%" colspan="3">
		<input type="file" name="uploadifySg" id="uploadifySg"/>
		<table width="100%" border="1" id="shigongFj" class="myInput">
			<input type="hidden" Id="sgTemp" name="sgTemp" msg="请上传施工许可证附件" dataType=""/>
			<c:forEach items="${shigong}" var="item" varStatus="i">
			<tr id="div${8000+i.index}"><td align="center" class="myInputTitle" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
			<td class="myInputTitle" width="80%">
			<input type="hidden" datatype="Require" id="sgPath" name="path" value="${item.path}"/>
			<input type="hidden" name="file_name" value="${item.file_name}"/>
			<input type="hidden" name="file_ext" value="${item.file_ext}"/>
			<input type="hidden" name="pic_type" value="${item.pic_type}"/>
			<a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${item.path}" target="_blank">
			<font color="#113965">${item.file_name}</font></a></td><td align="center" width="10%">
			<a href="javascript:mydel(div${8000+i.index})">删除</a></td></tr>
			</c:forEach>
		</table>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">工程开工时间</td>	
		<td width="35%">
		<input id="item_begin" name="item_begin" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${nitem_rubbish.item_begin}" style="ime-mode:disabled;"/>
		</td>
		<td width="15%" class="myInputTitle">是否竣工</td>	
		<td width="35%">
		是<input type="radio" Id="jungong" name="jungong" onclick="allowInput('jungong_date')" value="是" dataType="Group" <c:if test="${nitem_rubbish.jungong=='是'}">checked</c:if>>
		否<input type="radio" Id="jungong" name="jungong" onclick="stopInput('jungong_date')" value="否" <c:if test="${nitem_rubbish.jungong=='否'}">checked</c:if>>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">竣工日期</td>	
		<td width="35%" colspan="3">
		<input id="jungong_date" name="jungong_date" class="Wdate" readonly="readonly" onclick="WdatePicker()" require="false" dataType="Date" value="${nitem_rubbish.jungong_date}" style="ime-mode:disabled;width: 29%;" />
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目现行收费标准</td>	
		<td width="35%">
		<input type="text" Id="shou_biao" name="shou_biao" maxlength="100" dataType="" value="${nitem_sewaga.shou_biao}"/>
		</td>
		<td width="15%" class="myInputTitle">收费文号</td>	
		<td width="35%">
		<input type="text" Id="shou_num" name="shou_num" style="width: 70px;" maxlength="500" dataType="" value="${nitem_sewaga.shou_num}"/>
		【<select Id="shou_num_year" name="shou_num_year" style="width:100px">
		    <option value="">未选择</option>
		    <option value="2008" <c:if test="${nitem_rubbish.shou_num_year=='2008'}">selected</c:if>>2008</option>
		    <option value="2009" <c:if test="${nitem_rubbish.shou_num_year=='2009'}">selected</c:if>>2009</option>
		    <option value="2010" <c:if test="${nitem_rubbish.shou_num_year=='2010'}">selected</c:if>>2010</option>
		    <option value="2011" <c:if test="${nitem_rubbish.shou_num_year=='2011'}">selected</c:if>>2011</option>
		    <option value="2012" <c:if test="${nitem_rubbish.shou_num_year=='2012'}">selected</c:if>>2012</option>
		    <option value="2013" <c:if test="${nitem_rubbish.shou_num_year=='2013'}">selected</c:if>>2013</option>
		    <option value="2014" <c:if test="${nitem_rubbish.shou_num_year=='2014'}">selected</c:if>>2014</option>
		    <option value="2015" <c:if test="${nitem_rubbish.shou_num_year=='2015'}">selected</c:if>>2015</option>
		    <option value="2016" <c:if test="${nitem_rubbish.shou_num_year=='2016'}">selected</c:if>>2016</option>
		    <option value="2017" <c:if test="${nitem_rubbish.shou_num_year=='2017'}">selected</c:if>>2017</option>
		    <option value="2018" <c:if test="${nitem_rubbish.shou_num_year=='2018'}">selected</c:if>>2018</option>
		    <option value="2019" <c:if test="${nitem_rubbish.shou_num_year=='2019'}">selected</c:if>>2019</option>
		    <option value="2020" <c:if test="${nitem_rubbish.shou_num_year=='2020'}">selected</c:if>>2020</option>
		</select>】
		<input type="text" Id="shou_num_order" name="shou_num_order" onchange="shoufei()" style="width: 70px;" maxlength="500" require="false" dataType="Number" value="${nitem_rubbish.shou_num_order}"/>
		号
		</td>
	</tr>
	<tr id="shoufeiTR">
		<td width="15%" class="myInputTitle"><font color="red">收费附件</font></td>	
		<td width="35%" colspan="3">
		<input type="file" name="uploadifySf" id="uploadifySf"/>
		<table width="100%" border="1" id="shoufeiFj" class="myInput">
			<input type="hidden" Id="sfTemp" name="sfTemp" msg="请上传收费附件" dataType=""/>
			<c:forEach items="${shoufei}" var="item" varStatus="i">
			<tr id="div${10000+i.index}"><td align="center" class="myInputTitle" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
			<td class="myInputTitle" width="80%">
			<input type="hidden" datatype="Require" id="sgPath" name="path" value="${item.path}"/>
			<input type="hidden" name="file_name" value="${item.file_name}"/>
			<input type="hidden" name="file_ext" value="${item.file_ext}"/>
			<input type="hidden" name="pic_type" value="${item.pic_type}"/>
			<a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${item.path}" target="_blank">
			<font color="#113965">${item.file_name}</font></a></td><td align="center" width="10%">
			<a href="javascript:mydel(div${10000+i.index})">删除</a></td></tr>
			</c:forEach>
		</table>
		</td>
	</tr>
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>项目业主信息</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目业主单位</td>	
		<td width="35%" colspan="3">
		<input type="text" Id="yezhu_com" name="yezhu_com" maxlength="500" dataType="" value="${nitem_rubbish.yezhu_com}"/>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">法人代表</td>	
		<td width="35%">
		<input type="text" Id="fa_ren" name="fa_ren" maxlength="25" dataType="" value="${nitem_rubbish.fa_ren}"/>
		</td>
		<td width="15%" class="myInputTitle">法人联系电话</td>	
		<td width="35%">
		<input type="text" Id="fa_phone" name="fa_phone" maxlength="25" dataType="" value="${nitem_rubbish.fa_phone}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">项目负责人</td>	
		<td width="35%">
		<input type="text" Id="fz_name" name="fz_name" maxlength="25" dataType="" value="${nitem_rubbish.fz_name}"/>
		</td>
		<td width="15%" class="myInputTitle">项目负责人职务</td>	
		<td width="35%">
		<input type="text" Id="fz_post" name="fz_post" maxlength="25" dataType="" value="${nitem_rubbish.fz_post}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">联系电话</td>	
		<td width="35%" colspan="3">
		<input type="text" Id="fz_phone" name="fz_phone" maxlength="25" dataType="" value="${nitem_rubbish.fz_phone}"/>
		</td>
	</tr>
	<tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>项目相关单位信息</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">监理单位</td>	
		<td width="35%">
		<input type="text" Id="jl_unit" name="jl_unit" maxlength="250" dataType="" value="${nitem_rubbish.jl_unit}"/>
		</td>
		<td width="15%" class="myInputTitle">设计单位</td>	
		<td width="35%">
		<input type="text" Id="sj_unit" name="sj_unit" maxlength="250" dataType="" value="${nitem_rubbish.sj_unit}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">招标单位</td>	
		<td width="35%">
		<input type="text" Id="zb_unit" name="zb_unit" maxlength="250" dataType="" value="${nitem_rubbish.zb_unit}"/>
		</td>
		<td width="15%" class="myInputTitle">施工单位</td>	
		<td width="35%">
		<input type="text" Id="sg_unit" name="sg_unit" maxlength="250" dataType="" value="${nitem_rubbish.sg_unit}"/>
		</td>
	</tr>
		<td colspan="4" align="center" style="height: 30px">
	<input id="button" name="button" type="button" value=" 提 交 " onClick="return mySubmit();"/>
	<c:if test="${fn:length(fn:split(user.biao_shi,'_'))<=3}">
	  <input type="button" value="返回列表" onclick="parent.checkShow('${pageContext.request.contextPath}/item/Nitem_rubbish!list.do',4)"/>
	</c:if>
	    </td>	
	</tr>
</table>
<script type="text/javascript" defer="defer">
$("#biaoshi").val("未读");
if($("#jian_mo").val()=='其他'){
	$("#qita_moshi").removeAttr("disabled");
}
</script>