<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/extremecomponents.tld" prefix="ec"%>
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
<%@ include file="../top.jsp" %>
<c:if test="${checkArea==true}">
<A href="${pageContext.request.contextPath}/item/Item_biao!create.do?item=${item}"><STRONG>====�����Ŀ��Ͷ�����====</STRONG></A>
</c:if>
<ec:table items='list' var="item" view="compact" rowsDisplayed="20" title="��Ŀ��Ͷ������б�"
	action="#" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="biao_duan" title="���"/>
		<ec:column property="zb_unit" title="�б깫˾"/>
		<ec:column property="biaojia" title="��ν���Ԫ��"/>
		<ec:column property="zhaobiao" title="�б��ĺ�"/>
		<ec:column property="zb_gongshi" title="�б깫ʾ�ĺ�"/>
		<ec:column property="zb_danwei" title="�б굥λ"/>
		<ec:column property="zb_jianli" title="����λ"/>		
		<ec:column property="����" title="����" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/item/Item_biao!show.do?id=${item.id}">�鿴</a>&nbsp;&nbsp;&nbsp;
          <c:if test="${checkArea==true}">
			<a href="${pageContext.request.contextPath}/item/Item_biao!edit.do?id=${item.id}">�޸�</a>
			<a href="${pageContext.request.contextPath}/item/Item_biao!delete.do?item=${item}&items=${item.id}">ɾ��</a>
	      </c:if>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

