<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0057)http://192.168.17.94/cjc/admin/wsFac.do --><HTML><HEAD>
<META content="text/html; charset=gbk" http-equiv=Content-Type>
<LINK rel=stylesheet type=text/css href="${pageContext.request.contextPath}/styles/default.css">
<SCRIPT language=JavaScript src="${pageContext.request.contextPath}/scripts/status.js"></SCRIPT>

<SCRIPT language=javascript src="${pageContext.request.contextPath}/scripts/Validator.js"></SCRIPT>

<SCRIPT language=JavaScript src="${pageContext.request.contextPath}/scripts/jquery-1.8.0.min.js"></SCRIPT>

<SCRIPT language=javascript type=text/javascript>   
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

<STYLE type=text/css>
.STYLE1 {
	COLOR: #ff0000
}
</STYLE>

<META name=GENERATOR content="MSHTML 9.00.8112.16476"></HEAD>
<BODY>
<%@ include file="gs_top.jsp" %>
<FORM method=post name=form1 action=#>
<TABLE class=myInput border=1 width="100%" align=center>
  <TBODY>
  <TR>
    <TD colSpan=4 class="myInputTitle"><STRONG>自来水厂基本情况</STRONG></TD>
  </TR>
  <TR>
    <TD class="myInputTitle">自来水厂建设规划规模<BR>
      （<SPAN class=STYLE1>万立方米/日</SPAN>）</TD>
    <TD><INPUT type="text" id=benqi name=benqi value=0.3></TD>
    <TD class="myInputTitle">配套管网总长(<SPAN class=STYLE1>公里</SPAN>)</TD>
    <TD><INPUT type="text"  id=guan name=guan value=43.0></TD></TR>
  <TR>
    <TD class="myInputTitle">设计使用药剂</TD>
    <TD><INPUT type="text"  id=benqi name=benqi></TD>
    <TD class="myInputTitle">设计使用消毒剂</TD>
    <TD><INPUT type="text"  id=guan name=guan value=43.0></TD></TR>	
    <tr>
      <td width="15%" class="myInputTitle">供水区域面积（<span class="STYLE1">平方公里</span>）</td>
      <td width="35%"><input name="jianchengqu" type="text" id="jianchengqu" value="0" datatype="Double" msg="数字" onKeyPress="IsNum(event)" onKeyUp="smidu()"/></td>
      <td colspan="2"></td>
    </tr>	
  <TR>
    <TD class="myInputTitle"><STRONG>生产工艺流程（例：→_→_→_→）</STRONG></TD>
    <TD colspan="3"><input type="text" name="textfield"></TD>
    </TR>	
    <tr>
      <td width="15%" class="myInputTitle">水源一名称</td>
      <td width="35%"><input name="name" type="text" id="name" value="" dataType="Require" msg="必填" /></td>
      <td width="15%" class="myInputTitle">水源一类型</td>
      <td width="35%">
<select name="types" style="width:40%">	  
 <option value="地表水" >地表水</option>    
 <option value="地下水" >地下水</option>      
</select><select name="typel" style="width:40%">
 <option value="Ⅰ类" >Ⅰ类</option>
 <option value="Ⅱ类" >Ⅱ类</option>
 <option value="Ⅲ类" >Ⅲ类</option>
 <option value="Ⅳ类" >Ⅳ类</option>
 <option value="V类" >V类</option>
 <option value="劣V类" >劣V类</option>	   
</select>	  
<input type="hidden" name="sid" value="" /></td>
    </tr>
	  
    <tr>
      <td width="15%" class="myInputTitle">水源二名称</td>
      <td width="35%"><input name="name" type="text" id="name" value=""  /></td>
      <td width="15%" class="myInputTitle">水源二类型</td>
      <td width="35%">
<select name="types" style="width:40%">  
 <option value="地表水" >地表水</option>      
 <option value="地下水" >地下水</option>     
</select><select name="typel" style="width:40%">
 <option value="Ⅰ类" >Ⅰ类</option>
 <option value="Ⅱ类" >Ⅱ类</option>
 <option value="Ⅲ类" >Ⅲ类</option>
 <option value="Ⅳ类" >Ⅳ类</option>
 <option value="V类" >V类</option>
 <option value="劣V类" >劣V类</option>	   
</select>	  
	  <input type="hidden" name="sid" value="" /></td>
    </tr>
	  
    <tr>
      <td width="15%" class="myInputTitle">水源三名称</td>
      <td width="35%"><input name="name" type="text" id="name" value=""  /></td>
      <td width="15%" class="myInputTitle">水源三类型</td>
      <td width="35%"><select name="types" style="width:40%">	  
 <option value="地表水" >地表水</option>     
 <option value="地下水" >地下水</option>     
