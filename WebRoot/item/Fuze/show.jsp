<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/fn.tld" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>   
<script language="javascript" src="${pageContext.request.contextPath}/scripts/Validator.js"></script>	 
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" /> 
</head>

<body>

<form action="${pageContext.request.contextPath}/item/Item_fuze!save.do" method="post" name="form1">
    <table width="100%" border="1" cellspacing="1" cellpadding="1" class="myInput">
      <tr class="tHead">
        <td align="center" colspan="4"><strong>市政项目信息上报相关责任信息</strong></td>
      </tr>
      <tr>
        <td width="15%" class="myInputTitle">信息员姓名</td>
		<td width="35%">${fu_ze.fz_ren}</td>
		<td width="15%" class="myInputTitle">分管责任人姓名</td>
		<td width="35%">${fu_ze.zr_ren}</td>
      </tr>	
      <tr>
        <td class="myInputTitle">信息员单位</td>
		<td>${fu_ze.fz_danwei}</td>
		<td class="myInputTitle">责任人单位</td>
		<td>${fu_ze.zr_danwei}</td>
      </tr>
      <tr>
        <td class="myInputTitle">信息员职务</td>
		<td>${fu_ze.fz_zhiwu}
		</td>
		<td class="myInputTitle">责任人职务</td>
		<td>${fu_ze.zr_zhiwu}</td>
      </tr>	  
      <tr>
        <td class="myInputTitle">信息员电话（座机）</td>
		<td>${fu_ze.fz_dianhua}</td>
		<td class="myInputTitle">责任人电话（座机）</td>
		<td>${fu_ze.zr_dianhua}</td>
      </tr>	  
      <tr>
        <td class="myInputTitle">信息员电话（手机）</td>
		<td>${fu_ze.fz_phone}</td>
		<td class="myInputTitle">责任人电话（手机）</td>
		<td>${fu_ze.zr_phone}</td>
      </tr>	  
      <tr>
        <td class="myInputTitle">信息员邮箱</td>
		<td>${fu_ze.fz_email}</td>
		<td class="myInputTitle">责任人邮箱</td>
		<td>${fu_ze.zr_email}</td>
      </tr>	  
      <tr>
        <td class="myInputTitle">信息员QQ号</td>
		<td>${fu_ze.fz_qq}</td>
		<td class="myInputTitle">责任人QQ号</td>
		<td>${fu_ze.zr_qq}</td>
      </tr>
      <tr>
        <td width="15%" class="myInputTitle">信息员填报工作</td>
		<td colspan="3">${fu_ze.fz_work}
        </td>
      </tr>	 
      <tr>
        <td width="15%" class="myInputTitle">其它说明</td>
		<td colspan="3">${fu_ze.remark}</td>
      </tr>	  
    </table>
    <center>
       <input type="button" value="返回列表" onclick="window.location='${pageContext.request.contextPath}/item/Item_fuze!list.do'"/>
    </center>
</form>
</body>

</html>