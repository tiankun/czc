<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
<head>
</head>
<body>
<%@ include file="../top.jsp" %>
	<table width="100%" border="1" class="myInput">
  <TR>
    <TD colSpan=4 align=center class="tHead"><STRONG>====项目招投标情况====</STRONG></TD>
  </TR>	
	    <tr>
			<td width="20%" class="myInputTitle">标段</td>	
			<td width="30%">${item_biao.biao_duan}</td>
			<td width="20%" class="myInputTitle">招标公司</td>	
			<td width="30%">${item_biao.zb_unit}</td>			
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">报名日期</td>	
			<td width="30%">${item_biao.baoming}</td>
			<td width="20%" class="myInputTitle">资审日期</td>	
			<td width="30%">${item_biao.zishen}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">发售日期</td>	
			<td width="30%">${item_biao.fashou}</td>
			<td width="20%" class="myInputTitle">开标日期</td>	
			<td width="30%">${item_biao.kaobiao}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">备案日期</td>	
			<td width="30%">${item_biao.beian}</td>
			<td width="20%" class="myInputTitle">标段金额（万元）</td>	
			<td width="30%">${item_biao.biaojia}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">招标文号</td>	
			<td width="30%">${item_biao.zhaobiao}</td>
			<td width="20%" class="myInputTitle">中标公示文号</td>	
			<td width="30%">${item_biao.zb_gongshi}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">中标监理单位</td>	
			<td width="30%">${item_biao.zb_jianli}</td>
			<td width="20%" class="myInputTitle">中标单位</td>	
			<td width="30%">${item_biao.zb_danwei}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">标段内容描述</td>	
			<td colspan="3">${item_biao.bd_miaoshu}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">备注</td>	
			<td colspan="3">${item_biao.remark}</td>
	    </tr>
  <TR>
    <TD height=38 colSpan=4 align=center>
	<input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/item/Item_biao!list.do?item=${item_biao.item}'"/>
	</TD>
　</TR>							
	</table>
</body>
</html>