<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0096)file:///C:/Users/Administrator/Desktop/%E6%9D%91%E9%95%87%E5%A4%84/jianshe_files/itemWsInfo.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/default.css">
<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/scripts/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" language="javascript">   
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
</script>

<style type="text/css">
.STYLE1 {
	COLOR: #ff0000
}
</style>
<style type="text/css">
<!--
.STYLE1 {font-weight: bold}
-->
</style>
</head>
<body>
<%@ include file="gs_top.jsp" %>
<form method="post" name="form1" action="#">
<table class="myInput" border="1" width="100%">
  <tbody>
  <tr>
    <td colspan="4" align="center" class="myInputTitle"><strong>项目建设情况</strong></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>项目名称:</strong></td>
    <td colspan="3"><input type="text" id="name" name="name" value="***村镇供水工程" msg="必填" datatype="Require"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>建设地点:</strong></td>
    <td colspan="3"><input type="text" id="address" name="address" value="西盟县新县城"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>项目类别:</strong></td>
    <td colspan="3"><select id="leibie" name="leibie"> <option selected="" value="2010年9月30日前应建成投运项目">2010年9月30日前应建成投运项目户</option> <option value="2010年12月31日前应建成投运项目">2010年12月31日前应建成投运项目</option> <option value="2010年需开工项目">2010年需开工项目</option></select></td></tr>
  <tr>
    <td width="20%" align="center" class="myInputTitle"><strong>工程质量监督单位:</strong></td>
    <td width="30%"><input type="text" id="quality" name="quality" value="西盟县质监站"></td>
    <td width="20%" align="center" class="myInputTitle"><strong>建设性质:</strong></td>
    <td width="30%"><select id="xingzhi" name="xingzhi"> <option selected="" value="新建">新建</option> <option value="改建">改建</option> <option value="扩建">扩建</option></select></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>自来水厂建设运营模式:</strong></td>
    <td><select id="wsMoshi" name="wsMoshi"> <option selected="" value="BOT">BOT</option> <option value="BT">BT</option> <option value="TOT">TOT</option> <option value="托管">托管</option> <option value="其他">其他</option></select></td>
    <td align="center" class="myInputTitle"><strong>管网建设运营模式:</strong></td>
    <td><select id="gdMoshi" name="gdMoshi"> <option selected="" value="BOT">BOT</option> <option value="BT">BT</option> <option value="TOT">TOT</option> <option value="托管">托管</option> <option value="其他">其他</option></select></td></tr>
  <tr>
    <td colspan="4" align="center" class="myInputTitle"><strong>项目资金筹措计划构成情况</strong></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>项目资金筹措计划（<span class="STYLE1">万元</span>）</strong></td>
    <td><input type="text" id="invest" name="invest" value="2292.93"></td>
    <td style="BACKGROUND-COLOR: #ffffff" colspan="2">&nbsp;</td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>其中自来水厂计划投资（<span class="STYLE1">万元</span>）</strong></td>
    <td><input type="text" id="wscTouzi" name="wscTouzi" value="723.19"></td>
    <td align="center" class="myInputTitle"><strong>配套管网计划投资（<span class="STYLE1">万元</span>）</strong></td>
    <td><input type="text" id="gwTouzi" name="gwTouzi" value="1569.74"></td></tr>
  <tr>
    <td colspan="4" class="myInputTitle"><strong>其中：</strong></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>国家财政（<span class="STYLE1">万元</span>）</strong></td>
    <td><input type="text" id="gujia" name="gujia" value="1600.0"></td>
    <td align="center" class="myInputTitle"><strong>省级财政（<span class="STYLE1">万元</span>）:</strong></td>
    <td><input type="text" id="sheng" name="sheng" value="0.0"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>地方财政（<span class="STYLE1">万元</span>）</strong></td>
    <td><input type="text" id="difang" name="difang" value="692.93"></td>
    <td align="center" class="myInputTitle"><strong>其他（<span class="STYLE1">万元</span>）:</strong></td>
    <td><input type="text" id="qiye" name="qiye" value="0.0"></td></tr>
  <tr>
    <td colspan="4" align="center" class="myInputTitle"><strong>项目可行性研究阶段</strong></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>可研编制单位</strong></td>
    <td><input type="text" id="kyUnit" name="kyUnit" value="城市建设研究院"></td>
    <td align="center" class="myInputTitle"><strong>可研批复单位及文号</strong></td>
    <td><input type="text" id="kyNum" name="kyNum" value="云南省发展和改革委员会[2010]1773号"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>自来水厂建设规模（<span class="STYLE1">万立方米/日</span>）</strong></td>
    <td><input type="text" id="kyCguimo" name="kyCguimo" value="0.3"></td>
    <td align="center" class="myInputTitle">
      <p><strong>配套管网建设规模(<span class="STYLE1">公里</span>)</strong></p></td>
    <td><input type="text" id="kyGuan" name="kyGuan" value="8.27"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>项目总投资（<span class="STYLE1">万元</span>）</strong></td>
    <td><input type="text" id="kyTou" name="kyTou" value="1825.0"></td>
    <td align="center" class="myInputTitle"><strong>生产工艺流程（例：→_→_→_→）</strong></td>
    <td><input type="text" id="kyGongyi" name="kyGongyi" value="ICEAS工艺"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>其他建设内容</strong></td>
    <td colspan="3"><input type="text" id="kyOther" name="kyOther"></td></tr>
  <tr>
    <td colspan="4" align="center" class="myInputTitle"><strong>项目初步设计阶段</strong></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>初设编制单位</strong></td>
    <td><input type="text" id="csUnit" name="csUnit" value="云南省设计院"></td>
    <td align="center" class="myInputTitle"><strong>初设批复文号</strong></td>
    <td><input type="text" id="csNum" name="csNum" value="云建城[2010]652号"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>自来水厂建设规模（<span class="STYLE1">万立方米/日</span>）</strong></td>
    <td><input type="text" id="csCguimo" name="csCguimo" value="0.3"></td>
    <td align="center" class="myInputTitle">
      <p><strong>配套管网建设规模(<span class="STYLE1">公里</span>)</strong></p></td>
    <td><input type="text" id="csGuan" name="csGuan" value="8.27"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>项目总投资（<span class="STYLE1">万元</span>）</strong></td>
    <td><input type="text" id="csTou" name="csTou" value="1918.54"></td>
    <td align="center" class="myInputTitle"><strong>生产工艺流程（例：→_→_→_→）</strong></td>
    <td><input type="text" id="csGongyi" name="csGongyi" value="ICEAS工艺"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>其他建设内容</strong></td>
    <td colspan="3"><input type="text" id="csOther" name="csOther"></td></tr>
  <tr>
    <td colspan="4" align="center" class="myInputTitle"><strong>项目施工图设计阶段</strong></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>施工图编制单位</strong></td>
    <td><input type="text" id="sgtBianzhi" name="sgtBianzhi" value="云南省设计院"></td>
    <td align="center" class="myInputTitle"><strong>施工图审图单位</strong></td>
    <td><input type="text" id="sgtShenhe" name="sgtShenhe" value="云南省安泰建设工程施工图设计文件审查中心"></td></tr>
  <tr>
    <td colspan="4" align="center" class="myInputTitle"><strong>项目施工阶段</strong></td></tr>
  <TR>
    <td align="center" class="myInputTitle"><strong>项目施工单位</strong></td>
    <td><input type="text" id="sgUnit" name="sgUnit" value="云南春江建筑工程有限公司" /></td>
    <td align="center" class="myInputTitle"><p><strong>工程监理单位</strong></p></td>
    <td><input type="text" id="sgJianli" name="sgJianli" value="昆明万昆建设监理有限公司" /></td>
  </TR>
  <TR>
    <td align="center" class="myInputTitle"><strong>计划开工时间</strong></td>
    <td><input type="text" style="WIDTH: 57%" id="sgBegin" class="Wdate" onclick="WdatePicker()" name="sgBegin" 
      value="2010-12-28" />    </td>
    <td align="center" class="myInputTitle"><strong>计划竣工时间</strong></td>
    <td><input type="text" style="WIDTH: 57%" id="sgEnd"  class="Wdate" onclick="WdatePicker()" name="sgEnd" 
      value="2011-08-01" /></td>
  </TR>
  <TR>
    <td align="center" class="myInputTitle"><strong>实际开工时间</strong></td>
    <td><input type="text" style="WIDTH: 57%" id="begin"  class="Wdate" onclick="WdatePicker()" name="begin" 
      value="2011-01-28" />    </td>
    <td align="center" class="myInputTitle"><strong>实际竣工时间</strong></td>
    <td><input type="text" style="WIDTH: 57%" id="end"  class="Wdate" onclick="WdatePicker()" name="end" />    </td>
  </TR>
  <TR>
    <td align="center" class="myInputTitle"><strong>施工许可证文号</strong></td>
    <td><input type="text" id="shiGong" name="shiGong" value="西建建201107" /></td>
    <td align="center" class="myInputTitle"><strong>项目竣工验收备案文号</strong></td>
    <td><input type="text" id="junGong" name="junGong" /></td>
  </TR>
  <TR>
    <td align="center" class="myInputTitle"><strong>项目结算投资（万元）</strong></td>
    <td><input type="text" id="sgTou" name="sgTou" value="0.0" /></td>
    <td colspan="2" align="center" class="myInputTitle">&nbsp;</td>
    </TR>
  <tr>
    <td colspan="4" align="center" class="myInputTitle"><strong>相关责任人</strong></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>项目业主单位</strong></td>
    <td colspan="3"><input type="text" id="owner" name="owner" value=" 西盟县污水处理厂"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>法定代表人</strong></td>
    <td><input type="text" id="faren" name="faren" value="吴永坤"></td>
    <td align="center" class="myInputTitle"><strong>单位性质</strong></td>
    <td><select id="yzXingzhi" name="yzXingzhi"> <option selected="" value="国有">国有</option> <option value="民营">民营</option> <option value="独资">独资</option> <option value="其他">其他</option> <option value="合资">合资</option> <option value="私营">私营</option> <option value="集体">集体</option> <option value="合作">合作</option> <option value="报关">报关</option></select> </td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>第一负责人</strong></td>
    <td><input type="text" id="yzYiper" name="yzYiper" value="许龙"></td>
    <td align="center" class="myInputTitle"><strong>职务</strong></td>
    <td><input type="text" id="yzYizhiwu" name="yzYizhiwu" value="副经理"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>联系电话</strong></td>
    <td><input type="text" id="yzYidianhua" name="yzYidianhua" value="08798342293"></td>
    <td align="center" class="myInputTitle"><strong>手机</strong></td>
    <td><input type="text" id="yzYishouji" name="yzYishouji"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>具体负责人</strong></td>
    <td><input type="text" id="yzJtper" name="yzJtper"></td>
    <td align="center" class="myInputTitle"><strong>职务</strong></td>
    <td><input type="text" id="yzJtzhiwu" name="yzJtzhiwu"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>联系电话</strong></td>
    <td><input type="text" id="yzJtdianhua" name="yzJtdianhua"></td>
    <td align="center" class="myInputTitle"><strong>手机</strong></td>
    <td><input type="text" id="yzJtshouji" name="yzJtshouji"></td></tr>