</select><select name="typel" style="width:40%">
 <option value="Ⅰ类" >Ⅰ类</option>
 <option value="Ⅱ类" >Ⅱ类</option>
 <option value="Ⅲ类" >Ⅲ类</option>
 <option value="Ⅳ类" >Ⅳ类</option>
 <option value="V类" >V类</option>
 <option value="劣V类" >劣V类</option>	   
</select>	  
	  <input type="hidden" name="sid" value="" /></td>
    </tr>	 	
   <tr>
      <td colspan="4" align="center" class="myInputTitle"><strong>====水源－水厂75毫米以上输水管道情况====</strong></td>
    </tr>
    <tr>
      
      <td class="myInputTitle">球墨铸铁管（<span class="STYLE1">公里</span>）</td>
      <td><input name="qiumo" type="text" id="qiumo" value="0" datatype="Double" msg="数字" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
      <td class="myInputTitle">钢管（<span class="STYLE1">公里</span>）</td>
      <td><input name="gangguan" type="text" id="gangguan" value="0" datatype="Double" msg="数字" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
    </tr>
    
    <tr>
      <td class="myInputTitle">铸铁管（<span class="STYLE1">公里</span>）</td>
      <td><input name="huikou" type="text" id="huikou" value="0" datatype="Double" msg="数字" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
      <td class="myInputTitle">预应力钢筋混凝土管（<span class="STYLE1">公里</span>）</td>
      <td><input name="hunning" type="text" id="hunning" value="0" datatype="Double" msg="数字" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">塑料管（<span class="STYLE1">公里</span>）</td>
      <td><input name="upvcguan" type="text" id="upvcguan" value="0" datatype="Double" msg="数字" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
      
      <td class="myInputTitle">其他管材（<span class="STYLE1">公里</span>）</td>
      <td><input name="qita" type="text" id="qita" value="0" datatype="Double" msg="数字" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
    </tr>   
    <tr>
      
      <td class="myInputTitle">输水管道长度合计（<span class="STYLE1">公里</span>）</td>
      <td><input name="cuguan" type="text" id="cuguan" value="0" datatype="Double" msg="数字" /></td>
      <td colspan="2"></td>
    </tr>
    <tr>
      <td colspan="4" align="center" class="myInputTitle"><strong>====水厂－用户75毫米以上供配水管道情况====</strong></td>
    </tr>
    <tr>
      <td class="myInputTitle">球墨铸铁管（<span class="STYLE1">公里</span>）</td>
      <td><input name="qiumop" type="text" id="qiumop" value="0" datatype="Double" msg="数字" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
      <td class="myInputTitle">钢管（<span class="STYLE1">公里</span>）</td>
      <td><input name="gangguanp" type="text" id="gangguanp" value="0" datatype="Double" msg="数字" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
    </tr>
    
    <tr>
      <td class="myInputTitle">铸铁管（<span class="STYLE1">公里</span>）</td>
      <td><input name="huikoup" type="text" id="huikoup" value="0" datatype="Double" msg="数字" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
      <td class="myInputTitle">预应力钢筋混凝土管（<span class="STYLE1">公里</span>）</td>
      <td><input name="hunningp" type="text" id="hunningp" value="0" datatype="Double" msg="数字" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
    </tr>
    <tr>
      <td class="myInputTitle">塑料管（<span class="STYLE1">公里</span>）</td>
      <td><input name="upvcguanp" type="text" id="upvcguanp" value="0" datatype="Double" msg="数字" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
      
      <td class="myInputTitle">其他管材（<span class="STYLE1">公里</span>）</td>
      <td><input name="qitap" type="text" id="qitap" value="0" datatype="Double" msg="数字" onKeyPress="IsNum(event)" onKeyUp="huizong()"/></td>
    </tr>   
    <tr>
      <td class="myInputTitle">供配水管道长度合计（<span class="STYLE1">公里</span>）</td>
      <td><input name="cuguanp" type="text" id="cuguanp" value="0" datatype="Double" msg="数字" /></td>
      <td colspan="2"></td>
    </tr>
  <TR>
    <TD class="myInputTitle">备注</TD>
    <TD height=50 colSpan=3><TEXTAREA id=remark cols=90 rows=3 name=remark></TEXTAREA></TD></TR></TBODY></TABLE>
<BR>
<TABLE border=1 width="100%">
  <TBODY>
  <TR>
    <TD height=38 colSpan=4 align=center><!--c:if test="false"--><INPUT onClick="return mySubmit();" name=button value="   提   交   " type=button> 
      &nbsp; &nbsp; <INPUT name=reset value="   重   置   " type=reset> 
      &nbsp;&nbsp; <!--/c:if--><INPUT name=id value=86 
type=hidden></TD></TR></TBODY></TABLE></FORM></BODY></HTML>
