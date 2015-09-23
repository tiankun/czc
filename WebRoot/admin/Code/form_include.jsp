<%@ page contentType="text/html;charset=GBK" %>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
	<input type="hidden" Id="id" name="id" value="${code.id}"/>
	<tr>
		<td width="20%">字典目录 &nbsp;</td>	
		<td width="30%">
		<input type="text" Id="reference_id" name="reference_id" maxlength="10" dataType="Integer" value="${code.reference_id}"/>
		</td>
		<td width="20%">字典内容 &nbsp;</td>	
		<td width="30%">
		<input type="text" Id="name" name="name" maxlength="25" dataType="Require" value="${code.name}"/>
		</td>
	</tr>
	<tr>
		<td width="20%">显示顺序 &nbsp;</td>	
		<td width="30%">
		<input type="text" Id="shun_xu" name="shun_xu" maxlength="10" dataType="Integer" value="${code.shun_xu}"/>
		</td>
		<td width="20%">备注 &nbsp;</td>	
		<td width="30%">
		<input type="text" Id="remark" name="remark" maxlength="200" dataType="" value="${code.remark}"/>
		</td>
	</tr>
