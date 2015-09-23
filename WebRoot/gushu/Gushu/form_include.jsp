<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<link href="${pageContext.request.contextPath}/scripts/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/scripts/ligerUI/ligerui.min.js" type="text/javascript"></script>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<script language="JavaScript" type="text/JavaScript">
function myCheck(){
var checkv=$('input[name="leixing"]:checked').val();
if(checkv=='古树'||checkv=='古树群'){
$('input[name="jibie"]').removeAttr("disabled");
$("#jibie").attr("dataType","Group");
if(checkv=='古树群'){
$("#qun").attr("dataType","Require");
$("#quntr").attr({style:"display:''"});
}else{
$("#qun").removeAttr("dataType");
$("#quntr").attr({style:"display:none"});
}
}else{
$('input[name="jibie"]').removeAttr("checked");
$('input[name="jibie"]').attr("disabled","disabled");
$("#jibie").removeAttr("dataType");
$("#qun").removeAttr("dataType");
$("#quntr").attr({style:"display:none"});
}
}
function andQun(){
$.ligerDialog.prompt('请输入古树群名称','', function (yes,value) {
if(yes){
if($.trim(value)=='')
{
  alert("群名称不能为空！");
}
else{
$.ajax({   
		 url:'${pageContext.request.contextPath}/gushu/Gushu!ajaxQun.do',   
		 data:{name:$.trim(value)},type: 'POST',   
		 success:function(data){   
		 if(data.substring(0,2)=='ok'){
		 ds=data.split("##");
		 alert('新增古树群成功！');		 
		 $("<option value='"+ds[1]+"'>"+$.trim(value)+"</option>").appendTo("#qun");
		 setTimeout(function(){ 
           $("#qun").val(ds[1]);  
         },1); 
		 }else{
		 alert('新增古树群失败！');}       
	   }});
}
} 
});
}
</SCRIPT>
<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000;
	font-weight: bold;
}
.STYLE3 {color: #FF0000}
-->
</style>
	<input type="hidden" Id="id" name="id" value="${gushu.id}"/>
	<table border="1" width="100%" class="myInput">	
    <tr>	
		<td colspan="4" class="myInputTitle"><strong>古树名木调查登记表</strong></td>	
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>调查时间</strong></td>	
		<td>
<select name="year" style="width:75px">
<c:forEach begin="${2013}" end="${myear}" var="my" varStatus="i">
<option value="${myear-i.count+1}" <c:if test="$myear-i.count+1==year}">selected</c:if>>${myear-i.count+1}</option>
</c:forEach>
</select>年
<select name="month" style="width:45px">
<c:forEach begin="1" end="12" var="mm">
<option value="${mm}" <c:if test="${month==mm}">selected</c:if>>${mm}</option>
</c:forEach>
</select>月
</td><td colspan="2"></td>			
	</tr>		
	<tr>
		<td width="15%" class="myInputTitle"><strong>树种及俗名</strong></td>	
		<td width="35%">
		<input type="text" Id="mingcheng" name="mingcheng" maxlength="150" dataType="Require" value="${gushu.mingcheng}"/>		</td>
		<td width="15%" class="myInputTitle"><strong>具体地点</strong></td>	
		<td width="35%">
		<input type="text" Id="didian" name="didian" maxlength="250" dataType="Require" value="${gushu.didian}"/>		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>类型</strong></td>	
		<td width="35%">
		  <input type="radio" name="leixing" value="古树" <c:if test="${gushu.leixing=='古树'}">checked</c:if> onclick="myCheck();"/>古树（100年以上的树木）<br/>
		  <input type="radio" name="leixing" value="古树后续资源" <c:if test="${gushu.leixing=='古树后续资源'}">checked</c:if> onclick="myCheck();"/>古树后续资源（树龄100年以下，50年以上的树木）<br/>
		  <input type="radio" name="leixing" value="古树群" <c:if test="${gushu.leixing=='古树群'}">checked</c:if> onclick="myCheck();"/>古树群（十株及以上成群而生的古树）<br/>
		  <input type="radio" name="leixing" value="名木" <c:if test="${gushu.leixing=='名木'}">checked</c:if> dataType="Group" onclick="myCheck();"/>名木（具有重要纪念、历史文化、学术研究价值意义的树木，无树龄限制）	  </td>
		<td width="15%" class="myInputTitle"><strong>古树级别<br/>(<span class="STYLE1">仅古树和古树群填写</span>)</strong></td>	
		<td width="35%">
		  <input type="radio" name="jibie" value="特级古树" <c:if test="${gushu.jibie=='特级古树'}">checked</c:if>/>特级古树（树龄700年以上）<br/>
		  <input type="radio" name="jibie" value="一级古树" <c:if test="${gushu.jibie=='一级古树'}">checked</c:if>/>一级古树（树龄500年至700年）<br/>
		  <input type="radio" name="jibie" value="二级古树" <c:if test="${gushu.jibie=='二级古树'}">checked</c:if>/>二级古树（树龄300年至500年）<br/>
		  <input id="jibie" type="radio" name="jibie" value="三级古树" dataType="Group" <c:if test="${gushu.jibie=='三级古树'}">checked</c:if>/>三级古树（树龄100年至300年）	  </td>
	</tr>
	<tr id="quntr" <c:if test="${gushu.leixing!='古树群'}">style="display:none"</c:if>>
		<td width="15%" class="myInputTitle"><strong>古树群群名称</strong></td>	
		<td colspan="3">
<select name="qun" id="qun" msg="古树群类型古树必须归入指定古树群组！" style="width:600px">
<c:forEach items="${quns}" var="mqun">
<option value="${mqun.id}" <c:if test="${mqun.id==gushu.qun}">selected</c:if>>${mqun.name}</option>
</c:forEach>
</select>&nbsp;&nbsp;<a href="javascript:andQun()"><strong><font color="red">点击新增古树群</font></strong></a>&nbsp;&nbsp;		
		</td>
	</tr>	
	<tr>
		<td width="15%" class="myInputTitle"><strong>树龄（<span class="STYLE3">年</span>）</strong></td>	
		<td width="35%">
		<input type="text" Id="shuling" name="shuling" maxlength="22" dataType="Double" value="${gushu.shuling}"/>		</td>
		<td width="15%" class="myInputTitle"><strong>树高（<span class="STYLE3">米</span>）</strong></td>	
		<td width="35%">
		<input type="text" Id="shugao" name="shugao" maxlength="22" dataType="Double" value="${gushu.shugao}"/>		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>冠幅（<span class="STYLE3">年</span>）</strong></td>	
		<td width="35%">
		东西 <input type="text" Id="guanfu_dx" name="guanfu_dx" maxlength="22" dataType="Double" value="${gushu.guanfu_dx}" style="width:100px"/>
		<span class="STYLE1">米</span>；南北
		 <input type="text" Id="guanfu_nb" name="guanfu_nb" maxlength="22" dataType="Double" value="${gushu.guanfu_nb}" style="width:100px"/>
		 <span class="STYLE1">米</span> </td>
		<td width="15%" class="myInputTitle"><strong>胸围（<span class="STYLE3">米</span>）</strong></td>	
		<td width="35%">
		<input type="text" Id="xongwei" name="xongwei" maxlength="22" dataType="Double" value="${gushu.xongwei}"/>		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>生长状况</strong></td>	
		<td width="35%">
		  <input type="radio" name="shengzhang" value="良好" <c:if test="${gushu.shengzhang=='良好'}">checked</c:if>/>良好
		  <input type="radio" name="shengzhang" value="一般" <c:if test="${gushu.shengzhang=='一般'}">checked</c:if>/>一般
		  <input type="radio" name="shengzhang" value="较差" <c:if test="${gushu.shengzhang=='较差'}">checked</c:if>dataType="Group"/>较差	  </td>
		<td width="15%" class="myInputTitle"><strong>四周环境情况</strong></td>	
		<td width="35%">
		  <textarea name="huanjing" id="huanjing" dataType="Limit" min="10" max="200" msg="10-200字描述" style="width:75%">${gushu.huanjing}</textarea>		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>保护现状</strong></td>	
		<td colspan="3">
		  <textarea name="baohu" id="baohu" dataType="Limit" min="10" max="200" msg="10-200字描述" style="width:75%">${gushu.baohu}</textarea>		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>照片</strong></td>	
		<td colspan="3">
<input type="file" name="uploadify" id="uploadify"/><font color="red"><strong>至少上传两张照片（1张全景照片，1张局部特写照片）</strong></font><br/>
<table width="100%" border="1">
<tr><td><label id="sf">
<c:forEach items="${pics}" var="pic" varStatus="i">
<div style="float:left;width:480px" id="div${2000+i.index}"><table width="100%" border="1"><tr><td width="400px">
<input type="hidden" name="pic" value="${pic.path}"/><a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${pic.path}" target="_blank">
<img width="400px" height="300px" src="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${pic.path}" border=0/></a></td><td rowspan="2" align="center">
<a href="javascript:mydel(div${2000+i.index})">删除</a></td></tr>
<tr><td>类型：<select name="type" style="width:75px"><option value="全景照" <c:if test="${pic.leixing=='全景照'}">selected</c:if>>全景照</option><option value="局部特写" <c:if test="${pic.leixing=='局部特写'}">selected</c:if>>局部特写</option></select>说明：<input type="text" name="remark" style="width:230px" value="${pic.shuoming}"/></td></tr></table></div>
</c:forEach>
</label></td></tr> 
</table>		
</td>
	</tr>	
     <tr>	
		<td colspan="4" align="center" style="height: 30px">
	<input id="button" name="button" type="button" value=" 保 存 " onClick="return mySubmit();"/>&nbsp;&nbsp;
	<input type="button" value=" 返 回 " onclick="window.location='${pageContext.request.contextPath}/gushu/Gushu!list.do'"/>	
	    </td>	
	</tr>	
</table>
<c:if test="${gushu.leixing=='古树后续资源'||gushu.leixing=='名木'}">
<script language="JavaScript" type="text/JavaScript">
$('input[name="jibie"]').attr("disabled","disabled");
$("#jibie").removeAttr("dataType");
</script>
</c:if>
<input alt="#TB_inline?height=305&width=400&inlineId=after&modal=true" id="myshow" title="" class="thickbox" type="hidden" value="..."/>
<div id="after" align="left" style="display:none;background:#FFFFEE;font-size:12px;cursor:default;">
<div id='fileQueue' class="tree" style="width:400px;height:300px;background:#FFFFEE;"></div>
</div>