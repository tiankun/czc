<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/tld/c-1_0-rt.tld"  prefix="c"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
    <link href="${pageContext.request.contextPath}/styles/default.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" >
function mySubmit(){
if(Validator.Validate(document.form1,3)){
		document.form1.submit();
}
}	
function myBack(){
window.location="${pageContext.request.contextPath}/demo/itemMonthly.jsp?p_type=${param.p_type}";
}	
</script>
<STYLE type=text/css>
.STYLE1 {
	COLOR: #ff0000
}
</STYLE>

</head>

<body>
   <TABLE border="1" width="100%" class="myInput">
      <tr>
         <td colspan="3" class="myInputTitle"><STRONG>添加项目进度计划</STRONG></td>
      </tr>
      <tr>
         <td width="20%" class="myInputTitle">计划阶段</td>
         <td width="80%" class="myInputTitle">开始时间</td>
      </tr>
      <tr>
         <td align="center">可研阶段</td>
         <td>
           <select style="width:100px">
               <option>2013</option>
               <option>2014</option>
               <option>2015</option>
           </select>年
           -
           <select style="width:40px">
               <option>01</option>
               <option>02</option>
               <option>03</option>
               <option>04</option>
               <option>05</option>
               <option>06</option>
               <option>07</option>
               <option>08</option>
               <option>09</option>
               <option>10</option>
               <option>11</option>
               <option>12</option>
           </select>月
         </td>
      </tr>
      <tr>
         <td align="center">初步设计阶段</td>
         <td>
           <select style="width:100px">
               <option>2013</option>
               <option>2014</option>
               <option>2015</option>
           </select>年
           -
           <select style="width:40px">
               <option>01</option>
               <option>02</option>
               <option>03</option>
               <option>04</option>
               <option>05</option>
               <option>06</option>
               <option>07</option>
               <option>08</option>
               <option>09</option>
               <option>10</option>
               <option>11</option>
               <option>12</option>
           </select>月
         </td>
      </tr>
      <tr>
         <td align="center">施工图阶段</td>
         <td>
           <select style="width:100px">
               <option>2013</option>
               <option>2014</option>
               <option>2015</option>
           </select>年
           -
           <select style="width:40px">
               <option>01</option>
               <option>02</option>
               <option>03</option>
               <option>04</option>
               <option>05</option>
               <option>06</option>
               <option>07</option>
               <option>08</option>
               <option>09</option>
               <option>10</option>
               <option>11</option>
               <option>12</option>
           </select>月
         </td>
      </tr>
      <tr>
         <td align="center">土建阶段</td>
         <td>
           <select style="width:100px">
               <option>2013</option>
               <option>2014</option>
               <option>2015</option>
           </select>年
           -
           <select style="width:40px">
               <option>01</option>
               <option>02</option>
               <option>03</option>
               <option>04</option>
               <option>05</option>
               <option>06</option>
               <option>07</option>
               <option>08</option>
               <option>09</option>
               <option>10</option>
               <option>11</option>
               <option>12</option>
           </select>月
         </td>
      </tr>
      <tr>
         <td align="center">试运行阶段</td>
         <td>
           <select style="width:100px">
               <option>2013</option>
               <option>2014</option>
               <option>2015</option>
           </select>年
           -
           <select style="width:40px">
               <option>01</option>
               <option>02</option>
               <option>03</option>
               <option>04</option>
               <option>05</option>
               <option>06</option>
               <option>07</option>
               <option>08</option>
               <option>09</option>
               <option>10</option>
               <option>11</option>
               <option>12</option>
           </select>月
         </td>
      </tr>
      <tr>
         <td align="center">设备安装阶段</td>
         <td>
           <select style="width:100px">
               <option>2013</option>
               <option>2014</option>
               <option>2015</option>
           </select>年
           -
           <select style="width:40px">
               <option>01</option>
               <option>02</option>
               <option>03</option>
               <option>04</option>
               <option>05</option>
               <option>06</option>
               <option>07</option>
               <option>08</option>
               <option>09</option>
               <option>10</option>
               <option>11</option>
               <option>12</option>
           </select>月
         </td>
      </tr>
      <tr>
         <td align="center">项目竣工</td>
         <td>
           <select style="width:100px">
               <option>2013</option>
               <option>2014</option>
               <option>2015</option>
           </select>年
           -
           <select style="width:40px">
               <option>01</option>
               <option>02</option>
               <option>03</option>
               <option>04</option>
               <option>05</option>
               <option>06</option>
               <option>07</option>
               <option>08</option>
               <option>09</option>
               <option>10</option>
               <option>11</option>
               <option>12</option>
           </select>月
         </td>
      </tr>
   </TABLE>
   <br />
   <TABLE border="1" width="100%" class="myInput">
      <tr>
         <td colspan="2" class="myInputTitle"><STRONG>添加收费计划</STRONG></td>
      </tr>
      <tr>
         <td class="myInputTitle" width="20%">收费时段</td>
         <td width="80%"><input type="text"/></td>
      </tr>
      <tr>
         <td class="myInputTitle" width="20%">计划收费描述</td>
         <td width="80%"><textarea style="width: 95%"></textarea></td>
      </tr>
      <tr>
         <td class="myInputTitle" width="20%">备注</td>
         <td width="80%"><textarea style="width: 95%"></textarea></td>
      </tr>
   </TABLE>
   <center><input type="button" value="  提  交  "/></center>
</body>
</html>
