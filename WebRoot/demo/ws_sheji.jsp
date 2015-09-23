<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0057)http://192.168.17.94/cjc/admin/wsFac.do -->
<HTML>
<HEAD>
<META content="text/html; charset=gbk" http-equiv=Content-Type>
<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath}/styles/default.css">
<SCRIPT language=JavaScript src="${pageContext.request.contextPath}/scripts/status.js"></SCRIPT>

<SCRIPT language=javascript src="${pageContext.request.contextPath}/scripts/Validator.js"></SCRIPT>

<SCRIPT language=JavaScript src="${pageContext.request.contextPath}/scripts/jquery-1.8.0.min.js"></SCRIPT>
<script type="text/javascript" language="javascript">   
$(window).load(function(evt){
var main = $("#view",parent.document);
main.height(0);
var thisheight = $(document).height();
main.height(thisheight);
});
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
function update_GyFangshi(CatID1,subTypeForm){
subTypeForm.length=0;
switch (CatID1){
case 0://物理处理法
subTypeForm.options[0]=new Option("过滤","过滤");
subTypeForm.options[1]=new Option("离心","离心");
subTypeForm.options[2]=new Option("沉淀分离","沉淀分离");
subTypeForm.options[3]=new Option("上浮分离","上浮分离");
subTypeForm.options[4]=new Option("其他","其他");
subTypeForm.options[0].selected=true;
break;
case 1://化学处理法
subTypeForm.options[0]=new Option("化学混凝法","化学混凝法");
subTypeForm.options[1]=new Option("化学混凝沉淀法","化学混凝沉淀法");
subTypeForm.options[2]=new Option("化学混凝气浮法","化学混凝气浮法");
subTypeForm.options[3]=new Option("中和法","中和法");
subTypeForm.options[4]=new Option("化学沉淀法","化学沉淀法");
subTypeForm.options[5]=new Option("氧化还原法","氧化还原法");
subTypeForm.options[6]=new Option("其它","其它");
subTypeForm.options[0].selected=true;
break;
case 2://物理化学处理法
subTypeForm.options[0]=new Option("吸附","吸附");
subTypeForm.options[1]=new Option("离子交换","离子交换");
subTypeForm.options[2]=new Option("反渗透","反渗透");
subTypeForm.options[3]=new Option("超过滤","超过滤");
subTypeForm.options[4]=new Option("其它","其它");
subTypeForm.options[0].selected=true;
break;
case 3://生物处理法
subTypeForm.options[0]=new Option("传统活性污泥法","传统活性污泥法");
subTypeForm.options[1]=new Option("高浓度活性污泥法","高浓度活性污泥法");
subTypeForm.options[2]=new Option("接触稳定法","接触稳定法");
subTypeForm.options[3]=new Option("氧化沟","氧化沟");
subTypeForm.options[4]=new Option("SBR","SBR");
subTypeForm.options[5]=new Option("生物膜法","生物膜法");
subTypeForm.options[6]=new Option("普通生物滤池","普通生物滤池");
subTypeForm.options[7]=new Option("生物转盘","生物转盘");
subTypeForm.options[8]=new Option("生物接触氧化法","生物接触氧化法");
subTypeForm.options[9]=new Option("厌氧折流板反应器工艺","厌氧折流板反应器工艺");
subTypeForm.options[10]=new Option("A/O工艺","A/O工艺");
subTypeForm.options[11]=new Option("A2/O工艺","A2/O工艺");
subTypeForm.options[12]=new Option("A/O2工艺","A/O2工艺");
subTypeForm.options[13]=new Option("其他","其他");
subTypeForm.options[0].selected=true;
break;
}
}
function SetGyFangshi(){
p = document.getElementById("gyType");
c = document.getElementById("gyFangshi");
update_GyFangshi(p.options.selectedIndex, c);
return ;
}
</SCRIPT>
  </head>
  
  <body>
 
