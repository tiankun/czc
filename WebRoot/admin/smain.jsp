<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="${pageContext.request.contextPath}/scripts/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" /> 
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
	<script src="${pageContext.request.contextPath}/scripts/jquery.js" type="text/javascript"></script>    
    <script src="${pageContext.request.contextPath}/scripts/ligerUI/ligerui.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/scripts/phprpc_client.js"></script> 	 
<script type="text/javascript">
var client = new PHPRPC_Client('${pageContext.request.contextPath}/phprpc.rdo', ['getCitys','getLineCitys','saveDidian','deleteDidian']);
var accordion = null;
var menu;//二级地名
var timer ;//定时器
$(function ()
{
	//布局
	$("#layout1").ligerLayout({ leftWidth: 190, height: '100%',heightDiff:0,space:4, onHeightChanged: f_heightChanged });
	var height = $(".l-layout-center").height();
	$("#list").css({'height':height,' overflow-x':'hidden'});
   //面板
	$("#accordion1").ligerAccordion({ height: height - 26, speed: null });        
});
function f_heightChanged(options)
{
	if (accordion && options.middleHeight - 26 > 0)
		accordion.setHeight(options.middleHeight - 26);
}
//显示顶部数据
function myshow(id,shua){    
var mytop=document.getElementById("mytop");
//位置处理
client.getLineCitys(id,function(result, args, output, warning) {
var jsonStr = eval('(' + result + ')'); 
var tmpStr="<div id=\"mytop\">&nbsp;&nbsp;&nbsp;<b>当前位置</b>&nbsp;&nbsp;＞＞"; 
var hasview=false;
for(var i=0; i<jsonStr.length; i++){ 
if(!hasview&&(jsonStr[i].id==${user.guan_li}))
hasview=true;
if(hasview&&${user.role!=2}){
tmpStr+="&nbsp;&nbsp;<a href='javascript:myshow("+jsonStr[i].id+",1)'>"+jsonStr[i].name+"</a>"
if(i!=5)
tmpStr+="&nbsp;&nbsp;<a style='cursor:pointer' onclick=showMenu(this,"+jsonStr[i].id+") onMouseover=showMenu(this,"+jsonStr[i].id+")>＞＞</a>"; 
}else{
tmpStr+="&nbsp;&nbsp;"+jsonStr[i].name
if(!(i==3&&${user.role==2}))
tmpStr+="&nbsp;&nbsp;＞＞";
}
}
tmpStr+="</div>";
mytop.innerHTML=tmpStr;
//处理链接（村镇规划）
var length_=jsonStr[jsonStr.length-1].biao_shi.split('_').length;
document._zForm.biao_shi.value=jsonStr[jsonStr.length-1].biao_shi;
document._zForm.length.value=length_;
if(length_==6){
document._zForm.pingfen.value='zrc';
$("#zr").show();
$("#xz").hide();    
}else if(length_==5){
$("#xz").show();
$("#zr").hide();  
document._zForm.pingfen.value='xzc';
}else{
document._zForm.pingfen.value='';
$("#xz").hide(); 
$("#zr").hide();
}
if(length_>=3){
$("#cg").show(); 
}else{
$("#cg").hide();
}
if(length_>4){
$("#yx").hide(); 
$("#fz").hide(); 
}else{
$("#yx").show();
$("#fz").show();
}
//初始主页
if(shua!=0)
document.getElementById("list").src="${pageContext.request.contextPath}/admin/welcome.jsp"
}
);
}

