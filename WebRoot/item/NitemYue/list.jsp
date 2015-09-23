<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn"%>
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
<script language="JavaScript" >
//ɾ��
function del(id,type,item_id){
	if(confirm('ȷ��ɾ����')){
	  window.location="${pageContext.request.contextPath}/item/Nitem_yue!delete.do?id="+id+"&type="+type+"&item_id="+item_id;
	}
}
</script>
</head>

<body>
<form action="" method="post" name="form1">
<c:choose>
    <c:when test="${type==1}">
        <c:choose>
            <c:when test="${fn:length(fn:split(user.biao_shi,'_'))>3}">
                 <input type="button" value=" �� �� " onclick="window.location='${pageContext.request.contextPath}/item/Nitem_yue!yueList.do?type=1'"/>
            </c:when>
            <c:otherwise>
                 <input type="button" value=" �� �� " onclick="parent.checkShow('${pageContext.request.contextPath}/item/Nitem_water!list.do',4)"/>
            </c:otherwise>
        </c:choose>
    </c:when>
    <c:when test="${type==2}">
        <c:choose>
            <c:when test="${fn:length(fn:split(user.biao_shi,'_'))>3}">
                  <input type="button" value=" �� �� " onclick="window.location='${pageContext.request.contextPath}/item/Nitem_yue!yueList.do?type=2'"/>
            </c:when>
            <c:otherwise>
                  <input type="button" value=" �� �� " onclick="parent.checkShow('${pageContext.request.contextPath}/item/Nitem_sewaga!list.do',4)"/>
            </c:otherwise>
        </c:choose>
    </c:when>
    <c:otherwise>
        <c:choose>
            <c:when test="${fn:length(fn:split(user.biao_shi,'_'))>3}">
                   <input type="button" value=" �� �� " onclick="window.location='${pageContext.request.contextPath}/item/Nitem_yue!yueList.do?type=3'"/>
            </c:when>
            <c:otherwise>
                   <input type="button" value=" �� �� " onclick="parent.checkShow('${pageContext.request.contextPath}/item/Nitem_rubbish!list.do',4)"/>
            </c:otherwise>
        </c:choose>
    </c:otherwise>
</c:choose>
<c:if test="${project.guan_li==user.guan_li}">
	<input type="submit" value=" �� �� " onclick="document.form1.action='${pageContext.request.contextPath}/item/Nitem_yue!create.do?type=${type}&item_id=${item_id}'"/>
</c:if>
</form>

<ec:table items='list' var="item" view="compact" rowsDisplayed="20"
	action="${pageContext.request.contextPath}/item/NitemYue!uploadList.do?type=${type}&item_id=${item_id}" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
		<ec:column property="name" title="��Ŀ����"/>
		<ec:column property="num" title="��Ŀ���"/>
		<ec:column property="year" title="�±�ʱ��">
		  ${item.year}-${item.month}
		</ec:column>
		<ec:column property="create_date" title="�����"/>
		<ec:column property="jindu" title="��Ŀ�������"/>
		<ec:column property="����״̬" title="����״̬">
			  <c:choose>
			      <c:when test="${item.statu==1}">
			          <img src="<c:url value='/images/green.bmp'/>" border="0" align="absbottom"  width="20px">�������
			      </c:when>
			      <c:when test="${item.statu==2}">
			          <img src="<c:url value='/images/red.bmp'/>" border="0" align="absbottom"  width="20px">δ�������
			      </c:when>
			      <c:otherwise>
			         δ���
			      </c:otherwise>
			  </c:choose>
		</ec:column>
		<ec:column property="����" title="����" sortable="false" filterable="false" width="100px">
			<a href="${pageContext.request.contextPath}/item/Nitem_yue!show.do?id=${item.id}&type=${type}&item_id=${item_id}&operate=show&pro_area=${pro_area}">�鿴</a>&nbsp;&nbsp;
			<c:if test="${checkQuanxian=='yes'&&item.statu==0}">
			  <A href="${pageContext.request.contextPath}/item/Nitem_yue!show.do?id=${item.id}&type=${type}&item_id=${item_id}&operate=check&pro_area=${pro_area}">���</A>&nbsp;&nbsp;
            </c:if>
			<c:if test="${item.guan_li==user.guan_li&&(item.statu==0||item.statu==2)}"><!-- &&item.dd>0 -->
			<a href="${pageContext.request.contextPath}/item/Nitem_yue!edit.do?id=${item.id}&type=${type}&item_id=${item_id}">�޸�</a>&nbsp;&nbsp;
			<a href="#" onclick="del(${item.id},${type},${item_id})">ɾ��</a>
			</c:if>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

