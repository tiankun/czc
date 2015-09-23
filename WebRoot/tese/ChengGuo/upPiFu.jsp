<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>规划成果上传</title>
</head>

<body style="margin:0px">
<iframe style="top:0px" ID="UploadFiles" src="<%=request.getContextPath()%>/tese/ChengGuo/uploadPiFu.jsp" frameborder=0 scrolling=no width="500" height="260" onload="document.all['UploadFiles'].style.height=UploadFiles.document.body.scrollHeight"></iframe>
</body>
</html>

