<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<style type="text/css"> 
.odd{background:#EEEEEE;border: 2px solid #EEEEEE;} 
</style> 
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script> 
<script language="JavaScript" type="text/JavaScript">
function myCheck(){
var checkv=$('input[name="jianzao_type"]:checked').val();
switch (checkv) {
  case '古代建筑':
$("#jianzao_nian2").attr("disabled","disabled");
$("#jianzao_nian2").addClass("odd");
$("#jianzao_nian2").removeAttr("dataType");
$("#jianzao_nian3").attr("disabled","disabled");
$("#jianzao_nian3").addClass("odd");
$("#jianzao_nian3").removeAttr("dataType");
$("#jianzao_nian1").removeAttr("disabled");
$("#jianzao_nian1").removeClass("odd");
$("#jianzao_chao").removeAttr("disabled");
$("#jianzao_chao").removeClass("odd");
   break;
  case '近代建筑':
$("#jianzao_nian1").attr("disabled","disabled");
$("#jianzao_nian1").addClass("odd");
$("#jianzao_chao").attr("disabled","disabled");
$("#jianzao_chao").addClass("odd");
$("#jianzao_nian3").attr("disabled","disabled");
$("#jianzao_nian3").addClass("odd");
$("#jianzao_nian3").removeAttr("dataType");
$("#jianzao_nian2").removeAttr("disabled"); 
$("#jianzao_nian2").removeClass("odd");
$("#jianzao_nian2").attr("dataType","Number");
   break;
  default:
$("#jianzao_nian1").attr("disabled","disabled");
$("#jianzao_nian1").addClass("odd");
$("#jianzao_chao").attr("disabled","disabled");
$("#jianzao_chao").addClass("odd");
$("#jianzao_nian2").attr("disabled","disabled");
$("#jianzao_nian2").addClass("odd");
$("#jianzao_nian2").removeAttr("dataType");
$("#jianzao_nian3").removeAttr("disabled");
$("#jianzao_nian3").removeClass("odd"); 
$("#jianzao_nian3").attr("dataType","Number");
}   
}
function checkQita(){
var cd=$("#jiegou").attr("checked");
if(cd=='checked'){
$("#jiegou_remark").removeAttr("disabled"); 
$("#jiegou_remark").removeClass("odd");
$("#jiegou_remark").attr("dataType","Require");
}else{
$("#jiegou_remark").attr("value","");
$("#jiegou_remark").attr("disabled","disabled");
$("#jiegou_remark").addClass("odd");
$("#jiegou_remark").removeAttr("dataType");
}
}
</SCRIPT>
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>

	<input type="hidden" Id="id" name="id" value="${gujianzhu.id}"/>
	<table border="1" width="100%" class="myInput">	
    <tr>	
		<td colspan="2" class="myInputTitle"><strong>古建筑调查登记表</strong></td>	
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
</td>			
	</tr>		
	<tr>
		<td width="15%" class="myInputTitle"><strong>项目名称</strong></td>	
		<td>
		<input type="text" Id="mingcheng" name="mingcheng" maxlength="150" dataType="Require" value="${gujianzhu.mingcheng}"/>		</td>
	</tr>
	<tr>		
		<td width="15%" class="myInputTitle"><strong>具体地点</strong></td>	
		<td>
		<input type="text" Id="didian" name="didian" maxlength="150" dataType="Require" value="${gujianzhu.didian}"/>		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>建造年代</strong></td>	
		<td >
        <input type="radio" name="jianzao_type" value="古代建筑" <c:if test="${gujianzhu.jianzao_type=='古代建筑'}">checked</c:if> onclick="myCheck();"/>古代建筑(1840年以前)：<input type="text" Id="jianzao_nian1" name="jianzao_nian" maxlength="22" value="${gujianzhu.jianzao_type=='古代建筑'?gujianzhu.jianzao_nian:null}" style="width:100px" <c:if test="${(gujianzhu.jianzao_type==null)||(gujianzhu.jianzao_type!='古代建筑')}">disabled="disabled" class="odd"</c:if> dataType="Number" require="false"/>年或<input type="text" Id="jianzao_chao" name="jianzao_chao" maxlength="5"  value="${gujianzhu.jianzao_type=='古代建筑'?gujianzhu.jianzao_chao:''}" style="width:100px" <c:if test="${(gujianzhu.jianzao_type==null)||(gujianzhu.jianzao_type!='古代建筑')}">disabled="disabled" class="odd"</c:if> dataType="Chinese" require="false" msg="请输入正确的朝代"/>朝<br/>
		<input type="radio" name="jianzao_type" value="近代建筑" <c:if test="${gujianzhu.jianzao_type=='近代建筑'}">checked</c:if> onclick="myCheck();"/>近代建筑(1840年－1949年)：<input type="text" Id="jianzao_nian2" name="jianzao_nian" maxlength="22"  value="${gujianzhu.jianzao_type=='近代建筑'?gujianzhu.jianzao_nian:null}" style="width:100px" <c:if test="${(gujianzhu.jianzao_type==null)||(gujianzhu.jianzao_type!='近代建筑')}">disabled="disabled" class="odd"</c:if>/>年<br/>
		<input type="radio" name="jianzao_type" value="现代建筑" <c:if test="${gujianzhu.jianzao_type=='现代建筑'}">checked</c:if> dataType="Group" onclick="myCheck();"/>现代建筑(1949年至今)：<input type="text" Id="jianzao_nian3" name="jianzao_nian" maxlength="22" value="${gujianzhu.jianzao_type=='现代建筑'?gujianzhu.jianzao_nian:null}" style="width:100px" <c:if test="${(gujianzhu.jianzao_type==null)||(gujianzhu.jianzao_type!='现代建筑')}">disabled="disabled" class="odd"</c:if>/>年</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>结构形式</strong></td>	
		<td>
        <input type="checkbox" name="jiegou" value="木结构" ${mu}/>木结构&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="checkbox" name="jiegou" value="砖结构" ${zhuan}/>砖结构&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="checkbox" name="jiegou" value="砖石结构" ${zhuanshi}/>砖石结构&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="checkbox" id="jiegou" name="jiegou" value="" dataType="Group" min="1" onclick="checkQita()" ${qita}/>其他：<input type="text" name="jiegou" id="jiegou_remark" style="width:200px;" <c:if test="${qitaz==null}">disabled="disabled" class="odd"</c:if> <c:if test="${qitaz!=null}">dataType="Require"</c:if> value="${qitaz}"/></td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>建筑层数（<span class="STYLE1">层</span>）</strong></td>	
		<td>
		<input type="text" Id="cengshu" name="cengshu" maxlength="22" dataType="Number" value="${gujianzhu.cengshu}"/>		</td>
	</tr>
	<tr>		
		<td width="15%" class="myInputTitle"><strong>建筑高度（<span class="STYLE1">米</span>）</strong></td>	
		<td>
		<input type="text" Id="gaodu" name="gaodu" maxlength="22" dataType="Double" value="${gujianzhu.gaodu}"/>		</td>
	</tr>
	<tr>		
		<td width="15%" class="myInputTitle"><strong>建筑面积（<span class="STYLE1">平方米</span>）</strong></td>	
		<td>
		<input type="text" Id="mianji" name="mianji" maxlength="22" dataType="Double" value="${gujianzhu.mianji}"/>		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>建筑现状及初步评价</strong></td>	
		<td >
		  <textarea name="xianzhuang" id="xianzhuang" dataType="Limit" min="10" max="200" msg="10-200字描述" style="width:75%">${gujianzhu.xianzhuang}</textarea>		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle"><strong>照片</strong></td>	
		<td colspan="3">
<input type="file" name="uploadify" id="uploadify"/><font color="red"><strong>至少上传六张照片（4个方位角度的4张全景照，以及内部空间和局部特写照片2张）</strong></font><br/>
<table width="100%" border="1">
<tr><td><label id="sf">
<c:forEach items="${pics}" var="pic" varStatus="i">
<div style="float:left;width:480px" id="div${2000+i.index}"><table width="100%" border="1"><tr><td width="400px">
<input type="hidden" name="pic" value="${pic.path}"/><a href="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${pic.path}" target="_blank">
<img width="400px" height="300px" src="${pageContext.request.contextPath}/upFile/file/${user.guan_li}/${pic.path}" border=0/></a></td><td rowspan="2" align="center">
<a href="javascript:mydel(div${2000+i.index})">删除</a></td></tr>
<tr><td>类型：<select name="type" style="width:75px"><option value="方位全景" <c:if test="${pic.leixing=='方位全景'}">selected</c:if>>全景照</option><option value="内部空间" <c:if test="${pic.leixing=='内部空间'}">selected</c:if>>内部空间</option><option value="局部特写" <c:if test="${pic.leixing=='局部特写'}">selected</c:if>>局部特写</option></select>说明：<input type="text" name="remark" style="width:230px" value="${pic.shuoming}"/></td></tr></table></div>
</c:forEach>
</label></td></tr> 
</table>		
</td>
	</tr>		
     <tr>	
		<td colspan="2" align="center" style="height: 30px">
	<input id="button" name="button" type="button" value=" 保　存 " onClick="return mySubmit();"/>&nbsp;&nbsp;
	<input type="button" value=" 返 回 " onclick="window.location='${pageContext.request.contextPath}/gushu/Gujianzhu!list.do'"/>	
	    </td>	
	</tr>	
	</table>
<input alt="#TB_inline?height=305&width=400&inlineId=after&modal=true" id="myshow" title="" class="thickbox" type="hidden" value="..."/>
<div id="after" align="left" style="display:none;background:#FFFFEE;font-size:12px;cursor:default;">
<div id='fileQueue' class="tree" style="width:400px;height:300px;background:#FFFFEE;"></div>
</div>	