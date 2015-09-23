<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld"  prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>	
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" /> 
    <script src="${pageContext.request.contextPath}/scripts/jquery.js" type="text/javascript"></script>
<script language="JavaScript" >
function mylink(){
	parent.checkShow('${pageContext.request.contextPath}/item/ItemTongji!yueList.do?type=${type}',4);
}
function mySubmit(){
if(Validator.Validate(document.form1,3)){
	var years = document.getElementsByName("year");
	var months = document.getElementsByName("month");
	var panduan1 = 0;
	var panduan2 = 0;
	for(var i=0;i<years.length-1;i++){
		var date = parseInt(years[i].options[years[i].options.selectedIndex].value+months[i].options[months[i].options.selectedIndex].value);
		var dateNext = parseInt(years[i+1].options[years[i+1].options.selectedIndex].value+months[i+1].options[months[i+1].options.selectedIndex].value);
		if(date>dateNext){
			alert("ǰһ�׶ε�ʱ�䲻�ܱȺ�һ�׶ε�ʱ���");
			break;
		}else{
			panduan1++;
		}
		if(date==dateNext){
			panduan2++;
		}
	}
	if(panduan2==8){
		alert("�������趨һ���ƻ���ʼʱ�䣡");
	}else{
	if(panduan1==8){
		document.form1.submit();
	}
	}
}
}
//��ӷ�ע����Ա
function addPlan(){
	var trLength = $("#planTab tr").length;
	if(trLength<12){
	$("#planTab").append("<tr><td width=\"92%\"><table border=\"1\" width=\"100%\" class=\"myInput\"><tr><td class=\"myInputTitle\" width=\"20%\">�շ�ʱ��</td>" +
	"<td width=\"72%\"><input type=\"text\" name=\"shiduan\" datatype=\"Require\"/></td>" +
	"</tr><tr><td class=\"myInputTitle\" width=\"20%\">�ƻ��շ�����</td>" +
	"<td width=\"72%\"><textarea style=\"width: 90%\" name=\"miaoshu\" datatype=\"Require\"></textarea></td>" +
	"</tr><tr><td class=\"myInputTitle\" width=\"20%\">��ע</td>" +
	"<td width=\"72%\"><textarea style=\"width: 90%\" name=\"remarkf\"></textarea></td></tr> " +
	" </table></td><td width=\"8%\" align=\"center\"><a href=\"#\" onclick=\"deltr(this)\">ɾ��</a></td></tr>");
	}else{
		alert("���ֻ�����3���շѼƻ���");
	}
}
//ɾ��
function deltr(obj){
	var trLength = $("#planTab tr").length;
	if(trLength>4){
       $(obj).parent().parent().remove(); //ɾ����ǰ��
	}else{
		alert("ɾ������ʧ�ܣ������ٱ���1���շѼƻ���");
	}
}
</script>
<STYLE type=text/css>
.STYLE1 {
	COLOR: #ff0000
}
a:link {
	font-size: 12px;
	color: #3333FF;
	text-decoration: none;
}
</STYLE>

</head>

<body>
<c:if test="${item_build.id!=null}"><%@ include file="../top.jsp" %></c:if>
<form action="${pageContext.request.contextPath}/item/Item_plan!save.do" method="post" name="form1" style="margin:0px">	
   <TABLE border="1" width="100%" class="myInput">
       <tr>
         <td class="myInputTitle"><font color="#FF0000"><c:choose><c:when test="${type==1}">��ˮ</c:when><c:when test="${type==2}">��ˮ����</c:when><c:otherwise>��������</c:otherwise></c:choose></font>��Ŀ����</td>
         <td colspan="2"><input type="hidden" name="type" value="${type}"><input type="hidden" name="item" value="${item_build.id}"><input type="text" name="name" value="${item_build.name}" datatype="Require"></td>
      </tr>
<c:if test="${guanxia!=null}">
       <tr>
         <td class="myInputTitle">��Ŀ��������</td>
         <td colspan="2"><c:forEach items="${guanxia}" var="gx" varStatus="i"><c:set var="id" value=";${gx.id};"/><input type="checkbox" name="gx" value="${gx.id}" <c:if test="${fn:contains(item_build.fugai,id)}">CHECKED</c:if> <c:if test="${i.count==fn:length(guanxia) }">dataType="Group" msg="����ѡ�񸲸�����"</c:if>/>&nbsp;${gx.name}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</c:forEach></td>
      </tr>	