function showMenu(obj,id){
window.clearInterval(timer);
var menuitem;
client.getCitys(id,function(result, args, output, warning) {
if(result!='T'){
if(menu!=null)
menu.hide();
menu==null
menu =$.ligerMenu({width:170});
var jsonStr =eval('(' + result + ')');;
for(var i=0; i<jsonStr.length; i++){ 
menuitem= {id:jsonStr[i].id,text: jsonStr[i].name,click : onclickMy};
menu.addItem(menuitem);
}
}
if(jsonStr){
menu.show({ top:obj.offsetTop+66, left:obj.offsetLeft-8});
timer=window.setInterval(myhide,5000);
}else
menu.hide();
});
}
function onclickMy(item)
{
	myshow(item.id,1);
}
function myhide()
{
menu.hide();
window.clearInterval(timer);
}
function checkShow(url,length){
if(length==4){
ids=document._zForm.biao_shi.value.split('_');
if(ids.length>4){
myshow(ids[3],0);
document._zForm.biao_shi.value=""+ids[0]+"_"+ids[1]+"_"+ids[2]+"_"+ids[3];
}else
myshow(ids[ids.length-1],0);
}
document._zForm.action=url;
document._zForm.submit();
}	 
</script> 
<style type="text/css">
html,body{height:100%;overflow:hidden;}
.STYLE7 {color: #FFFFFF}
</style>
</head>
<body style="padding:0px;margin:0px;background:#EAEEF5;">  
<div id="pageloading"></div>  
<div id="topmenu" class="l-topmenu">
<table cellspacing="0" cellpadding="0" width="100%">
      <tr>
        <td background="${pageContext.request.contextPath}/images/top-bg.gif" style="height:50px" width="65%" align="center" valign="middle" ><font style="font-size:30px;">云南省村镇规划建设管理系统</font></td>
        <td background="${pageContext.request.contextPath}/images/top-bg.gif" width="35%" align="right" valign="bottom"><a href="${pageContext.request.contextPath}/admin/Myuser!modifyPass.do" target="list"><span class="STYLE7">修改密码</span></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/Myuser!logout.do" target="_top"><span class="STYLE7">退出系统</span></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
 </tr>
   <tr>
    <td style="height:25px" colspan="2"><div id="mytop"></div>	
	</td>
  </tr>
</table> 
</div>
  <div id="layout1" style="width:99.2%;margin:0 auto;margin-top:4px;"> 
        <div position="left" title="系统菜单" id="accordion1"> 
<c:if test="${user.log_name=='admin'}">
<div title="系统管理" style="overflow:auto;overflow-x:hidden">
<table width="100%" border="1" align="center" cellSpacing=0 cellPadding=0>
<tr valign="middle" align="center" bgColor=#ffffff><td style="height:28px" bgColor=#f8f8f8 ><a href="${pageContext.request.contextPath}/admin/Popedom!list.do" target="list">权限地址</a></td></tr>
<tr valign="middle" align="center" bgColor=#ffffff><td style="height:28px" bgColor=#f8f8f8 ><a href="${pageContext.request.contextPath}/admin/Role!list.do" target="list">角色管理</a></td></tr>
<tr valign="middle" align="center" bgColor=#ffffff><td style="height:28px" bgColor=#f8f8f8 ><a href="${pageContext.request.contextPath}/admin/Reference!list.do" target="list">字典管理</a></td></tr>
<tr valign="middle" align="center" bgColor=#ffffff><td style="height:28px" bgColor=#f8f8f8 ><a href="${pageContext.request.contextPath}/admin/Myuser!list.do" target="list">用户管理</a></td></tr>
<tr valign="middle" align="center" bgColor=#ffffff><td style="height:28px" bgColor=#f8f8f8 ><a href="${pageContext.request.contextPath}/admin/Didian!list.do" target="list">地理名称管理</a></td></tr>
</table>
</div></c:if><c:if test="${user.role==1}">	
<div title="村镇规划" style="overflow:auto;overflow-x:hidden">
<table width="100%" border="1" align="center" cellSpacing=0 cellPadding=0>
<tr id="fz" valign="middle" align="center" bgColor=#ffffff><td style="height:28px" bgColor=#f8f8f8 ><a href="javascript:checkShow('${pageContext.request.contextPath}/archive/Fuze!show.do',0)">填报负责人管理</a></td></tr>
<tr id="cg" valign="middle" align="center" bgColor=#ffffff><td style="height:28px" bgColor=#f8f8f8 ><a href="javascript:checkShow('${pageContext.request.contextPath}/archive/File!list.do',0)">成果展示</a></td></tr>
<tr id="yx" valign="middle" align="center" bgColor=#ffffff><td style="height:28px" bgColor=#f8f8f8 ><a href="javascript:checkShow('${pageContext.request.contextPath}/archive/File!youxiuList.do',0)">优秀成果展示</a></td></tr>
<tr valign="middle" align="center" bgColor=#ffffff><td style="height:28px" bgColor=#f8f8f8 ><a href="javascript:checkShow('${pageContext.request.contextPath}/archive/Ren_di!show.do',0)">人口与用地情况</a></td></tr>
<tr valign="middle" align="center" bgColor=#ffffff><td style="height:28px" bgColor=#f8f8f8 ><a href="javascript:checkShow('${pageContext.request.contextPath}/archive/Jing_ji!show.do',0)">经济发展情况</a></td></tr>
<tr valign="middle" align="center" bgColor=#ffffff><td style="height:28px" bgColor=#f8f8f8 ><a href="javascript:checkShow('${pageContext.request.contextPath}/archive/Ju_zhu!show.do',0)">村民居住情况</a></td></tr>
<tr valign="middle" align="center" bgColor=#ffffff><td style="height:28px" bgColor=#f8f8f8 ><a href="javascript:checkShow('${pageContext.request.contextPath}/archive/Ji_chu!show.do',0)">基础设施情况</a></td></tr>
<tr valign="middle" align="center" bgColor=#ffffff><td style="height:28px" bgColor=#f8f8f8 ><a href="javascript:checkShow('${pageContext.request.contextPath}/archive/Dl_sheshi!show.do',0)">道路交通设施情况</a></td></tr>
<tr valign="middle" align="center" bgColor=#ffffff><td style="height:28px" bgColor=#f8f8f8 ><a href="javascript:checkShow('${pageContext.request.contextPath}/archive/Gg_fuwu!show.do',0)">公共服务设施情况</a></td></tr>
<tr id="xz" valign="middle" align="center" bgColor=#ffffff><td style="height:28px" bgColor=#f8f8f8 ><a href="javascript:checkShow('${pageContext.request.contextPath}/archive/Xzc_ghys!create.do',0)">行政村规划验收评分</a></td></tr>
<tr id="zr" valign="middle" align="center" bgColor=#ffffff><td style="height:28px" bgColor=#f8f8f8 ><a href="javascript:checkShow('${pageContext.request.contextPath}/archive/Zrc_ghys!create.do',0)">自然村规划验收评分</a></td></tr>
</table>
</div></c:if>
<c:set var="vgroup" value="${0}"/> 
<c:forEach items="${purviews}" var="mypath" varStatus="status"><c:if test="${vgroup!=mypath.view_group}"><c:if test="${status.count!=1}"></table>
</div></c:if>
<div title="${mypath.name}" style="overflow:auto;overflow-x:hidden">
<table width="100%" border="1" align="center" cellSpacing=0 cellPadding=0></c:if>
<c:if test="${vgroup==mypath.view_group}"><tr valign="middle" align="center" bgColor=#ffffff> 
		<td style="height:28px" bgColor=#f8f8f8 ><a <c:choose><c:when test="${(mypath.path!=null)&&(mypath.remark==null)}">href="${pageContext.request.contextPath}${mypath.path}" target="${mypath.target}"</c:when><c:when test="${(mypath.path!=null)&&(mypath.remark=='script')}">href="javascript:checkShow('${pageContext.request.contextPath}${mypath.path}',4)"</c:when></c:choose>>${mypath.name}</a></td>
	</tr></c:if><c:set var="vgroup" value="${mypath.view_group}"/><c:if test="${status.last}">
	</table>
	</div></c:if></c:forEach> 	
</div>
    <div position="center" id="framecenter"> 
 <IFRAME id='list' style="Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%;overflow-x:hidden" name=list src="${pageContext.request.contextPath}/admin/welcome.jsp" frameBorder=0></IFRAME>	
    </div> 
</div>
<form name="_zForm" action="" id="_zForm" method="post" target="list">
<input type="hidden" name="biao_shi" id="biao_shi"/>
<input type="hidden" name="pingfen"/>
<input type="hidden" name="length"/>
</form>
<script language="JavaScript" type="text/javascript">
myshow(${user.guan_li},1);
</script>	
</body>
</html>