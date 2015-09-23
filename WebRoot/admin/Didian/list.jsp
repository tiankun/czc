<%@ page contentType="text/html;charset=GBK" %>
<%@ page import="com.zsc.db.DataBaseControl" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Map" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn" %>
<%
DataBaseControl dataBaseControl=DataBaseControl.getInstance();
Map me=dataBaseControl.getOneResultSet("select t.id,t.parent,t.name from t_didian t where t.id=1", null);	
Collection list = dataBaseControl.getOutResultSet("select t.id,t.parent,t.name from t_didian t where t.parent=1 order by id", null);
%>
<c:set var="me" value="<%=me%>"/><c:set var="list" value="<%=list%>"/>	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>	
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.thickbox.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/thickbox.css" type="text/css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.ztree-2.6.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/zTreeStyle.css" type="text/css">
<script type="text/javascript" language="javascript">
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
var zTree1;
var setting;
var simpleNodes =[{id:${me.id},pId:${me.parent},name:"${me.name}",isParent:true<c:if test="${myuser==null}">,open:true</c:if>}<c:forEach items="${list}" var="dizhi">,{id:${dizhi.id},pId:${dizhi.parent},name:"${dizhi.name}",isParent:true}</c:forEach>];
setting = {
isSimpleData : true,
treeNodeKey : "id",
treeNodeParentKey : "pId",
checkable : false,
expandSpeed : false,
async : true,
asyncUrl : "${pageContext.request.contextPath}/admin/node.jsp",
asyncParam : ["id"],
callback:{
click:	zTreeOnClick
}
};
	$(document).ready(function(){
		zTree1 = $("#treeDemo").zTree(setting,simpleNodes);
		//���ó�ʼֵ
		zTree1.selectNode(simpleNodes[0]);
		$("#selarea").html(getNodePath(simpleNodes[0]));
		$("#hidarea1").attr("value", simpleNodes[0].id);
	});
	function getNodePath(treeNode) {
		if (!treeNode) return "";
		var p = treeNode.name;
		var pNode = treeNode.parentNode;
		while (pNode != null) {
			p = pNode.name+ p;
			pNode = pNode.parentNode;
		}
		p = p;
		return p;
	}
	function zTreeOnClick(event, treeId, treeNode) {
		$("#selarea").html(getNodePath(treeNode));
		$("#hidarea1").attr("value", treeNode.id);
	}
function clsbox()
{
	var e=document.getElementById("selarea");
	var e1=document.getElementById("hidarea1");
	var t=document.getElementById("parent_name");
	var h=document.getElementById("parent");
	t.value=e.innerHTML;
	h.value=e1.value;
	tb_remove();
}	

function edit(id,name,parent_name,biao_shi,parent){
	document.getElementById("id").value=id;
	document.getElementById("name").value=name;
	document.getElementById("old_name").value=name;
	document.getElementById("old_biao_shi").value=biao_shi;
	document.getElementById("parent").value=parent;
	document.getElementById("parent_name").value=parent_name;
	document.getElementById("old_parent_name").value=parent_name;
	document.getElementById("xinzeng").style.display="none";
	document.getElementById("baocun").style.display="block";
}
function update(){
	document.form1.action="${pageContext.request.contextPath}/admin/Didian!update.do";
	document.form1.submit();
}
</script>	
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
</head>

<body>
<form action="${pageContext.request.contextPath}/admin/Didian!save.do" method="post" name="form1" id="form1">
	<input type="hidden" Id="id" name="id" value="${didian.id}"/>
	<input type="hidden" Id="old_name" name="old_name"/>
	<input type="hidden" Id="old_parent_name" name="old_parent_name"/>
	<input type="hidden" Id="old_biao_shi" name="old_biao_shi"/>
	<div id="xinzeng" style="display: block">
	<input type="button" value=" �� �� " onclick="return mySubmit();"/>
	</div>
	<div id="baocun" style="display: none">
	<input type="button" value=" �� �� " onclick="update();"/>
	</div>
<table border="1" width="100%" class="myInput">		
	<tr>
		<td width="15%" class="myInputTitle">���� &nbsp;</td>	
		<td width="35%">
		<input type="text" Id="name" name="name" maxlength="25" dataType="Require" value="${didian.name}"/>
		</td>
		<td width="15%" class="myInputTitle">ֱ���ϼ� &nbsp;</td>	
		<td width="35%">
		<input type="text" Id="parent_name" name="parent_name"  value="${didian.parent_name}" readonly='readonly' dataType="Require"/><input name="parent" id="parent" type="hidden" value="${didian.parent}" /><input alt="#TB_inline?height=455&width=400&inlineId=after&modal=true" title="" class="thickbox" type="button" value="..."/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">��ע &nbsp;</td>	
		<td  colspan="3">
		<input type="text" Id="remark" name="remark" dataType="remark" value="${didian.remark}"/>
		</td>
	</tr>	
