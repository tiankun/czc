<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%
int now=java.util.Calendar.getInstance().get(java.util.Calendar.YEAR);
String atts[] = {now+"-12",now+"-11",now+"-10",now+"-09",now+"-08",now+"-07",now+"-06",now+"-05",now+"-04",now+"-03",now+"-02",now+"-01",now-1+"-12",now-1+"-11",now-1+"-10",now-1+"-09",now-1+"-08",now-1+"-07",now-1+"-06",now-1+"-05",now-1+"-04",now-1+"-03",now-1+"-02",now-1+"-01"};
request.setAttribute("atts", atts);
request.setAttribute("month", 11-java.util.Calendar.getInstance().get(java.util.Calendar.MONTH));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/jquery.js"></script>	 
	<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>	  
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" /> 
<script language="JavaScript" type="text/JavaScript">
$(function(){
<c:if test="${item_report.jieduan=='土建'}">$('#sg').show()</c:if>
});
function myselect(){
if($("#jieduan").val()=='土建'){
$('#guan').show();
$('#sg').show();
}else{
$('#guan').hide();
$('#sg').hide();
}
}
function mySubmit(){
if(Validator.Validate(document.form1,3)){
document.form1.submit();
}
}
</SCRIPT>
<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<%@ include file="../top.jsp" %>
<form action="${pageContext.request.contextPath}/item/Item_report!${item_report.id==null?'save':'update'}.do" method="post" name="form1" style="margin:0px">
	<input type="hidden" Id="id" name="id" value="${item_report.id}"/>
	<input type="hidden" Id="type" name="type" value="1"/>
	<input type="hidden" Id="item" name="item" value="${item_report.id==null?item:item_report.item}"/>
	<input type="hidden" Id="input" name="input" value="${item_report.input}"/>		
<table border="1" width="100%" class="myInput">
  <TR>
    <TD colSpan=6 align=center class="tHead"><STRONG>====项目进度月报表情况====</STRONG></TD>
  </TR>
	<tr>
		<td width="13%" class="myInputTitle">上报月份</td>	
		<td width="20%">
<SELECT id="yuefen" name="yuefen">
	  <c:forEach items="${atts}" var="item" begin="${month}" end="${month+11}">
        <option value="${item}" <c:if test="${item_report.yuefen==item}">selected</c:if>>${item}</option>
      </c:forEach>
</SELECT>		
		</td>
		<td width="13%" class="myInputTitle">当前所处阶段</td>	
		<td width="20%">
<SELECT id="jieduan" name="jieduan" onchange="myselect()">
<OPTION <c:if test="${item_report.jieduan=='县域体系规划'}">selected</c:if> value="县域体系规划">县域体系规划</OPTION>
<OPTION <c:if test="${item_report.jieduan=='实施方案'}">selected</c:if> value="实施方案阶段">实施方案</OPTION>
<OPTION <c:if test="${item_report.jieduan=='可行性研究'}">selected</c:if> value="可行性研究">可行性研究</OPTION>
<OPTION <c:if test="${item_report.jieduan=='初步设计'}">selected</c:if> value="初步设计">初步设计</OPTION>
<OPTION <c:if test="${item_report.jieduan=='施工图'}">selected</c:if> value="施工图">施工图</OPTION>
<OPTION <c:if test="${item_report.jieduan=='土建'}">selected</c:if> value="土建">土建</OPTION>
<OPTION <c:if test="${item_report.jieduan=='试运行'}">selected</c:if> value="试运行">试运行</OPTION>
<OPTION <c:if test="${item_report.jieduan=='竣工'}">selected</c:if> value="竣工">竣工</OPTION>
</SELECT>
		</td>
		<td colspan="2"><table border="1" width="100%" class="myInput" id="guan" style="display:none">
		<tr>
		<td class="myInputTitle" width="39%">本月增加管网<br/>（<span class="STYLE1">公里</span>）</td>	
		<td>
		<input type="text" Id="zengjia" name="zengjia" maxlength="22" dataType="Double" require="false" value="${item_report.zengjia}"/>
		</td>
	</tr></table>	
		</td>				
	</tr>
	<tr>
		<td width="13%" class="myInputTitle">本月计划到位资金<br/>（<span class="STYLE1">万元</span>）</td>	
		<td width="20%">
		<input type="text" Id="jh_daowei" name="jh_daowei" maxlength="22" dataType="Double" value="${item_report.jh_daowei}"/>
		</td>
		<td width="13%" class="myInputTitle">本月实际到位资金<br/>（<span class="STYLE1">万元</span>）</td>	
		<td width="20%">
		<input type="text" Id="sj_daowei" name="sj_daowei" maxlength="22" dataType="Double" value="${item_report.sj_daowei}"/>
		</td>		
		<td width="13%" class="myInputTitle">本月实际使用资金<br/>（<span class="STYLE1">万元</span>）</td>	
		<td width="20%"><input type="text" Id="sj_shiyong" name="sj_shiyong" maxlength="22" dataType="Double" value="${item_report.sj_shiyong}"/>
		</td>
	</tr>
	<tr>				
		<td  class="myInputTitle">项目计划投资<br/>（<span class="STYLE1">万元</span>）</td>	
		<td>${itemBuild.yu_touzi}
		</td>
		<td class="myInputTitle">当前累计已到位资金<br/>（<span class="STYLE1">万元</span>）</td>	
		<td >
		<input type="text" Id="lj_daowei" name="lj_daowei" maxlength="22" dataType="Double" value="${item_report.lj_daowei}"/>
		</td>		
		<td  class="myInputTitle">当前累计已使用资金<br/>（<span class="STYLE1">万元</span>）</td>	
		<td >
		<input type="text" Id="lj_shiyong" name="lj_shiyong" maxlength="22" dataType="Double" value="${item_report.lj_shiyong}"/>
		</td>		
	</tr>
	<tr>		
		<td  class="myInputTitle">项目进展情况</td>	
		<td colspan="5">
		  <textarea name="jinzhan" id="jinzhan" datatype="Require" style="width:90%">${item_report.jinzhan}</textarea>
		</td>
	</tr>
	<tr>
		<td  class="myInputTitle">目前存在问题</td>	
		<td colspan="5">
		  <textarea name="wenti" id="wenti" datatype="" style="width:90%">${item_report.wenti}</textarea>
		</td>
	</tr>
