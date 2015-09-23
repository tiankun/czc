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
document.getElementById('sf0').innerHTML='&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="hidden" Id="cheng_guo" name="cheng_guo" value="'+response+'"/><a href="${pageContext.request.contextPath}/upFile/'+response+'" target="_blank">查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:mydel(\'sf0\',\'cheng_guo\')">删除</a>';
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
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
</head>

<body>

<form action="${pageContext.request.contextPath}/admin/ZRC!save.do" method="post" name="form1">	
  <table width="100%" border="1" class="myInput">
    <tr>
      <td colspan="4" class="myInputTitle"><strong>基本介绍</strong></td>
    </tr>  
    <tr>
      <td colspan="4"><textarea name="jie_shao" rows="6" style="width:100%"><c:out value="${base_info.jie_shao}" escapeXml="true"/></textarea></td>
    </tr>
    <tr>
      <td colspan="4" class="myInputTitle"><strong>社会经济情况</strong>
      <input type="hidden" name="economy_id" value="${economy.id}" /></td>
    </tr>	
    <tr>
      <td width="15%" class="myInputTitle">总人口（<span class="STYLE1">万人</span>）</td>
      <td width="35%"><input name="zong_ren" type="text" id="zong_ren"  value="${economy.zong_ren}"/></td>
      <td width="15%" class="myInputTitle">农业人口（<span class="STYLE1">万人</span>）</td>
      <td width="35%"><input name="nong" type="text" id="nong" value="${economy.nong}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">农户数（<span class="STYLE1">万户</span>）</td>
      <td><input name="nong_hu" type="text" id="nong_hu" value="${economy.nong_hu}"/></td>
      <td class="myInputTitle">农村劳动力（<span class="STYLE1">万人</span>）</td>
      <td><input name="lao_dong" type="text" id="lao_dong" value="${economy.lao_dong}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">总面积（<span class="STYLE1">万平方公里</span>）</td>
      <td><input name="zong_mianj" type="text" id="zong_mianj" value="${economy.zong_mianj}"/></td>
      <td class="myInputTitle">耕地面积（<span class="STYLE1">万平方公里</span>）</td>
      <td><input name="geng_di" type="text" id="geng_di" value="${economy.geng_di}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">农村经济总收入（<span class="STYLE1">亿元</span>）</td>
      <td><input name="jingj_zong" type="text" id="jingj_zong" value="${economy.jingj_zong}"/></td>
      <td class="myInputTitle">农民人均纯收入（<span class="STYLE1">元</span>）</td>
      <td><input name="nongm_jun" type="text" id="nongm_jun" value="${economy.nongm_jun}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">第一产业产值（<span class="STYLE1">亿元</span>）</td>
      <td><input name="yi" type="text" id="yi" value="${economy.yi}"/></td>
      <td class="myInputTitle">第二产业产值（<span class="STYLE1">亿元</span>）</td>
      <td><input name="er" type="text" id="er" value="${economy.er}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">第三产业产值（<span class="STYLE1">亿元</span>）</td>
      <td><input name="san" type="text" id="san" value="${economy.san}"/></td>
      <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="4" class="myInputTitle"><strong>规划编制情况</strong>
      <input type="hidden" name="plan_id" value="${plan.id}" /></td>
    </tr>	
    <tr>
      <td class="myInputTitle">村庄规划编制情况</td>
      <td><select name="zhuang_kuang" id="zhuang_kuang">
        <option value="有" <c:if test="${plan.zhuang_kuang=='有'}">selected</c:if>>有</option>
        <option value="无" <c:if test="${plan.zhuang_kuang=='无'}">selected</c:if>>无</option>
        <option value="在编" <c:if test="${plan.zhuang_kuang=='在编'}">selected</c:if>>在编</option>
        <option value="过期" <c:if test="${plan.zhuang_kuang=='过期'}">selected</c:if>>过期</option>
      </select>      </td>
      <td class="myInputTitle">规划期限</td>
      <td><input name="begin" type="text" id="begin" value="${plan.begin}" style="width:50px"/>
        年----<input name="end" type="text" id="end" value="${plan.end}" style="width:50px"/>
		年</td>
    </tr>
    <tr>
      <td class="myInputTitle">规划编制单位</td>
      <td><input name="bian_zhi" type="text" id="bian_zhi" value="${plan.bian_zhi}"/></td>
      <td class="myInputTitle">规划审批部门</td>
      <td><input name="shen_pi" type="text" id="shen_pi" value="${plan.shen_pi}"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">规划成果</td>
      <td colspan="3">
