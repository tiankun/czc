<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0062)http://192.168.17.94/cjc/admin/tender.do -->
<HTML><HEAD>
<META content="text/html; charset=GBK" http-equiv=Content-Type><LINK 
rel=stylesheet type=text/css href="${pageContext.request.contextPath}/styles/default.css">
<SCRIPT language=JavaScript src="${pageContext.request.contextPath}/scripts/status.js"></SCRIPT>

<SCRIPT language=javascript src="${pageContext.request.contextPath}/scripts/Validator.js"></SCRIPT>
<SCRIPT language=JavaScript src="${pageContext.request.contextPath}/scripts/jquery-1.8.0.min.js"></SCRIPT>
<script type="text/javascript" language="javascript">   
function myBack(){
window.location="#";
}
function mySubmit(){
if(Validator.Validate(document.form1,3)){
if (typeof(document.form1.unit)=="undefined"){
alert("请选择中标单位！");
myShow();
return false;
}
document.form1.submit();
}
}
function CreateActive() {
        if (window.XMLHttpRequest) { // Mozilla, Safari,...
            http_request = new XMLHttpRequest();
            if (http_request.overrideMimeType) {
                http_request.overrideMimeType('text/xml');
            }
        } else if (window.ActiveXObject) { // IE
            try {
                http_request = new ActiveXObject("Msxml2.XMLHTTP");
            } catch (e) {
                try {
                    http_request = new ActiveXObject("Microsoft.XMLHTTP");
                } catch (e) {}
            }
        }
        if (!http_request) {
            alert('Giving up :( Cannot create an XMLHTTP instance');
            return false;
        }
        http_request.onreadystatechange = executeReturn;
		return http_request;
}
function executeReturn() {
    if (http_request.readyState == 4) {
        if (http_request.status == 200) {
	      if ( http_request.responseText ) {
        eval(http_request.responseText);           
	    }
	}
    }
}
function top1(){
    document.getElementById("owner").value="";
	http_request=CreateActive();
	url="/cjc/ajaxProduct?method=item&city="+document.getElementById("cityId").options[document.getElementById("cityId").selectedIndex].value+"&type="+document.getElementById("type").options[document.getElementById("type").selectedIndex].value;      
    http_request.open("POST", url, true);
    http_request.send(null);
}
function top2(){      
document.getElementById("owner").value=document.getElementById("item_choose").options[document.getElementById("item_choose").selectedIndex].value.split("@@@")[2];
}
function tender(value1){
	http_request=CreateActive();
	url="/cjc/ajaxProduct?method=design&city="+document.getElementById("cityId").options[document.getElementById("cityId").selectedIndex].value+"&type="+document.getElementById("itemType").options[document.getElementById("itemType").selectedIndex].value+"&value1="+value1;          
    http_request.open("POST", url, true);
    http_request.send(null);
}
function myShow(){
         var str =showModalDialog("/cjc/manage/shiGongList.jsp", "", "dialogWidth:80em; dialogHeight:50em; help: no; scroll:yes; status: no");
		 if(typeof(str)!="undefined"){
		 var mySplitResult = str.split("####");
           addRow(mySplitResult[0],mySplitResult[1]);
		 }
		 }
function addRow(unitName,unitId){
var viewTable=document.getElementById('view1');
var newTr = viewTable.insertRow();
var newTd0 = newTr.insertCell();
var newTd1 = newTr.insertCell();
newTd0.setAttribute("width","90%"); 
newTd0.setAttribute("text-align","left");
newTd0.innerHTML = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+unitName+'<input type="hidden" name="unit" value="'+unitName+'"><input type="hidden" name="unitId" value="'+unitId+'">'; 
newTd1.setAttribute("align","center");
newTd1.innerHTML= '<a href="#" onclick="deleteRow(this.parentNode.parentNode.rowIndex)">　删　除　</a>';
}
function deleteRow(i){
    document.getElementById('view1').deleteRow(i)
}		 
</SCRIPT>

<STYLE type=text/css>.STYLE1 {
	COLOR: #ff0000
}
</STYLE>

