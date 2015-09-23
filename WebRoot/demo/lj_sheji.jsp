<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML><HEAD>
<META content="text/html; charset=GBK" http-equiv=Content-Type>
<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath}/styles/default.css">
<SCRIPT language=JavaScript src="${pageContext.request.contextPath}/scripts/status.js"></SCRIPT>
<SCRIPT language=javascript src="${pageContext.request.contextPath}/scripts/Validator.js"></SCRIPT>
<SCRIPT language=JavaScript>
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
</SCRIPT>

<STYLE type=text/css>.STYLE1 {
	COLOR: #ff0000
}
</STYLE>

</HEAD>
<BODY>
<%@ include file="gs_top.jsp" %>
<FORM method=post name=form1 action=#>
<TABLE class=myInput border=1 width="100%" align=center>
  <TBODY>
  <TR>
    <TD colSpan=4 class="tHead">垃圾处理厂基本情况</TD>
  </TR>
  <!--
  <TR>
    <TD class="myInputTitle">项目所属流域</TD>
    <TD height=90 colSpan=3>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" height=90>
        <TBODY>
        <TR>
          <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff" 
            width="15%"><INPUT id=liuYu name=liuYu value=a CHECKED 
            type=checkbox> 滇池</TD>
          <TD width="15%"><INPUT id=liuYu name=liuYu value=b type=checkbox> 
          洱海</TD>
          <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff" 
            width="15%"><INPUT  id=liuYu name=liuYu value=c type=checkbox> 程海</TD>
          <TD width="15%"><INPUT  id=liuYu name=liuYu value=d type=checkbox> 
          泸沽湖</TD>
          <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff" 
            width="15%"><INPUT  id=liuYu name=liuYu value=e type=checkbox> 
        阳宗海</TD></TR>
        <TR align=left>
          <TD style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT  
            id=liuYu name=liuYu value=f type=checkbox> 杞麓湖</TD>
          <TD><INPUT  id=liuYu name=liuYu value=g type=checkbox> 异龙湖</TD>
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
            id=liuYu name=liuYu value=o type=checkbox> 
    伊洛瓦底江</TD></TR></TBODY></TABLE></TD></TR>
	-->
  <TR>
    <TD class="myInputTitle">垃圾处理厂设计总规模<BR>
      （<SPAN class=STYLE1>吨/日</SPAN>）</TD>
    <TD><INPUT type="text" id=zong name=zong value=1600.0></TD>
    <TD class="myInputTitle">其中：本期建设规划（<SPAN class=STYLE1>吨/日</SPAN>）</TD>
    <TD><INPUT type="text" id=benqi name=benqi value=1600.0></TD></TR>
  <TR>
    <TD class="myInputTitle">中转站设计规模（<SPAN class=STYLE1>吨/日</SPAN>）</TD>
    <TD><INPUT type="text" id=zhongZhuan name=zhongZhuan value=0.0></TD>
    <TD class="myInputTitle">垃圾处理方式</TD>
    <TD><SELECT id=chuli name=chuli> <OPTION value=卫生填埋>卫生填埋</OPTION> 
        <OPTION selected value=焚烧>焚烧</OPTION> <OPTION value=堆肥>堆肥</OPTION> 
        <OPTION value=综合>综合</OPTION> <OPTION value=其他>其他</OPTION></SELECT> </TD></TR>
  <TR class="myInputTitle">
    <TD colSpan=4><STRONG>处理结果及相关措施</STRONG></TD></TR>
  <TR>
    <TD width="15%" class="myInputTitle">垃圾成分中含有机物（<SPAN class=STYLE1>%</SPAN>）</TD>
    <TD width="35%"><INPUT type="text" id=youJi name=youJi value=67.67></TD>
    <TD width="15%" class="myInputTitle">垃圾成分中含无机物（<SPAN class=STYLE1>%</SPAN>）</TD>
    <TD width="35%"><INPUT type="text" id=wuJi name=wuJi value=6.97></TD></TR>
  <TR>
    <TD class="myInputTitle">垃圾成分中含水率（<SPAN class=STYLE1>%</SPAN>）</TD>
    <TD><INPUT type="text" id=hanShui name=hanShui value=0.0></TD>
    <TD class="myInputTitle">防渗措施</TD>
    <TD><SELECT id=fangSen name=fangSen> <OPTION value=无>无</OPTION> <OPTION 
        value=依环境，在谷口处采用垂直防渗>依环境，在谷口处采用垂直防渗</OPTION> <OPTION 
        value=天然粘土层>天然粘土层</OPTION> <OPTION 
        value=1.5~2mm厚HDPE膜>1.5~2mm厚HDPE膜</OPTION> <OPTION selected 
        value=其它>其它</OPTION></SELECT> </TD></TR>
  <TR>
    <TD width="15%" class="myInputTitle">渗滤液处理措施</TD>
    <TD width="35%"><SELECT id=lvYe name=lvYe> <OPTION selected 
        value=现场单独处理>现场单独处理</OPTION> <OPTION 
        value=简易处理后排入城市污水管网>简易处理后排入城市污水管网</OPTION> <OPTION 
      value=无>无</OPTION></SELECT> </TD>
    <TD width="15%" class="myInputTitle">渗滤液设计排放标准</TD>
    <TD width="35%"><SELECT id=pfBz name=pfBz> <OPTION value=一级>一级</OPTION> 
        <OPTION selected value=二级>二级</OPTION> <OPTION 
      value=三级>三级</OPTION></SELECT> </TD></TR>
  <TR>
    <TD class="myInputTitle">实际排放水质<STRONG>COD</STRONG>含量（<STRONG class=STYLE1>mg/L</STRONG>）</TD>
    <TD><INPUT type="text" id=cod name=cod value=70—80></TD>
    <TD class="myInputTitle">实际排放水质<STRONG>BOD5</STRONG>含量（<STRONG class=STYLE1>mg/L</STRONG>）</TD>
    <TD><INPUT type="text" id=bod name=bod value=23—27></TD></TR>
  <TR>
    <TD class="myInputTitle">实际排放水质<STRONG>氨氮</STRONG>含量（<STRONG class=STYLE1>mg/L</STRONG>）</TD>
    <TD><INPUT type="text" id=andan name=andan value=19—22></TD>
    <TD class="myInputTitle">实际排放水质<STRONG>SS</STRONG>含量（<STRONG class=STYLE1>mg/L</STRONG>）</TD>
    <TD><INPUT type="text" id=ss name=ss value=9></TD></TR>
  <TR>
    <TD class="myInputTitle">渗滤液产生量（<SPAN class=STYLE1>吨/日</SPAN>）</TD>
    <TD><INPUT type="text" id=chanSheng name=chanSheng value=0.0></TD>
    <TD style="BACKGROUND-COLOR: #ffffff" colSpan=2>&nbsp;</TD></TR>
  <TR>
    <TD class="myInputTitle">备注</TD>
    <TD height=50 colSpan=3><TEXTAREA id=remark cols=90 rows=3 name=remark>我公司污水和渗滤液经渗滤液处理站处理后达到上述标准，处理后的水用于厂区绿化等，不外排。</TEXTAREA></TD></TR></TBODY></TABLE><BR>
<TABLE border=1 width="100%">
  <TBODY>
  <TR>
    <TD height=38 colSpan=4 align=center><!--c:if test="false"--><INPUT onClick="return mySubmit();" name=button value="   提   交   " type=button> 
      &nbsp; &nbsp; <INPUT name=reset value="   重   置   " type=reset> 
      &nbsp;&nbsp; <!--/c:if--></TD></TR></TBODY></TABLE></FORM></BODY></HTML>