</c:if>	     	    
      <tr>
         <td colspan="3" class="myInputTitle"><STRONG>���ȼƻ�</STRONG></td>
      </tr>
      <tr>
         <td width="20%" class="myInputTitle">�׶�</td>
         <td width="20%" class="myInputTitle">�ƻ���ʼʱ��</td>
         <td width="60%" class="myInputTitle">˵��</td>
      </tr>
<c:forEach items="${list}" var="jh"><c:set value="${fn:split(jh.kaishi,'-')}" var="sd" />  
      <tr onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">
         <td align="center" height="28px"><input type="hidden" name="jie_duan" value="${jh.jie_duan}">${jh.jie_duan}</td>
         <td align="center">
           <select name="year" style="width:80px">
               <option <c:if test="${sd[0]=='2013'}">selected</c:if>>2013</option>
               <option <c:if test="${sd[0]=='2014'}">selected</c:if>>2014</option>
               <option <c:if test="${sd[0]=='2015'}">selected</c:if>>2015</option>
           </select>�� - <select name="month" style="width:40px">
               <option <c:if test="${sd[1]=='01'}">selected</c:if>>01</option>
               <option <c:if test="${sd[1]=='02'}">selected</c:if>>02</option>
               <option <c:if test="${sd[1]=='03'}">selected</c:if>>03</option>
               <option <c:if test="${sd[1]=='04'}">selected</c:if>>04</option>
               <option <c:if test="${sd[1]=='05'}">selected</c:if>>05</option>
               <option <c:if test="${sd[1]=='06'}">selected</c:if>>06</option>
               <option <c:if test="${sd[1]=='07'}">selected</c:if>>07</option>
               <option <c:if test="${sd[1]=='08'}">selected</c:if>>08</option>
               <option <c:if test="${sd[1]=='09'}">selected</c:if>>09</option>
               <option <c:if test="${sd[1]=='10'}">selected</c:if>>10</option>
               <option <c:if test="${sd[1]=='11'}">selected</c:if>>11</option>
               <option <c:if test="${sd[1]=='12'}">selected</c:if>>12</option>
           </select>��         </td>
         <td><input type="text" name="remark" value="${jh.remark}" /></td>
      </tr>
</c:forEach>
   </TABLE>
   <TABLE border="1" width="100%" class="myInput">
      <tr>
         <td class="myInputTitle"><STRONG>�շѼƻ�</STRONG>&nbsp;&nbsp;&nbsp;<a href="#" onclick="addPlan();">���һ���շѼƻ�</a></td>
      </tr>
      <tr onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">
         <td>
<c:forEach items="${fees}" var="fee">		 
   <TABLE border="1" width="100%" class="myInput" id="planTab" frame="void" rules="rows">
   <tr>
   <td width="92%">
     <table border="1" width="100%" class="myInput" id="planTabSon">
      <tr>
         <td class="myInputTitle" width="20%">�շ�ʱ��</td>
         <td width="72%"><input type="text" name="shiduan" value="${fee.shiduan}" datatype="Require"/></td>
      </tr>
      <tr>
         <td class="myInputTitle" width="20%">�ƻ��շ�����</td>
         <td width="72%"><textarea style="width: 90%" name="miaoshu" datatype="Require">${fee.miaoshu}</textarea></td>
      </tr>
      <tr>
         <td class="myInputTitle" width="20%">��ע</td>
         <td width="72%"><textarea style="width: 90%" name="remarkf">${fee.remark}</textarea></td>
      </tr>   
     </table>
   </td>
   <td width="8%" align="center">
              <a href="#" onclick="deltr(this)">ɾ��</a>
   </td>
   </tr>
   </TABLE>
</c:forEach>  		 
		 </td>
      </tr>		  	  
      <tr>
         <td align="center" height="30"><input type="button" value="  ��  ��  " onClick="return mySubmit();"/>
		 <c:if test="${fn:length(fn:split(user.biao_shi,'_'))<=3}"><input type="button" value="  ��  ��  " onClick="mylink();"/></c:if>
		 </td>
      </tr>	  
   </TABLE>
</form>   
</body>
</html>
