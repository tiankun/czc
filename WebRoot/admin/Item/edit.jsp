<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/calendar.js"></script>     
    <script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>       
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
document.getElementById('sf0').innerHTML='&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" Id="bj_fabiao" name="bj_fabiao" value="'+response+'"/><a href="${pageContext.request.contextPath}/upFile/'+response+'" target="_blank">查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:mydel(\'sf0\',\'bj_fabiao\')">删除</a>';
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
document.getElementById('sf1').innerHTML='&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" Id="bj_zhongbiao" name="bj_zhongbiao" value="'+response+'"/><a href="${pageContext.request.contextPath}/upFile/'+response+'" target="_blank">查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:mydel(\'sf1\',\'bj_zhongbiao\')">删除</a>';
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
<c:if test="${view_user.mylength>2}">  <!--县级以下 -->
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Economy!edit.do?unit_id=${unit_id}">社会经济情况</a></font></td>
    <td style="height:31px" width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Plan!edit.do?unit_id=${unit_id}">规划编制情况</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Facility!edit.do?unit_id=${unit_id}">基础设施现状</a></font></td>
</c:if>
<c:if test="${view_user.mylength<=2}">  
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Economy!xianedit.do?unit_id=${unit_id}">社会经济情况</a></font></td>
    <td style="height:31px" width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Plan!xianedit.do?unit_id=${unit_id}">规划编制情况</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Facility!xianedit.do?unit_id=${unit_id}">基础设施现状</a></font></td>
</c:if>
    <td width="120" background="${pageContext.request.contextPath}/images/t1.jpg"><font style="position: relative; top:3px;font-weight:bold">项目库</font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">下级上报情况</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">历史数据</a></font></td>		
    <td width="*">&nbsp;</td>	
  </tr>
</table>
<form action="${pageContext.request.contextPath}/admin/Item!save.do" method="post" name="form1">
	<table border="1" width="100%" class="myInput">
	<tr>
	  <td class="myInputTitle" width="15%">项目名称</td>
	  <td width="35%"><input type="text" id="name" name="name" maxlength="250" datatype="" value="${item.name}"/>      </td>
		<td class="myInputTitle" width="15%">业主</td>
		<td width="35%"><input type="text" id="ye_zhu" name="ye_zhu" maxlength="250" datatype="" value="${item.ye_zhu}"/>        </td>
	</tr>
	<tr>
	  <td class="myInputTitle">联系人</td>
	  <td><input type="text" id="lian_xi" name="lian_xi" maxlength="25" datatype="" value="${item.lian_xi}"/>      </td>
		<td class="myInputTitle">联系电话</td>
		<td><input type="text" id="lianx_dianhua" name="lianx_dianhua" maxlength="25" datatype="" value="${item.lianx_dianhua}"/>        </td>
	</tr>
	<tr>
	  <td class="myInputTitle">项目分类</td>
	  <td>
<select name="fen_lei" id="fen_lei">
        <option value="供水设施" <c:if test="${item.fen_lei=='供水设施'}">selected</c:if>>供水设施</option>
        <option value="污水处理设施" <c:if test="${item.fen_lei=='污水处理设施'}">selected</c:if>>污水处理设施</option>
        <option value="垃圾处理设施" <c:if test="${item.fen_lei=='垃圾处理设施'}">selected</c:if>>垃圾处理设施</option>
        <option value="其他" <c:if test="${item.fen_lei=='其他'}">selected</c:if>>其他</option>				
      </select></td>
		<td class="myInputTitle">项目经营性质</td>
		<td>
<select name="xiang_zhi" id="xiang_zhi">
        <option value="非经营性" <c:if test="${item.xiang_zhi=='非经营性'}">selected</c:if>>非经营性</option>
        <option value="准经营性" <c:if test="${item.xiang_zhi=='准经营性'}">selected</c:if>>准经营性</option>
        <option value="经营性" <c:if test="${item.xiang_zhi=='经营性'}">selected</c:if>>经营性</option>		
      </select>        </td>
	</tr>
	<tr>
	  <td class="myInputTitle">项目所处阶段</td>
	  <td colspan="3">
