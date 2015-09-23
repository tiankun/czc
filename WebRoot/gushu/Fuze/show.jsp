<%@ page contentType="text/html;charset=gb2312" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>    
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />  
</head>

<body>

    <table width="100%" border="1" cellspacing="1" cellpadding="1" class="myInput">
      <tr class="tHead">
        <td align="center" colspan="4"><strong>${didian.quan_ming}&nbsp;&nbsp;古树名木及古建筑信息上报相关责任信息</strong></td>
      </tr>
      <tr>
        <td width="15%" class="myInputTitle">负责人姓名</td>
		<td width="35%">${fu_ze.fz_ren}</td>
		<td width="15%" class="myInputTitle">责任人姓名</td>
		<td width="35%">${fu_ze.zr_ren}</td>
      </tr>	
      <tr>
        <td class="myInputTitle">负责单位</td>
		<td>${fu_ze.fz_danwei}</td>
		<td class="myInputTitle">责任单位</td>
		<td>${fu_ze.zr_danwei}</td>
      </tr>
      <tr>
        <td class="myInputTitle">负责人职务</td>
		<td>${fu_ze.fz_zhiwu}</td>
		<td class="myInputTitle">责任人职务</td>
		<td>${fu_ze.zr_zhiwu}</td>
      </tr>	  
      <tr>
        <td class="myInputTitle">负责人电话</td>
		<td>${fu_ze.fz_dianhua}</td>
		<td class="myInputTitle">责任人电话</td>
		<td>${fu_ze.zr_dianhua}</td>
      </tr>
      <tr>
        <td width="15%" class="myInputTitle">其它说明</td>
		<td colspan="3">${fu_ze.remark}</td>
      </tr>	
      <tr>
        <td colspan="4" align="center" valign="middle" style="height:40px">
          <input type="button" name="button" value=" 返 回 " onclick="history.back();"/>
        </td>
      </tr>	    	  	  	    			  
    </table>
</body>

</html>