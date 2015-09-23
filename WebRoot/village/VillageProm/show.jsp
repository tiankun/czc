<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
<head>
</head>
<body>
<form action="${pageContext.request.contextPath}/village/Village_prom!edit.do" method="post">

	<table width="100%" border="1" class="myInput">
 <TR>
    <TD colSpan=4 align=center class="tHead"><STRONG>村落项目资金情况</STRONG></TD>
  </TR>
	<tr>
  <td align=center  colSpan=2 class="myInputTitle"><a style="color:#FF0000">项目投资情况</a></td>
     <td align=center colSpan=2 class="myInputTitle"><a style="color:#FF0000">实际资金下达情况</a></td>
  </tr>
			<td width="20%" class="myInputTitle">总投资<a style="color:#FF0000">(元)</a></td>	
			<td width="30%">${village_prom.total_vest}</td>
			<td width="20%" class="myInputTitle">总到位资金<a style="color:#FF0000">(元)</a></td>	
			<td width="30%">${village_prom.total_use}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">国家补助<a style="color:#FF0000">(元)</a></td>	
			<td width="30%">${village_prom.county_supple}</td>
			<td width="20%" class="myInputTitle">国家补助到位资金<a style="color:#FF0000">(元)</a></td>	
			<td width="30%">${village_prom.county_supple_use}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">省级补助<a style="color:#FF0000">(元)</a></td>	
			<td width="30%">${village_prom.province_supple}</td>
			<td width="20%" class="myInputTitle">省级补助到位资金<a style="color:#FF0000">(元)</a></td>	
			<td width="30%">${village_prom.province_supple_use}</td>
	    </tr>
	    <tr>
			
			<td width="20%" class="myInputTitle">地方配套<a style="color:#FF0000">(元)</a></td>	
			<td width="30%">${village_prom.place_supple}</td>
			<td width="20%" class="myInputTitle">地方配套到位资金<a style="color:#FF0000">(元)</a></td>	
			<td width="30%">${village_prom.place_supple_use}</td>
	    </tr>
	    <tr>
			
			<td width="20%" class="myInputTitle">自筹<a style="color:#FF0000">(元)</a></td>	
			<td width="30%">${village_prom.self}</td>
			<td width="20%" class="myInputTitle">自筹到位资金<a style="color:#FF0000">(元)</a></td>	
			<td width="30%">${village_prom.self_use}</td>
	    </tr>
	    <td  colSpan=4 align="center"> <input type="button"  value="返回列表" onclick="window.location='${pageContext.request.contextPath}/village/Village_prom!list.do?fid=${fid}&biao_shi=${biao_shi}'"/></td>				
	</table>
</form>
</body>
</html>