<c:if test="${item.jie_duan=='规划'}"><input type="radio" name="jie_duan" value="规划" checked/></c:if><c:if test="${item.jie_duan!='规划'}"><input type="radio" name="jie_duan" value="规划"/></c:if>规划&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<c:if test="${item.jie_duan=='立项'}"><input type="radio" name="jie_duan" value="立项" checked/></c:if><c:if test="${item.jie_duan!='立项'}"><input type="radio" name="jie_duan" value="立项"/></c:if>立项&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<c:if test="${item.jie_duan=='备建'}"><input type="radio" name="jie_duan" value="备建" checked/></c:if><c:if test="${item.jie_duan!='备建'}"><input type="radio" name="jie_duan" value="备建"/></c:if>备建&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
<c:if test="${item.jie_duan=='在建'}"><input type="radio" name="jie_duan" value="在建" checked/></c:if><c:if test="${item.jie_duan!='在建'}"><input type="radio" name="jie_duan" value="在建"/></c:if>在建&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<c:if test="${item.jie_duan=='竣工'}"><input type="radio" name="jie_duan" value="竣工" checked/></c:if><c:if test="${item.jie_duan!='竣工'}"><input type="radio" name="jie_duan" value="竣工"/></c:if>竣工</td>
	  </tr>
	<tr>
		<td class="myInputTitle">拟建地址</td>	
		<td >
		<input type="text" Id="gh_dizhi" name="gh_dizhi" maxlength="250" dataType="" value="${item.gh_dizhi}"/>		</td>
		<td class="myInputTitle">拟建时间</td>	
		<td >
		<input onFocus="date(this)" id="gh_shijian" name="gh_shijian" maxlength="7" dataType="Date" value="${item.gh_shijian}" style="ime-mode:disabled;"/>		</td>
	</tr>
	<tr>
		<td class="myInputTitle">拟建规模</td>	
		<td >
		<input type="text" Id="gh_guimo" name="gh_guimo" maxlength="2000" dataType="" value="${item.gh_guimo}"/>		</td>
		<td colspan="2">&nbsp;</td>	
	  </tr>
	<tr>
		<td colspan="4" class="myInputTitle" style="height:1px"></td>	
	  </tr>	  
	<tr>
	  <td class="myInputTitle">立项选址</td>
	  <td><input type="text" id="lx_dizhi" name="lx_dizhi" maxlength="250" datatype="" value="${item.lx_dizhi}"/>      </td>
		<td class="myInputTitle">环境影响评价</td>
		<td>
<c:if test="${item.lx_pingjia=='未开展'}"><input type="radio" name="lx_pingjia" value="未开展" checked/></c:if><c:if test="${item.lx_pingjia!='未开展'}"><input type="radio" name="lx_pingjia" value="未开展"/></c:if>未开展&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<c:if test="${item.lx_pingjia=='已开展'}"><input type="radio" name="lx_pingjia" value="已开展" checked/></c:if><c:if test="${item.lx_pingjia!='已开展'}"><input type="radio" name="lx_pingjia" value="已开展"/></c:if>已开展		
</td>
	</tr>	
	<tr>
	  <td class="myInputTitle">环评编制单位</td>
	  <td><input type="text" id="lx_hpbainzhi" name="lx_hpbainzhi" maxlength="250" datatype="" value="${item.lx_hpbainzhi}"/>      </td>
		<td class="myInputTitle">环评报审批部门</td>
		<td><input type="text" id="lx_hpshenp" name="lx_hpshenp" maxlength="250" datatype="" value="${item.lx_hpshenp}"/>        </td>
	</tr>
	<tr>
	  <td class="myInputTitle">环评报审批时间</td>
	  <td><input onfocus="date(this)" id="lx_hpshijian" name="lx_hpshijian" maxlength="7" datatype="Date" value="${item.lx_hpshijian}" style="ime-mode:disabled;"/>      </td>
		<td class="myInputTitle">可行性研究报告</td>
		<td>
