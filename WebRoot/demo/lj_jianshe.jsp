<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML><HEAD>
<META content="text/html; charset=GBK" http-equiv=Content-Type><LINK 
rel=stylesheet type=text/css href="${pageContext.request.contextPath}/styles/default.css">
<SCRIPT language=JavaScript src="${pageContext.request.contextPath}/scripts/status.js"></SCRIPT>
<SCRIPT language=javascript src="${pageContext.request.contextPath}/scripts/Validator.js"></SCRIPT>
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/scripts/My97DatePicker/WdatePicker.js"></script>

<SCRIPT language=JavaScript>
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
</SCRIPT>

<STYLE type=text/css>
.STYLE1 {
	COLOR: #ff0000
}
</STYLE>

</HEAD>
<BODY>
<%@ include file="gs_top.jsp" %>
<FORM method=post name=form1 action=#>
<TABLE class=myInput border=1 width="100%">
  <TBODY>
  <TR>
    <TD colSpan=4 align=center class="tHead">项目建设情况</TD>
  </TR>
  <TR>
    <TD width="15%" class="myInputTitle"><strong>项目名称:</strong></TD>
    <TD colSpan=3><INPUT type="text" id=name name=name value=官渡区城市生活垃圾处理工程（昆明东郊垃圾焚烧发电厂） 
      msg="必填" dataType="Require"></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>建设地点:</strong></TD>
    <TD colSpan=3><INPUT type="text" id=address name=address 
  value=" 昆明经济开发区东郊垃圾卫生填埋场"></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>工程质量监督单位:</strong></TD>
    <TD colSpan=3><INPUT type="text" id=quality name=quality value=四川电力工程建设监理有限责任公司></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>项目类别:</strong></TD>
    <TD colSpan=3><SELECT id=leibie name=leibie> <OPTION 
        value=2010年9月30日前应建成投运项目>2010年9月30日前应建成投运项目户</OPTION> <OPTION selected 
        value=2010年12月31日前应建成投运项目>2010年12月31日前应建成投运项目</OPTION> <OPTION 
        value=2010年需开工项目>2010年需开工项目</OPTION></SELECT></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>建设运营模式:</strong></TD>
    <TD><SELECT id=moshi name=moshi> <OPTION selected value=BOT>BOT</OPTION> 
        <OPTION value=BT>BT</OPTION> <OPTION value=TOT>TOT</OPTION> <OPTION 
        value=托管>托管</OPTION> <OPTION value=其他>其他</OPTION></SELECT> </TD>
    <TD width="15%" class="myInputTitle"><strong>建设性质:</strong></TD>
    <TD width="35%"><SELECT id=xingzhi name=xingzhi> <OPTION selected 
        value=新建>新建</OPTION> <OPTION value=改建>改建</OPTION> <OPTION 
        value=扩建>扩建</OPTION></SELECT></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><strong>项目资金筹措计划构成情况</strong></TD>
  </TR>
  <TR>
    <TD class="myInputTitle"><strong>项目资金筹措计划（<SPAN class=STYLE1>万元</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=invest name=invest value=45000.0></TD>
    <TD class="myInputTitle"><strong>其中：收运系统计划投资（<SPAN class=STYLE1>万元</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=syTouzi name=syTouzi value=0.0></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4><strong>其中：</strong></TD>
  </TR>
  <TR>
    <TD class="myInputTitle"><strong>国家财政（<SPAN class=STYLE1>万元</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=gujia name=gujia value=0.0></TD>
    <TD class="myInputTitle"><strong>省级财政（<SPAN class=STYLE1>万元</SPAN>）:</strong></TD>
    <TD><INPUT type="text" id=sheng name=sheng value=0.0></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>地方财政（<SPAN class=STYLE1>万元</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=difang name=difang value=0.0></TD>
    <TD class="myInputTitle"><strong>其他（<SPAN class=STYLE1>万元</SPAN>）:</strong></TD>
    <TD><INPUT type="text" id=qiye name=qiye value=0.0></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><strong>项目可行性研究阶段</strong></TD>
  </TR>
  <TR>
    <TD class="myInputTitle"><strong>可研编制单位</strong></TD>
    <TD><INPUT type="text" id=kyUnit name=kyUnit value=浙江大学能源工程设计研究院></TD>
    <TD class="myInputTitle"><strong>可研批复单位及文号</strong></TD>
    <TD><INPUT type="text" id=kyNum name=kyNum value=云南省发改委－云发改外资（2006）704号></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>垃圾处理厂建设规模（<SPAN class=STYLE1>吨/日</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=kyGuimo name=kyGuimo value=1600.0></TD>
    <TD class="myInputTitle">
      <P><strong>中转站（<SPAN class=STYLE1>个</SPAN>）</strong></P></TD>
    <TD><INPUT type="text" id=kyZhan name=kyZhan value=1></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>项目总投资（<SPAN class=STYLE1>万元</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=kyTouzi name=kyTouzi value=45000.0></TD>
    <TD class="myInputTitle"><strong>垃圾处理工艺</strong></TD>
    <TD><INPUT type="text" id=kyGongyi name=kyGongyi value=异重度循环流化床城市生活垃圾焚烧工艺></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><strong>项目初步设计阶段</strong></TD>
  </TR>
  <TR>
    <TD class="myInputTitle"><strong>初设编制单位</strong></TD>
    <TD><INPUT type="text" id=csUnit name=csUnit value=中国轻工业广州设计工程有限公司></TD>
    <TD class="myInputTitle"><strong>初设批复文号</strong></TD>
    <TD><INPUT type="text" id=csNum name=csNum></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>垃圾处理厂建设规模（<SPAN class=STYLE1>吨/日</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=csGuimo name=csGuimo value=1600.0></TD>
    <TD class="myInputTitle">
      <P><strong>中转站（<SPAN class=STYLE1>个</SPAN>）</strong></P></TD>
    <TD><INPUT type="text" id=csZhan name=csZhan value=0></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>项目总投资（<SPAN class=STYLE1>万元</SPAN>）</strong></TD>
    <TD><INPUT type="text" id=csTouzi name=csTouzi value=45000.0></TD>
    <TD class="myInputTitle"><strong>垃圾处理工艺</strong></TD>
    <TD><INPUT type="text" id=csGongyi name=csGongyi value=异重度循环流化床城市生活垃圾焚烧工艺></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4 align=center><strong>项目施工图设计阶段</strong></TD>
  </TR>
  <TR>
    <td align="center" class="myInputTitle"><strong>项目施工单位</strong></td>
    <td><input type="text" id="sgUnit" name="sgUnit" value="云南春江建筑工程有限公司" /></td>
    <td align="center" class="myInputTitle"><p><strong>工程监理单位</strong></p></td>
    <td><input type="text" id="sgJianli" name="sgJianli" value="昆明万昆建设监理有限公司" /></td>
  </TR>
  <TR>
    <td align="center" class="myInputTitle"><strong>计划开工时间</strong></td>
    <td><input type="text" style="WIDTH: 57%" id="sgBegin" class="Wdate" onClick="WdatePicker()" name="sgBegin" 
      value="2010-12-28" />    </td>
    <td align="center" class="myInputTitle"><strong>计划竣工时间</strong></td>
    <td><input type="text" style="WIDTH: 57%" id="sgEnd"  class="Wdate" onClick="WdatePicker()" name="sgEnd" 
      value="2011-08-01" /></td>
  </TR>
  <TR>
    <td align="center" class="myInputTitle"><strong>实际开工时间</strong></td>
    <td><input type="text" style="WIDTH: 57%" id="begin"  class="Wdate" onClick="WdatePicker()" name="begin" 
      value="2011-01-28" />    </td>
    <td align="center" class="myInputTitle"><strong>实际竣工时间</strong></td>
    <td><input type="text" style="WIDTH: 57%" id="end"  class="Wdate" onClick="WdatePicker()" name="end" />    </td>
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
    <TD colSpan=4 align=center><strong>相关责任人</strong></TD>
  </TR>
  <TR>
    <TD class="myInputTitle"><strong>项目业主单位</strong></TD>
    <TD colSpan=3><INPUT type="text" id=owner name=owner value=" 云南双星绿色能源有限公司"></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>法定代表人</strong></TD>
    <TD><INPUT type="text" id=faren name=faren value=曹国权></TD>
    <TD class="myInputTitle"><strong>单位性质</strong></TD>
    <TD><SELECT id=yzXingzhi name=yzXingzhi> <OPTION selected 
        value=国有>国有</OPTION> <OPTION value=民营>民营</OPTION> <OPTION 
        value=独资>独资</OPTION> <OPTION value=其他>其他</OPTION> <OPTION 
        value=合资>合资</OPTION> <OPTION value=私营>私营</OPTION> <OPTION 
        value=集体>集体</OPTION> <OPTION value=合作>合作</OPTION> <OPTION 
        value=报关>报关</OPTION></SELECT> </TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>第一负责人</strong></TD>
    <TD><INPUT type="text" id=yzYiper name=yzYiper value=曹国权></TD>
    <TD class="myInputTitle"><strong>职务</strong></TD>
    <TD><INPUT type="text" id=yzYizhiwu name=yzYizhiwu value=总经理></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>联系电话</strong></TD>
    <TD><INPUT type="text" id=yzYidianhua name=yzYidianhua value=02152585282></TD>
    <TD class="myInputTitle"><strong>手机</strong></TD>
    <TD><INPUT type="text" id=yzYishouji name=yzYishouji></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>具体负责人</strong></TD>
    <TD><INPUT type="text" id=yzJtper name=yzJtper value=黄健></TD>
    <TD class="myInputTitle"><strong>职务</strong></TD>
    <TD><INPUT type="text" id=yzJtzhiwu name=yzJtzhiwu value=总经理助理></TD></TR>
  <TR>
    <TD class="myInputTitle"><strong>联系电话</strong></TD>
    <TD><INPUT type="text" id=yzJtdianhua name=yzJtdianhua value=6358850></TD>
    <TD class="myInputTitle"><strong>手机</strong></TD>
    <TD><INPUT type="text" id=yzJtshouji name=yzJtshouji value=></TD></TR>