<!--	
  <tr>
    <td align="center" class="myInputTitle"><strong>乡（镇）建设主管部门</strong></td>
    <td colspan="3"><input type="text" id="cityDirector" name="cityDirector"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>第一负责人</strong></td>
    <td><input type="text" id="dzYiper" name="dzYiper"></td>
    <td align="center" class="myInputTitle"><strong>职务</strong></td>
    <td><input type="text" id="dzYizhiwu" name="dzYizhiwu"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>联系电话</strong></td>
    <td><input type="text" id="dzYidianhua" name="dzYidianhua"></td>
    <td align="center" class="myInputTitle"><strong>手机</strong></td>
    <td><input type="text" id="dzYishouji" name="dzYishouji"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>具体负责人</strong></td>
    <td><input type="text" id="dzJtper" name="dzJtper"></td>
    <td align="center" class="myInputTitle"><strong>职务</strong></td>
    <td><input type="text" id="dzJtzhiwu" name="dzJtzhiwu"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>联系电话</strong></td>
    <td><input type="text" id="dzJtdianhua" name="dzJtdianhua"></td>
    <td align="center" class="myInputTitle"><strong>手机</strong></td>
    <td><input type="text" id="dzJtshouji" name="dzJtshouji"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>县（市、区）建设主管部门</strong></td>
    <td colspan="3"><input type="text" id="countyDirector" name="countyDirector" value="西盟县建设局"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>第一负责人</strong></td>
    <td><input type="text" id="xsYiper" name="xsYiper" value="李云峰"></td>
    <td align="center" class="myInputTitle"><strong>职务</strong></td>
    <td><input type="text" id="xsYizhiwu" name="xsYizhiwu" value="局长"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>联系电话</strong></td>
    <td><input type="text" id="xsYidianhua" name="xsYidianhua" value="08798342224"></td>
    <td align="center" class="myInputTitle"><strong>手机</strong></td>
    <td><input type="text" id="xsYishouji" name="xsYishouji" value="13577945699"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>具体负责人</strong></td>
    <td><input type="text" id="xsJtper" name="xsJtper" value="李光辉"></td>
    <td align="center" class="myInputTitle"><strong>职务</strong></td>
    <td><input type="text" id="xsJtzhiwu" name="xsJtzhiwu" value="股长"></td></tr>
  <tr>
    <td align="center" class="myInputTitle"><strong>联系电话</strong></td>
    <td><input type="text" id="xsJtdianhua" name="xsJtdianhua" value="08798342293"></td>
    <td align="center" class="myInputTitle"><strong>手机</strong></td>
  <td><input type="text" id="xsJtshouji" name="xsJtshouji"></td></tr>
 --> 
  </tbody></table>
<br>
<table border="1" width="100%">
  <tbody>
  <tr>
    <td height="38" colspan="4" align="center"><!--c:if test="false"--><input onClick="return mySubmit();" name="button" value="   提   交   " type="button"> 
      &nbsp; &nbsp; <input  name="reset" value="   重   置   " type="reset"> 
      &nbsp;&nbsp; <!--/c:if--></td></tr></tbody></table></form>
</body></html>