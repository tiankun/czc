<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c"%>
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
 //��ѯ
 function mySubmit(){
	 var biao_shi = parent.document.getElementById("biao_shi").value;
	 document.form1.action="${pageContext.request.contextPath}/item/Nitem_rubbish!list.do?biao_shi="+biao_shi+"";
     document.form1.submit();
 }
 //ɾ��
 function del(id){
	 var biao_shi = parent.document.getElementById("biao_shi").value;
	 if(confirm('ȷ��ɾ����')){
	   window.location="${pageContext.request.contextPath}/item/Nitem_rubbish!delete.do?id="+id+"&biao_shi="+biao_shi+"";
	 }
 }
 </script>   
</head>

<body>
<form action="${pageContext.request.contextPath}/item/Nitem_rubbish!list.do" method="post" name="form1">
     <table border="1" width="100%" class="myInput">
         <tr>
            <td class="myInputTitle" width="10%">��Ŀ����</td>
            <td width="20%">
                <input type="text" Id="name" name="name" maxlength="500" dataType="Require" value="${searchMap.name}" />
            </td>
            <td class="myInputTitle" width="10%">��������</td>
            <td width="20%">
			   <select id="xingzhi" name="xingzhi" style="width: 100px;" >
				  <option value="" <c:if test="${searchMap.xingzhi=='δѡ��'}">selected</c:if>>δѡ��</option>
				  <option value="�½�" <c:if test="${searchMap.xingzhi=='�½�'}">selected</c:if>>�½�</option>
				  <option value="�Ľ�" <c:if test="${searchMap.xingzhi=='�Ľ�'}">selected</c:if>>�Ľ�</option>
				  <option value="����" <c:if test="${searchMap.xingzhi=='����'}">selected</c:if>>����</option>
			   </select>
			</td>
            <td class="myInputTitle" width="12%">��ƹ�ģ��<span class="STYLE1">������/��</span>��</td>
            <td width="25%">���ڣ�
                <input type="text" Id="clgm_jinqi" name="clgm_jinqi" style="width: 100px;" maxlength="22" require="false" dataType="Double" value="${searchMap.clgm_jinqi}"/>
                                          Զ�ڣ�
                <input type="text" Id="clgm_yuanqi" name="clgm_yuanqi" style="width: 100px;" maxlength="22" require="false" dataType="Double" value="${searchMap.clgm_yuanqi}"/>
            </td>
         </tr>
         <tr>
            <td class="myInputTitle" width="10%">���̿���ʱ��</td>
            <td width="20%">
                <input id="item_begin" name="item_begin" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${searchMap.item_begin}" style="ime-mode:disabled;width: 100px;"/>
                --
                <input id="item_end" name="item_end" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${searchMap.item_end}" style="ime-mode:disabled;width: 100px;"/>
            </td>
            <td class="myInputTitle" width="10%">�Ƿ񿢹�</td>
            <td width="20%">
		                   ��<input type="radio" Id="jungong" name="jungong" onclick="allowInput('jungong_date')" value="��" <c:if test="${searchMap.jungong=='��'}">checked</c:if>>
		                   ��<input type="radio" Id="jungong" name="jungong" onclick="stopInput('jungong_date')" value="��" <c:if test="${searchMap.jungong=='��'}">checked</c:if>>
			</td>
            <td class="myInputTitle" width="12%">��������</td>
            <td width="25%">
                <input id="jungong_date" name="jungong_date" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${searchMap.jungong_date}" style="ime-mode:disabled;width: 100px;"/>
                --
                <input id="jungong_end" name="jungong_end" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${searchMap.jungong_end}" style="ime-mode:disabled;width: 100px;"/>
            </td>
         </tr>
         <c:if test="${fn:length(fn:split(user.biao_shi,'_'))==1}">
         <tr>
         	<td class="myInputTitle" width="10%">�Ƿ��Ѷ�</td>
            <td width="20%">
		                   ��<input type="radio" Id="biaoshi" name="biaoshi" value="�Ѷ�" <c:if test="${searchMap.biaoshi=='�Ѷ�'}">checked</c:if>>
		                   ��<input type="radio" Id="biaoshi" name="biaoshi" value="δ��" <c:if test="${searchMap.biaoshi=='δ��'}">checked</c:if>>
			</td>
			<td class="myInputTitle" width="10%"></td>
            <td width="20%"></td>
            <td class="myInputTitle" width="10%"></td>
            <td width="20%"></td>
         </tr>
         </c:if>
         <tr>
            <td colspan="6" align="center">
                 <input type="button" onClick="return mySubmit();" value=" �� ѯ "/>&nbsp;&nbsp;&nbsp;<input type="reset" value=" �� �� "/>
            </td>
         </tr>
     </table>