<%@ include file="gs_top.jsp" %>  
<TABLE class=myInput border=1 width="100%" align=center>
  <TBODY>
  <TR class="myInputTitle">
    <TD colSpan=4><STRONG>污水处理厂基本情况</STRONG></TD></TR>
<!--	
  <TR>
    <TD class="myInputTitle">项目所属流域</TD>
    <TD height=90 colSpan=3>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" height=90>
        <TBODY>
        <TR>
          <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff" 
            width="20%"><INPUT id=liuYu name=liuYu value=a type=checkbox> 滇池</TD>
          <TD width="20%"><INPUT id=liuYu name=liuYu value=b type=checkbox> 
          洱海</TD>
          <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff" 
            width="20%"><INPUT id=liuYu name=liuYu value=c type=checkbox> 程海</TD>
          <TD width="20%"><INPUT id=liuYu name=liuYu value=d type=checkbox> 
          泸沽湖</TD>
          <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff" 
            width="20%"><INPUT id=liuYu name=liuYu value=e type=checkbox> 
        阳宗海</TD></TR>
        <TR align=left>
          <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT 
            id=liuYu name=liuYu value=f type=checkbox> 杞麓湖</TD>
          <TD><INPUT id=liuYu name=liuYu value=g type=checkbox> 异龙湖</TD>
          <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT 
            id=liuYu name=liuYu value=h type=checkbox> 星云湖</TD>
          <TD><INPUT id=liuYu name=liuYu value=i type=checkbox> 抚仙湖</TD>
          <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT 
            id=liuYu name=liuYu value=j type=checkbox> 珠江</TD></TR>
        <TR align=left>
          <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT 
            id=liuYu name=liuYu value=k type=checkbox> 澜沧江</TD>
          <TD><INPUT id=liuYu name=liuYu value=l type=checkbox> 金沙江</TD>
          <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT 
            id=liuYu name=liuYu value=m type=checkbox> 怒江</TD>
          <TD><INPUT id=liuYu name=liuYu value=n type=checkbox> 红河</TD>
          <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT 
            id=liuYu name=liuYu value=o CHECKED type=checkbox> 
        伊洛瓦底江</TD></TR></TBODY></TABLE></TD></TR>
