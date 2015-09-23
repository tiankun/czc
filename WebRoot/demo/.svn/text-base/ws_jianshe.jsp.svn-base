<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld"  prefix="c"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/scripts/My97DatePicker/WdatePicker.js"></script>
<script language="JavaScript" >
function mySubmit(){
if(Validator.Validate(document.form1,3)){
		document.form1.submit();
}
}	
</script>
</head>

<body>
<%@ include file="gs_top.jsp" %>

<FORM method=post name=form1 action="#"><INPUT 
name=id value=86 type=hidden> <INPUT name=year value=2010 type=hidden> <INPUT 
name=type value=污水厂+管网 type=hidden> <INPUT name=city value=9 type=hidden> <INPUT 
name=county value=84 type=hidden> <INPUT name=attribute type=hidden> <INPUT 
name=state value=设备安装阶段 type=hidden> 
<TABLE class=myInput border=1 width="100%">
  <TBODY>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><STRONG>项目建设情况</STRONG></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>项目名称:</strong></TD>
    <TD colSpan=3><INPUT type="text" id=name name=name value=西盟县污水处理厂及配套管网工程 msg="必填" 
      dataType="Require"></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>建设地点:</strong></TD>
    <TD colSpan=3><INPUT type="text" id=address name=address value=" 西盟县新县城"></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>项目类别:</strong></TD>
    <TD colSpan=3><SELECT id=leibie name=leibie> <OPTION selected 
        value=2010年9月30日前应建成投运项目>2010年9月30日前应建成投运项目户</OPTION> <OPTION 
        value=2010年12月31日前应建成投运项目>2010年12月31日前应建成投运项目</OPTION> <OPTION 
        value=2010年需开工项目>2010年需开工项目</OPTION></SELECT></TD></TR>
  <TR>
    <TD width="20%" align="center" class="myInputTitle"><strong>工程质量监督单位:</strong></TD>
    <TD width="30%"><INPUT type="text" id=quality name=quality value=西盟县质监站></TD>
    <TD width="20%" align="center" class="myInputTitle"><strong>建设性质:</strong></TD>
    <TD width="30%"><SELECT id=xingzhi name=xingzhi> <OPTION selected 
        value=新建>新建</OPTION> <OPTION value=改建>改建</OPTION> <OPTION 
        value=扩建>扩建</OPTION></SELECT></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>污水厂建设运营模式:</strong></TD>
    <TD><SELECT id=wsMoshi name=wsMoshi> <OPTION selected 
        value=BOT>BOT</OPTION> <OPTION value=BT>BT</OPTION> <OPTION 
        value=TOT>TOT</OPTION> <OPTION value=托管>托管</OPTION> <OPTION 
        value=其他>其他</OPTION></SELECT></TD>
    <TD align="center" class="myInputTitle"><strong>管网建设运营模式:</strong></TD>
    <TD><SELECT id=gdMoshi name=gdMoshi> <OPTION selected 
        value=BOT>BOT</OPTION> <OPTION value=BT>BT</OPTION> <OPTION 
        value=TOT>TOT</OPTION> <OPTION value=托管>托管</OPTION> <OPTION 
        value=其他>其他</OPTION></SELECT></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><STRONG>项目资金筹措计划构成情况</STRONG></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>项目资金筹措计划（<SPAN class=STYLE1>万元</SPAN>）</strong></TD>
    <TD><INPUT id=invest name=invest value=2292.93></TD>
    <TD style="BACKGROUND-COLOR: #ffffff" colSpan=2>&nbsp;</TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>其中污水厂计划投资（<SPAN class=STYLE1>万元</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=wscTouzi name=wscTouzi value=723.19></TD>
    <TD align="center" class="myInputTitle"><strong>配套管网计划投资（<SPAN class=STYLE1>万元</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=gwTouzi name=gwTouzi value=1569.74></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4><strong>其中：</strong></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>国家财政（<SPAN class=STYLE1>万元</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=gujia name=gujia value=1600.0></TD>
    <TD align="center" class="myInputTitle"><strong>省级财政（<SPAN class=STYLE1>万元</SPAN>）:</strong></TD>
    <TD><INPUT type="text" id=sheng name=sheng value=0.0></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>地方财政（<SPAN class=STYLE1>万元</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=difang name=difang value=692.93></TD>
    <TD align="center" class="myInputTitle"><strong>其他（<SPAN class=STYLE1>万元</SPAN>）:</strong></TD>
    <TD><INPUT type="text" id=qiye name=qiye value=0.0></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><STRONG>项目可行性研究阶段</STRONG></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>可研编制单位</strong></TD>
    <TD><INPUT type="text" id=kyUnit name=kyUnit value=城市建设研究院></TD>
    <TD align="center" class="myInputTitle"><strong>可研批复单位及文号</strong></TD>
    <TD><INPUT type="text" id=kyNum name=kyNum value=云南省发展和改革委员会[2010]1773号></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>污水处理厂建设规模（<SPAN class=STYLE1>万立方米/日</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=kyCguimo name=kyCguimo value=0.3></TD>
    <TD align="center" class="myInputTitle">
      <P><strong>配套管网建设规模(<SPAN class=STYLE1>公里</SPAN>)</strong></P></TD>
    <TD><INPUT type="text" id=kyGuan name=kyGuan value=8.27></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>再生水处理建设规模（<SPAN class=STYLE1>万立方米/日</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=kyZsguimo name=kyZsguimo value=0.0></TD>
    <TD align="center" class="myInputTitle"><strong>再生水配套管网建设规模（<SPAN class=STYLE1>公里</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=kyZsguan name=kyZsguan value=0.0></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>项目总投资（<SPAN class=STYLE1>万元</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=kyTou name=kyTou value=1825.0></TD>
    <TD align="center" class="myInputTitle"><strong>污水处理工艺</strong></TD>
    <TD><INPUT type="text" id=kyGongyi name=kyGongyi value=ICEAS工艺></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>其他建设内容</strong></TD>
    <TD colSpan=3><INPUT type="text" id=kyOther name=kyOther></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><STRONG>项目初步设计阶段</STRONG></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>初设编制单位</strong></TD>
    <TD><INPUT type="text" id=csUnit name=csUnit value=云南省设计院></TD>
    <TD align="center" class="myInputTitle"><strong>初设批复文号</strong></TD>
    <TD><INPUT type="text" id=csNum name=csNum value=云建城[2010]652号></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>污水处理厂建设规模（<SPAN class=STYLE1>万立方米/日</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=csCguimo name=csCguimo value=0.3></TD>
    <TD align="center" class="myInputTitle">
      <P><strong>配套管网建设规模(<SPAN class=STYLE1>公里</SPAN>)</strong></P></TD>
    <TD><INPUT type="text" id=csGuan name=csGuan value=8.27></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>再生水处理建设规模（<SPAN class=STYLE1>万立方米/日</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=csZsguimo name=csZsguimo value=0.0></TD>
    <TD align="center" class="myInputTitle"><strong>再生水配套管网建设规模（<SPAN class=STYLE1>公里</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=csZsguan name=csZsguan value=0.0></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>项目总投资（<SPAN class=STYLE1>万元</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=csTou name=csTou value=1918.54></TD>
    <TD align="center" class="myInputTitle"><strong>污水处理工艺</strong></TD>
    <TD><INPUT type="text" id=csGongyi name=csGongyi value=ICEAS工艺></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>其他建设内容</strong></TD>
    <TD colSpan=3><INPUT type="text" id=csOther name=csOther></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><STRONG>项目施工图设计阶段</STRONG></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>施工图编制单位</strong></TD>
    <TD><INPUT type="text" id=sgtBianzhi name=sgtBianzhi value=云南省设计院></TD>
    <TD align="center" class="myInputTitle"><strong>施工图审图单位</strong></TD>
    <TD><INPUT type="text" id=sgtShenhe name=sgtShenhe value=云南省安泰建设工程施工图设计文件审查中心></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><STRONG>项目施工阶段</STRONG></TD></TR>
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
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><STRONG>业主责任人</STRONG></TD>
  </TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>项目业主单位</strong></TD>
    <TD colSpan=3><INPUT type="text" id=owner name=owner value=" 西盟县污水处理厂"></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>法定代表人</strong></TD>
    <TD><INPUT type="text" id=faren name=faren value=吴永坤></TD>
    <TD align="center" class="myInputTitle"><strong>单位性质</strong></TD>
    <TD><SELECT id=yzXingzhi name=yzXingzhi> <OPTION selected 
        value=国有>国有</OPTION> <OPTION value=民营>民营</OPTION> <OPTION 
        value=独资>独资</OPTION> <OPTION value=其他>其他</OPTION> <OPTION 
        value=合资>合资</OPTION> <OPTION value=私营>私营</OPTION> <OPTION 
        value=集体>集体</OPTION> <OPTION value=合作>合作</OPTION> <OPTION 
        value=报关>报关</OPTION></SELECT> </TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>第一负责人</strong></TD>
    <TD><INPUT type="text" id=yzYiper name=yzYiper value=许龙></TD>
    <TD align="center" class="myInputTitle"><strong>职务</strong></TD>
    <TD><INPUT type="text" id=yzYizhiwu name=yzYizhiwu value=副经理></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>联系电话</strong></TD>
    <TD><INPUT type="text" id=yzYidianhua name=yzYidianhua value=08798342293></TD>
    <TD align="center" class="myInputTitle"><strong>手机</strong></TD>
    <TD><INPUT type="text" id=yzYishouji name=yzYishouji></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>具体负责人</strong></TD>
    <TD><INPUT type="text" id=yzJtper name=yzJtper></TD>
    <TD align="center" class="myInputTitle"><strong>职务</strong></TD>
    <TD><INPUT type="text" id=yzJtzhiwu name=yzJtzhiwu></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>联系电话</strong></TD>
    <TD><INPUT type="text" id=yzJtdianhua name=yzJtdianhua></TD>
    <TD align="center" class="myInputTitle"><strong>手机</strong></TD>
    <TD><INPUT type="text" id=yzJtshouji name=yzJtshouji></TD></TR>