</table>	
</form>
<div class="eXtremeTable" >
<form action="${pageContext.request.contextPath}/admin/Didian!list.do" method="post" name="form2">
<table border="0" cellspacing="0"  cellpadding="0" class="tableRegion"  width="100%" >
  <tr class="titleRow" >
    <td colspan="5"><span>ϵͳ���������б�</span></td>
  </tr>
  <tr>
    <td colspan="5">
		<table border="0"  cellpadding="0"  cellspacing="0"  width="100%" >
			<tr>
				<td class="statusBar" >�ҵ�${page.totalNumberOfElements} ����¼, ��ʾ ${(page.thisPageNumber-1)*page.pageSize+1} �� ${(page.thisPageNumber-1)*page.pageSize+fn:length(page.thisPageElements)}</td>
				<td class="compactToolbar"  align="right" >
				<table border="0"  cellpadding="1"  cellspacing="2" >
					<tr>
					<td><a href="javascript:document.form2.setAttribute('action','${pageContext.request.contextPath}/admin/Didian!list.do?pageNumber=1');document.form2.submit()"><img src="${pageContext.request.contextPath}/images/table/firstPage.gif" style="border:0"  alt="��һҳ" /></a></td>
					<td><a href="javascript:document.form2.setAttribute('action','${pageContext.request.contextPath}/admin/Didian!list.do?pageNumber=${page.previousPageNumber}');document.form2.submit()"><img src="${pageContext.request.contextPath}/images/table/prevPage.gif" style="border:0"  alt="��һҳ" /></a></td>
					<td><a href="javascript:document.form2.setAttribute('action','${pageContext.request.contextPath}/admin/Didian!list.do?pageNumber=${page.nextPageNumber}');document.form2.submit()"><img src="${pageContext.request.contextPath}/images/table/nextPage.gif" style="border:0"  alt="��һҳ" /></a></td>
					<td><a href="javascript:document.form2.setAttribute('action','${pageContext.request.contextPath}/admin/Didian!list.do?pageNumber=${page.lastPageNumber}');document.form2.submit()"><img src="${pageContext.request.contextPath}/images/table/lastPage.gif" style="border:0"  alt="���ҳ" /></a></td>
					<td><img src="${pageContext.request.contextPath}/images/table/separator.gif"  style="border:0"  alt="Separator" /></td>
					<td>�� ${page.lastPageNumber} ҳ;��ǰΪ<select name="pageNumber" onchange="javascript:document.form2.submit()">
<c:forEach items="${page.linkPageNumbers}" var="myList">
<option value="${myList}" <c:if test="${page.thisPageNumber==myList}">selected="selected"</c:if>>${myList}</option>
</c:forEach>
</select>ҳ;ÿҳ��ʾ<select name="pageSize" onchange="javascript:document.form2.submit()">
				<option value="20" <c:if test="${page.pageSize==20}">selected="selected"</c:if>>20</option><option value="50" <c:if test="${page.pageSize==50}">selected="selected"</c:if>>50</option><option value="100" <c:if test="${page.pageSize==100}">selected="selected"</c:if>>100</option>
				</select>��</td>
					<td><img src="${pageContext.request.contextPath}/images/table/separator.gif"  style="border:0"  alt="Separator" /></td>
					<td><a href="javascript:document.form2.submit()"><img src="${pageContext.request.contextPath}/images/table/filter.gif"  style="border:0"  title="����"  alt="����" /></a></td>
					<td><a href="javascript:document.form2.quan_ming.value='';document.form2.remark.value='';document.form2.zhu_xiao.value='';document.form2.jibie.value='';document.form2.submit()"><img src="${pageContext.request.contextPath}/images/table/clear.gif"  style="border:0"  title="���"  alt="���" /></a></td>
					</tr>
				</table></td>
			</tr>
		</table>	
	</td>
    </tr>
	<tr class="filter" >
		<td style="width:40%"><input type="text"  name="quan_ming" value="${quan_ming}"/></td>
		<td style="width:10%"><input type="text"  name="jibie" value="${jibie}"/></td>		
		<td style="width:30%"><input type="text"  name="remark" value="${remark}"/></td>
		<td style="width:10%"><input type="text"  name="zhu_xiao" value="${zhu_xiao}"/></td>
		<td style="width:120px"></td>
	</tr>
	<tr>
		<td class="tableHeader">ȫ��</td>
		<td class="tableHeader">����</td>
		<td class="tableHeader">��ע</td>
		<td class="tableHeader">ע��</td>
		<td class="tableHeader">����</td>
	</tr>
	<tbody class="tableBody" >
<c:forEach items="${page.thisPageElements}" var="item" varStatus="s">
	<tr <c:if test="${s.index%2==0}">class="odd" onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" </c:if><c:if test="${s.index%2!=0}">class="even" onmouseover="this.className='highlight'"  onmouseout="this.className='even'" </c:if>>
		<td>&nbsp;&nbsp;${item['quan_ming']}</td>
		<td align="center">${item['jibie']}</td>
		<td>${item['remark']}</td>
		<td>${item['zhu_xiao']}</td>
		<td align="center">
		    <a href="${pageContext.request.contextPath}/admin/Didian!zhuxiao.do?id=${item['id']}&biao_shi=${item['biao_shi']}">ע��</a>
		    <a onclick="edit('${item['id']}','${item['name']}','${item['parent_name']}','${item['biao_shi']}','${item['parent']}')" href="#">�޸�</a>
		    <a href="${pageContext.request.contextPath}/admin/Gis!showG.do?id=${item.id}">��λ</a>
		</td>
	</tr>
</c:forEach>		
	</tbody>
</form>	
</table>
</div>
<div id="after" align="left" style="display:none;background:#FFFFEE;font-size:12px;cursor:default;">
<button id='selareayes' onclick='clsbox()'>&nbsp;ȷ ��&nbsp;</button> <button id='selareano' onclick='tb_remove()'>&nbsp;ȡ ��&nbsp;</button>
<div style='border:1px dotted #cccccc;background:#ffffff;line-height:2em'>
ѡ�еĵ���:
<span id='selarea'></span>
<input name="hidarea1" id="hidarea1" type="hidden" value=""/>
</div>
<div id='treeDemo' class="tree" style="width:390px;height:390px;background:#FFFFEE;overflow:scroll"></div>
</div>
</body>
</html>