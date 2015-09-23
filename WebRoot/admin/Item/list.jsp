<%@ page contentType="text/html;charset=GBK" %>
<%@ page import="com.zsc.db.DataBaseControl" %>
<%@ page import="java.util.Collection" %>
<%@ page import="java.util.Map" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%DataBaseControl  dataBaseControl=DataBaseControl.getInstance();
String biaoshi_=((Map)request.getAttribute("view_user")).get("biao_shi").toString();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/application.js"></script>
    <link href="${pageContext.request.contextPath}/styles/extremecomponents.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
</head>

<body>
<table width="100%" background="${pageContext.request.contextPath}/images/tbg.jpg">
  <tr align="center">
<c:if test="${view_user.mylength>2}">  <!--�ؼ����� -->
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Economy!edit.do?unit_id=${unit_id}">��ᾭ�����</a></font></td>
    <td style="height:31px" width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Plan!edit.do?unit_id=${unit_id}">�滮�������</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Facility!edit.do?unit_id=${unit_id}">������ʩ��״</a></font></td>
</c:if>
<c:if test="${view_user.mylength<=2}">  
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Economy!xianedit.do?unit_id=${unit_id}">��ᾭ�����</a></font></td>
    <td style="height:31px" width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Plan!xianedit.do?unit_id=${unit_id}">�滮�������</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="${pageContext.request.contextPath}/admin/Facility!xianedit.do?unit_id=${unit_id}">������ʩ��״</a></font></td>
</c:if>		
    <td width="120" background="${pageContext.request.contextPath}/images/t1.jpg"><font style="position: relative; top:3px;font-weight:bold">��Ŀ��</font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">�¼��ϱ����</a></font></td>
    <td width="120" background="${pageContext.request.contextPath}/images/t2.jpg"><font style="position: relative; top:3px"><a href="#">��ʷ����</a></font></td>		
    <td width="*">&nbsp;</td>	
  </tr>
</table>
<form action="" method="post" name="form1">
	<input type="submit" value=" �� �� " onClick="document.form1.action='${pageContext.request.contextPath}/admin/Item!create.do?unit_id=${unit_id}'"/>
</form>
<%
Collection fenleis=dataBaseControl.getOutResultSet("select count(t.id) mycount,t.fen_lei from t_item t where t.unit_id in (select a.id from t_didian a where SUBSTR(a.biao_shi,0,length('"+biaoshi_+"'))='"+biaoshi_+"') group by t.fen_lei", null);
%>
<table width="100%" border="1">
  <tr class="tHead">
    <td width="12%">��Ŀ����</td>
    <td width="10%">���</td>
    <td width="45%">��������</td>
    <td width="13%">��Ŀ�׶�</td>
    <td width="13%">�����</td>
    <td width="7%">����</td>
  </tr>
<%if(fenleis!=null){
int j=0;
Object[] temp=fenleis.toArray();
Map fenlei;
for(int i=0;i<temp.length;i++){
fenlei=(Map)temp[i];
j+=new Integer(fenlei.get("mycount").toString());
Collection jutis=dataBaseControl.getOutResultSet("select t.id,t.unit_id,t.name,t.jie_duan,t.tian_jia from t_item t where t.unit_id in (select a.id from t_didian a where SUBSTR(a.biao_shi,0,length('"+biaoshi_+"'))='"+biaoshi_+"') and t.fen_lei=?", new Object[]{fenlei.get("fen_lei")});
%>
<c:set var="jutis" value="<%=jutis%>"/>
<c:forEach items="${jutis}" var="juti" varStatus="s">
  <tr>
   <c:if test="${s.count==1}"><td rowspan="<%=fenlei.get("mycount")%>" align="center"><%=fenlei.get("fen_lei")%></td></c:if>
    <td align="center">${s.count+time}</td>
    <td>${juti.name}</td>
    <td align="center">${juti.jie_duan}</td>
    <td align="center">${juti.tian_jia}</td>
    <td align="center"><a href="${pageContext.request.contextPath}/admin/Item!edit.do?unit_id=${unit_id}&id=${juti.id}">�޸�</a>&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/admin/Item!delete.do?unit_id=${unit_id}&items=${juti.id}">ɾ��</a></td>
  </tr>
</c:forEach>
<c:set var="time" value="<%=j%>"/>
<%}}%>
</table>
</body>

</html>