<!--	
  <TR>
    <TD align="center" class="myInputTitle"><strong>乡（镇）建设主管部门</strong></TD>
    <TD colSpan=3><INPUT type="text" id=cityDirector name=cityDirector></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>第一负责人</strong></TD>
    <TD><INPUT type="text" id=dzYiper name=dzYiper></TD>
    <TD align="center" class="myInputTitle"><strong>职务</strong></TD>
    <TD><INPUT type="text" id=dzYizhiwu name=dzYizhiwu></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>联系电话</strong></TD>
    <TD><INPUT type="text" id=dzYidianhua name=dzYidianhua></TD>
    <TD align="center" class="myInputTitle"><strong>手机</strong></TD>
    <TD><INPUT type="text" id=dzYishouji name=dzYishouji></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>具体负责人</strong></TD>
    <TD><INPUT type="text" id=dzJtper name=dzJtper></TD>
    <TD align="center" class="myInputTitle"><strong>职务</strong></TD>
    <TD><INPUT type="text" id=dzJtzhiwu name=dzJtzhiwu></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>联系电话</strong></TD>
    <TD><INPUT type="text" id=dzJtdianhua name=dzJtdianhua></TD>
    <TD align="center" class="myInputTitle"><strong>手机</strong></TD>
    <TD><INPUT type="text" id=dzJtshouji name=dzJtshouji></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>县（市、区）建设主管部门</strong></TD>
    <TD colSpan=3><INPUT type="text" id=countyDirector name=countyDirector 
  value=西盟县建设局></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>第一负责人</strong></TD>
    <TD><INPUT type="text" id=xsYiper name=xsYiper value=李云峰></TD>
    <TD align="center" class="myInputTitle"><strong>职务</strong></TD>
    <TD><INPUT type="text" id=xsYizhiwu name=xsYizhiwu value=局长></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>联系电话</strong></TD>
    <TD><INPUT type="text" id=xsYidianhua name=xsYidianhua value=08798342224></TD>
    <TD align="center" class="myInputTitle"><strong>手机</strong></TD>
    <TD><INPUT type="text" id=xsYishouji name=xsYishouji></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>具体负责人</strong></TD>
    <TD><INPUT type="text" id=xsJtper name=xsJtper value=李光辉></TD>
    <TD align="center" class="myInputTitle"><strong>职务</strong></TD>
    <TD><INPUT type="text" id=xsJtzhiwu name=xsJtzhiwu value=股长></TD></TR>
  <TR>
    <TD align="center" class="myInputTitle"><strong>联系电话</strong></TD>
    <TD><INPUT type="text" id=xsJtdianhua name=xsJtdianhua value=08798342293></TD>
    <TD align="center" class="myInputTitle"><strong>手机</strong></TD>
  <TD><INPUT type="text" id=xsJtshouji name=xsJtshouji></TD></TR>
-->  
  </TBODY></TABLE>
<BR>
<TABLE border=1 width="100%">
  <TBODY>
  <TR>
    <TD height=38 colSpan=4 align=center><!--c:if test="false"--><INPUT onClick="return mySubmit();" name=button value="   提   交   " type=button> 
      &nbsp; &nbsp; <INPUT name=reset value="   重   置   " type=reset> 
      &nbsp;&nbsp; <!--/c:if--></TD></TR></TBODY></TABLE></FORM>
  </body>
</html>
