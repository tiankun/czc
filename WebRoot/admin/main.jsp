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
function myTese(){//��ɫС��
var mylist_=document.getElementById("mylist");
for(var i=mylist_.childNodes.length-1;i>=0;i--) 
{ 
mylist_.removeChild(mylist_.childNodes[i]); 
}
<c:if test="${user.type!='������ľ'}">
var newTr = mylist_.insertRow(-1);  
var newTd0 = newTr.insertCell(-1);  
newTd0.setAttribute("height","25px");
newTd0.style.cssText="background-color:#EFF6FE;text-align:center";
newTd0.innerHTML = "<a href='${pageContext.request.contextPath}/tese/ChengGuo/list.jsp' target='list'>�滮����</a>"; 
newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="text-align:center"; 
newTd0.innerHTML = "<a href='${pageContext.request.contextPath}/tese/Zhenyu!edit.do' target='list'>����滮����</a>";
newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="background-color:#EFF6FE;text-align:center"; 
newTd0.innerHTML = "<a href='${pageContext.request.contextPath}/tese/Zhenqu!edit.do' target='list'>��������פ�أ��滮����</a>";
newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="text-align:center"; 
newTd0.innerHTML = "<a href='${pageContext.request.contextPath}/tese/Zhen_xiangmu!list.do' target='list'>��Ŀ��</a>";  
newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="text-align:center"; 
newTd0.innerHTML = "����������ʩ��Ŀ��ع���";  
newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="text-align:center"; 
newTd0.innerHTML = "�����ƽ�";  
newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="text-align:center"; 
newTd0.innerHTML = "��������";  
</c:if>
newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="text-align:center"; 
newTd0.innerHTML = "<a href='${pageContext.request.contextPath}/gushu/Gushu!list.do' target='list'>������ľ</a>";  

newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="text-align:center"; 
newTd0.innerHTML = "<a href='${pageContext.request.contextPath}/gushu/Gujianzhu!list.do' target='list'>�Ž���</a>"; 

newTr = mylist_.insertRow(-1);  
newTd0 = newTr.insertCell(-1); 
newTd0.setAttribute("height","25px"); 
newTd0.style.cssText="text-align:center"; 
newTd0.innerHTML = "<a href='${pageContext.request.contextPath}/gushu/Shiwu!list.do' target='list'>��Ϣ�걨</a>"; 
}
function myList(id){//����б�
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
newTd0.innerHTML = "�ݣ��У�����"; 
else if(length_==3)
newTd0.innerHTML = "�أ������أ�����";
else if(length_==4)
newTd0.innerHTML = "��������"; 
else if(length_==5)
newTd0.innerHTML = "���ƴ�����";
else if(length_==6){
document.getElementById("parent_").value=id;
newTd0.innerHTML = "��Ȼ������";
//var newTd1 = newTr.insertCell(-1); 
//newTd1.setAttribute("width","15%");
//newTd1.style.cssText="background-color:#EFF6FE;text-align:center;"; 
//newTd1.innerHTML = "<a href='javascript:showinput()'>���</a>";
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
//newTd1.innerHTML = "<a href='javascript:mydel("+jsonStr[i].id+")'>ɾ��</a>";
//}
}
//}
});
}
function myshow(id){
var mytop=document.getElementById("mytop");
//�б���
<c:if test="${user.type!='��ɫС��'&&user.type!='������ľ'}">myList(id);</c:if>
<c:if test="${user.type=='��ɫС��'||user.type=='������ľ'}">myTese();</c:if>
//λ�ô���
client.getLineCitys(id,function(result, args, output, warning) {
var jsonStr = eval('(' + result + ')'); 
var tmpStr="<div id=\"mytop\"><Strong>����ſ�</Strong>"; 
var hasview=false;
for(var i=0; i<jsonStr.length; i++){ 
if(!hasview&&(jsonStr[i].id==${user.guan_li}))
hasview=true;
if(hasview)
tmpStr+="&nbsp;&nbsp;����&nbsp;&nbsp;<a href='javascript:myshow("+jsonStr[i].id+")'>"+jsonStr[i].name+"</a>"; 
else
tmpStr+="&nbsp;&nbsp;����&nbsp;&nbsp;"+jsonStr[i].name;
}
tmpStr+="</div>";
mytop.innerHTML=tmpStr;
//�����
document.getElementById("mytop1").innerHTML="<div id='mytop1' style='font-weight:bold;font-size:18px;color:#ffffff;font-weight:bold'>"+jsonStr[jsonStr.length-1].name+"<c:if test="${user.type=='��ɫС��'}">(��ɫС��)</c:if></div>"
<c:if test="${user.type!='��ɫС��'&&user.type!='������ľ'}">
//�趨������ʾ����
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
<c:if test="${user.type=='��ɫС��'}">document.getElementById("list").src="${pageContext.request.contextPath}/tese/Ts_fuze!edit.do"</c:if>
<c:if test="${user.type=='������ľ'}">document.getElementById("list").src="${pageContext.request.contextPath}/gushu/Gs_fuze!edit.do"</c:if>
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
alert('����ʧ�ܣ�');
else
myList(document.getElementById("parent_").value);
});
document.getElementById("name").value='';
}
}
function mydel(id){
client.deleteDidian(id,function(result, args, output, warning){ 
if(result!='succeed')
alert('����ʧ�ܣ�');
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
        <td width="65%" align="center" valign="middle" style="height:50px;FILTER: glow(strength=1)mask(color=#FFFFFF)chroma(color=#FFFFFF)"><font size=6><b>����ʡ����ҵ�����ϵͳ</b></font></td>
        <td width="35%" align="right" valign="bottom"><c:if test="${user.type=='��ɫС��'}"><a href="${pageContext.request.contextPath}/tese/Ts_fuze!edit.do" target="list"><span class="STYLE7">��ɫС��������˹���</span></a>&nbsp;&nbsp;&nbsp;&nbsp;</c:if><c:if test="${user.log_name=='admin'}"><a href="${pageContext.request.contextPath}/admin/Myuser!list.do" target="list"><span class="STYLE7">�û�����</span></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/Didian!list.do" target="list"><span class="STYLE7">�������ƹ���</span></a>&nbsp;&nbsp;&nbsp;</c:if><a href="${pageContext.request.contextPath}/admin/Myuser!modifyPass.do" target="list"><span class="STYLE7">�޸�����</span></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/Myuser!logout.do" target="_top"><span class="STYLE7">�˳�ϵͳ</span></a>&nbsp;</td>
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
          <TD height="30" align="center" valign="bottom"><span class="STYLE3">���쵥λ������ʡס���ͳ��罨���������账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ַ������ʡ��������ɽ��������·3��</span></TD>
        </TR>
        <TR >
          <TD height="30" align="center" ><span class="STYLE3">�ʱࣺ650228&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�绰��0871-64322042&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���棺0871-64322042</span><a href="#TB_inline?height=100&width=400&inlineId=after&modal=true" class="thickbox" style="visibility:hidden" id="myinput_">���</a></TD>
        </TR>		
</TABLE>
<div id="after" align="left" style="display:none;background:#FFFFEE;font-size:12px;cursor:default;">
<form  method="post" name="form1">
  <table width="100%" style="border-collapse:collapse;border-color:#94BAE7;" border="1">
    <tr>
      <td colspan="2" style="height:25px;background-color:#EFF6FE;text-align:center;"><strong>�����Ȼ��</strong></td>
    </tr>
    <tr>
      <td width="35%" style="height:22px;background-color:#EFF6FE;text-align:center;">��Ȼ�����ƣ�</td>
      <td><input type="text" name="name" id="name" dataType="Require" /><input type="hidden" name="parent" id="parent_"/></td>
    </tr>
    <tr>
      <td colspan="2" align="center" style="height:35px"><input id='selareayes' type="button" onclick='mySubmit()' value="  ȷ ��  ">&nbsp;&nbsp;&nbsp;<input type="button" id='selareano' onclick='tb_remove()' value="  ȡ ��  "></td>
    </tr>
  </table>
</form>  
</div>
<script language="JavaScript" type="text/javascript">
myshow(${user.guan_li});
</script>
</BODY>
</HTML>