<!--	
  <TR>
    <TD class="myInputTitle"><STRONG>乡（镇）建设主管部门</STRONG></TD>
    <TD colSpan=3><INPUT type="text" id=cityDirector name=cityDirector 
  value=昆明市城市管理局></TD></TR>
  <TR>
    <TD class="myInputTitle">第一负责人</TD>
    <TD><INPUT type="text" id=dzYiper name=dzYiper value=邓卫东></TD>
    <TD class="myInputTitle">职务</TD>
    <TD><INPUT type="text" id=dzYizhiwu name=dzYizhiwu value=副局长></TD></TR>
  <TR>
    <TD class="myInputTitle">联系电话</TD>
    <TD><INPUT type="text" id=dzYidianhua name=dzYidianhua value=3176086></TD>
    <TD class="myInputTitle">手机</TD>
    <TD><INPUT type="text" id=dzYishouji name=dzYishouji value=></TD></TR>
  <TR>
    <TD class="myInputTitle">具体负责人</TD>
    <TD><INPUT type="text" id=dzJtper name=dzJtper value=王先举></TD>
    <TD class="myInputTitle">职务</TD>
    <TD><INPUT type="text" id=dzJtzhiwu name=dzJtzhiwu value=环卫处处长></TD></TR>
  <TR>
    <TD class="myInputTitle">联系电话</TD>
    <TD><INPUT type="text" id=dzJtdianhua name=dzJtdianhua value=3184088></TD>
    <TD class="myInputTitle">手机</TD>
    <TD><INPUT type="text" id=dzJtshouji name=dzJtshouji value=></TD></TR>
  <TR>
    <TD class="myInputTitle"><STRONG>县（市、区）建设主管部门</STRONG></TD>
    <TD colSpan=3><INPUT type="text" id=countyDirector name=countyDirector></TD></TR>
  <TR>
    <TD class="myInputTitle">第一负责人</TD>
    <TD><INPUT type="text" id=xsYiper name=xsYiper></TD>
    <TD class="myInputTitle">职务</TD>
    <TD><INPUT type="text" id=xsYizhiwu name=xsYizhiwu></TD></TR>
  <TR>
    <TD class="myInputTitle">联系电话</TD>
    <TD><INPUT type="text" id=xsYidianhua name=xsYidianhua></TD>
    <TD class="myInputTitle">手机</TD>
    <TD><INPUT type="text" id=xsYishouji name=xsYishouji></TD></TR>
  <TR>
    <TD class="myInputTitle">具体负责人</TD>
    <TD><INPUT type="text" id=xsJtper name=xsJtper></TD>
    <TD class="myInputTitle">职务</TD>
    <TD><INPUT type="text" id=xsJtzhiwu name=xsJtzhiwu></TD></TR>
  <TR>
    <TD class="myInputTitle">联系电话</TD>
    <TD><INPUT type="text" id=xsJtdianhua name=xsJtdianhua></TD>
    <TD class="myInputTitle">手机</TD>
  <TD><INPUT type="text" id=xsJtshouji name=xsJtshouji></TD></TR>
-->  
  </TBODY></TABLE>
<BR>
<TABLE border=1 width="100%">
  <TBODY>
  <TR>
    <TD height=38 colSpan=4 align=center><!--c:if test="false"--><INPUT onClick="return mySubmit();" name=button value="   提   交   " type=button> 
      &nbsp; &nbsp; <INPUT name=reset value="   重   置   " type=reset> 
      &nbsp;&nbsp; <!--/c:if--></TD></TR></TBODY></TABLE></FORM></BODY></HTML>
