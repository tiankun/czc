<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld"  prefix="c"%>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<table border="1" width="100%" class="myInput">
 <TR>
    <TD colSpan=4 align=center class="tHead"><STRONG>���������Ϣ</STRONG></TD>
  </TR>
  <tr>
		<td width="20%" class="myInputTitle">��������</td>	
		<td width="30%">
		<input type="text" Id="name" name="name" maxlength="50" dataType="" value="${village_info.name}"/>
		</td>
		<td width="20%" class="myInputTitle">�������<a style="color:#FF0000">(ƽ����)</a></td>	
		<td width="30%">
		<input type="text" Id="area" name="area" maxlength="100"  value="${village_info.area}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">��ס�˿�<a style="color:#FF0000">(��)</a></td>	
		<td width="30%">
		<input type="text" Id="permenent_residents" name="permenent_residents" maxlength="100"  value="${village_info.permenent_residents}"/>
		</td>
		<td width="20%" class="myInputTitle">�弯��������<a style="color:#FF0000">(Ԫ)</a></td>	
		<td width="30%">
		<input type="text" Id="revenue" name="revenue" maxlength="100"  value="${village_info.revenue}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">�������С�������������</td>	
		<td width="30%">
		<%-- <c:if test="${method}=='edit'">
		${village_info.shudi}
		</c:if> --%>
		<c:if test="${method}=='create'">
		${user.shu_di}
	</c:if>
		</td>
		<td width="20%" class="myInputTitle">��ׯռ�����<a style="color:#FF0000">(ƽ����)</a></td>	
		<td width="30%">
		<input type="text" Id="space" name="space" maxlength="100"  value="${village_info.space}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">��Ҫ����</td>	
		<td width="30%">
		<input type="text" Id="national" name="national" maxlength="50" dataType="" value="${village_info.national}"/>
		</td>
		<td width="20%" class="myInputTitle">��ͳ��������</td>	
		<td width="30%">
		<input type="text" Id="traditional_village_groups" name="traditional_village_groups" maxlength="100"  value="${village_info.traditional_village_groups}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">�����ʽ�����</td>	
		<td width="30%">
		<input type="text" Id="request_money_groups" name="request_money_groups" maxlength="100"  value="${village_info.request_money_groups}"/>
		</td>
		<td width="20%" class="myInputTitle">�ܽ������<a style="color:#FF0000">(%)</a></td>	
		<td width="30%">
		<input type="text" Id="total_progress" name="total_progress" maxlength="100"  value="${village_info.total_progress}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">�����˾�������<a style="color:#FF0000">(Ԫ)</a></td>	
		<td width="30%">
		<input type="text" Id="ave_income" name="ave_income" maxlength="100"  value="${village_info.ave_income}"/>
		</td>
<tr>
<td colspan="4" align="center">
	<input id="button" name="button" type="button" value=" �� �� " onClick="return mySubmit();"/>&nbsp;&nbsp;&nbsp;
	<input type="button" value="�����б�" onclick="window.location='${pageContext.request.contextPath}/village/Village_info!list.do'"/>
</td>
</tr>	
</table>