<%@ page contentType="text/html;charset=gbk" errorPage="/error.jsp"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<link href="<c:url value='/styles/default.css'/>" rel="stylesheet" type="text/css"/>
<script language="JavaScript" src="<c:url value='/script/status.js'/>"></script>
<script language="JavaScript" >
function myBack(){
window.location="<c:url value='/admin/Role!list.do'/>";
}
</script>
</head>
<body>
<form action="<c:url value='/admin/Role_popedom!save.do'/>" method="post" name="form1">
<input type="hidden" name="role" value="${role}"/>
<table width="100%" border="1">
<c:set var="number" value="0"/>
<c:set var="step" value="4"/>
<c:forEach items="${role_popedoms}" var="role" varStatus="s">
<c:choose>
<c:when test="${role.father==0}">
<c:set var="time" value="${number%step==0?0:step-(number%step)}"/>
<c:forEach  begin="1" end="${time}" varStatus="t">
<c:set var="number" value="${number+1}" />
<td width="${100/step}%" align="center">&nbsp;</td>
<c:if test="${t.count==time}">
</tr>
</c:if>
</c:forEach>
<c:set var="number" value="${number+step}" />
  <tr class="tHead">
    <td colspan="${step}"><strong>${role.name}</strong><input type="checkbox" name="popedom" value="${role.id}" ${role.checked}/></td>
  </tr>
</c:when>
<c:otherwise>
<c:set var="number" value="${number+1}" />
<c:choose>
<c:when test="${number%step==1}">
  <tr>
    <td width="${100/step}%" align="center">${role.name}<input type="checkbox" name="popedom" value="${role.id}" ${role.checked}/></td>
</c:when>
<c:when test="${number%step==0}">
<td width="${100/step}%" align="center">${role.name}<input type="checkbox" name="popedom" value="${role.id}" ${role.checked}/></td> </tr>
</c:when>
<c:otherwise>
<td width="${100/step}%" align="center">${role.name}<input type="checkbox" name="popedom" value="${role.id}" ${role.checked}/></td>
</c:otherwise>
</c:choose>
</c:otherwise>
</c:choose>    
</c:forEach> 
<c:set var="time" value="${number%step==0?0:step-(number%step)}"/>
<c:forEach  begin="1" end="${time}" varStatus="t">
<td width="${100/step}%" align="center">&nbsp;</td>
<c:if test="${t.count==time}">
</tr>
</c:if>
</c:forEach>
</table>
<br/>
<center>
<input type="submit" name="Submit" value=" 提 交 " />
&nbsp;
<input type="reset" name="reset" value=" 重 置 " />
&nbsp;
<input type="button" name="button" value=" 返 回 " onclick="javascript:myBack();"/>
</center>
</form>
</body>
</html>
