<%@ page contentType="text/html;charset=gbk" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/phprpc_client.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.thickbox.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/thickbox.css" type="text/css"/>   
<script language="JavaScript" type="text/javascript">
$(function(){
var thisheight = $(document).height();
$("#list").height(thisheight-145);
$("#myleft").css({'height':(thisheight-145),'overflow-y':'scroll'});
});
var client = new PHPRPC_Client('${pageContext.request.contextPath}/phprpc.rdo', ['getCitys','getLineCitys','saveDidian','deleteDidian']);
function myTese(){//特色小镇
var mylist_=document.getElementById("mylist");
for(var i=mylist_.childNodes.length-1;i>=0;i--) 
{ 
mylist_.removeChild(mylist_.childNodes[i]); 
}
<c:if test="${user.type!='古树名木'}">
var newTr = mylist_.insertRow(-1);  
var newTd0 = newTr.insertCell(-1);  
newTd0.setAttribute("height","25px");
newTd0.style.cssText="background-color:#EFF6FE;text-align:center";
newTd0.innerHTML = "<a href='${pageContext.request.contextPath}/tese/ChengGuo/list.jsp' target='list'>规划备案</a>"; 
newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="text-align:center"; 
newTd0.innerHTML = "<a href='${pageContext.request.contextPath}/tese/Zhenyu!edit.do' target='list'>镇域规划建设</a>";
newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="background-color:#EFF6FE;text-align:center"; 
newTd0.innerHTML = "<a href='${pageContext.request.contextPath}/tese/Zhenqu!edit.do' target='list'>镇区（乡驻地）规划建设</a>";
newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="text-align:center"; 
newTd0.innerHTML = "<a href='${pageContext.request.contextPath}/tese/Zhen_xiangmu!list.do' target='list'>项目库</a>";  
newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="text-align:center"; 
newTd0.innerHTML = "市政公用设施项目相关管理";  
newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="text-align:center"; 
newTd0.innerHTML = "宣传推介";  
newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="text-align:center"; 
newTd0.innerHTML = "招商引资";  
</c:if>
newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="text-align:center"; 
newTd0.innerHTML = "<a href='${pageContext.request.contextPath}/gushu/Gushu!list.do' target='list'>古树名木</a>";  

newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="text-align:center"; 
newTd0.innerHTML = "<a href='${pageContext.request.contextPath}/gushu/Gujianzhu!list.do' target='list'>古建筑</a>"; 

newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="text-align:center"; 
newTd0.innerHTML = "<a href='${pageContext.request.contextPath}/gushu/Shiwu!list.do' target='list'>信息申报</a>"; 
}
function myList(id){//左边列表
var mylist_=document.getElementById("mylist");
client.getCitys(id,function(result, args, output, warning) {
for(var i=mylist_.childNodes.length-1;i>=0;i--) 
{ 
mylist_.removeChild(mylist_.childNodes[i]); 
}
var jsonStr =result;
if(jsonStr!='T')
jsonStr=eval('(' + result + ')');
//if(jsonStr.length>0){
var newTr = mylist_.insertRow(-1);  
var newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px");
newTd0.style.cssText="background-color:#EFF6FE;text-align:center;font-weight:bold"; 
var length_=6;
if(result!='T')
length_=jsonStr[jsonStr.length-1].biao_shi.split('_').length;
if(length_==2)
newTd0.innerHTML = "州（市）名称"; 
else if(length_==3)
newTd0.innerHTML = "县（区、县）名称";
else if(length_==4)
newTd0.innerHTML = "乡镇名称"; 
else if(length_==5)
newTd0.innerHTML = "建制村名称";
else if(length_==6){
document.getElementById("parent_").value=id;
newTd0.innerHTML = "自然村名称";
//var newTd1 = newTr.insertCell(-1); 
//newTd1.setAttribute("width","15%");
//newTd1.style.cssText="background-color:#EFF6FE;text-align:center;"; 
//newTd1.innerHTML = "<a href='javascript:showinput()'>添加</a>";
}
if(result!='T')
for(var i=0; i<jsonStr.length; i++){
var newTr = mylist_.insertRow(-1);
var newTd0 = newTr.insertCell(-1); 
newTd0.style.cssText="text-align:center"; 
newTd0.setAttribute("height","25px");
if(i%2==1)
newTd0.style.cssText="background-color:#EFF6FE;text-align:center"; 
newTd0.innerHTML = "<a href='javascript:myshow("+jsonStr[i].id+")'>"+jsonStr[i].name+"</a>"; 
//if(length_==0||length_==6){
//var newTd1 = newTr.insertCell(-1); 
//if(i%2==1)
//newTd1.style.cssText="background-color:#EFF6FE;text-align:center"; 
//else
//newTd1.style.cssText="text-align:center"; 
//newTd1.setAttribute("width","15%");
//newTd1.innerHTML = "<a href='javascript:mydel("+jsonStr[i].id+")'>删除</a>";
//}
}
//}
});
}
function myshow(id){
var mytop=document.getElementById("mytop");
//列表处理
<c:if test="${user.type!='特色小镇'&&user.type!='古树名木'}">myList(id);</c:if>
<c:if test="${user.type=='特色小镇'||user.type=='古树名木'}">myTese();</c:if>
//位置处理
client.getLineCitys(id,function(result, args, output, warning) {
var jsonStr = eval('(' + result + ')'); 
var tmpStr="<div id=\"mytop\"><Strong>村镇概况</Strong>"; 
var hasview=false;
for(var i=0; i<jsonStr.length; i++){ 
if(!hasview&&(jsonStr[i].id==${user.guan_li}))
hasview=true;
if(hasview)
tmpStr+="&nbsp;&nbsp;＞＞&nbsp;&nbsp;<a href='javascript:myshow("+jsonStr[i].id+")'>"+jsonStr[i].name+"</a>"; 
else
tmpStr+="&nbsp;&nbsp;＞＞&nbsp;&nbsp;"+jsonStr[i].name;
}
tmpStr+="</div>";
mytop.innerHTML=tmpStr;
//大标题
document.getElementById("mytop1").innerHTML="<div id='mytop1' style='font-weight:bold;font-size:18px;color:#ffffff;font-weight:bold'>"+jsonStr[jsonStr.length-1].name+"<c:if test="${user.type=='特色小镇'}">(特色小镇)</c:if></div>"
<c:if test="${user.type!='特色小镇'&&user.type!='古树名木'}">
//设定主题显示链接
var length_=jsonStr[jsonStr.length-1].biao_shi.split('_').length;
if(length_==6){
document.getElementById("list").src="${pageContext.request.contextPath}/archive/File!list.do?biao_shi="+jsonStr[jsonStr.length-1].biao_shi+"&pingfen=zrc&length="+length_;
}else if(length_==5){
document.getElementById("list").src="${pageContext.request.contextPath}/archive/File!list.do?biao_shi="+jsonStr[jsonStr.length-1].biao_shi+"&pingfen=xzc&length="+length_;
}else if(length_==4){
document.getElementById("list").src="${pageContext.request.contextPath}/archive/File!list.do?biao_shi="+jsonStr[jsonStr.length-1].biao_shi+"&length="+length_;
}else{
document.getElementById("list").src="${pageContext.request.contextPath}/archive/File!youxiuList.do?biao_shi="+jsonStr[jsonStr.length-1].biao_shi+"&pingfen=&length="+length_;
}</c:if>
<c:if test="${user.type=='特色小镇'}">document.getElementById("list").src="${pageContext.request.contextPath}/tese/Ts_fuze!edit.do"</c:if>
<c:if test="${user.type=='古树名木'}">document.getElementById("list").src="${pageContext.request.contextPath}/gushu/Gs_fuze!edit.do"</c:if>
}
);
}
function showinput(){
document.getElementById("myinput_").click();
}
function mySubmit(){
if(Validator.Validate(document.form1,3)){
tb_remove();
var mylist=document.getElementById("mylist");
client.saveDidian(document.getElementById("parent_").value,document.getElementById("name").value,function(result, args, output, warning){ 
if(result!='succeed')
alert('操作失败！');
else
myList(document.getElementById("parent_").value);
});
document.getElementById("name").value='';
}
}
function mydel(id){
client.deleteDidian(id,function(result, args, output, warning){ 
if(result!='succeed')
alert('操作失败！');
else
myList(document.getElementById("parent_").value);
});
}
</script>
<META http-equiv=Content-Type content="text/html; charset=gbk">
<style type="text/css">
<!--
body,td,th {
	font-size: 13px;
}
.STYLE3 {color: #FFFFFF; font-weight: bold; }
.STYLE7 {color: #FFFFFF}
-->
</style>
</HEAD>
<BODY style="margin:0px;overflow:hidden" scroll=no>
<table width="100%" border="1" style="border-collapse:collapse;border-color:#94BAE7;">
  <tr>
    <td style="height:50px" colspan="2">
<table cellspacing="0" cellpadding="0" width="100%" background="${pageContext.request.contextPath}/images/top-bg.gif">
      <tr>
        <td width="65%" align="center" valign="middle" style="height:50px;FILTER: glow(strength=1)mask(color=#FFFFFF)chroma(color=#FFFFFF)"><font size=6><b>云南省村镇业务管理系统</b></font></td>
        <td width="35%" align="right" valign="bottom"><c:if test="${user.type=='特色小镇'}"><a href="${pageContext.request.contextPath}/tese/Ts_fuze!edit.do" target="list"><span class="STYLE7">特色小镇填报负责人管理</span></a>&nbsp;&nbsp;&nbsp;&nbsp;</c:if><c:if test="${user.log_name=='admin'}"><a href="${pageContext.request.contextPath}/admin/Myuser!list.do" target="list"><span class="STYLE7">用户管理</span></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/Didian!list.do" target="list"><span class="STYLE7">地理名称管理</span></a>&nbsp;&nbsp;&nbsp;</c:if><a href="${pageContext.request.contextPath}/admin/Myuser!modifyPass.do" target="list"><span class="STYLE7">修改密码</span></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/Myuser!logout.do" target="_top"><span class="STYLE7">退出系统</span></a>&nbsp;</td>
 </tr>
</table>		  	
	</td>
  </tr>
  <tr>
    <td height="29" colspan="2"><div id="mytop"></div>	
	</td>
  </tr>
  <tr>
    <td width="16%" valign="top">
<div id="myleft">	
<table width="210" border="1" style="border-collapse:collapse;border-color:#94BAE7;">
  <tr>
    <td height="50" colspan="2" align="center" bgcolor="#0066FF"><div id="mytop1"></div></td>
  </tr>
  <tbody id="mylist">
  <tr>
    <td width="85%">&nbsp;</td>
    <td width="15%">&nbsp;</td>
  </tr>
  </tbody>
</table>
</div>
	</td>
    <td width="84%" valign="top">
<IFRAME id='list' style="Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%;overflow-x:hidden" name=list src="${pageContext.request.contextPath}/admin/welcome.jsp" frameBorder=0></IFRAME>	
	</td>
  </tr>
</table>
<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%" background="${pageContext.request.contextPath}/images/top-bg.gif">
        <TR >
          <TD height="30" align="center" valign="bottom"><span class="STYLE3">主办单位：云南省住房和城乡建设厅村镇建设处&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址：云南省昆明市西山区红塔东路3号</span></TD>
        </TR>
        <TR >
          <TD height="30" align="center" ><span class="STYLE3">邮编：650228&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电话：0871-64322042&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;传真：0871-64322042</span><a href="#TB_inline?height=100&width=400&inlineId=after&modal=true" class="thickbox" style="visibility:hidden" id="myinput_">添加</a></TD>
        </TR>		
</TABLE>
<div id="after" align="left" style="display:none;background:#FFFFEE;font-size:12px;cursor:default;">
<form  method="post" name="form1">
  <table width="100%" style="border-collapse:collapse;border-color:#94BAE7;" border="1">
    <tr>
      <td colspan="2" style="height:25px;background-color:#EFF6FE;text-align:center;"><strong>添加自然村</strong></td>
    </tr>
    <tr>
      <td width="35%" style="height:22px;background-color:#EFF6FE;text-align:center;">自然村名称：</td>
      <td><input type="text" name="name" id="name" dataType="Require" /><input type="hidden" name="parent" id="parent_"/></td>
    </tr>
    <tr>
      <td colspan="2" align="center" style="height:35px"><input id='selareayes' type="button" onclick='mySubmit()' value="  确 定  ">&nbsp;&nbsp;&nbsp;<input type="button" id='selareano' onclick='tb_remove()' value="  取 消  "></td>
    </tr>
  </table>
</form>  
</div>
<script language="JavaScript" type="text/javascript">
myshow(${user.guan_li});
</script>
</BODY>
</HTML>