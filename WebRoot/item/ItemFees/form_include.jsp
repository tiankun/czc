<%@ page contentType="text/html;charset=GBK" %>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
	<input type="hidden" Id="id" name="id" value="${item_fees.id}"/>
	<input type="hidden" Id="item" name="item" value="${item_fees.id==null?item:item_fees.item}"/>
	<input type="hidden" Id="type" name="type" value="2"/>
<TABLE class=myInput border=1 width="100%">
  <TR>
    <TD colSpan=4 align=center class="tHead"><STRONG>====项目实际收费情况====</STRONG></TD>
  </TR>	
	<tr>
		<td width="20%" class="myInputTitle">收费时段</td>	
		<td>
		<input type="text" Id="shiduan" name="shiduan" maxlength="100"  datatype="Require" value="${item_fees.shiduan}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">现行标准批复时间及文号</td>	
		<td>
		<input type="text" Id="biaozhun" name="biaozhun" maxlength="150"  datatype="Require" value="${item_fees.biaozhun}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">收费描述</td>	
		<td>
		  <textarea name="miaoshu" id="miaoshu" datatype="Require" style="width:70%">${item_fees.miaoshu}</textarea>
		</td>
	</tr>
	<tr>			
		<td width="20%" class="myInputTitle">其他说明</td>	
		<td>
		  <textarea name="remark" id="remark" datatype="" style="width:70%">${item_fees.remark}</textarea>
		</td>
	</tr>	
  <TR>
    <TD height=38 colSpan=4 align=center>
	<input id="button" name="button" type="button" value=" 提 交 " onClick="return mySubmit();"/>
	<input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/item/Item_fees!list.do?item=${item_fees.id==null?item:item_fees.item}'"/>
	</TD>
	</TR>
</table>