</HEAD>
<BODY>
<%@ include file="gs_top.jsp" %>
<FORM method=post name=form1 action="#">
<TABLE class=myInput border=1 width="100%">
  <TBODY>
  <TR>
    <TD colSpan=4 align=center class="tHead"><STRONG>====项目招投标情况====</STRONG></TD>
  </TR>
  <TR>
    <TD class="myInputTitle">标段</TD>
    <TD><INPUT type="text" id=section name=section maxLength=50 datatype=""></TD>
    <TD width="15%" class="myInputTitle">编号</TD>
    <TD width="35%" ><INPUT type="text" id=serial name=serial maxLength=50 datatype=""></TD></TR>
  <TR>
    <TD class="myInputTitle">报名日期</TD>
    <TD><INPUT type="text" id=enroll onfocus=date(this) name=enroll maxLength=7 
      datatype="Date"> </TD>
    <TD width="15%" class="myInputTitle">资审日期</TD>
    <TD width="35%"><INPUT type="text" id=quality onfocus=date(this) name=quality maxLength=7 
      datatype="Date"> </TD></TR>
  <TR>
    <TD class="myInputTitle">发售日期</TD>
    <TD><INPUT type="text" id=place onfocus=date(this) name=place maxLength=7 
      datatype="Date"> </TD>
    <TD width="15%" class="myInputTitle">开标日期</TD>
    <TD width="35%"><INPUT type="text" id=bidOpening onfocus=date(this) name=bidOpening maxLength=7 
      datatype="Date"> </TD></TR>
  <TR>
    <TD class="myInputTitle">备案日期</TD>
    <TD><INPUT type="text" id=filing onfocus=date(this) name=filing maxLength=7 
      datatype="Date"> </TD>
    <TD width="15%" class="myInputTitle">标段金额（<FONT color=#ff0000>万元</FONT>）</TD>
    <TD width="35%"><INPUT type="text" id=sum name=sum maxLength=22> </TD></TR>
  <TR>
    <TD width="15%" class="myInputTitle">招标文号</TD>
    <TD width="35%"><INPUT type="text" id=inviteBid name=inviteBid maxLength=4000 
      dataType=""> </TD>
    <TD width="15%" class="myInputTitle">中标公示文号</TD>
    <TD width="35%"><INPUT type="text" id=bulletin name=bulletin maxLength=4000 datatype=""> </TD></TR>
  <TR>
    <TD class="myInputTitle">中标监理单位</TD>
    <TD colSpan=3><SELECT style="WIDTH: 90%" name=supervisor> <OPTION 
        selected value=1563>监理单位测试</OPTION> <OPTION 
        value=1554>云南碧达建设监理咨询有限责任公司</OPTION></SELECT></TD></TR>
  <TR>
    <TD class="myInputTitle">中标单位</TD>
    <TD colSpan=3>
      <TABLE border=1 cellSpacing=0 cellPadding=0 width="90%">
        <TBODY id=view1 class=my_list></TBODY></TABLE>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD 
            style="TEXT-ALIGN: left; BACKGROUND-COLOR: #ffffff"><INPUT type="text" id=inviteBid name=inviteBid maxLength=4000 
      dataType=""></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD class="myInputTitle">标段内容 </TD>
    <TD colSpan=3><TEXTAREA style="WIDTH: 89%" id=content rows=4 name=content></TEXTAREA></TD></TR>
  <TR>
    <TD width="15%" class="myInputTitle">备注</TD>
    <TD width="85%" colSpan=3><TEXTAREA style="WIDTH: 89%" id=remark rows=4 name=remark></TEXTAREA> 
  </TD></TR></TBODY></TABLE><BR>
<TABLE border=1 width="100%">
  <TBODY>
  <TR>
    <TD height=38 colSpan=4 align=center><INPUT  name=button value="   保   存   " type="submit"> 
      &nbsp; &nbsp; <INPUT  name=reset value="   重   置   " type=reset> 
      &nbsp;&nbsp; <INPUT  onclick=javascript:myBack() name=button1 value="   返   回   " type=button></TD></TR></TBODY></TABLE></FORM>
<SCRIPT language=JavaScript>
tender('');
</SCRIPT>
</BODY></HTML>
