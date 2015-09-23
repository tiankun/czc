<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>    
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" /> 
    <link href="${pageContext.request.contextPath}/styles/uploadify.css" rel="stylesheet" type="text/css" /> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.uploadify.min.js"></script>     
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/swfobject.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.thickbox.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/thickbox.css" type="text/css"/>         
<script language="JavaScript" type="text/JavaScript">
var size=1024*1024*5;//5M
var info='上传文件不可以超过５Ｍ';//文件过大信息
$(document).ready(function(){
$("#uploadify").uploadify({
'uploader': '${pageContext.request.contextPath}/images/uploadify.swf',
'script': '${pageContext.request.contextPath}/admin/uploadFile.jsp',
'cancelImg': '${pageContext.request.contextPath}/images/cancel.png',
'queueID': 'fileQueue',
'sizeLimit':size,
'auto': true,
'multi': false,
'onSelect':function(event,queueId,fileObj){if(fileObj.size>size){alert(info);}else{document.getElementById('myshow').click();}},
'onCancel': function(event,queueId,fileObj,data){tb_remove();},
'onComplete': function(event,queueId,fileObj,response,data){
document.getElementById('sf0').innerHTML='&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" Id="cheng_guo0" name="cheng_guo0" value="'+response+'"/><a href="${pageContext.request.contextPath}/upFile/'+response+'" target="_blank">查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:mydel(\'sf0\',\'cheng_guo0\')">删除</a>';
tb_remove();}
});
$("#uploadify1").uploadify({
'uploader': '${pageContext.request.contextPath}/images/uploadify.swf',
'script': '${pageContext.request.contextPath}/admin/uploadFile.jsp',
'cancelImg': '${pageContext.request.contextPath}/images/cancel.png',
'queueID': 'fileQueue',
'sizeLimit':size,
'auto': true,
'multi': false,
'onSelect':function(event,queueId,fileObj){if(fileObj.size>size){alert(info);}else{document.getElementById('myshow').click();}},
'onCancel': function(event,queueId,fileObj,data){tb_remove();},
'onComplete': function(event,queueId,fileObj,response,data){
document.getElementById('sf1').innerHTML='&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" Id="cheng_guo1" name="cheng_guo1" value="'+response+'"/><a href="${pageContext.request.contextPath}/upFile/'+response+'" target="_blank">查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:mydel(\'sf1\',\'cheng_guo1\')">删除</a>';
tb_remove();}
});
$("#uploadify2").uploadify({
'uploader': '${pageContext.request.contextPath}/images/uploadify.swf',
'script': '${pageContext.request.contextPath}/admin/uploadFile.jsp',
'cancelImg': '${pageContext.request.contextPath}/images/cancel.png',
'queueID': 'fileQueue',
'sizeLimit':size,
'auto': true,
'multi': false,
'onSelect':function(event,queueId,fileObj){if(fileObj.size>size){alert(info);}else{document.getElementById('myshow').click();}},
'onCancel': function(event,queueId,fileObj,data){tb_remove();},
'onComplete': function(event,queueId,fileObj,response,data){
document.getElementById('sf2').innerHTML='&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" Id="cheng_guo2" name="cheng_guo2" value="'+response+'"/><a href="${pageContext.request.contextPath}/upFile/'+response+'" target="_blank">查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:mydel(\'sf2\',\'cheng_guo2\')">删除</a>';
tb_remove();}
});
}
);
function mydel(id,hid){
if(confirm('是否确认删除此文件？'))
document.getElementById(id).innerHTML='<input type="hidden" Id="'+hid+'" name="'+hid+'"/>';
}
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
</SCRIPT>   
</head>

<body>
<table width="100%" background="${pageContext.request.contextPath}/images/tbg.jpg">
  <tr align="center">
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Economy!edit.do?unit_id=${unit_id}">社会经济情况</a></font></td>
    <td style="height:31px" width="120" background="${pageContext.request.contextPath}/images/t1.jpg"><font style="position: relative; top:3px;font-weight:bold">规划编制情况</font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Facility!edit.do?unit_id=${unit_id}">基础设施现状</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Item!list.do?unit_id=${unit_id}">项目库</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">下级上报情况</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">历史数据</a></font></td>		
    <td width="*">&nbsp;</td>	
  </tr>