<c:if test="${item.lx_keybao=='未开展'}"><input type="radio" name="lx_keybao" value="未开展" checked/></c:if><c:if test="${item.lx_keybao!='未开展'}"><input type="radio" name="lx_keybao" value="未开展"/></c:if>未开展&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<c:if test="${item.lx_keybao=='已开展'}"><input type="radio" name="lx_keybao" value="已开展" checked/></c:if><c:if test="${item.lx_keybao!='已开展'}"><input type="radio" name="lx_keybao" value="已开展"/></c:if>已开展			
 </td>
	</tr>
	<tr>
	  <td class="myInputTitle">可研编制单位</td>
	  <td><input type="text" id="lx_kybian" name="lx_kybian" maxlength="250" datatype="" value="${item.lx_kybian}"/>      </td>
		<td class="myInputTitle">可研报审批部门</td>
		<td><input type="text" id="lx_kybaop" name="lx_kybaop" maxlength="250" datatype="" value="${item.lx_kybaop}"/>        </td>
	</tr>
	<tr>
	  <td class="myInputTitle">可研报审批时间</td>
	  <td><input onfocus="date(this)" id="lx_kyshijian" name="lx_kyshijian" maxlength="7" datatype="Date" value="${item.lx_kyshijian}" style="ime-mode:disabled;"/>      </td>
		<td class="myInputTitle">投资估算</td>
		<td><input type="text" id="lx_touzi" name="lx_touzi" maxlength="22" datatype="Number" value="${item.lx_touzi}"/>        </td>
	</tr>
	<tr>
		<td class="myInputTitle">设计规模</td>	
		<td >（近）<input type="text" id="lx_shejkai" name="lx_shejkai" value="${item.lx_shejkai}" style="width:70px"/>（远）<input type="text" id="lx_shejyuan" name="lx_shejyuan" value="${item.lx_shejyuan}" style="width:70px"/></td>
		<td class="myInputTitle">资金筹措方式</td>	
		<td ><input type="text" id="lx_zijin" name="lx_zijin" maxlength="500" datatype="" value="${item.lx_zijin}"/></td>
	</tr>
	<tr>
		<td colspan="4" class="myInputTitle" style="height:1px"></td>	
	  </tr>	
	<tr>
		<td class="myInputTitle">备建选址</td>	
		<td >
		<input type="text" Id="bj_dizhi" name="bj_dizhi" maxlength="250" dataType="" value="${item.bj_dizhi}"/>		</td>
		<td class="myInputTitle">立项批复时间</td>	
		<td >
		<input type="text" Id="bj_lx" name="bj_lx" maxlength="250" dataType="" value="${item.bj_lx}"/>		</td>
	</tr>
	<tr>
		<td class="myInputTitle">地址勘察</td>	
		<td >
<c:if test="${item.bj_kanc=='未开展'}"><input type="radio" name="bj_kanc" value="未开展" checked/></c:if><c:if test="${item.bj_kanc!='未开展'}"><input type="radio" name="bj_kanc" value="未开展"/></c:if>未开展&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<c:if test="${item.bj_kanc=='已开展'}"><input type="radio" name="bj_kanc" value="已开展" checked/></c:if><c:if test="${item.bj_kanc!='已开展'}"><input type="radio" name="bj_kanc" value="已开展"/></c:if>已开展		
</td>
		<td class="myInputTitle">勘察单位</td>	
		<td >
		<input type="text" Id="bj_kancha" name="bj_kancha" maxlength="250" dataType="" value="${item.bj_kancha}"/>		</td>
	</tr>
	<tr>
		<td class="myInputTitle">初步设计</td>	
		<td >
