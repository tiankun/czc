<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/easyui/themes/default/easyui.css" type="text/css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/scripts/easyui/themes/icon.css" type="text/css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/zTreeStyle.css" type="text/css">
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/scripts/My97DatePicker/WdatePicker.js"></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/jquery-1.8.0.min.js"></script> --%>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.ztree-2.6.min.js"></script>
<script src="${pageContext.request.contextPath}/scripts/jquery.thickbox.js" type=text/javascript></script>
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/thickbox.css" type="text/css"/> --%>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.uploadify.min.js" charset="UTF-8"></script>   --%>   
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/swfobject.js" charset="UTF-8"></script> --%>
<%-- <link href="${pageContext.request.contextPath}/styles/uploadify.css" rel="stylesheet" type="text/css" /> --%>

<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/jquery.easyui.min.js"></script>
<script language="JavaScript" >
var zTree1;
var setting;
var simpleNodes =[{id:${me.id},pId:${me.parent},name:"${me.name}",quan_ming:"${me.quan_ming}",isParent:true<c:if test="${demonstration_village==null}">,open:true</c:if>}<c:forEach items="${list}" var="dizhi">,{id:${dizhi.id},pId:${dizhi.parent},name:"${dizhi.name}",quan_ming:"${dizhi.quan_ming}",isParent:true}</c:forEach>];
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

function moshi(type){
	if(type=='其他'){
		$("#qita_moshi").removeAttr("disabled");
	}else{
		$("#qita_moshi").attr("disabled","disabled");
	}
}
</script>
<script type="text/javascript">
$(function() {
	  var iszz='${travel.iszanzhi}';
	  if(iszz=='1'){
		  $("#zzmoney").show();
	  }else{
		  $("#zzmoney").hide();
	  }
		$('#addTravelBtn').linkbutton({   
		    iconCls: 'icon-add'  
		});  
		$('#delTravelBtn').linkbutton({   
		    iconCls: 'icon-remove'  
		}); 
		$('#addTravelBtn').bind('click', function(){
			var len=$("#add_Travel_table tr").length;
			 var m=1;
			  if(len>0){
				  m= $("#add_Travel_table tr:eq("+(len-1)+")").attr("id")*1+1;
			  }
			  var n= m*1-1;
			  var tr ='<tr id="'+m+'"><td align="center"><div style="width: 25px;" name="xh">'+n+'</div></td>'+
			     '<td align="center"><input style="width:20px;" type="checkbox" name="ck"/></td>'+
				 '<td align="center">'+
			     '<input class="inputxt" name="xmmc"   type="text" dataType="" style="width:90%;" >'+
			     '</td>'+
				 '<td align="center">'+
				 '<textarea rows="4" cols="80" class="inputxt" name="jtjsnr" dataType=""  type="text" style="width:90%;" ></textarea>'+
			     '</td>'+
			     '<td align="center">'+
				 '<input class="inputxt" name="tzgs"   type="text" dataType="" style="width:90%;" >'+
			     '</td>'+
				 '</tr>'
		 	 $("#add_Travel_table").append(tr);
		  	$("#add_Travel_table tr").each(function(i){
		      	  $(this).children().eq(0).html(i+1);
		      	});
		  	
		 	/*  resetTrNum('add_Travel_table'); */
	    }); 
		
		  
		
		$('#delTravelBtn').bind('click', function(){   
	      	$("#add_Travel_table").find("input:checked").parent().parent().remove(); 
	      	$("#add_Travel_table tr").each(function(i){
	      	  $(this).children().eq(0).html(i+1);
	      	});
	        
	        resetTrNum('add_Travel_table'); 
	    }); 
		$(".datagrid-toolbar").parent().css("width","auto");
		
		$("#iszanzhi").live("change",function(){
			  if(this.value=='1'){
				  $("#zzmoney").show();
			  }else{
				  $("#zzmoney").hide();
			  }
			});
		});
	
	function resetTrNum(tableId) {
		$tbody = $("#" + tableId + "");
		$tbody.find('>tr').each(function(i){
			$(':input, select', this).each(function() {
				var $this = $(this), name = $this.attr('name'), val = $this.val();
				if (name != null) {
					if (name.indexOf("#index#") >= 0) {
						$this.attr("name",name.replace('#index#',i));
					} else {
						var s = name.indexOf("[");
						var e = name.indexOf("]");
						var new_name = name.substring(s + 1,e);
						$this.attr("name",name.replace(new_name,i));
					}
				}
			});
		});
	}
	
	 $(function(){//查看状态：disabled=true
	    if(${flag=='show'}){
	    $("#dvinfo tr td").each(function(){
 	           $(this).find("input").attr("disabled",true);
 	           $(this).find("textarea").attr("disabled",true);   
 	           
 	       });
 	        $("#proinfo tr td").each(function(){
 	           $(this).find("input").attr("disabled",true);
 	           $(this).find("textarea").attr("disabled",true);   
 	         
 	       });
 	       $("#yjinfo tr td").each(function(){
 	           $(this).find("input").attr("disabled",true);
 	           $(this).find("textarea").attr("disabled",true);   
 	           addTravelBtn
 	       });
 	        $("#btn").hide();
	        $("#back").attr("disabled",false);
	   
	    }
	      
	 
 	        
 	   }); 
	