</table>
<form action="${pageContext.request.contextPath}/admin/Plan!save.do" method="post" name="form1">	
	<table border="1" width="100%" class="myInput">
    <tr>
      <td colspan="4" class="myInputTitle"><strong>基本信息</strong>
      <input type="hidden" name="contact_id" value="${contact.id}" /><input type="hidden" name="lx_type" value="2" /></td>
    </tr> 
    <tr>
      <td class="myInputTitle" width="15%">村镇规划责任单位</td>
      <td width="35%"><input name="name" type="text" id="name" value="${contact.name}"/></td>
      <td class="myInputTitle" width="15%">单位领导</td>
      <td width="35%"><input name="ling_dao" type="text" id="ling_dao" value="${contact.ling_dao}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">联系人</td>
      <td><input name="lian_xi" type="text" id="lian_xi" value="${contact.lian_xi}"/></td>
      <td class="myInputTitle">联系电话</td>
      <td><input name="lianx_dianhua" type="text" id="lianx_dianhua" value="${contact.lianx_dianhua}"/></td>
    </tr>	
    <tr>
      <td class="myInputTitle">传真</td>
      <td><input name="fax" type="text" id="fax" value="${contact.fax}"/></td>
      <td class="myInputTitle">邮编</td>
      <td><input name="you_bian" type="text" id="you_bian" value="${contact.you_bian}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">E_mail</td>
      <td><input name="email" type="text" id="email" value="${contact.email}"/></td>
      <td class="myInputTitle">联系地址</td>
      <td><input name="di_zhi" type="text" id="di_zhi" value="${contact.di_zhi}"/></td>
    </tr>
    <tr>
      <td colspan="4" class="myInputTitle"><strong>乡镇域总体规划编制</strong><input type="hidden" name="plan_id0" value="${plan0.id}" /><input type="hidden" name="lei_xing0" value="a" /></td>
    </tr>		
	<tr>
	  <td class="myInputTitle">规划情况</td>
	  <td>
<select name="zhuang_kuang0">	
          <option value="有" <c:if test="${plan0.zhuang_kuang=='有'}">selected</c:if>>有</option>
          <option value="无" <c:if test="${plan0.zhuang_kuang=='无'}">selected</c:if>>无</option>
          <option value="在编" <c:if test="${plan0.zhuang_kuang=='在编'}">selected</c:if>>在编</option>
          <option value="过期" <c:if test="${plan0.zhuang_kuang=='过期'}">selected</c:if>>过期</option>	  
        </select>	  
</td>
		<td class="myInputTitle">规划期限</td>	
		<td ><input type="text" id="begin0" name="begin0" value="${plan0.begin}" style="width:50px"/>
		  年-----
	      <input type="text" id="end0" name="end0" value="${plan0.end}" style="width:50px"/>
	      年</td>
	</tr>
	<tr>
		<td class="myInputTitle">规划编制单位</td>	
		<td >
		<input type="text" Id="bian_zhi0" name="bian_zhi0" maxlength="250" dataType="" value="${plan0.bian_zhi}"/>		</td>
		<td class="myInputTitle">规划审批部门</td>	
		<td >
		<input type="text" Id="shen_pi0" name="shen_pi0" maxlength="250" dataType="" value="${plan0.shen_pi}"/>		</td>
	</tr>
	<tr>
		<td class="myInputTitle">规划成果</td>	
		<td align="left">
<table width="300px" border="0">
  <tr>
    <td id="sf0" width="200px"><c:if test="${plan0.cheng_guo!=null}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/upFile/${plan0.cheng_guo}" target="_blank">查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:mydel('sf0','cheng_guo0')">删除</c:if><input type="hidden" Id="cheng_guo0" name="cheng_guo0" value="${plan0.cheng_guo}"/></td>
    <td width="100px" align="center"><input type="file" name="uploadify" id="uploadify"/></td>
  </tr>
</table>			
		</td>
		<td class="myInputTitle">备注</td>	
		<td>
		<input type="text" Id="remark0" name="remark0" maxlength="250" dataType="" value="${plan0.remark}"/>		</td>
	</tr>
    <tr>
      <td colspan="4" class="myInputTitle"><strong>乡镇政府驻地规划编制</strong><input type="hidden" name="plan_id1" value="${plan1.id}" /><input type="hidden" name="lei_xing1" value="b" /></td>
    </tr>		
	<tr>
	  <td class="myInputTitle">规划情况</td>
	  <td><select name="zhuang_kuang1">	
          <option value="有" <c:if test="${plan1.zhuang_kuang=='有'}">selected</c:if>>有</option>
          <option value="无" <c:if test="${plan1.zhuang_kuang=='无'}">selected</c:if>>无</option>
          <option value="在编" <c:if test="${plan1.zhuang_kuang=='在编'}">selected</c:if>>在编</option>
          <option value="过期" <c:if test="${plan1.zhuang_kuang=='过期'}">selected</c:if>>过期</option>	  
        </select>      </td>
		<td class="myInputTitle">规划期限</td>	
		<td ><input type="text" id="begin1" name="begin1" value="${plan1.begin}" style="width:50px"/>
		  年-----
	      <input type="text" id="end1" name="end1" value="${plan1.end}" style="width:50px"/>
	      年</td>
	</tr>
	<tr>
		<td class="myInputTitle">规划编制单位</td>	
		<td >
		<input type="text" Id="bian_zhi1" name="bian_zhi1" maxlength="250" dataType="" value="${plan1.bian_zhi}"/>		</td>
		<td class="myInputTitle">规划审批部门</td>	
		<td >
		<input type="text" Id="shen_pi1" name="shen_pi1" maxlength="250" dataType="" value="${plan1.shen_pi}"/>		</td>
	</tr>
	<tr>
		<td class="myInputTitle">规划成果</td>	
		<td >