<c:if test="${item.bj_sj=='未开展'}"><input type="radio" name="bj_sj" value="未开展" checked/></c:if><c:if test="${item.bj_sj!='未开展'}"><input type="radio" name="bj_sj" value="未开展"/></c:if>未开展&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<c:if test="${item.bj_sj=='已开展'}"><input type="radio" name="bj_sj" value="已开展" checked/></c:if><c:if test="${item.bj_sj!='已开展'}"><input type="radio" name="bj_sj" value="已开展"/></c:if>已开展		
</td>
		<td class="myInputTitle">初步设计单位</td>	
		<td >
		<input type="text" Id="bj_sheji" name="bj_sheji" maxlength="250" dataType="" value="${item.bj_sheji}"/>		</td>
	</tr>
	<tr>
		<td class="myInputTitle">初设报审批部门</td>	
		<td >
		<input type="text" Id="bj_sjbaopi" name="bj_sjbaopi" maxlength="250" dataType="" value="${item.bj_sjbaopi}"/>		</td>
		<td class="myInputTitle">初设报审批时间</td>	
		<td >
		<input onFocus="date(this)" id="bj_sjbaotime" name="bj_sjbaotime" maxlength="7" dataType="Date" value="${item.bj_sjbaotime}" style="ime-mode:disabled;"/>		</td>
	</tr>
	<tr>
		<td class="myInputTitle">初设批复时间</td>	
		<td >
		<input onFocus="date(this)" id="bj_sjpifu" name="bj_sjpifu" maxlength="7" dataType="Date" value="${item.bj_sjpifu}" style="ime-mode:disabled;"/>		</td>
		<td class="myInputTitle">设计规模（近）</td>	
		<td >
（近）
  <input type="text" id="bj_sj_jin" name="bj_sj_jin" value="${item.bj_sj_jin}" style="width:70px"/>
  （远）
  <input type="text" id="bj_sj_yuan" name="bj_sj_yuan" value="${item.bj_sj_yuan}" style="width:70px"/></td>
	</tr>
	<tr>
	  <td class="myInputTitle">投资概算</td>
	  <td ><input type="text" id="bj_touzi" name="bj_touzi" maxlength="22" datatype="Number" value="${item.bj_touzi}"/>      </td>
		<td class="myInputTitle">资金筹措方式</td>
		<td ><input type="text" id="bj_zijin" name="bj_zijin" maxlength="100" datatype="" value="${item.bj_zijin}"/>        </td>
	</tr>
	<tr>
	  <td class="myInputTitle">施工图设计</td>
	  <td >
<c:if test="${item.bj_tu=='未开展'}"><input type="radio" name="bj_tu" value="未开展" checked/></c:if><c:if test="${item.bj_tu!='未开展'}"><input type="radio" name="bj_tu" value="未开展"/></c:if>未开展&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<c:if test="${item.bj_tu=='已开展'}"><input type="radio" name="bj_tu" value="已开展" checked/></c:if><c:if test="${item.bj_tu!='已开展'}"><input type="radio" name="bj_tu" value="已开展"/></c:if>已开展</td>
		<td class="myInputTitle">施工图设计单位</td>
		<td ><input type="text" id="bj_tusheji" name="bj_tusheji" maxlength="250" datatype="" value="${item.bj_tusheji}"/>        </td>
	</tr>
	<tr>
	  <td class="myInputTitle">招标工作</td>
	  <td colspan="3">
<c:if test="${item.bj_zhaob=='未开展'}"><input type="radio" name="bj_zhaob" value="未开展" checked/></c:if><c:if test="${item.bj_zhaob!='未开展'}"><input type="radio" name="bj_zhaob" value="未开展"/></c:if>未开展&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<c:if test="${item.bj_zhaob=='已开展'}"><input type="radio" name="bj_zhaob" value="已开展" checked/></c:if><c:if test="${item.bj_zhaob!='已开展'}"><input type="radio" name="bj_zhaob" value="已开展"/></c:if>已开展</td>
	  </tr>
	<tr>
		<td class="myInputTitle">招标公告</td>	
		<td >
<table width="300px" border="0">
  <tr>
    <td id="sf0" width="200px"><c:if test="${item.bj_fabiao!=null}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/upFile/${item.bj_fabiao}" target="_blank">查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:mydel('sf0','bj_fabiao')">删除</c:if><input type="hidden" Id="bj_fabiao" name="bj_fabiao" value="${item.bj_fabiao}"/></td>
    <td width="100px" align="center"><input type="file" name="uploadify" id="uploadify"/></td>
  </tr>
