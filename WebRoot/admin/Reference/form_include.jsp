<%@ page contentType="text/html;charset=GBK" %>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
	<input type="hidden" Id="id" name="id" value="${reference.id}"/>
	<tr>
		<td width="20%">Ŀ¼���� &nbsp;</td>	
		<td width="30%">
		<input type="text" Id="name" name="name" maxlength="25" dataType="Require" value="${reference.name}"/>
		</td>
		<td width="20%">��ע &nbsp;</td>	
		<td width="30%">
		<input type="text" Id="remark" name="remark" maxlength="200" dataType="" value="${reference.remark}"/>
		</td>
	</tr>