</script>
<style type="text/css">
.STYLE1 {
	COLOR: #ff0000;
	font-weight: bold
}
</style>
    
	<input type="hidden" Id="id" name="id" value="${demonstration_village.id}"/>
	<input type="hidden" Id="guan_li" name="guan_li" value="${user.guan_li}"/>
	<input type="hidden" Id="biaoshi" name="biaoshi" value="${demonstration_village.biaoshi}"/>
	<c:if test="${xiangzhen=='yes'}">
	  <input type="hidden" Id="area" name="area" value="${user.guan_li}"/>
	  <input name="area_name" id="area_name" type="hidden" value="${user.shu_di}"/>
	</c:if>
<table border="1" width="100%" class="myInput" id="dvinfo">
   <input name="id" id="id" type="hidden" value="${demonstration_village.id}"/>
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>省级规划建设示范村信息统计表</strong>
		</td>
	</tr>
	
	<tr>
		<td width="15%" class="myInputTitle">名称</td>
		<td width="85%" colspan="3">
		<c:if test="${fn:length(fn:split(user.biao_shi,'_'))<=3}">
		<input name="area_name" id="area_name" type="text" value="${demonstration_village.area_name}" readonly='readonly' dataType="Require" />
		<input name="area" id="area" type="hidden" value="${demonstration_village.area}"/>
		<input alt="#TB_inline?height=455&width=400&inlineId=after&modal=true" title="" class="thickbox" type="button" value="选择"/>
		</c:if>
		<c:if test="${xiangzhen=='yes'}">
	    ${user.shu_di}
	    </c:if>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">联系人</td>	
		<td width="35%">
		<input type="text" Id="lxr" name="lxr" maxlength="250" dataType="" value="${demonstration_village.lxr}"/>
		</td>
		<td width="15%" class="myInputTitle">联系电话</td>	
		<td width="35%">
		<input type="text" Id="lxdh" name="lxdh" maxlength="250" dataType="" value="${demonstration_village.lxdh}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">村域面积（<span class="STYLE1">平方公里</span>）</td>	
		<td width="35%">
			<input type="text" Id="cymj" name="cymj" maxlength="250" dataType="" value="${demonstration_village.cymj}"/>
		</td>
		<td width="15%" class="myInputTitle">村庄占地面积（<span class="STYLE1">亩</span>）</td>	
		<td width="35%">
		    <input type="text" Id="zdmj" name="zdmj" maxlength="250" dataType="" value="${demonstration_village.zdmj}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">户籍人口（人）</td>	
		<td width="35%">
			<input type="text" name="hjrk" id="hjrk"  value="${demonstration_village.hjrk}"/>
		</td>
		<td width="15%" class="myInputTitle">常住人口（<span class="STYLE1">人</span>）</td>	
		<td width="35%">
		<input type="text" Id="czrk" name="czrk" maxlength="22" require="false"  value="${demonstration_village.czrk}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">总户数</td>	
		<td width="35%">
		<input type="text" name="zhs" id="zhs"  value="${demonstration_village.zhs}"/>
		</td>
		<td width="15%" class="myInputTitle">主要民族（<span class="STYLE1">族</span>）</td>	
		<td width="35%">
		<input type="text" name="zymz" id="zymz"  value="${demonstration_village.zymz}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">村集体年收入（<span class="STYLE1">万元</span>）</td>	
		<td width="35%">
		   <input type="text" name="jtnsr" id="jtnsr"  value="${demonstration_village.jtnsr}"/>
		</td>
		<td width="15%" class="myInputTitle">村民人均纯收入（<span class="STYLE1">元</span>）</td>	
		<td width="35%">
		    <input type="text" name="rjcsr" id="rjcsr"  value="${demonstration_village.rjcsr}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">主要产业（3个左右）</td>	
		<td width="35%">
		<input type="text" Id="zycy" name="zycy" maxlength="22" require="false"   value="${demonstration_village.zycy}"/>
		</td>
		<td width="15%" class="myInputTitle">村庄建设范围是否具备1:500地形图</td>	
		<td width="35%">
		是<input type="radio" Id="jsfw" name="jsfw"  value="1" dataType="Group" <c:if test="${demonstration_village.jsfw=='1'}">checked</c:if>>
		否<input type="radio" Id="jsfw" name="jsfw"  value="0" <c:if test="${demonstration_village.jsfw=='0'}">checked</c:if>>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">村庄危房数量</td>	
		<td width="35%">
		   C级<input type="text" Id="czwfc" name="czwfc" maxlength="250" dataType="" value="${demonstration_village.czwfc}"/>户<br/>
		   D级<input type="text" Id="czwfd" name="czwfd" maxlength="250" dataType="" value="${demonstration_village.czwfd}"/>户
		</td>
		<td width="15%" class="myInputTitle">是否具备整村推进危房改造条件</td>	
		<td width="35%">
		是<input type="radio" Id="gztj" name="gztj"  value="1" dataType="Group" <c:if test="${demonstration_village.gztj=='1'}">checked</c:if>>
		否<input type="radio" Id="gztj" name="gztj"  value="0" <c:if test="${demonstration_village.gztj=='0'}">checked</c:if>>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">其他涉农资金是否重点倾斜易于整合</td>	
		<td width="35%" colspan="3">
		  是<input type="radio" Id="yyzh" name="yyzh"  value="1" dataType="Group" <c:if test="${demonstration_village.yyzh=='1'}">checked</c:if>>
		 否<input type="radio" Id="yyzh" name="yyzh"  value="0" <c:if test="${demonstration_village.yyzh=='0'}">checked</c:if>>
		</td>
		
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">涉农资金具体项目内容
		</td>	
		<td width="35%" colspan="3">
		   <textarea rows="5" cols="160" id="snxmnr" name="snxmnr" value="${demonstration_village.snxmnr}">${demonstration_village.snxmnr}</textarea>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">地理位置</td>	
		<td width="35%" colspan="3">
		沿边地区<input type="checkbox" Id="dlwz" name="dlwz" value="沿边地区"
					<c:if test="${fn:contains(demonstration_village.dlwz,';沿边地区;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		重要交通沿线<input type="checkbox" Id="dlwz" name="dlwz" value="重要交通沿线"
					<c:if test="${fn:contains(demonstration_village.dlwz,';重要交通沿线;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		重点旅游区<input type="checkbox" Id="dlwz" name="dlwz" value="重点旅游区"
					<c:if test="${fn:contains(demonstration_village.dlwz,';重点旅游区;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		风景名胜区<input type="checkbox" Id="dlwz" name="dlwz" value="风景名胜区"
					<c:if test="${fn:contains(demonstration_village.dlwz,';风景名胜区;')}">checked</c:if>></td>
	</tr>
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>已获称号</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">中国传统村落</td>	
		<td width="35%">
		是<input type="radio" Id="ctclch" name="ctclch"  value="1" dataType="Group" <c:if test="${demonstration_village.ctclch=='1'}">checked</c:if>>
		否<input type="radio" Id="ctclch" name="ctclch"  value="0" <c:if test="${demonstration_village.ctclch=='0'}">checked</c:if>>
	    </td>
	    <td width="15%" class="myInputTitle">历史文化名村</td>	
		<td width="35%">
		国家级<input type="radio" Id="whmcch" name="whmcch"  value="1" dataType="Group" <c:if test="${demonstration_village.whmcch=='1'}">checked</c:if>>
		省级<input type="radio" Id="whmcch" name="whmcch"  value="2" <c:if test="${demonstration_village.whmcch=='2'}">checked</c:if>>
		否<input type="radio" Id="whmcch" name="whmcch"  value="0" <c:if test="${demonstration_village.whmcch=='0'}">checked</c:if>>
	    </td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">特色景观旅游名村</td>	
		<td width="35%">
			国家级<input type="radio" Id="lymcch" name="lymcch"  value="1" dataType="Group" <c:if test="${demonstration_village.lymcch=='1'}">checked</c:if>>
			省级<input type="radio" Id="lymcch" name="lymcch"  value="2" <c:if test="${demonstration_village.lymcch=='2'}">checked</c:if>>
			否<input type="radio" Id="lymcch" name="lymcch"  value="0" <c:if test="${demonstration_village.lymcch=='0'}">checked</c:if>>
		</td>
		<td width="15%" class="myInputTitle">其他（<span class="STYLE1">请注明名称及哪级认定</span>）</td>	
		<td width="35%">
		<input type="text" Id="qtrd" name="qtrd"  require="false"  value="${demonstration_village.qtrd}"/>
		</td>
	</tr>
	 <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong></strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">村庄特色情况（<span class="STYLE1">从村庄资源优势、产业条件等方面简要说明</span>）</td>	
		<td width="35%" colspan="3">
		    <textarea rows="5" cols="160" id="tsqk" name="tsqk" value="${demonstration_village.tsqk}">${demonstration_village.tsqk}</textarea>
		</td>
	</tr>
	<tr>	
		<td width="15%" class="myInputTitle">村内公共基础服务设施建设现状（<span class="STYLE1">简要说明村庄供水、垃圾和污水处理、村内道路硬化、绿化、美化亮化、文化体育等公共基础服务设施现状</span>）</td>	
		<td width="35%" colspan="3">
		    <textarea rows="5" cols="160" id="fwss" name="fwss" value="${demonstration_village.fwss}">${demonstration_village.fwss}</textarea>
		</td>
	</tr>
	</table>
	<br/>
	

	            <div class="myInputTitle" title="村庄计划建设项目">村庄计划建设项目</div>
				<div style="padding: 3px; height: 25px; width: auto;" class="datagrid-toolbar" id="btn">
					<a id="addTravelBtn" href="###" >添加</a> <a id="delTravelBtn" href="###">删除</a>
				</div>
				<div style="width: 100%; height: auto; ">
					<table cellpadding="0" cellspacing="1" class="myInputTitle" id="proinfo" border="1" width="100%" class="myInput">
						<tr bgcolor="#E6E6E6" style="width: 100%">
							<td align="center" bgcolor="#EEEEEE" style="width: 5%">序号</td>
							<td align="center" bgcolor="#EEEEEE" style="width: 5%">选择</td>
							<td align="center" bgcolor="#EEEEEE" style="width: 30%">名称</td>
							<td align="center" bgcolor="#EEEEEE" style="width: 50%">具体建设内容</td>	
							<td align="center" bgcolor="#EEEEEE" style="width: 10%">投资估算</td>
						
						</tr>
						<tbody id="add_Travel_table">
							<c:if test="${fn:length(planProList)  > 0 }">
								<c:forEach items="${planProList}" var="poVal" varStatus="stuts">
									<tr id="${stuts.index+1}">
										<td align="center"><div style="width: 25px;" name="xh">${stuts.index+1 }</div></td>
										<td align="center"><input style="width: 20px;" type="checkbox" name="ck" />
											<input name="planPro[${stuts.index}].id" value="${poVal.id }" type="hidden"></td>
										<td align="center">
										<input style="margin-bottom:2px;margin-top:2px;width: 90%;" name="xmmc" value="${poVal.xmmc} "  type="text" style="width:80px;" >
										</td>
										<td align="center">
										<textarea style="margin-bottom:2px;margin-top:2px;width: 90%;" rows="4" name="jtjsnr" value="${poVal.jtjsnr} " type="text" style="width:80px;" >${poVal.jtjsnr}</textarea>
										</td>
										<td align="center">
										<input class="inputxt" name="tzgs" value="${poVal.tzgs }" type="text" style="width:100px;" >										
										</td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					
					</table>
				</div>
	<br/>
   <table border="1" width="100%" id="yjinfo" class="myInput">

	<tr>
		<td width="15%" class="myInputTitle">县级住房城乡建设部门推荐意见</td>	
		<td width="35%">
		   <textarea rows="5" cols="80" id="xjyj" name="xjyj" value="${demonstration_village.xjyj}">${demonstration_village.xjyj}</textarea>
		</td>
		<td width="15%" class="myInputTitle">日期</td>	
		<td width="35%">
		    <input id="xjtjrq" name="xjtjrq" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${demonstration_village.xjtjrq}" style="ime-mode:disabled;"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">市级住房城乡建设部门推荐意见</td>	
		<td width="35%">
		   <textarea rows="5" cols="80" id="sjyj" name="sjyj" value="${demonstration_village.sjyj}">${demonstration_village.sjyj}</textarea>
		</td>
		<td width="15%" class="myInputTitle">日期</td>	
		<td width="35%">
		   <input id="sjtjrq" name="sjtjrq" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${demonstration_village.sjtjrq}" style="ime-mode:disabled;"/>
		</td>
	</tr>
	
     <tr>	
		<td colspan="4" align="center" style="height: 30px">
	       <input id="button" name="button" type="button" value=" 提 交 " onClick="return mySubmit();"/>
	       <c:if test="${fn:length(fn:split(user.biao_shi,'_'))<=3}">
	       <input id="back" type="button" value="返回列表" onclick="parent.checkShow('${pageContext.request.contextPath}/dVillage/Demonstration_village!list.do',4)"/>
	      </c:if>
	    </td>	
	</tr>
</table>