</table>		
</td>
		<td class="myInputTitle">中标结果文件</td>	
		<td >
<table width="300px" border="0">
  <tr>
    <td id="sf1" width="200px"><c:if test="${item.bj_zhongbiao!=null}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/upFile/${item.bj_zhongbiao}" target="_blank">查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:mydel('sf1','bj_zhongbiao')">删除</c:if><input type="hidden" Id="bj_zhongbiao" name="bj_zhongbiao" value="${item.bj_zhongbiao}"/></td>
    <td width="100px" align="center"><input type="file" name="uploadify1" id="uploadify1"/></td>
  </tr>
</table>		
</td>
	</tr>
	<tr>
		<td colspan="4" class="myInputTitle" style="height:1px"></td>	
	  </tr>	
	<tr>
		<td class="myInputTitle">在建选址</td>	
		<td >
		<input type="text" Id="zj_dizhi" name="zj_dizhi" maxlength="250" dataType="" value="${item.zj_dizhi}"/>		</td>
		<td class="myInputTitle">施工单位</td>	
		<td >
		<input type="text" Id="zj_shigong" name="zj_shigong" maxlength="250" dataType="" value="${item.zj_shigong}"/>		</td>
	</tr>
	<tr>
		<td class="myInputTitle">监理单位</td>	
		<td >
		<input type="text" Id="zj_jianli" name="zj_jianli" maxlength="250" dataType="" value="${item.zj_jianli}"/>		</td>
		<td class="myInputTitle">开工时间</td>	
		<td >
		<input onFocus="date(this)" id="zj_kaishi" name="zj_kaishi" maxlength="7" dataType="Date" value="${item.zj_kaishi}" style="ime-mode:disabled;"/>		</td>
	</tr>
	<tr>
		<td class="myInputTitle">计划工期</td>	
		<td >
		<input type="text" Id="zj_gongqi" name="zj_gongqi" maxlength="100" dataType="" value="${item.zj_gongqi}"/>		</td>
		<td colspan="2">&nbsp;</td>	
	  </tr>
	<tr>
		<td colspan="4" class="myInputTitle" style="height:1px"></td>	
	  </tr>	  
	<tr>
	  <td class="myInputTitle">建成地址</td>
	  <td><input type="text" id="jg_dizhi" name="jg_dizhi" maxlength="250" datatype="" value="${item.jg_dizhi}"/>      </td>
		<td class="myInputTitle">竣工验收时间</td>
		<td><input onfocus="date(this)" id="jg_shijian" name="jg_shijian" maxlength="7" datatype="Date" value="${item.jg_shijian}" style="ime-mode:disabled;"/>        </td>
	</tr>	
	<tr>
	  <td class="myInputTitle">竣工验收单位</td>
	  <td><input type="text" id="jg_yanshou" name="jg_yanshou" maxlength="250" datatype="" value="${item.jg_yanshou}"/>      </td>
		<td colspan="2">&nbsp;</td>	
	  </tr>
    <tr>
      <td height="49" colspan="4" align="center"><input type="submit" name="Submit" value=" 提 交 " />
        &nbsp;&nbsp;
      <input type="reset" name="reset" value=" 重 置 " /><input type="hidden" name="unit_id" value="${edit_id}" /><input type="hidden" name="id" value="${item.id}" /><input type="hidden" name="tian_jia" value="${item.tian_jia}" /><input type="hidden" name="back_id" value="${unit_id}" /></td>
    </tr>	  
	</table>
</form>
<input alt="#TB_inline?height=75&width=380&inlineId=after&modal=true" id="myshow" title="" class="thickbox" type="hidden" value="..."/>
<div id="after" align="left" style="display:none;background:#FFFFEE;font-size:12px;cursor:default;">
<div id='fileQueue' class="tree" style="width:380px;height:70px;background:#FFFFEE;"></div>
</div>
</body>
</html>