<table width="300px" border="0">
  <tr>
    <td id="sf1" width="200px"><c:if test="${plan1.cheng_guo!=null}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/upFile/${plan1.cheng_guo}" target="_blank">查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:mydel('sf1','cheng_guo1')">删除</c:if><input type="hidden" Id="cheng_guo1" name="cheng_guo1" value="${plan1.cheng_guo}"/></td>
    <td width="100px" align="center"><input type="file" name="uploadify1" id="uploadify1"/></td>
  </tr>
</table></td>
		<td class="myInputTitle">备注</td>	
		<td >
		<input type="text" Id="remark1" name="remark1" maxlength="250" dataType="" value="${plan1.remark}"/>		</td>
	</tr>
    <tr>
      <td colspan="4" class="myInputTitle"><strong>乡镇五年近期建设规划编制</strong><input type="hidden" name="plan_id2" value="${plan2.id}" /><input type="hidden" name="lei_xing2" value="c" /></td>
    </tr>		
	<tr>
	  <td class="myInputTitle">规划情况</td>
	  <td><select name="zhuang_kuang2">	
          <option value="有" <c:if test="${plan2.zhuang_kuang=='有'}">selected</c:if>>有</option>
          <option value="无" <c:if test="${plan2.zhuang_kuang=='无'}">selected</c:if>>无</option>
          <option value="在编" <c:if test="${plan2.zhuang_kuang=='在编'}">selected</c:if>>在编</option>
          <option value="过期" <c:if test="${plan2.zhuang_kuang=='过期'}">selected</c:if>>过期</option>	  
        </select>      </td>
		<td class="myInputTitle">规划期限</td>	
		<td ><input type="text" id="begin2" name="begin2" value="${plan2.begin}" style="width:50px"/>
		  年-----
	      <input type="text" id="end2" name="end2" value="${plan2.end}" style="width:50px"/>
	      年</td>
	</tr>
	<tr>
		<td class="myInputTitle">规划编制单位</td>	
		<td >
		<input type="text" Id="bian_zhi2" name="bian_zhi2" maxlength="250" dataType="" value="${plan2.bian_zhi}"/>		</td>
		<td class="myInputTitle">规划审批部门</td>	
		<td >
		<input type="text" Id="shen_pi2" name="shen_pi2" maxlength="250" dataType="" value="${plan2.shen_pi}"/>		</td>
	</tr>
	<tr>
		<td class="myInputTitle">规划成果</td>	
		<td >
<table width="300px" border="0">
  <tr>
    <td id="sf2" width="200px"><c:if test="${plan2.cheng_guo!=null}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/upFile/${plan2.cheng_guo}" target="_blank">查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:mydel('sf2','cheng_guo2')">删除</c:if><input type="hidden" Id="cheng_guo2" name="cheng_guo2" value="${plan2.cheng_guo}"/></td>
    <td width="100px" align="center"><input type="file" name="uploadify2" id="uploadify2"/></td>
  </tr>
</table></td>
		<td class="myInputTitle">备注</td>	
		<td >
		<input type="text" Id="remark2" name="remark2" maxlength="250" dataType="" value="${plan2.remark}"/>		</td>
	</tr>
    <tr>
      <td height="49" colspan="4" align="center"><input type="submit" name="Submit" value=" 提 交 " />
        &nbsp;&nbsp;
      <input type="reset" name="reset" value=" 重 置 " /><input type="hidden" name="unit_id" value="${unit_id}" /><input type="hidden" name="year" value="${year}" /></td>
    </tr>			
	</table>
</form>
<input alt="#TB_inline?height=75&width=380&inlineId=after&modal=true" id="myshow" title="" class="thickbox" type="hidden" value="..."/>
<div id="after" align="left" style="display:none;background:#FFFFEE;font-size:12px;cursor:default;">
<div id='fileQueue' class="tree" style="width:380px;height:70px;background:#FFFFEE;"></div>
</div>
</body>

</html>