-->		
  <TR>
    <TD class="myInputTitle">建设规划规模<BR>
      （<SPAN class=STYLE1>万立方米/日</SPAN>）</TD>
    <TD><INPUT type="text" id=benqi name=benqi value=0.3></TD>
    <TD class="myInputTitle">配套管网总长(<SPAN class=STYLE1>公里</SPAN>)</TD>
    <TD><INPUT type="text" id=guan name=guan value=43.0></TD></TR>
  <TR>
    <TD class="myInputTitle">其中雨水管网总长（<SPAN class=STYLE1>公里</SPAN>）</TD>
    <TD><INPUT type="text" id=yuZong name=yuZong value=22.0></TD>
    <TD style="BACKGROUND-COLOR: #ffffff" colSpan=2>&nbsp;</TD></TR>
  <TR>
    <TD class="myInputTitle">雨水PE管长度（<SPAN class=STYLE1>公里</SPAN>）</TD>
    <TD><INPUT type="text" id=pe name=pe value=5.0></TD>
    <TD class="myInputTitle">雨水钢筋混凝土管长度（<SPAN class=STYLE1>公里</SPAN>）</TD>
    <TD><INPUT type="text" id=gang name=gang value=17.0></TD></TR>
  <TR>
    <TD class="myInputTitle">雨水玻璃钢夹砂管长度（<SPAN class=STYLE1>公里</SPAN>）</TD>
    <TD><INPUT type="text" id=boli name=boli value=0.0></TD>
    <TD class="myInputTitle">雨水其他管长度（<SPAN class=STYLE1>公里</SPAN>）</TD>
    <TD><INPUT type="text" id=other name=other value=0.0></TD></TR>
  <TR>
    <TD class="myInputTitle">其中污水管网总长（<SPAN class=STYLE1>公里</SPAN>）</TD>
    <TD><INPUT type="text" id=wuZong name=wuZong value=21.0></TD>
    <TD style="BACKGROUND-COLOR: #ffffff" colSpan=2>&nbsp;</TD></TR>
  <TR>
    <TD class="myInputTitle">污水PE管长度（<SPAN class=STYLE1>公里</SPAN>）</TD>
    <TD><INPUT type="text" id=wuPe name=wuPe value=6.0></TD>
    <TD class="myInputTitle">污水钢筋混凝土管长度（<SPAN class=STYLE1>公里</SPAN>）</TD>
    <TD><INPUT type="text" id=wuGang name=wuGang value=15.0></TD></TR>
  <TR>
    <TD class="myInputTitle">污水玻璃钢夹砂管长度（<SPAN class=STYLE1>公里</SPAN>）</TD>
    <TD><INPUT type="text" id=wuBoli name=wuBoli value=0.0></TD>
    <TD class="myInputTitle">污水其他管长度（<SPAN class=STYLE1>公里</SPAN>）</TD>
    <TD><INPUT type="text" id=wuOther name=wuOther value=0.0></TD></TR>
  <TR>
    <TD class="myInputTitle">排放标准</TD>
    <TD><SELECT id=biaozhun name=biaozhun> <OPTION value=一级A>一级A</OPTION> 
        <OPTION selected value=一级B>一级B</OPTION> <OPTION value=二级>二级</OPTION> 
        <OPTION value=三级>三级</OPTION> <OPTION value=其他>其他</OPTION></SELECT> </TD>
    <TD class="myInputTitle">排水去向类型</TD>
    <TD><SELECT id=quXiang name=quXiang> <OPTION 
        value=直接进入海域>直接进入海域</OPTION> <OPTION selected 
        value=直接进入江河湖、库等水环境>直接进入江河湖、库等水环境</OPTION> <OPTION 
        value=直接进入污灌农田>直接进入污灌农田</OPTION> <OPTION 
        value=进入地渗或蒸发地>进入地渗或蒸发地</OPTION> <OPTION value=进入其他单位>进入其他单位</OPTION> 
        <OPTION value=其它>其它</OPTION></SELECT> </TD></TR>
  <TR>
    <TD class="myInputTitle">消毒措施</TD>
    <TD><SELECT id=xiaodu name=xiaodu> <OPTION selected 
        value=石灰消毒>石灰消毒</OPTION> <OPTION value=臭氧消毒>臭氧消毒</OPTION> <OPTION 
        value=紫外消毒>紫外消毒</OPTION> <OPTION value=二氧化氯消毒>二氧化氯消毒</OPTION> <OPTION 
        value=次氯酸钠消毒>次氯酸钠消毒</OPTION> <OPTION value=夜氯消毒>夜氯消毒</OPTION> <OPTION 
        value=次氯酸钠消毒>次氯酸钠消毒</OPTION> <OPTION value=组合方式>组合方式</OPTION> <OPTION 
        value=其他>其他</OPTION> <OPTION value=无>无</OPTION></SELECT> </TD>
    <TD class="myInputTitle">排水体制</TD>
    <TD><SELECT id=tiZhi name=tiZhi> <OPTION selected 
        value=雨污分流>雨污分流</OPTION> <OPTION value=雨污合流>雨污合流</OPTION> <OPTION 
        value=混流>混流</OPTION></SELECT> </TD></TR>
  <TR>
    <TD class="myInputTitle">再生水设计规模<BR>
      （<SPAN class=STYLE1>万立方米/日</SPAN>）</TD>
    <TD><INPUT type="text" id=zsGuimo name=zsGuimo value=0.0></TD>
    <TD class="myInputTitle">再生水主要用途</TD>
    <TD><INPUT type="text" id=zsYongtu name=zsYongtu></TD></TR>
  <TR class="myInputTitle">
    <TD class=tdStyle height=40 colSpan=4><STRONG>污水处理工艺</STRONG></TD></TR>
  <TR>
    <TD class="myInputTitle">污水处理工艺类型</TD>
    <TD><SELECT id=gyType onchange=javascript:SetGyFangshi(); name=gyType> 
        <OPTION value=物理处理法>物理处理法</OPTION> <OPTION value=化学处理法>化学处理法</OPTION> 
        <OPTION selected value=物理化学处理法>物理化学处理法</OPTION> <OPTION 
        value=生物处理法>生物处理法</OPTION></SELECT> </TD>
    <TD class="myInputTitle">污水处理工艺方式</TD>
    <TD><SELECT id=gyFangshi name=gyFangshi> <OPTION selected 
        value=吸附>吸附</OPTION> <OPTION value=离子交换>离子交换</OPTION> <OPTION 
        value=反渗透>反渗透</OPTION> <OPTION value=超过滤>超过滤</OPTION> <OPTION 
        value=其它>其它</OPTION></SELECT> </TD></TR>
  <TR class="myInputTitle">
    <TD class=tdStyle height=40 colSpan=4><STRONG>污水在线监测指标</STRONG></TD></TR>
  <TR>
    <TD width="20%" height=40 class="myInputTitle">在线检测指标</TD>
    <TD colSpan=3>
      <TABLE border=0 cellSpacing=0 borderColor=#008489 cellPadding=0 
      width="80%">
        <TBODY>
        <TR>
          <TD style="BACKGROUND-COLOR: #ffffff"><INPUT id=yqType name=yqType 
            value=a CHECKED type=checkbox> 流量</TD>
          <TD><INPUT id=yqType name=yqType value=b CHECKED type=checkbox> 
          COD</TD>
          <TD style="BACKGROUND-COLOR: #ffffff"><INPUT id=yqType name=yqType 
            value=c CHECKED type=checkbox> 氨氮</TD>
          <TD><INPUT id=yqType name=yqType value=d CHECKED type=checkbox> 
