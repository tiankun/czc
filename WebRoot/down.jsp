<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.io.*"%>
<%
String myfile=request.getParameter("file");
File file;
if("1".equals(myfile)){
	file=new File(session.getServletContext().getRealPath("/all.xls"));
}else if("2".equals(myfile)){
	file=new File(session.getServletContext().getRealPath("/"),"help.doc");
}else{
	file=new File(session.getServletContext().getRealPath("/"),"shizheng_xian.doc");
}
                    response.reset();
                    if("1".equals(myfile)){  
                    response.setContentType("application/x-msdownload");                 
                    response.setHeader("Content-Disposition","inline;filename=all.xls");
                    }else if("2".equals(myfile)){
                    response.setContentType("application/msword"); 
                    response.setHeader("Content-Disposition","inline;filename=help.doc");
                    }else{
                        response.setContentType("application/msword"); 
                        response.setHeader("Content-Disposition","inline;filename=shizheng_xian.doc");	
                    }
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