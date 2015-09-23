<%@page contentType="text/html;charset=UTF-8"%><%@page import="java.util.*"%><%@ page import="com.zsc.util.ImageTools" %><%@page import="java.io.*"%><%@page import="org.apache.commons.fileupload.*"%><%
try{
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
String myFileNmae="";
String id=request.getParameter("id");
File upPath=new File(application.getRealPath("/upFile"));
if(!upPath.isDirectory())
upPath.mkdirs();
DiskFileUpload fu = new DiskFileUpload();
fu.setHeaderEncoding("UTF-8");
//设置最大文件尺寸，这里是50Mb
fu.setSizeMax(1024*1024*500);
//设置缓冲区大小，这里是4kb
fu.setSizeThreshold(4096);
//设置临时目录：
File tempPath=new File(getServletContext().getRealPath("/temp/"));
if(!tempPath.isDirectory())
tempPath.mkdirs();
fu.setRepositoryPath(getServletContext().getRealPath("/temp/"));
//得到所有的文件：
List fileItems = fu.parseRequest(request);
Iterator i = fileItems.iterator();
tempPath=new File(getServletContext().getRealPath("/upFile/file/")+"/"+id+"/");
if(!tempPath.isDirectory())
    tempPath.mkdirs();
//依次处理每一个文件：
while(i.hasNext()){
FileItem fi = (FileItem)i.next();
if(!fi.isFormField()){
//获得文件名，这个文件名包括路径：
String fileName = fi.getName();
if(fileName!=null&&!fileName.endsWith(".jsp")) {
//在这里可以记录用户和文件信息
//写入文件a.txt，你也可以从fileName中提取文件名:
File myFile=new File(fileName);
String extname = fileName.substring(fileName.lastIndexOf(".")+1,fileName.length());
fileName =""+(new Date()).getTime()+"."+extname;
fi.write(new File(getServletContext().getRealPath("/upFile/file/")+"/"+id+"/"+ fileName));
out.print(fileName);
}else{
out.print("faile");
}
}
}
}catch(Exception e){
e.printStackTrace();
out.print("faile");
}
%>