<c:if test="${fn:length(fn:split(user.biao_shi,'_'))<=3}">
	<input type="submit" value=" �� �� " onclick="document.form1.action='${pageContext.request.contextPath}/item/Nitem_rubbish!createAdmin.do'"/>
	<!--<input type="button" value=" ɾ �� " onclick="batchDelete('${pageContext.request.contextPath}/item/Nitem_rubbish!delete.do','items',document.forms.ec)"/>-->
</c:if>
</form>

<ec:table items='list' var="item" view="compact" rowsDisplayed="20" filterable="false"
	action="${pageContext.request.contextPath}/item/Nitem_rubbish!list.do" autoIncludeParameters="true" imagePath="${pageContext.request.contextPath}/images/table/*.gif">
	<ec:row highlightRow="true">
	<!--
		<ec:column property="ѡ��" title="<input type='checkbox' onclick=\"setAllCheckboxState('items',this.checked)\" >" width="10px" sortable="false" filterable="false">
			<input type="checkbox" name="items" value="${item.id}"/>
		</ec:column>
	-->
		<ec:column property="name" title="��Ŀ����"/>
		<ec:column property="xingzhi" title="��������"/>
		<ec:column property="clgm_jinqi" title="��ƹ�ģ�����ڣ�"/>
		<ec:column property="clgm_yuanqi" title="��ƹ�ģ��Զ�ڣ�"/>
		<ec:column property="zhong_mo" title="��תվ��ƹ�ģ����/�գ�"/>
		<ec:column property="zong_touzi" title="��Ŀ��Ͷ�ʣ���Ԫ��"/>
		<ec:column property="pi_touzi" title="����Ͷ�ʣ���Ԫ��"/>
		<ec:column property="jungong" title="�Ƿ񿢹�"/>
<c:if test="${fn:length(fn:split(user.biao_shi,'_'))==1}">
		<ec:column property="biaoshi" title="��ʶ" width="50px">
			<c:choose>
				<c:when test="${item.biaoshi=='δ��'}">
					<font color="red">${item.biaoshi}</font>
				</c:when>
				<c:otherwise>
					<font color="#2ccf00">${item.biaoshi}</font>
				</c:otherwise>
			</c:choose>
		</ec:column> 
		<ec:column property="nianfen" title="��Ŀ���"/> 
</c:if>
		<ec:column property="�·�" title="�±����">
			  <c:choose>
			      <c:when test="${!empty item.year&&!empty item.month}">
			           ${item.year}��${item.month}��
			          <!--  img src="<c:url value='/images/green.bmp'/>" border="0" align="absbottom"  width="20px">�������-->
			      </c:when>
			      <c:otherwise>
			         <font color="red">δ�</font>
			      </c:otherwise>
			  </c:choose>
		</ec:column>
		<ec:column property="jindu" title="�±�����"/>
		<ec:column property="����" title="����" sortable="false" filterable="false" width="70px">
			<a href="${pageContext.request.contextPath}/item/Nitem_rubbish!show.do?id=${item.id}&">�鿴</a>&nbsp;&nbsp;
			<c:if test="${item.guan_li==user.guan_li}">
			<a href="${pageContext.request.contextPath}/item/Nitem_rubbish!edit.do?id=${item.id}&">�޸�</a>&nbsp;&nbsp;
			<a href="#" onClick="del('${item.id}');">ɾ��</a>&nbsp;&nbsp;
			</c:if>
			<a href="${pageContext.request.contextPath}/item/Nitem_yue!uploadList.do?type=3&item_id=${item.id}">�±�</a>
		</ec:column>
	</ec:row>
</ec:table>

</body>

</html>