</table>
<table border="1" width="100%" class="myInput" id="sg" style="display:none">	
	<tr>		
		<td colspan="6" class="myInputTitle" align="center"><strong>施工进度情况</strong></td>	
	</tr>
	<tr>		
		<td width="16%" ></td>
		<td width="16%"  class="myInputTitle" align="center"><strong>计划工作量</strong></td>
		<td width="16%" class="myInputTitle" align="center"><strong>已完成工作量</strong></td>
		<td width="16%"></td>
		<td width="16%" class="myInputTitle" align="center"><strong>计划工作量</strong></td>
		<td width="16%" class="myInputTitle" align="center"><strong>已完成工作量</strong></td>			
	</tr>		
	<tr onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">		
		<td align="center" class="myInputTitle">土石方总方量</td>	
		<td align="center"><input type="text" Id="tf_jh" name="tf_jh" maxlength="50" dataType="" value="${item_report.tf_jh}"/></td>
		<td align="center"><input type="text" Id="tf_sj" name="tf_sj" maxlength="50" dataType="" value="${item_report.tf_sj}"/></td>
		<td align="center" class="myInputTitle">水工构件物</td>
		<td align="center"><input type="text" Id="sg_jh" name="sg_jh" maxlength="50" dataType="" value="${item_report.sg_jh}"/></td>
		<td align="center"><input type="text" Id="sg_sj" name="sg_sj" maxlength="50" dataType="" value="${item_report.sg_sj}"/></td>							
	</tr>
	<tr onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">
		<td align="center" class="myInputTitle">建筑物</td>	
		<td align="center"><input type="text" Id="jz_jh" name="jz_jh" maxlength="50" dataType="" value="${item_report.jz_jh}"/></td>
		<td align="center"><input type="text" Id="jz_sj" name="jz_sj" maxlength="50" dataType="" value="${item_report.jz_sj}"/></td>
		<td align="center" class="myInputTitle">管网</td>	
		<td align="center"><input type="text" Id="gw_jh" name="gw_jh" maxlength="50" dataType="" value="${item_report.gw_jh}"/></td>
		<td align="center"><input type="text" Id="gw_sj" name="gw_sj" maxlength="50" dataType="" value="${item_report.gw_sj}"/></td>				
	</tr>
	<tr onMouseOver="this.style.backgroundColor='#fdecae'" onmouseout="this.style.backgroundColor=''">
		<td align="center" class="myInputTitle">设备安装</td>	
		<td align="center"><input type="text" Id="sb_jh" name="sb_jh" maxlength="50" dataType="" value="${item_report.sb_jh}"/></td>
		<td align="center"><input type="text" Id="sb_sj" name="sb_sj" maxlength="50" dataType="" value="${item_report.sb_sj}"/></td>
		<td align="center" class="myInputTitle">其他</td>	
		<td align="center"><input type="text" Id="qt_jh" name="qt_jh" maxlength="50" dataType="" value="${item_report.qt_jh}"/></td>
		<td align="center"><input type="text" Id="qt_sj" name="qt_sj" maxlength="50" dataType="" value="${item_report.qt_sj}"/></td>
	</tr>
	<tr>		
		<td class="myInputTitle">质量、安全情况</td>	
		<td colspan="5">
		  <textarea name="zlaq" id="zlaq" datatype="" style="width:90%">${item_report.zlaq}</textarea>
		</td>
	</tr>
	<tr>
		<td  class="myInputTitle">其他方面情况</td>	
		<td colspan="5">
		  <textarea name="qita" id="qita" datatype="" style="width:90%">${item_report.qita}</textarea>
		</td>
	</tr>
</table>
<table border="1" width="100%" class="myInput">
<tr>
<td align="center">
	<input id="button" name="button" type="button" value=" 提 交 " onClick="return mySubmit();"/>&nbsp;&nbsp;&nbsp;
	<input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/item/Item_report!list.do?item=${item_report.id==null?item:item_report.item}&type=1'"/>
</td>
</tr>	
</table>
</form>
</body>

</html>