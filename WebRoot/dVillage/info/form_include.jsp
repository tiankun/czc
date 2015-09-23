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

function moshi(type){
	if(type=='����'){
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
	
	 $(function(){//�鿴״̬��disabled=true
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
			<strong>ʡ���滮����ʾ������Ϣͳ�Ʊ�</strong>
		</td>
	</tr>
	
	<tr>
		<td width="15%" class="myInputTitle">����</td>
		<td width="85%" colspan="3">
		<c:if test="${fn:length(fn:split(user.biao_shi,'_'))<=3}">
		<input name="area_name" id="area_name" type="text" value="${demonstration_village.area_name}" readonly='readonly' dataType="Require" />
		<input name="area" id="area" type="hidden" value="${demonstration_village.area}"/>
		<input alt="#TB_inline?height=455&width=400&inlineId=after&modal=true" title="" class="thickbox" type="button" value="ѡ��"/>
		</c:if>
		<c:if test="${xiangzhen=='yes'}">
	    ${user.shu_di}
	    </c:if>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��ϵ��</td>	
		<td width="35%">
		<input type="text" Id="lxr" name="lxr" maxlength="250" dataType="" value="${demonstration_village.lxr}"/>
		</td>
		<td width="15%" class="myInputTitle">��ϵ�绰</td>	
		<td width="35%">
		<input type="text" Id="lxdh" name="lxdh" maxlength="250" dataType="" value="${demonstration_village.lxdh}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">���������<span class="STYLE1">ƽ������</span>��</td>	
		<td width="35%">
			<input type="text" Id="cymj" name="cymj" maxlength="250" dataType="" value="${demonstration_village.cymj}"/>
		</td>
		<td width="15%" class="myInputTitle">��ׯռ�������<span class="STYLE1">Ķ</span>��</td>	
		<td width="35%">
		    <input type="text" Id="zdmj" name="zdmj" maxlength="250" dataType="" value="${demonstration_village.zdmj}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�����˿ڣ��ˣ�</td>	
		<td width="35%">
			<input type="text" name="hjrk" id="hjrk"  value="${demonstration_village.hjrk}"/>
		</td>
		<td width="15%" class="myInputTitle">��ס�˿ڣ�<span class="STYLE1">��</span>��</td>	
		<td width="35%">
		<input type="text" Id="czrk" name="czrk" maxlength="22" require="false"  value="${demonstration_village.czrk}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�ܻ���</td>	
		<td width="35%">
		<input type="text" name="zhs" id="zhs"  value="${demonstration_village.zhs}"/>
		</td>
		<td width="15%" class="myInputTitle">��Ҫ���壨<span class="STYLE1">��</span>��</td>	
		<td width="35%">
		<input type="text" name="zymz" id="zymz"  value="${demonstration_village.zymz}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�弯�������루<span class="STYLE1">��Ԫ</span>��</td>	
		<td width="35%">
		   <input type="text" name="jtnsr" id="jtnsr"  value="${demonstration_village.jtnsr}"/>
		</td>
		<td width="15%" class="myInputTitle">�����˾������루<span class="STYLE1">Ԫ</span>��</td>	
		<td width="35%">
		    <input type="text" name="rjcsr" id="rjcsr"  value="${demonstration_village.rjcsr}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��Ҫ��ҵ��3�����ң�</td>	
		<td width="35%">
		<input type="text" Id="zycy" name="zycy" maxlength="22" require="false"   value="${demonstration_village.zycy}"/>
		</td>
		<td width="15%" class="myInputTitle">��ׯ���跶Χ�Ƿ�߱�1:500����ͼ</td>	
		<td width="35%">
		��<input type="radio" Id="jsfw" name="jsfw"  value="1" dataType="Group" <c:if test="${demonstration_village.jsfw=='1'}">checked</c:if>>
		��<input type="radio" Id="jsfw" name="jsfw"  value="0" <c:if test="${demonstration_village.jsfw=='0'}">checked</c:if>>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��ׯΣ������</td>	
		<td width="35%">
		   C��<input type="text" Id="czwfc" name="czwfc" maxlength="250" dataType="" value="${demonstration_village.czwfc}"/>��<br/>
		   D��<input type="text" Id="czwfd" name="czwfd" maxlength="250" dataType="" value="${demonstration_village.czwfd}"/>��
		</td>
		<td width="15%" class="myInputTitle">�Ƿ�߱������ƽ�Σ����������</td>	
		<td width="35%">
		��<input type="radio" Id="gztj" name="gztj"  value="1" dataType="Group" <c:if test="${demonstration_village.gztj=='1'}">checked</c:if>>
		��<input type="radio" Id="gztj" name="gztj"  value="0" <c:if test="${demonstration_village.gztj=='0'}">checked</c:if>>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">������ũ�ʽ��Ƿ��ص���б��������</td>	
		<td width="35%" colspan="3">
		  ��<input type="radio" Id="yyzh" name="yyzh"  value="1" dataType="Group" <c:if test="${demonstration_village.yyzh=='1'}">checked</c:if>>
		 ��<input type="radio" Id="yyzh" name="yyzh"  value="0" <c:if test="${demonstration_village.yyzh=='0'}">checked</c:if>>
		</td>
		
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��ũ�ʽ������Ŀ����
		</td>	
		<td width="35%" colspan="3">
		   <textarea rows="5" cols="160" id="snxmnr" name="snxmnr" value="${demonstration_village.snxmnr}">${demonstration_village.snxmnr}</textarea>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">����λ��</td>	
		<td width="35%" colspan="3">
		�رߵ���<input type="checkbox" Id="dlwz" name="dlwz" value="�رߵ���"
					<c:if test="${fn:contains(demonstration_village.dlwz,';�رߵ���;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		��Ҫ��ͨ����<input type="checkbox" Id="dlwz" name="dlwz" value="��Ҫ��ͨ����"
					<c:if test="${fn:contains(demonstration_village.dlwz,';��Ҫ��ͨ����;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		�ص�������<input type="checkbox" Id="dlwz" name="dlwz" value="�ص�������"
					<c:if test="${fn:contains(demonstration_village.dlwz,';�ص�������;')}">checked</c:if>>
	    &nbsp;&nbsp;&nbsp;
		�羰��ʤ��<input type="checkbox" Id="dlwz" name="dlwz" value="�羰��ʤ��"
					<c:if test="${fn:contains(demonstration_village.dlwz,';�羰��ʤ��;')}">checked</c:if>></td>
	</tr>
    <tr>
		<td colspan="4" align="center" class="myInputTitle">
			<strong>�ѻ�ƺ�</strong>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�й���ͳ����</td>	
		<td width="35%">
		��<input type="radio" Id="ctclch" name="ctclch"  value="1" dataType="Group" <c:if test="${demonstration_village.ctclch=='1'}">checked</c:if>>
		��<input type="radio" Id="ctclch" name="ctclch"  value="0" <c:if test="${demonstration_village.ctclch=='0'}">checked</c:if>>
	    </td>
	    <td width="15%" class="myInputTitle">��ʷ�Ļ�����</td>	
		<td width="35%">
		���Ҽ�<input type="radio" Id="whmcch" name="whmcch"  value="1" dataType="Group" <c:if test="${demonstration_village.whmcch=='1'}">checked</c:if>>
		ʡ��<input type="radio" Id="whmcch" name="whmcch"  value="2" <c:if test="${demonstration_village.whmcch=='2'}">checked</c:if>>
		��<input type="radio" Id="whmcch" name="whmcch"  value="0" <c:if test="${demonstration_village.whmcch=='0'}">checked</c:if>>
	    </td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��ɫ������������</td>	
		<td width="35%">
			���Ҽ�<input type="radio" Id="lymcch" name="lymcch"  value="1" dataType="Group" <c:if test="${demonstration_village.lymcch=='1'}">checked</c:if>>
			ʡ��<input type="radio" Id="lymcch" name="lymcch"  value="2" <c:if test="${demonstration_village.lymcch=='2'}">checked</c:if>>
			��<input type="radio" Id="lymcch" name="lymcch"  value="0" <c:if test="${demonstration_village.lymcch=='0'}">checked</c:if>>
		</td>
		<td width="15%" class="myInputTitle">������<span class="STYLE1">��ע�����Ƽ��ļ��϶�</span>��</td>	
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
		<td width="15%" class="myInputTitle">��ׯ��ɫ�����<span class="STYLE1">�Ӵ�ׯ��Դ���ơ���ҵ�����ȷ����Ҫ˵��</span>��</td>	
		<td width="35%" colspan="3">
		    <textarea rows="5" cols="160" id="tsqk" name="tsqk" value="${demonstration_village.tsqk}">${demonstration_village.tsqk}</textarea>
		</td>
	</tr>
	<tr>	
		<td width="15%" class="myInputTitle">���ڹ�������������ʩ������״��<span class="STYLE1">��Ҫ˵����ׯ��ˮ����������ˮ�������ڵ�·Ӳ�����̻��������������Ļ������ȹ�������������ʩ��״</span>��</td>	
		<td width="35%" colspan="3">
		    <textarea rows="5" cols="160" id="fwss" name="fwss" value="${demonstration_village.fwss}">${demonstration_village.fwss}</textarea>
		</td>
	</tr>
	</table>
	<br/>
	

	            <div class="myInputTitle" title="��ׯ�ƻ�������Ŀ">��ׯ�ƻ�������Ŀ</div>
				<div style="padding: 3px; height: 25px; width: auto;" class="datagrid-toolbar" id="btn">
					<a id="addTravelBtn" href="###" >���</a> <a id="delTravelBtn" href="###">ɾ��</a>
				</div>
				<div style="width: 100%; height: auto; ">
					<table cellpadding="0" cellspacing="1" class="myInputTitle" id="proinfo" border="1" width="100%" class="myInput">
						<tr bgcolor="#E6E6E6" style="width: 100%">
							<td align="center" bgcolor="#EEEEEE" style="width: 5%">���</td>
							<td align="center" bgcolor="#EEEEEE" style="width: 5%">ѡ��</td>
							<td align="center" bgcolor="#EEEEEE" style="width: 30%">����</td>
							<td align="center" bgcolor="#EEEEEE" style="width: 50%">���彨������</td>	
							<td align="center" bgcolor="#EEEEEE" style="width: 10%">Ͷ�ʹ���</td>
						
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
		<td width="15%" class="myInputTitle">�ؼ�ס�����罨�貿���Ƽ����</td>	
		<td width="35%">
		   <textarea rows="5" cols="80" id="xjyj" name="xjyj" value="${demonstration_village.xjyj}">${demonstration_village.xjyj}</textarea>
		</td>
		<td width="15%" class="myInputTitle">����</td>	
		<td width="35%">
		    <input id="xjtjrq" name="xjtjrq" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${demonstration_village.xjtjrq}" style="ime-mode:disabled;"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">�м�ס�����罨�貿���Ƽ����</td>	
		<td width="35%">
		   <textarea rows="5" cols="80" id="sjyj" name="sjyj" value="${demonstration_village.sjyj}">${demonstration_village.sjyj}</textarea>
		</td>
		<td width="15%" class="myInputTitle">����</td>	
		<td width="35%">
		   <input id="sjtjrq" name="sjtjrq" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${demonstration_village.sjtjrq}" style="ime-mode:disabled;"/>
		</td>
	</tr>
	
     <tr>	
		<td colspan="4" align="center" style="height: 30px">
	       <input id="button" name="button" type="button" value=" �� �� " onClick="return mySubmit();"/>
	       <c:if test="${fn:length(fn:split(user.biao_shi,'_'))<=3}">
	       <input id="back" type="button" value="�����б�" onclick="parent.checkShow('${pageContext.request.contextPath}/dVillage/Demonstration_village!list.do',4)"/>
	      </c:if>
	    </td>	
	</tr>
</table>
