<%@ page contentType="text/html;charset=GBK" %>
<%@ page import="com.zsc.db.DataBaseControl" %>
<%@ page import="java.util.Collection" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%
Collection  roles=DataBaseControl.getInstance().getOutResultSet("select id,name from t_role order by id", null);
%>
<c:set var="roles" value="<%=roles%>"/>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.ztree-2.6.min.js"></script>
<script src="${pageContext.request.contextPath}/scripts/jquery.thickbox.js" type=text/javascript></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/zTreeStyle.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/styles/thickbox.css" type="text/css"/>
<script type="text/javascript" language="javascript">
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
		//设置初始值
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
	var t=document.getElementById("txtarea");
	var h=document.getElementById("guan_li");
	t.value=e.innerHTML;
	h.value=e1.value;
	tb_remove();
}	
</script>
	<input type="hidden" Id="id" name="id" value="${myuser.id}"/>
	<tr>
		<td width="15%" class="myInputTitle">登录名称 &nbsp;</td>	
		<td width="35%">
		<input type="text" Id="log_name" name="log_name" maxlength="25" dataType="Require" value="${myuser.log_name}" <c:if test="${myuser.id!=null}"> readonly="true"  style="background-color:RGB(212,208,200)"</c:if>/>
		</td>
		<td width="15%" class="myInputTitle">用户实际名称 &nbsp;</td>	
		<td width="35%">
		<input type="text" Id="user_name" name="user_name" maxlength="100" dataType="Require" value="${myuser.user_name}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">登录密码 &nbsp;</td>	
		<td width="35%">
		<input type="password" Id="log_pass" name="log_pass" maxlength="25" dataType="Require"/>
		</td>
		<td width="15%" class="myInputTitle">用户类型 &nbsp;</td>	
		<td width="35%">
	<select name="type" id="type">
	 <option value="" <c:if test="${myuser.type==''}">selected</c:if>>普通乡镇</option>
     <option value="管理用户" <c:if test="${myuser.type=='管理用户'}">selected</c:if>>管理用户</option>
	 <option value="特色小镇" <c:if test="${myuser.type=='特色小镇'}">selected</c:if>>特色小镇</option>
    </select>		
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">角色 &nbsp;</td>	
		<td width="35%">
    <select name="role" id="role">
    <c:forEach items="${roles}" var="myRole">
     <option value="${myRole.id}" <c:if test="${myuser.role==myRole.id}">selected</c:if>>${myRole.name}</option>
    </c:forEach>
    </select>		
		</td>
		<td width="15%" class="myInputTitle">所属 &nbsp;</td>	
		<td width="35%">
<input name="shu_di" id="txtarea" type="text" value="${myuser.shu_di}" readonly='readonly' dataType="Require"/><input name="guan_li" id="guan_li" type="hidden" value="${myuser.guan_li}" /><input alt="#TB_inline?height=455&width=400&inlineId=after&modal=true" title="" class="thickbox" type="button" value="..."/>			
		</td>	
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">备注 &nbsp;</td>	
		<td width="85%" colspan="3">
		<input type="text" Id="remark" name="remark" maxlength="250" dataType="" value="${myuser.remark}"/>
		</td>
	</tr>