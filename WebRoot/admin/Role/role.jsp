<%@ page contentType="text/html;charset=gbk" errorPage="/error.jsp"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css"/>
<script language="JavaScript" src="${pageContext.request.contextPath}/script/status.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<script language="JavaScript" >
function view(id){
window.location="${pageContext.request.contextPath}/admin/Role_popedom!list.do?role="+id;
}
function mySubmit(){
if(Validator.Validate(document.getElementById('form1'),3)){
document.form1.submit();
}
}
function myUpdate(id,name,remark){
document.form1.id.value=id;
document.form1.name.value=name;
document.form1.remark.value=remark;
document.form1.button.value=" 更 新 ";
document.form1.action="${pageContext.request.contextPath}/admin/Role!update.do";
document.form1.reset.style.display='none';
document.form1.create.style.display='';
}
function myCreate(){
document.form1.id.value='';
document.form1.name.value='';
document.form1.remark.value='';
document.form1.button.value=" 添 加 ";
document.form1.action="${pageContext.request.contextPath}/admin/Role!save.do";
document.form1.create.style.display='none';
document.form1.reset.style.display='';
}	
</script>
</head>
<body>
<form action="${pageContext.request.contextPath}/admin/Role!save.do" method="post" name="form1" id="form1">
<input type="hidden" name="id" />
<table width="100%" border="1" class="myInput">
  <tr>
    <td width="10%" class="myInputTitle">角色名称：</td>
    <td width="40%"><input type="text" name="name" id="name" maxlength="25" dataType="Require"/></td>
    <td width="10%" class="myInputTitle">备注：</td>
    <td width="40%"><input type="text" name="remark" id="remark"/></td>
  </tr>
  <tr>
    <td height="30" colspan="4" align="center"><input type="button" name="button" value=" 添 加 " onClick="return mySubmit();"/>
      &nbsp;
    <input type="reset" name="reset" value=" 重 置 " /><input type="button" name="create" value=" 新 增 " onclick="javascript:myCreate()" style="display:none"/>
    </td>
  </tr>
</table>
</form>
<table width="100%" border="1">
  <tr class="tHead">
    <td width="8%" align="center">编号</td>
    <td width="16%" align="center">角色名称</td>
    <td width="62%" align="center">备注</td>
    <td width="14%" align="center">操作</td>
  </tr>
<tbody class="myList"> 
<c:forEach items="${list}" var="role" varStatus="s"> 
  <tr bgcolor="<c:if test='${s.index%2==1}'>#EFF6FE</c:if>" onMouseOut="this.style.backgroundColor=''" onMouseOver="this.style.backgroundColor='#fdecae'" ondblclick="javascript:view(${role.id});">
    <td align="center">${s.count}</td>
    <td>${role.name}</td>
    <td>${role.remark}</td>
    <td align="center"><a href="#" onclick="javascript:myUpdate('${role.id}','${role.name}','${role.remark}');">修改</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/Role!delete.do?id=${role.id}" onclick="return confirm('确定执行[删除]操作?')">删除</a></td>
  </tr>
</c:forEach>  
</tbody>   
</table>
</body>
</html>
