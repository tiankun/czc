<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<%
int port=request.getServerPort();
if(87==port){
response.setStatus(HttpServletResponse.SC_MOVED_PERMANENTLY);
String newLocn = "http://www.ynjst.gov.cn:88/admin/index.jsp";
response.setHeader("Location",newLocn);
}
String errorType=(String)request.getAttribute("errorType");
if(errorType!=null&&!"".equals(errorType)){
%>
<SCRIPT language="javascript">
alert('<%=errorType%>');
</SCRIPT>
<%}%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<script language="JavaScript" src="${pageContext.request.contextPath}/scripts/status.js"></script>
<script language="JavaScript" >
       function check(){                
                if (document.form1.logName.value==""){
                    alert("用户名为必填项目");
                    return false;
                }
                if(document.form1.password.value==""){
                   alert("密码为必填项目");
                   return false;
                }
                if(document.form1.sRand.value==""){
                   alert("验证码为必填项目");
                   return false;
                }	
			}				
var radnom=1;
function showImg(){
<!-- 要刷新验证码必须要加一个无用的干扰参数 -->
radnom=radnom+1;
var imgUrl="${pageContext.request.contextPath}/image.jsp?radnom="+radnom;
document.all.Random.src=imgUrl;
}
</script>
<style type="text/css">
html,body{height:100%;overflow:hidden;}
body{padding:0px;margin:0px;} 
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>
</head>
<body>
<form action="${pageContext.request.contextPath}/admin/Myuser!login.do" method="post" name="form1" onSubmit="return check();">
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0" align="center" >
    <tr>
      <td align="center" valign="middle"><table width="530" border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse; background-color:color:#BBBBBB">
        <tr>
          <td height="25" colspan="2" align="center" bgcolor="#003399"><strong><font color="#FFFFFF">云南省村镇规划建设管理系统---用户登陆</font></strong></td>
          </tr>
        <tr>
          <td width="135" height="229"><img src="${pageContext.request.contextPath}/images/login.jpg" border="0"></td>
          <td width="423" align="center" height="235"><table width="98%" border="0" cellspacing="0" cellpadding="0" height="229">
            <tr>
              <td valign="bottom"><div style="height :30px;">&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/down.jsp?file=2" target="_blank"><font color="red">特色小镇操作手册</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/down.jsp?file=3" target="_blank"><font color="red">市政项目操作手册</font></a></div>
                <table cellSpacing=1 cellPadding=4 width=100% bgColor=#dddddd border=0>
                <tr height="20" bgColor=#ffffff>
                  <td width="26%" align="center" bgColor=#f8f8f8>用户名：</td>
                  <td width="74%" align="left"><input type="text" name="logName" id="logName" style="ime-mode:disabled;width:74%"/></td>
                </tr>
                <tr height="20" bgColor=#ffffff>
                  <td align="center" bgColor=#f8f8f8>密&nbsp;&nbsp;码：</td>
                  <td align="left"><input type="password" name="password" id="password" style="ime-mode:disabled;width:74%" /></td>
                </tr>
                <tr height="20" bgColor=#ffffff>
                  <td align="center" bgColor=#f8f8f8>验证码：</td>
                  <td align="left"><input name="sRand" type="text" id="sRand" size="12" class="text" style="ime-mode:disabled"/>请输入<img id="Random" name="Random" src="${pageContext.request.contextPath}/image.jsp" align="absbottom" style="cursor:hand" onClick="javascript:showImg();" title="验证码看不清，点击重新生成！"></td>
                </tr>
                <tr height="20" bgColor=#ffffff>
                  <td>&nbsp;</td>
                  <td align="left"><input type="submit" name="Submit" value="  提 交  ">
      &nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="reset" value="  重 置  "></td>
                </tr>
                <tr height="50" bgColor=#ffffff>
                  <td colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td align="left">系统需要运行在IE8.0或以上版本,分辨率1024×768或以上！</td>
                    </tr>
                    <tr>
                      <td align="left">注意：为安全起见，20分钟没有任何操作，登陆将自动失效！</td>
                    </tr>
                    <tr>
                      <td align="left">主办：云南省住房和城乡建设厅村镇建设处　电话：0871-64322042</td>
                    </tr>
                  </table></td>
                  </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table><P/><P/><P/></td>
    </tr>
  </table>
</form>
</body>
</html>