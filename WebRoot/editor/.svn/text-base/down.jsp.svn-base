<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.io.*"%>
<%
String myfile=request.getParameter("file");
if(myfile.lastIndexOf("/")!=-1)
myfile=myfile.substring(myfile.lastIndexOf("/")+1);
String name=request.getParameter("name");
File file=new File(application.getRealPath("/upFile/"),myfile);
String outStr=new String(file.getName().getBytes(),"ISO8859-1");
if(name!=null&&!"".equals(name)){
//name=new String(name.getBytes("ISO8859-1"),"GBK");//windows需要
outStr=new String(name.getBytes("GBK"),"ISO8859-1");
}
                    response.reset();
                    response.setHeader("Content-Disposition","attachment;filename="+ myfile);
                    FileInputStream in = new FileInputStream(file);
                        byte[] buf = new byte[4096];
						int length=0;
						javax.servlet.ServletOutputStream op = response.getOutputStream();
                        while ((in != null) && ((length = in.read(buf)) != -1)) {
                            op.write(buf, 0, length);
                        }
                        in.close();
                        op.flush();
                        op.close();
out.clear();
out = pageContext.pushBody();                        
%>