<%@ page contentType="text/html;charset=GBK" %>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<table border="1" width="100%" class="myInput">
 <TR>
    <TD colSpan=4 align=center class="tHead"><STRONG>村落项目资金情况</STRONG></TD>
  </TR>

  <tr>
  <td align=center  colSpan=2 class="myInputTitle"><a style="color:#FF0000">项目投资情况</a></td>
     <td align=center colSpan=2 class="myInputTitle"><a style="color:#FF0000">实际资金下达情况</a></td>
  </tr>
  <tr>
		<td width="20%" class="myInputTitle">总投资   <a style="color:#FF0000">(元)</a></td>	
		<td width="30%">
		<input type="text" Id="total_vest" name="total_vest" maxlength="22"  value="${village_prom.total_vest}"/>
		</td>
		
		<td width="20%" class="myInputTitle">总到位资金<a style="color:#FF0000">(元)</a></td>	
		<td width="30%">
		<input type="text" Id="total_use" name="total_use" maxlength="22"  value="${village_prom.total_use}"/>
		</td>
	</tr>
	<tr>
		
		<td width="20%" class="myInputTitle">国家补助<a style="color:#FF0000">(元)</a></td>	
		<td width="30%">
		<input type="text" Id="county_supple" name="county_supple" maxlength="22"  value="${village_prom.county_supple}"/>
		</td>
		
		<td width="20%" class="myInputTitle">国家补助到位资金<a style="color:#FF0000">(元)</a></td>	
		<td width="30%">
		<input type="text" Id="county_supple_use" name="county_supple_use" maxlength="22"  value="${village_prom.county_supple_use}"/>
		</td>
	</tr>
	<tr>
		
		<td width="20%" class="myInputTitle">省级补助<a style="color:#FF0000">(元)</a></td>	
		<td width="30%">
		<input type="text" Id="province_supple" name="province_supple" maxlength="22"  value="${village_prom.province_supple}"/>
		</td>
		
		<td width="20%" class="myInputTitle">省级补助到位资金<a style="color:#FF0000">(元)</a></td>	
		<td width="30%">
		<input type="text" Id="province_supple_use" name="province_supple_use" maxlength="22"  value="${village_prom.province_supple_use}"/>
		</td>
	</tr>
	<tr>
		
		<td width="20%" class="myInputTitle">地方配套<a style="color:#FF0000">(元)</a></td>	
		<td width="30%">
		<input type="text" Id="place_supple" name="place_supple" maxlength="22"  value="${village_prom.place_supple}"/>
		</td>
		
		<td width="20%" class="myInputTitle">地方配套到位资金<a style="color:#FF0000">(元)</a></td>	
		<td width="30%">
		<input type="text" Id="place_supple_use" name="place_supple_use" maxlength="22"  value="${village_prom.place_supple_use}"/>
		</td>
	</tr>
	<tr>
		
		<td width="20%" class="myInputTitle">自筹<a style="color:#FF0000">(元)</a></td>	
		<td width="30%">
		<input type="text" Id="self" name="self" maxlength="22"  value="${village_prom.self}"/>
		</td>
		<td width="20%" class="myInputTitle">自筹到位资金<a style="color:#FF0000">(元)</a></td>	
		<td width="30%">
		<input type="text" Id="self_use" name="self_use" maxlength="22"  value="${village_prom.self_use}"/>
		</td>
	</tr>
<tr>
<td colspan="4" align="center">
	<input id="button" name="button" type="button" value=" 提 交 " onClick="return mySubmit();"/>&nbsp;&nbsp;&nbsp;
	<input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/village/Village_prom!list.do?fid=${fid}&biao_shi=${biao_shi}'"/>
</td>
</tr>	
</table>