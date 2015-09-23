<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>

	<input type="hidden" Id="id" name="id" value="${item_trz.id}"/>
	<input type="hidden" Id="item" name="item" value="${item_trz.id==null?item:item_trz.item}"/>
<TABLE class=myInput border=1 width="100%">
  <TR>
    <TD colSpan=4 align=center class="tHead"><STRONG>====项目投融资情况====</STRONG></TD>
  </TR>	
	<tr>
		<td width="15%" class="myInputTitle">投资商</td>	
		<td colspan="3">
		<input type="text" Id="tz_shang" name="tz_shang" maxlength="250" dataType="Require" value="${item_trz.tz_shang}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">性质</td>	
		<td width="35%">
		<SELECT id="xingzhi" name="xingzhi">
		<OPTION <c:if test="${item_trz.xingzhi=='公有'}">selected</c:if> value="公有">公有</OPTION>
		<OPTION <c:if test="${item_trz.xingzhi=='私营'}">selected</c:if> value="私营">私营</OPTION>
		</SELECT>
		</td>
		<td width="15%" class="myInputTitle">开始投融资时间</td>	
		<td width="35%">
			<input type="text" Id="kaizhan" name="kaizhan" dataType="" value="${item_trz.kaizhan}"/>			
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">合作方式</td>	
		<td width="35%"><SELECT id="hezuo" name="hezuo">
<OPTION <c:if test="${item_trz.hezuo=='BOT'}">selected</c:if> value="BOT">BOT</OPTION>
<OPTION <c:if test="${item_trz.hezuo=='BT'}">selected</c:if> value="BT">BT</OPTION>
<OPTION <c:if test="${item_trz.hezuo=='BLT'}">selected</c:if> value="BLT">BLT</OPTION>
<OPTION <c:if test="${item_trz.hezuo=='直接委托'}">selected</c:if> value="直接委托">直接委托</OPTION>
<OPTION <c:if test="${item_trz.hezuo=='自建'}">selected</c:if> value="自建">自建</OPTION>
</SELECT>		
		</td>
		<td width="15%" class="myInputTitle">经营范围</td>	
		<td width="35%">
		<input type="text" Id="fanwei" name="fanwei" maxlength="150" dataType="Require" value="${item_trz.fanwei}"/>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">投资商出资比例（<span class="STYLE1">%</span>）</td>	
		<td width="35%">
		<input type="text" Id="bili" name="bili" maxlength="22" dataType="Double" value="${item_trz.bili}"/>
		</td>
		<td width="15%" class="myInputTitle">是否签订协议合同</td>	
		<td width="35%"><SELECT id="hetong" name="hetong">
		<OPTION <c:if test="${item_trz.hetong=='是'}">selected</c:if> value="是">是</OPTION>
		<OPTION <c:if test="${item_trz.hetong=='否'}">selected</c:if> value="否">否</OPTION>
		</SELECT>		
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">进展情况</td>	
		<td colspan="3">
		  <textarea name="jinzhan" rows="4" id="jinzhan" datatype="" style="width:88%">${item_trz.jinzhan}</textarea>
		</td>
	</tr>
	<tr>		
		<td width="15%" class="myInputTitle">存在的问题</td>	
		<td colspan="3">
		  <textarea name="wenti" rows="4" id="wenti" datatype="" style="width:88%">${item_trz.wenti}</textarea>
		</td>
	</tr>
	<tr>
		<td width="15%" class="myInputTitle">其他说明</td>	
		<td colspan="3">
		  <textarea name="remark" id="remark" datatype="" style="width:88%">${item_trz.remark}</textarea>
		</td>
	</tr>	
  <TR>
    <TD height=38 colSpan=4 align=center>
	<input id="button" name="button" type="button" value=" 提 交 " onClick="return mySubmit();"/>
	<input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/item/Item_trz!list.do?item=${item_trz.id==null?item:item_trz.item}'"/>
	</TD>
	</TR>
</table>