TN</TD>
          <TD style="BACKGROUND-COLOR: #ffffff"><INPUT id=yqType name=yqType 
            value=e CHECKED type=checkbox> TP</TD>
          <TD><INPUT id=yqType name=yqType value=f type=checkbox> PH仪</TD>
          <TD style="BACKGROUND-COLOR: #ffffff"><INPUT id=yqType name=yqType 
            value=g CHECKED type=checkbox> 其它</TD></TR></TBODY></TABLE></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4><STRONG>污水处理厂设计水质</STRONG></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=2><STRONG>COD（<SPAN class=STYLE1>mg/L</SPAN>）</STRONG></TD>
    <TD style="TEXT-ALIGN: center; BACKGROUND-COLOR: #eff6fe" 
      colSpan=2><STRONG>BOD（<SPAN class=STYLE1>mg/L</SPAN>）</STRONG></TD></TR>
  <TR>
    <TD style="BACKGROUND-COLOR: #ffffff" width="20%" align=center>进水<INPUT type="text" 
      id=codIn name=codIn value=350.0></TD>
    <TD width="30%" align=center>出水<INPUT type="text" id=codOut name=codOut value=60.0></TD>
    <TD style="BACKGROUND-COLOR: #ffffff" width="20%" align=center>进水<INPUT type="text" 
      id=bodIn name=bodIn value=160.0></TD>
    <TD width="30%" align=center>出水<INPUT type="text" id=bodOut name=bodOut 
  value=20.0></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=2><STRONG>SS（<SPAN class=STYLE1>mg/L</SPAN>）</STRONG></TD>
    <TD style="TEXT-ALIGN: center; BACKGROUND-COLOR: #eff6fe" 
      colSpan=2><STRONG>氨氮（<SPAN class=STYLE1>mg/L</SPAN>）</STRONG></TD></TR>
  <TR>
    <TD style="BACKGROUND-COLOR: #ffffff" align=center>进水<INPUT type="text" id=ssIn 
      name=ssIn value=408.0></TD>
    <TD align=center>出水<INPUT type="text" id=ssOut name=ssOut value=20.0></TD>
    <TD style="BACKGROUND-COLOR: #ffffff" align=center>进水<INPUT type="text" id=andanIn 
      name=andanIn value=65.0></TD>
    <TD align=center>出水<INPUT type="text" id=andanOut name=andanOut value=8.0></TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=2><STRONG>TP（<SPAN class=STYLE1>mg/L</SPAN>）</STRONG></TD>
    <TD style="TEXT-ALIGN: center; BACKGROUND-COLOR: #eff6fe" 
      colSpan=2><STRONG>TN（<SPAN class=STYLE1>mg/L</SPAN>）</STRONG></TD></TR>
  <TR>
    <TD style="BACKGROUND-COLOR: #ffffff" align=center>进水<INPUT type="text" id=tpIn 
      name=tpIn value=4.7></TD>
    <TD align=center>出水<INPUT type="text" id=tpOut name=tpOut value=1.0></TD>
    <TD style="BACKGROUND-COLOR: #ffffff" align=center>进水<INPUT type="text" id=tnIn 
      name=tnIn value=84.5></TD>
    <TD align=center>出水<INPUT type="text" id=tnOut name=tnOut value=8.0></TD></TR>
  <TR class="myInputTitle">
    <TD class=tdStyle height=40 colSpan=4><STRONG>污泥处理处置情况</STRONG></TD></TR>
  <TR>
    <TD width="20%" class="myInputTitle">污泥浓缩</TD>
    <TD><SELECT id=nongSuo name=nongSuo> <OPTION value=无>无</OPTION> <OPTION 
        value=重力浓缩>重力浓缩</OPTION> <OPTION value=气浮浓缩>气浮浓缩</OPTION> <OPTION 
        value=离心浓缩>离心浓缩</OPTION> <OPTION selected value=浓缩脱水一体>浓缩脱水一体</OPTION> 
        <OPTION value=其它>其它</OPTION></SELECT> </TD>
    <TD class="myInputTitle">污泥消化</TD>
    <TD><SELECT id=xiaoHua name=xiaoHua> <OPTION selected value=无>无</OPTION> 
        <OPTION value=厌氧消化>厌氧消化</OPTION> <OPTION value=好氧消化>好氧消化</OPTION> 
        <OPTION value=其它>其它</OPTION></SELECT> </TD></TR>
  <TR>
    <TD class="myInputTitle">污泥脱水</TD>
    <TD><SELECT id=tuoShui name=tuoShui> <OPTION selected 
        value=板框压滤>板框压滤</OPTION> <OPTION value=带式压滤>带式压滤</OPTION> <OPTION 
        value=离心脱水>离心脱水</OPTION> <OPTION value=自然干化>自然干化</OPTION> <OPTION 
        value=真空过滤>真空过滤</OPTION> <OPTION value=其它>其它</OPTION></SELECT> </TD>
    <TD class="myInputTitle">污泥处置方式</TD>
    <TD><SELECT id=chuli name=chuli> <OPTION value=堆肥>堆肥</OPTION> <OPTION 
        selected value=卫生填埋>卫生填埋</OPTION> <OPTION value=建筑材料>建筑材料</OPTION> 
        <OPTION value=投海>投海</OPTION> <OPTION value=其它>其它</OPTION></SELECT> </TD></TR>
  <TR>
    <TD class="myInputTitle">备注</TD>
  <TD height=50 colSpan=3><TEXTAREA id=remark cols=90 rows=3 name=remark></TEXTAREA></TD></TR></TBODY></TABLE><BR>
<TABLE border=1 width="100%">
  <TBODY>
  <TR>
    <TD height=38 colSpan=4 align=center><!--c:if test="false"--><INPUT onClick="return mySubmit();" name=button value="   提   交   " type=button> 
      &nbsp; &nbsp; <INPUT name=reset value="   重   置   " type=reset> 
      &nbsp;&nbsp; <!--/c:if--><INPUT name=id value=86 
type=hidden></TD></TR></TBODY></TABLE>
  </body>
</html>
