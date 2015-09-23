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
		//���ó�ʼֵ
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

//�ļ�������Ϣ
var size=1024*1024*2;//2M
var i=1;
var info='�ϴ��ļ������Գ���2M';
$(document).ready(function(){
/*������������
function keyan(){
	$("#keyanTR").empty();
	$("#keyanTR").append("<td width='15%' class='myInputTitle'><font color='red'>������������</font></td>"+	
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
'fileDesc':'�����ļ�', //�������ϴ��Ի����е��ļ���������
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
				'<input type="hidden" dataType="Require" msg="���ϴ�������������" id="kyPath" name="path" value="'+path+'"/>'+
				'<input type="hidden" name="file_name" value="'+fileName+'"/>'+
				'<input type="hidden" name="file_ext" value="'+fileExt+'"/>'+
				'<input type="hidden" name="pic_type" value="����"/>'+
				'<a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/'+path+'" target="_blank">'+
				'<font color="#113965">'+fileName+'</font></a></td><td align="center" width="10%">'+
				'<a href="javascript:mydel(div'+i+')">ɾ��</a></td></tr>'); 
			tb_remove();
			i=i+1;
		}
	}
});
//}

/*����
function chushe(){
	$("#chusheTR").empty();
	$("#chusheTR").append("<td width='15%' class='myInputTitle'><font color='red'>������������</font></td>"+	
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
'fileDesc':'�����ļ�', //�������ϴ��Ի����е��ļ���������
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
				'<input type="hidden" name="pic_type" value="����"/>'+
				'<input type="hidden" name="file_name" value="'+fileName+'"/>'+
				'<input type="hidden" name="file_ext" value="'+fileExt+'"/>'+
				'<input type="hidden" dataType="Require" msg="���ϴ�������������" id="csPath" name="path" value="'+path+'"/><a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/'+path+'" target="_blank">'+
				'<font color="#113965">'+fileName+'</font></a></td><td align="center" width="10%">'+
				'<a href="javascript:mydel(div'+i+')">ɾ��</a></td></tr>'); 
			tb_remove();
			i=i+1;
		}
	}
});
//}

/*ʵʩ
function shishi(){
	$("#shishiTR").empty();
	$("#shishiTR").append("<td width='15%' class='myInputTitle'><font color='red'>ʵʩ��������</font></td>"+	
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
'fileDesc':'�����ļ�', //�������ϴ��Ի����е��ļ���������
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
				'<input type="hidden" name="pic_type" value="ʵʩ"/>'+
				'<input type="hidden" name="file_name" value="'+fileName+'"/>'+
				'<input type="hidden" name="file_ext" value="'+fileExt+'"/>'+
				'<input type="hidden" dataType="Require" msg="���ϴ�ʵʩ��������" id="ssPath" name="path" value="'+path+'"/><a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/'+path+'" target="_blank">'+
				'<font color="#113965">'+fileName+'</font></a></td><td align="center" width="10%">'+
				'<a href="javascript:mydel(div'+i+')">ɾ��</a></td></tr>'); 
			tb_remove();
			i=i+1;
		}
	}
});
//}

/*ʩ��
function shigong(){
	$("#shigongTR").empty();
	$("#shigongTR").append("<td width='15%' class='myInputTitle'><font color='red'>ʩ�����֤����</font></td>"+	
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
'fileDesc':'�����ļ�',//�������ϴ��Ի����е��ļ���������
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
				'<input type="hidden" name="pic_type" value="ʩ��"/>'+
				'<input type="hidden" name="file_name" value="'+fileName+'"/>'+
				'<input type="hidden" name="file_ext" value="'+fileExt+'"/>'+
				'<input type="hidden" dataType="Require" msg="���ϴ�ʩ�����֤����" id="sgPath" name="path" value="'+path+'"/><a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/'+path+'" target="_blank">'+
				'<font color="#113965">'+fileName+'</font></a></td><td align="center" width="10%">'+
				'<a href="javascript:mydel(div'+i+')">ɾ��</a></td></tr>'); 
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
'fileDesc':'�����ļ�',//�������ϴ��Ի����е��ļ���������
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
				'<input type="hidden" name="pic_type" value="�շ�"/>'+
				'<input type="hidden" name="file_name" value="'+fileName+'"/>'+
				'<input type="hidden" name="file_ext" value="'+fileExt+'"/>'+
				'<input type="hidden" dataType="Require" msg="���ϴ�ʩ�����֤����" id="sfPath" name="path" value="'+path+'"/><a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/'+path+'" target="_blank">'+
				'<font color="#113965">'+fileName+'</font></a></td><td align="center" width="10%">'+
				'<a href="javascript:mydel(div'+i+')">ɾ��</a></td></tr>'); 
			tb_remove();
			i=i+1;
		}
	}
});
//}
});

function mydel(id){
if(confirm('�Ƿ�ȷ��ɾ�����ļ���'))
$(id).remove(); 
}

function keyan(){
	alert("���ϴ�������������");
	$("#kyTemp").attr("dataType","Require");
}
function chushe(){
	alert("���ϴ�������������");
	$("#csTemp").attr("dataType","Require");
}
function shishi(){
	alert("���ϴ�ʵʩ��������");
	$("#ssTemp").attr("dataType","Require");
}
function shigong(){
	alert("���ϴ�ʩ�����֤����");
	$("#sgTemp").attr("dataType","Require");
}
function shoufei(){
	alert("���ϴ��շѸ���");
	$("#sfTemp").attr("dataType","Require");
}

function moshi(type){
	if(type=='����'){
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
			<strong>�����ڽ���Ŀ������Ϣ</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��Ŀ����</td>	
		<td width="35%" colspan="3">
		<input type="text" Id="name" name="name" maxlength="500" dataType="Require" value="${nitem_rubbish.name}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��Ŀ��ϸ��ַ</td>
		<td width="85%" colspan="3">
		<c:if test="${fn:length(fn:split(user.biao_shi,'_'))<=3}">
		<input name="area_name" id="area_name" type="text" value="${nitem_rubbish.area_name}" readonly='readonly' dataType="Require" style="width: 200px;"/>
		<input name="area" id="area" type="hidden" value="${nitem_rubbish.area}"/><input alt="#TB_inline?height=455&width=400&inlineId=after&modal=true" title="" class="thickbox" type="button" value="..."/>
		</c:if><!--<c:if test="${!empty nitem_rubbish.chu_num_order}">readonly='readonly' style='background-color:#666666;'</c:if>  -->
		<c:if test="${xiangzhen=='yes'}">
	    ${user.shu_di}
	    </c:if>
		&nbsp;<input type="text" Id="dizhi" name="dizhi" dataType="Require" value="${nitem_rubbish.dizhi}" style="width: 250px;"/>
		<c:if test="${fn:length(fn:split(user.biao_shi,'_'))==1}"> ��Ŀ��������
		�ؼ�<input type="radio" Id="shixian" name="shixian" value="��" dataType="Group" <c:if test="${nitem_rubbish.shixian=='��'}">checked</c:if>>
		�м�<input type="radio" Id="shixian" name="shixian" value="��" <c:if test="${nitem_rubbish.shixian=='��'}">checked</c:if>>  
		</c:if>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��Ŀ���</td>	
		<td width="35%">
		<input type="text" Id="num" name="num" maxlength="250" dataType="" value="${nitem_rubbish.num}"/>
		</td>
		<td width="15%" class="myInputTitle">�滮��������</td>	
		<td width="35%">
		<select Id="gui_nian" name="gui_nian" style="width:100px">
		    <option value="">δѡ��</option>
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
		<td width="15%" class="myInputTitle">��Ŀ����</td>	
		<td width="35%">
			<select id="xingzhi" name="xingzhi" style="width: 100px;">
				<option value="�½�" <c:if test="${nitem_rubbish.xingzhi=='�½�'}">selected</c:if>>�½�</option>
				<option value="�Ľ�" <c:if test="${nitem_rubbish.xingzhi=='�Ľ�'}">selected</c:if>>�Ľ�</option>
				<option value="����" <c:if test="${nitem_rubbish.xingzhi=='����'}">selected</c:if>>����</option>
			</select>
		</td>
		<td width="15%" class="myInputTitle">��Ŀ����</td>	
		<td width="35%">
		    <a href="${pageContext.request.contextPath}/item/Nitem_yue!uploadList.do?type=3&item_id=${nitem_rubbish.id}">�����±�</a>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">������Ӫģʽ</td>	
		<td width="35%">
			<select id="jian_mo" name="jian_mo" onchange="moshi(this.value)" style="width: 100px;">
				<option value="BOT" <c:if test="${nitem_rubbish.jian_mo=='BOT'}">selected</c:if>>BOT</option>
				<option value="BT" <c:if test="${nitem_rubbish.jian_mo=='BT'}">selected</c:if>>BT</option>
				<option value="TOT" <c:if test="${nitem_rubbish.jian_mo=='TOT'}">selected</c:if>>TOT</option>
				<option value="�й�" <c:if test="${nitem_rubbish.jian_mo=='�й�'}">selected</c:if>>�й�</option>
				<option value="����" <c:if test="${nitem_rubbish.jian_mo=='����'}">selected</c:if>>����</option>
			</select>
			<input type="text" name="qita_moshi" id="qita_moshi" disabled="false" value="${nitem_rubbish.qita_moshi}"/>
		</td>
		<td width="15%" class="myInputTitle">���������<span class="STYLE1">ƽ������</span>��</td>	
		<td width="35%">
		<input type="text" Id="fw_mianji" name="fw_mianji" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.fw_mianji}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">����Χ</td>	
		<td width="35%" colspan="3">
		<textarea Id="fw_fanwei" name="fw_fanwei" style="width: 90%;" rows="2">${nitem_rubbish.fw_fanwei}</textarea>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��������ˮϵ��</td>	
		<td width="35%">
		    <select id="shuixi" name="shuixi" style="width: 100px;">
				<option value="����ˮϵ" <c:if test="${nitem_rubbish.shuixi=='����ˮϵ'}">selected</c:if>>����ˮϵ</option>
				<option value="�齭ˮϵ" <c:if test="${nitem_rubbish.shuixi=='�齭ˮϵ'}">selected</c:if>>�齭ˮϵ</option>
				<option value="Ԫ������ӣ�ˮϵ" <c:if test="${nitem_rubbish.shuixi=='Ԫ������ӣ�ˮϵ'}">selected</c:if>>Ԫ������ӣ�ˮϵ</option>
				<option value="���׽����ع��ӣ�ˮϵ" <c:if test="${nitem_rubbish.shuixi=='���׽����ع��ӣ�ˮϵ'}">selected</c:if>>���׽����ع��ӣ�ˮϵ</option>
				<option value="ŭ��ˮϵ" <c:if test="${nitem_rubbish.shuixi=='ŭ��ˮϵ'}">selected</c:if>>ŭ��ˮϵ</option>
				<option value="�����ߵ׽�ˮϵ" <c:if test="${nitem_rubbish.shuixi=='�����ߵ׽�ˮϵ'}">selected</c:if>>�����ߵ׽�ˮϵ</option>
			</select>
		</td>
		<td width="15%" class="myInputTitle">�������򣨺�����</td>	
		<td width="35%">
		    <select id="hupo" name="hupo" style="width: 100px;">
				<option value="���" <c:if test="${nitem_rubbish.hupo=='���'}">selected</c:if>>���</option>
				<option value="����" <c:if test="${nitem_rubbish.hupo=='����'}">selected</c:if>>����</option>
				<option value="���ɺ�" <c:if test="${nitem_rubbish.hupo=='���ɺ�'}">selected</c:if>>���ɺ�</option>
				<option value="�̺�" <c:if test="${nitem_rubbish.hupo=='�̺�'}">selected</c:if>>�̺�</option>
				<option value="�����" <c:if test="${nitem_rubbish.hupo=='�����'}">selected</c:if>>�����</option>
				<option value="�´��" <c:if test="${nitem_rubbish.hupo=='�´��'}">selected</c:if>>�´��</option>
				<option value="���ƺ�" <c:if test="${nitem_rubbish.hupo=='���ƺ�'}">selected</c:if>>���ƺ�</option>
				<option value="���ں�" <c:if test="${nitem_rubbish.hupo=='���ں�'}">selected</c:if>>���ں�</option>
				<option value="������" <c:if test="${nitem_rubbish.hupo=='������'}">selected</c:if>>������</option>
			</select>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�����˿ڣ����ڣ���<span class="STYLE1">����</span>��</td>	
		<td width="35%">
		<input type="text" Id="fwrk_jinqi" name="fwrk_jinqi" maxlength="22" require="false" dataType="Double"  value="${nitem_rubbish.fwrk_jinqi}"/>
		</td>
		<td width="15%" class="myInputTitle">�����˿ڣ�Զ�ڣ���<span class="STYLE1">����</span>��</td>	
		<td width="35%">
		<input type="text" Id="fwrk_yuanqi" name="fwrk_yuanqi" maxlength="22" require="false" dataType="Double"  value="${nitem_rubbish.fwrk_yuanqi}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�������ޣ����ڣ�</td>	
		<td width="35%">
		<input type="text" Id="fwnx_jinqi" name="fwnx_jinqi" maxlength="250" dataType="" value="${nitem_rubbish.fwnx_jinqi}"/>
		</td>
		<td width="15%" class="myInputTitle">�������ޣ�Զ�ڣ�</td>	
		<td width="35%">
		<input type="text" Id="fwnx_yuanqi" name="fwnx_yuanqi" maxlength="250" dataType="" value="${nitem_rubbish.fwnx_yuanqi}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��ƹ�ģ�����ڣ���<span class="STYLE1">��/��</span>��</td>	
		<td width="35%">
		<input type="text" Id="clgm_jinqi" name="clgm_jinqi" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.clgm_jinqi}"/>
		</td>
		<td width="15%" class="myInputTitle">��ƹ�ģ��Զ�ڣ���<span class="STYLE1">��/��</span>��</td>	
		<td width="35%">
		<input type="text" Id="clgm_yuanqi" name="clgm_yuanqi" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.clgm_yuanqi}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">����������</td>	
		<td width="35%">
		��������<input type="checkbox" id="laji_gongyi" name="laji_gongyi" value="��������"
					<c:if test="${fn:contains(nitem_rubbish.laji_gongyi,';��������;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		����<input type="checkbox" id="laji_gongyi" name="laji_gongyi" value="����" dataType="Group"
					<c:if test="${fn:contains(nitem_rubbish.laji_gongyi,';����;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		�ѷ�<input type="checkbox" id="laji_gongyi" name="laji_gongyi" value="�ѷ�" dataType="Group"
					<c:if test="${fn:contains(nitem_rubbish.laji_gongyi,';�ѷ�;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		����<input type="checkbox" id="laji_gongyi" name="laji_gongyi" value="����" dataType="Group"
					<c:if test="${fn:contains(nitem_rubbish.laji_gongyi,';����;')}">checked</c:if>>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��תվ��ƹ�ģ��<span class="STYLE1">��/��</span>��</td>	
		<td width="35%">
		<input type="text" Id="zhong_mo" name="zhong_mo" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.zhong_mo}"/>
		</td>
		<td width="15%" class="myInputTitle">��Һ������</td>	
		<td width="35%">
		<input type="text" Id="lvye_gongyi" name="lvye_gongyi" value="${nitem_rubbish.lvye_gongyi}">
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">������ʩ��<span class="STYLE1">��</span>��</td>	
		<td width="35%">
		<input type="text" Id="yun_sheshi" name="yun_sheshi" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.yun_sheshi}"/>
		</td>
		<td width="15%" class="myInputTitle">�������䳵��<span class="STYLE1">��</span>��</td>	
		<td width="35%">
		<input type="text" Id="yun_car" name="yun_car" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.yun_car}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">������������</td>	
		<td width="35%" colspan="3">
		�˱߸���<input type="checkbox" Id="xiang_type" name="xiang_type" value="�˱߸���"
					<c:if test="${fn:contains(nitem_rubbish.xiang_type,';�˱߸���;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		��ɫС��<input type="checkbox" Id="xiang_type" name="xiang_type" value="��ɫС��"
					<c:if test="${fn:contains(nitem_rubbish.xiang_type,';��ɫС��;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		����ʾ����<input type="checkbox" Id="xiang_type" name="xiang_type" value="����ʾ����"
					<c:if test="${fn:contains(nitem_rubbish.xiang_type,';����ʾ����;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		��Ƭ��ƶ<input type="checkbox" Id="xiang_type" name="xiang_type" value="��Ƭ��ƶ"
					<c:if test="${fn:contains(nitem_rubbish.xiang_type,';��Ƭ��ƶ;')}">checked</c:if>>
		</td>
	</tr>
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>��ĿͶ�����</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��������Ͷ�ʣ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%" colspan="3">
		<input type="text" Id="zong_touzi" name="zong_touzi" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.zong_touzi}"/>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">���Ҳ�����<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">
		<input type="text" Id="guo_bu" name="guo_bu" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.guo_bu}"/>
		</td>
		<td width="15%" class="myInputTitle">ʡ��������<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">
		<input type="text" Id="sheng_bu" name="sheng_bu" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.sheng_bu}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�ط����ף�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">
		<input type="text" Id="di_pei" name="di_pei" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.di_pei}"/>
		</td>
		<td width="15%" class="myInputTitle">�Գ<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">
		<input type="text" Id="zi_chou" name="zi_chou" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.zi_chou}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">����ֱ�ӷѣ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">
		<input type="text" Id="gong_zhi" name="gong_zhi" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.gong_zhi}"/>
		</td>
		<td width="15%" class="myInputTitle">���̼�ӷѣ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">
		<input type="text" Id="gong_jian" name="gong_jian" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.gong_jian}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">����Ԥ���ѣ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">
		<input type="text" Id="gong_yu" name="gong_yu" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.gong_yu}"/>
		</td>
		<td width="15%" class="myInputTitle">�����ڴ�����Ϣ��<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">
		<input type="text" Id="jian_li" name="jian_li" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.jian_li}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�̵������ʽ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">
		<input type="text" Id="pu_liu" name="pu_liu" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.pu_liu}"/>
		</td>
		<td width="15%" class="myInputTitle">ˮ��Ͷ�ʣ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">
		<input type="text" Id="shui_touzi" name="shui_touzi" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.shui_touzi}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">���׹�����<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%" colspan="3">
		<input type="text" Id="guan_chang" name="guan_chang" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.guan_chang}"/>
    </tr>
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>���̿�չ���</strong>
		</td>
	</tr>
    <tr>
		<td width="15%" class="myInputTitle">���������ĺ�</td>	
		<td width="35%">
		<input type="text" Id="keyan_num" name="keyan_num" style="width: 70px;" maxlength="500" dataType="" value="${nitem_rubbish.keyan_num}"/>
		��<select Id="keyan_num_year" name="keyan_num_year" style="width:100px">
		    <option value="">δѡ��</option>
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
		</select>��
		<input type="text" Id="keyan_num_order" name="keyan_num_order" onchange="keyan()" style="width: 70px;" maxlength="500" require="false" dataType="Number" value="${nitem_rubbish.keyan_num_order}"/>
		��
		</td>
		<td width="15%" class="myInputTitle">���б��Ƶ�λ</td>	
		<td width="35%">
		<input type="text" Id="keyan_com" name="keyan_com" maxlength="500" dataType="" value="${nitem_rubbish.keyan_com}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">����������ģ��<span class="STYLE1">��/��</span>��</td>	
		<td width="35%">���ڣ�
		<input type="text" Id="keyan_jinqi" name="keyan_jinqi" style="width: 100px;" maxlength="250" dataType="" value="${nitem_rubbish.keyan_jinqi}"/>
		Զ�ڣ�
		<input type="text" Id="keyan_yuanqi" name="keyan_yuanqi" style="width: 100px;" maxlength="250" dataType="" value="${nitem_rubbish.keyan_yuanqi}"/>
		</td>
		<td width="15%" class="myInputTitle">��������ʱ��</td>	
		<td width="35%">
		<input id="keyan_date" name="keyan_date" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${nitem_rubbish.keyan_date}" style="ime-mode:disabled;"/>
		</td>
	</tr>
	<tr id="keyanTR">
		<td width="15%" class="myInputTitle"><font color="red">������������</font></td>	
		<td width="35%" colspan="3">
		<input type="file" name="uploadifyKy" id="uploadifyKy"/>
		<table width="100%" border="1" id="keyanFj" class="myInput">
		<input type="hidden" Id="kyTemp" name="kyTemp" msg="���ϴ�������������" dataType=""/>
			<c:forEach items="${keyan}" var="item" varStatus="i">
			<tr id="div${2000+i.index}"><td align="center" class="myInputTitle" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
			<td class="myInputTitle" width="80%">
			<input type="hidden" datatype="Require" id="kyPath" name="path" value="${item.path}"/>
			<input type="hidden" name="file_name" value="${item.file_name}"/>
			<input type="hidden" name="file_ext" value="${item.file_ext}"/>
			<input type="hidden" name="pic_type" value="${item.pic_type}"/>
			<a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${item.path}" target="_blank">
			<font color="#113965">${item.file_name}</font></a></td><td align="center" width="10%">
			<a href="javascript:mydel(div${2000+i.index})">ɾ��</a></td></tr>
			</c:forEach>
		</table>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��������Ͷ�ʣ�<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">
		<input type="text" Id="pi_touzi" name="pi_touzi" maxlength="22" require="false" dataType="Double" value="${nitem_rubbish.pi_touzi}"/>
		</td>
		<td width="15%" class="myInputTitle">���������ĺ�</td>	
		<td width="35%">
		<input type="text" Id="chu_num" name="chu_num" style="width: 70px;" maxlength="500" dataType="" value="${nitem_rubbish.chu_num}"/>
		��<select Id="chu_num_year" name="chu_num_year" style="width:100px">
		    <option value="">δѡ��</option>
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
		</select>��
		<input type="text" Id="chu_num_order" name="chu_num_order" onchange="chushe()" style="width: 70px;" maxlength="500" require="false" dataType="Number" value="${nitem_rubbish.chu_num_order}"/>
		��
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">������Ƶ�λ</td>	
		<td width="35%">
		<input type="text" Id="chu_com" name="chu_com" maxlength="500" dataType="" value="${nitem_rubbish.chu_com}"/>
		</td>
		<td width="15%" class="myInputTitle">��������ʱ��</td>	
		<td width="35%">
		<input id="chu_date" name="chu_date" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${nitem_rubbish.chu_date}" style="ime-mode:disabled;"/>
		</td>
	</tr>
	<tr id="chusheTR">
		<td width="15%" class="myInputTitle"><font color="red">������������</font></td>	
		<td width="35%" colspan="3">
		<input type="file" name="uploadifyCs" id="uploadifyCs"/>
		<table width="100%" border="1" id="chusheFj" class="myInput">
			<input type="hidden" Id="csTemp" name="csTemp" msg="���ϴ�������������" dataType=""/>
			<c:forEach items="${chushe}" var="item" varStatus="i">
			<tr id="div${4000+i.index}"><td align="center" class="myInputTitle" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
			<td class="myInputTitle" width="80%">
			<input type="hidden" datatype="Require" id="csPath" name="path" value="${item.path}"/>
			<input type="hidden" name="file_name" value="${item.file_name}"/>
			<input type="hidden" name="file_ext" value="${item.file_ext}"/>
			<input type="hidden" name="pic_type" value="${item.pic_type}"/>
			<a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${item.path}" target="_blank">
			<font color="#113965">${item.file_name}</font></a></td><td align="center" width="10%">
			<a href="javascript:mydel(div${4000+i.index})">ɾ��</a></td></tr>
			</c:forEach>
		</table>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">ʵʩ�����ĺ�</td>	
		<td width="35%">
		<input type="text" Id="shi_num" name="shi_num" style="width: 70px;" maxlength="500" dataType="" value="${nitem_rubbish.shi_num}"/>
		��<select Id="shi_num_year" name="shi_num_year" style="width:100px">
		    <option value="">δѡ��</option>
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
		</select>��
		<input type="text" Id="shi_num_order" name="shi_num_order" onchange="shishi()" style="width: 70px;" maxlength="500" require="false" dataType="Number" value="${nitem_rubbish.shi_num_order}"/>
		��
		</td>
		<td width="15%" class="myInputTitle">ʵʩ�������Ƶ�λ</td>	
		<td width="35%">
		<input type="text" Id="shi_com" name="shi_com" maxlength="500" dataType="" value="${nitem_rubbish.shi_com}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">ʵʩ��������ʱ��</td>	
		<td width="35%">
		<input id="shi_date" name="shi_date" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${nitem_rubbish.shi_date}" style="ime-mode:disabled;"/>
		</td>
		<td width="15%" class="myInputTitle">��Ŀ��������</td>	
		<td width="35%">
		<select Id="nianxian_begin" name="nianxian_begin" style="width:100px">
		    <option value="">δѡ��</option>
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
		    <option value="">δѡ��</option>
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
		<td width="15%" class="myInputTitle"><font color="red">ʵʩ��������</font></td>	
		<td width="35%" colspan="3">
		<input type="file" name="uploadifySs" id="uploadifySs"/>
		<table width="100%" border="1" id="shishiFj" class="myInput">
			<input type="hidden" Id="ssTemp" name="ssTemp" msg="���ϴ�ʵʩ��������" dataType=""/>
			<c:forEach items="${shishi}" var="item" varStatus="i">
			<tr id="div${6000+i.index}"><td align="center" class="myInputTitle" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
			<td class="myInputTitle" width="80%">
			<input type="hidden" datatype="Require" id="ssPath" name="path" value="${item.path}"/>
			<input type="hidden" name="file_name" value="${item.file_name}"/>
			<input type="hidden" name="file_ext" value="${item.file_ext}"/>
			<input type="hidden" name="pic_type" value="${item.pic_type}"/>
			<a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${item.path}" target="_blank">
			<font color="#113965">${item.file_name}</font></a></td><td align="center" width="10%">
			<a href="javascript:mydel(div${6000+i.index})">ɾ��</a></td></tr>
			</c:forEach>
		</table>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">ʩ��ͼ���Ƶ�λ</td>	
		<td width="35%">
		<input type="text" Id="shigong_com" name="shigong_com" maxlength="500" dataType="" value="${nitem_rubbish.shigong_com}"/>
		</td>
		<td width="15%" class="myInputTitle">ʩ�����֤���</td>	
		<td width="35%">
		<input type="text" Id="shigong_num" name="shigong_num" style="width: 70px;" maxlength="500" dataType="" value="${nitem_rubbish.shigong_num}"/>
		��<select Id="shigong_num_year" name="shigong_num_year" style="width:100px">
		    <option value="">δѡ��</option>
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
		</select>��
		<input type="text" Id="shigong_num_order" name="shigong_num_order" onchange="shigong()" style="width: 70px;" maxlength="500" require="false" dataType="Number" value="${nitem_rubbish.shigong_num_order}"/>
		��
		</td>
	</tr>
	<tr id="shigongTR">
		<td width="15%" class="myInputTitle"><font color="red">ʩ�����֤����</font></td>	
		<td width="35%" colspan="3">
		<input type="file" name="uploadifySg" id="uploadifySg"/>
		<table width="100%" border="1" id="shigongFj" class="myInput">
			<input type="hidden" Id="sgTemp" name="sgTemp" msg="���ϴ�ʩ�����֤����" dataType=""/>
			<c:forEach items="${shigong}" var="item" varStatus="i">
			<tr id="div${8000+i.index}"><td align="center" class="myInputTitle" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
			<td class="myInputTitle" width="80%">
			<input type="hidden" datatype="Require" id="sgPath" name="path" value="${item.path}"/>
			<input type="hidden" name="file_name" value="${item.file_name}"/>
			<input type="hidden" name="file_ext" value="${item.file_ext}"/>
			<input type="hidden" name="pic_type" value="${item.pic_type}"/>
			<a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${item.path}" target="_blank">
			<font color="#113965">${item.file_name}</font></a></td><td align="center" width="10%">
			<a href="javascript:mydel(div${8000+i.index})">ɾ��</a></td></tr>
			</c:forEach>
		</table>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">���̿���ʱ��</td>	
		<td width="35%">
		<input id="item_begin" name="item_begin" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${nitem_rubbish.item_begin}" style="ime-mode:disabled;"/>
		</td>
		<td width="15%" class="myInputTitle">�Ƿ񿢹�</td>	
		<td width="35%">
		��<input type="radio" Id="jungong" name="jungong" onclick="allowInput('jungong_date')" value="��" dataType="Group" <c:if test="${nitem_rubbish.jungong=='��'}">checked</c:if>>
		��<input type="radio" Id="jungong" name="jungong" onclick="stopInput('jungong_date')" value="��" <c:if test="${nitem_rubbish.jungong=='��'}">checked</c:if>>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��������</td>	
		<td width="35%" colspan="3">
		<input id="jungong_date" name="jungong_date" class="Wdate" readonly="readonly" onclick="WdatePicker()" require="false" dataType="Date" value="${nitem_rubbish.jungong_date}" style="ime-mode:disabled;width: 29%;" />
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��Ŀ�����շѱ�׼</td>	
		<td width="35%">
		<input type="text" Id="shou_biao" name="shou_biao" maxlength="100" dataType="" value="${nitem_sewaga.shou_biao}"/>
		</td>
		<td width="15%" class="myInputTitle">�շ��ĺ�</td>	
		<td width="35%">
		<input type="text" Id="shou_num" name="shou_num" style="width: 70px;" maxlength="500" dataType="" value="${nitem_sewaga.shou_num}"/>
		��<select Id="shou_num_year" name="shou_num_year" style="width:100px">
		    <option value="">δѡ��</option>
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
		</select>��
		<input type="text" Id="shou_num_order" name="shou_num_order" onchange="shoufei()" style="width: 70px;" maxlength="500" require="false" dataType="Number" value="${nitem_rubbish.shou_num_order}"/>
		��
		</td>
	</tr>
	<tr id="shoufeiTR">
		<td width="15%" class="myInputTitle"><font color="red">�շѸ���</font></td>	
		<td width="35%" colspan="3">
		<input type="file" name="uploadifySf" id="uploadifySf"/>
		<table width="100%" border="1" id="shoufeiFj" class="myInput">
			<input type="hidden" Id="sfTemp" name="sfTemp" msg="���ϴ��շѸ���" dataType=""/>
			<c:forEach items="${shoufei}" var="item" varStatus="i">
			<tr id="div${10000+i.index}"><td align="center" class="myInputTitle" width="10%"><img height="38px" width="38px" src="<%=request.getContextPath()%>/images/filetype/${item.file_ext}.png"/></td>
			<td class="myInputTitle" width="80%">
			<input type="hidden" datatype="Require" id="sgPath" name="path" value="${item.path}"/>
			<input type="hidden" name="file_name" value="${item.file_name}"/>
			<input type="hidden" name="file_ext" value="${item.file_ext}"/>
			<input type="hidden" name="pic_type" value="${item.pic_type}"/>
			<a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${item.path}" target="_blank">
			<font color="#113965">${item.file_name}</font></a></td><td align="center" width="10%">
			<a href="javascript:mydel(div${10000+i.index})">ɾ��</a></td></tr>
			</c:forEach>
		</table>
		</td>
	</tr>
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>��Ŀҵ����Ϣ</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��Ŀҵ����λ</td>	
		<td width="35%" colspan="3">
		<input type="text" Id="yezhu_com" name="yezhu_com" maxlength="500" dataType="" value="${nitem_rubbish.yezhu_com}"/>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">���˴���</td>	
		<td width="35%">
		<input type="text" Id="fa_ren" name="fa_ren" maxlength="25" dataType="" value="${nitem_rubbish.fa_ren}"/>
		</td>
		<td width="15%" class="myInputTitle">������ϵ�绰</td>	
		<td width="35%">
		<input type="text" Id="fa_phone" name="fa_phone" maxlength="25" dataType="" value="${nitem_rubbish.fa_phone}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��Ŀ������</td>	
		<td width="35%">
		<input type="text" Id="fz_name" name="fz_name" maxlength="25" dataType="" value="${nitem_rubbish.fz_name}"/>
		</td>
		<td width="15%" class="myInputTitle">��Ŀ������ְ��</td>	
		<td width="35%">
		<input type="text" Id="fz_post" name="fz_post" maxlength="25" dataType="" value="${nitem_rubbish.fz_post}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��ϵ�绰</td>	
		<td width="35%" colspan="3">
		<input type="text" Id="fz_phone" name="fz_phone" maxlength="25" dataType="" value="${nitem_rubbish.fz_phone}"/>
		</td>
	</tr>
	<tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>��Ŀ��ص�λ��Ϣ</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">����λ</td>	
		<td width="35%">
		<input type="text" Id="jl_unit" name="jl_unit" maxlength="250" dataType="" value="${nitem_rubbish.jl_unit}"/>
		</td>
		<td width="15%" class="myInputTitle">��Ƶ�λ</td>	
		<td width="35%">
		<input type="text" Id="sj_unit" name="sj_unit" maxlength="250" dataType="" value="${nitem_rubbish.sj_unit}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�б굥λ</td>	
		<td width="35%">
		<input type="text" Id="zb_unit" name="zb_unit" maxlength="250" dataType="" value="${nitem_rubbish.zb_unit}"/>
		</td>
		<td width="15%" class="myInputTitle">ʩ����λ</td>	
		<td width="35%">
		<input type="text" Id="sg_unit" name="sg_unit" maxlength="250" dataType="" value="${nitem_rubbish.sg_unit}"/>
		</td>
	</tr>
		<td colspan="4" align="center" style="height: 30px">
	<input id="button" name="button" type="button" value=" �� �� " onClick="return mySubmit();"/>
	<c:if test="${fn:length(fn:split(user.biao_shi,'_'))<=3}">
	  <input type="button" value="�����б�" onclick="parent.checkShow('${pageContext.request.contextPath}/item/Nitem_rubbish!list.do',4)"/>
	</c:if>
	    </td>	
	</tr>
</table>
<script type="text/javascript" defer="defer">
$("#biaoshi").val("δ��");
if($("#jian_mo").val()=='����'){
	$("#qita_moshi").removeAttr("disabled");
}
</script>