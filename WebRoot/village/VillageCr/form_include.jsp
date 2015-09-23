<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>
<script language="javaScript" src="${pageContext.request.contextPath}/scripts/My97DatePicker/WdatePicker.js"></script>
<table border="1" width="100%" class="myInput">
 <TR>
    <TD colSpan=4 align=center class="tHead"><STRONG>文物和非物质文化遗产保护利用</STRONG></TD>
  </TR>
  <tr>
		<td width="20%" class="myInputTitle">项目序号</td>	
		<td width="30%">
		<input type="text" Id="pro_id" name="pro_id" maxlength="22"  value="${village_cr.pro_id}"/>
		</td>
			<td width="20%" class="myInputTitle">项目名称</td>	
		 <td width="30%">
		<input type="text" Id="pro_name" name="pro_name" maxlength="50" dataType="" value="${village_cr.pro_name}"/>
		</td>
	</tr>
	<tr>	
		<td width="20%" class="myInputTitle">项目内容</td>	
		<td width="30%">
		<textarea Id="pro_content" name="pro_content" maxlength="500" dataType="" rows="6" cols="56" >${village_cr.pro_content}</textarea>
		</td>
		<td width="20%" class="myInputTitle">项目规模</td>	
		<td width="30%">
		<input type="text" Id="pro_scope" name="pro_scope" maxlength="50" dataType="" value="${village_cr.pro_scope}"/>
		</td>
	</tr>
	<tr>
			<td width="20%" class="myInputTitle">建设年限<a style="color:#FF0000">(年)</a></td>	
		<td width="30%">
		<input type="text" Id="permenent_residents" name="permenent_residents" maxlength="50" dataType="" value="${village_cr.permenent_residents}"/>
		</td>
		<td width="20%" class="myInputTitle">项目进度<a style="color:#FF0000">(%)</a></td>	
		<td width="30%">
		<input type="text" Id="pro_progress" name="pro_progress" maxlength="50" dataType="Number" value="${village_cr.pro_progress}"/>
		</td>
	</tr>
	<tr>
		<td width="20%" class="myInputTitle">工程开工时间
</td>	
		<td width="30%">
	     <input id="stime" name="stime" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${village_cr.stime}" style="ime-mode:disabled;"/>
		</td>
		<td width="20%" class="myInputTitle">竣工日期</td>	
		 <td width="30%"> <input id="ftime" name="ftime" class="Wdate" onclick="WdatePicker()" require="false" dataType="Date" value="${village_cr.ftime}" style="ime-mode:disabled;"/>
		</td>
	</tr>
	<tr>	
		<td width="20%" class="myInputTitle">是否竣工
        </td>	

		<td width="30%">
	     <select name="flag" class="dropdownlist" >	
		  <option value="是"  <c:if test="${village_cr.flag=='是'}">selected="selected"</c:if>>是</option>
		  <option value="否" <c:if test="${village_cr.flag=='否'}">selected="selected"</c:if>>否</option>
	    </select>
	    
		</td>
		 <td colspan="2"></td>
	</tr>
<td colspan="4" align="center" style="height: 40px">
	<input id="button" name="button" type="button" value=" 提 交 " onClick="return mySubmit();"/>&nbsp;&nbsp;&nbsp;
	<input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/village/Village_cr!list.do?fid=${fid}&biao_shi=${biao_shi}'"/>
</td>
</tr>	
</table>