<%@ page contentType="text/html;charset=GBK" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />    
<head>
</head>
<body>
<form action="${pageContext.request.contextPath}/village/Village_base!edit.do" method="post">
	<!-- <input type="submit" value=" 编 辑 "/> -->
	<table width="100%" border="1" class="myInput">
		<TR>
    <TD colSpan=4 align=center class="tHead"><STRONG>基础设施和环境改善</STRONG></TD>
  </TR>
			<td width="20%" class="myInputTitle">项目序号</td>	
			<td width="30%">${village_base.pro_id}</td>
			<td width="20%" class="myInputTitle">项目名称</td>	
			<td width="30%">${village_base.pro_name}</td>
	    </tr>
	    <tr>
			
			<td width="20%" class="myInputTitle">项目内容</td>	
			<td width="30%"><textarea Id="pro_content" name="pro_content" maxlength="500" dataType="" rows="6" cols="56" >${village_base.pro_content}</textarea></td>
			<td width="20%" class="myInputTitle">项目规模</td>	
			<td width="30%">${village_base.pro_scope}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">建设年限<a style="color:#FF0000">(年)</a></td>	
			<td width="30%">${village_base.constructionperiod}</td>
			<td width="20%" class="myInputTitle">项目进度<a style="color:#FF0000">(%)</a></td>	
			<td width="30%">${village_base.pro_progress}</td>
	    </tr>
	    <tr>
			<td width="20%" class="myInputTitle">工程开工时间</td>	
			<td width="30%">${village_base.stime}</td>
			<td width="20%" class="myInputTitle">竣工日期</td>	
			<td width="30%">${village_base.ftime}</td>
	    </tr>
	      <tr>
			
			<td width="20%" class="myInputTitle">是否竣工</td>	
			<td width="30%">${village_base.flag}</td>
			<td colspan="2"></td>
	    </tr>
	    <td  colSpan=4 align="center"> <input type="button"  value="返回列表" onclick="window.location='${pageContext.request.contextPath}/village/Village_base!list.do?fid=${fid}&biao_shi=${biao_shi}'"/></td>				
	</table>
</form>
</body>
</html>