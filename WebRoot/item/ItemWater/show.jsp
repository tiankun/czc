<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML>
<HEAD>
<META content="text/html; charset=gbk" http-equiv=Content-Type>
<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath}/styles/default.css">
<SCRIPT language=JavaScript src="${pageContext.request.contextPath}/scripts/status.js"></SCRIPT>
<SCRIPT language=javascript src="${pageContext.request.contextPath}/scripts/Validator.js"></SCRIPT>
<SCRIPT language=javascript type=text/javascript>   
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

<META name=GENERATOR content="MSHTML 9.00.8112.16476">
</HEAD>
<BODY>
<%@ include file="../top.jsp" %>
<TABLE class=myInput border=1 width="100%" align=center>
  <TBODY>
  <TR>
    <TD colSpan=4 class="myInputTitle"><STRONG>自来水厂基本情况</STRONG></TD>
  </TR>
  <TR>
    <TD class="myInputTitle "width="15%">自来水厂建设规划规模<BR>
      （<SPAN class=STYLE1>万立方米/日</SPAN>）</TD>
    <TD width="35%">${itemWater.chang_gui}</TD>
    <TD class="myInputTitle" width="15%">配套管网总长(<SPAN class=STYLE1>公里</SPAN>)</TD>
    <TD width="35%">${itemWater.guan_gui}</TD></TR>
  <TR>
    <TD class="myInputTitle">设计使用药剂</TD>
    <TD>${itemWater.yaiji}</TD>
    <TD class="myInputTitle">设计使用消毒剂</TD>
    <TD>${itemWater.xiaodu}</TD></TR>	
    <tr>
      <td class="myInputTitle">供水区域面积（<span class="STYLE1">平方公里</span>）</td>
      <td>${itemWater.gs_qu}</td>
      <td colspan="2"></td>
    </tr>	
  <TR>
    <TD class="myInputTitle"><STRONG>生产工艺流程（例：→_→_→_→）</STRONG></TD>
    <TD colspan="3">${itemWater.gongyi}</TD>
    </TR>	
    <tr>
      <td class="myInputTitle">水源一名称</td>
      <td>${itemWater.yi_ming}</td>
      <td class="myInputTitle">水源一类型</td>
      <td>${itemWater.yi_lei}</td>
    </tr>
	  
    <tr>
      <td class="myInputTitle">水源二名称</td>
      <td >${itemWater.er_ming}</td>
      <td class="myInputTitle">水源二类型</td>
      <td>${itemWater.er_lei}</td>
    </tr>
	  
    <tr>
      <td class="myInputTitle">水源三名称</td>
      <td>${itemWater.san_ming}</td>
      <td class="myInputTitle">水源三类型</td>
      <td>${itemWater.san_lei}</td>
    </tr>	 	
   <tr>
      <td colspan="4" align="center" class="myInputTitle"><strong>====水源－水厂75毫米以上输水管道情况====</strong></td>
    </tr>
    <tr>
      
      <td class="myInputTitle">球墨铸铁管（<span class="STYLE1">公里</span>）</td>
      <td>${itemWater.ss_qiu}</td>
      <td class="myInputTitle">钢管（<span class="STYLE1">公里</span>）</td>
      <td>${itemWater.ss_gang}</td>
    </tr>
    
    <tr>
      <td class="myInputTitle">铸铁管（<span class="STYLE1">公里</span>）</td>
      <td>${itemWater.ss_zhu}</td>
      <td class="myInputTitle">预应力钢筋混凝土管（<span class="STYLE1">公里</span>）</td>
      <td>${itemWater.ss_hun}</td>
    </tr>
    <tr>
      <td class="myInputTitle">塑料管（<span class="STYLE1">公里</span>）</td>
      <td>${itemWater.ss_suliao}</td>
      
      <td class="myInputTitle">其他管材（<span class="STYLE1">公里</span>）</td>
      <td>${itemWater.ss_qita}</td>
    </tr>   
    <tr>
      
      <td class="myInputTitle">输水管道长度合计（<span class="STYLE1">公里</span>）</td>
      <td>${itemWater.ss_zong}</td>
      <td colspan="2"></td>
    </tr>
    <tr>
      <td colspan="4" align="center" class="myInputTitle"><strong>====水厂－用户75毫米以上供配水管道情况====</strong></td>
    </tr>
    <tr>
      <td class="myInputTitle">球墨铸铁管（<span class="STYLE1">公里</span>）</td>
      <td>${itemWater.ps_qiu}</td>
      <td class="myInputTitle">钢管（<span class="STYLE1">公里</span>）</td>
      <td>${itemWater.ps_gang}</td>
    </tr>
    
    <tr>
      <td class="myInputTitle">铸铁管（<span class="STYLE1">公里</span>）</td>
      <td>${itemWater.ps_zhu}</td>
      <td class="myInputTitle">预应力钢筋混凝土管（<span class="STYLE1">公里</span>）</td>
      <td>${itemWater.ps_hun}</td>
    </tr>
    <tr>
      <td class="myInputTitle">塑料管（<span class="STYLE1">公里</span>）</td>
      <td>${itemWater.ps_suliao}</td>
      <td class="myInputTitle">其他管材（<span class="STYLE1">公里</span>）</td>
      <td>${itemWater.ps_qita}</td>
    </tr>   
    <tr>
      <td class="myInputTitle">供配水管道长度合计（<span class="STYLE1">公里</span>）</td>
      <td>${itemWater.ps_zong}</td>
      <td colspan="2"></td>
    </tr>
  <TR>
    <TD class="myInputTitle">备注</TD>
    <TD height=50 colSpan=3>${itemWater.remark}</TD></TR></TABLE>
</BODY>
</HTML>