<table width="300px" border="0">
  <tr>
    <td id="sf0" width="200px"><c:if test="${plan.cheng_guo!=null}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/upFile/${plan.cheng_guo}" target="_blank">查看</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:mydel('sf0','cheng_guo')">删除</c:if><input type="hidden" Id="cheng_guo" name="cheng_guo" value="${plan.cheng_guo}"/></td>
    <td width="100px" align="center"><input type="file" name="uploadify" id="uploadify"/></td>
  </tr>
</table>
</td>
    </tr>
    <tr>
      <td colspan="4" class="myInputTitle"><strong>基础设施现状</strong>
      <input type="hidden" name="facility_id" value="${facility.id}" /></td>
    </tr>	
    <tr>
      <td class="myInputTitle">是否已通自来水</td>
      <td><select name="zilai" id="zilai">
        <option value="是" <c:if test="${facility.zilai=='是'}">selected</c:if>>是</option>
        <option value="否" <c:if test="${facility.zilai=='否'}">selected</c:if>>否</option>	  
      </select>      </td>
      <td class="myInputTitle">是否有污水处理</td>
      <td><select name="ws_qingkuang" id="ws_qingkuang">
        <option value="是" <c:if test="${facility.ws_qingkuang=='是'}">selected</c:if>>是</option>
        <option value="否" <c:if test="${facility.ws_qingkuang=='否'}">selected</c:if>>否</option>	
      </select>      </td>
    </tr>
    <tr>
      <td class="myInputTitle">是否有垃圾处理设施</td>
      <td><select name="lj_qingkuang" id="lj_qingkuang">
        <option value="是" <c:if test="${facility.lj_qingkuang=='是'}">selected</c:if>>是</option>
        <option value="否" <c:if test="${facility.lj_qingkuang=='否'}">selected</c:if>>否</option>	
      </select>      </td>
      <td class="myInputTitle">是否已通公路</td>
      <td><select name="gong_lu" id="gong_lu">
        <option value="是" <c:if test="${facility.gong_lu=='是'}">selected</c:if>>是</option>
        <option value="否" <c:if test="${facility.gong_lu=='否'}">selected</c:if>>否</option>	
      </select>      </td>
    </tr>
    <tr>
      <td class="myInputTitle">是否有集贸市场</td>
      <td><select name="jm_qingkuang" id="jm_qingkuang">
        <option value="是" <c:if test="${facility.jm_qingkuang=='是'}">selected</c:if>>是</option>
        <option value="否" <c:if test="${facility.jm_qingkuang=='否'}">selected</c:if>>否</option>	
      </select>      </td>
      <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td height="49" colspan="4" align="center"><input type="submit" name="Submit" value=" 提 交 " />
        &nbsp;&nbsp;
      <input type="reset" name="Submit2" value=" 重 置 " /><input type="hidden" name="unit_id" value="${unit_id}" /><input type="hidden" name="year" value="${year}" /></td>
    </tr>
  </table>
</form>
<input alt="#TB_inline?height=75&width=380&inlineId=after&modal=true" id="myshow" title="" class="thickbox" type="hidden" value="..."/>
<div id="after" align="left" style="display:none;background:#FFFFEE;font-size:12px;cursor:default;">
<div id='fileQueue' class="tree" style="width:380px;height:70px;background:#FFFFEE;"></div>
</div>
</body>
</html>