<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld"  prefix="c"%>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<table border="1" width="100%" class="myInput">
 <TR>
    <TD colSpan=4 align=center class="tHead"><STRONG>村落基本信息</STRONG></TD>
  </TR>
  <tr>
		<td width="20%" class="myInputTitle">村落名称</td>	
		<td width="30%">
		<input type="text" Id="name" name="name" maxlength="50" dataType="" value="${village_info.name}"/>
		</td>
		<td width="20%" class="myInputTitle">村域面积<a style="color:#FF0000">(平方米)</a></td>	
		<td width="30%">
		<input type="text" Id="area" name="area" maxlength="100"  value="${village_info.area}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">常住人口<a style="color:#FF0000">(人)</a></td>	
		<td width="30%">
		<input type="text" Id="permenent_residents" name="permenent_residents" maxlength="100"  value="${village_info.permenent_residents}"/>
		</td>
		<td width="20%" class="myInputTitle">村集体年收入<a style="color:#FF0000">(元)</a></td>	
		<td width="30%">
		<input type="text" Id="revenue" name="revenue" maxlength="100"  value="${village_info.revenue}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">所属州市、县市区、乡镇</td>	
		<td width="30%">
		<%-- <c:if test="${method}=='edit'">
		${village_info.shudi}
		</c:if> --%>
		<c:if test="${method}=='create'">
		${user.shu_di}
	</c:if>
		</td>
		<td width="20%" class="myInputTitle">村庄占地面积<a style="color:#FF0000">(平方米)</a></td>	
		<td width="30%">
		<input type="text" Id="space" name="space" maxlength="100"  value="${village_info.space}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">主要民族</td>	
		<td width="30%">
		<input type="text" Id="national" name="national" maxlength="50" dataType="" value="${village_info.national}"/>
		</td>
		<td width="20%" class="myInputTitle">传统村落批次</td>	
		<td width="30%">
		<input type="text" Id="traditional_village_groups" name="traditional_village_groups" maxlength="100"  value="${village_info.traditional_village_groups}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">申请资金批次</td>	
		<td width="30%">
		<input type="text" Id="request_money_groups" name="request_money_groups" maxlength="100"  value="${village_info.request_money_groups}"/>
		</td>
		<td width="20%" class="myInputTitle">总进度情况<a style="color:#FF0000">(%)</a></td>	
		<td width="30%">
		<input type="text" Id="total_progress" name="total_progress" maxlength="100"  value="${village_info.total_progress}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">村民人均年收入<a style="color:#FF0000">(元)</a></td>	
		<td width="30%">
		<input type="text" Id="ave_income" name="ave_income" maxlength="100"  value="${village_info.ave_income}"/>
		</td>
<tr>
<td colspan="4" align="center">
	<input id="button" name="button" type="button" value=" 提 交 " onClick="return mySubmit();"/>&nbsp;&nbsp;&nbsp;
	<input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/village/Village_info!list.do'"/>
</td>
</tr>	
</table>