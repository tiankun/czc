<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.zsc.db.DataBaseControl" %>
<%@ page import="com.zsc.util.ImageTools" %>
<%@ page import="java.io.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%
String outP="";
String fileName="";
String writeName="";
String name=null;
String wName=null;
String pf_name=null;
String wPFName=null;
File tempPath;
String id=((Map)session.getAttribute("user")).get("guan_li").toString();
FileItem fi=null;
    try {
		File file=new File(session.getServletContext().getRealPath("/") + "temp/");
//		构造并设置参数
		MyFileUpload up=new MyFileUpload();
//		设置临时文件夹（用于缓存）
		up.setTempFile(file);
//		设置提交数据的编码
		up.setHeaderEncoding("UTF-8");
//		设置一次最大上传（单位K）
		up.setSizeMax(1024*500);
//		设置缓存大小（单位K）
		up.setSizeThreshold(4);
//		执行上传
		up.upload(request);
		String type=up.getParameter("type");
		String nian_xian=up.getParameter("nian_xian");
		String pi_fu=up.getParameter("pi_fu");
		String bei_an=up.getParameter("bei_an");		
		String gh_danwei=up.getParameter("gh_danwei");
		String gh_ren=up.getParameter("gh_ren");
		String hg_dianhua=up.getParameter("gh_dianhua");				
        // 得到所有的文件：
		Object[] files=up.getFiles();
        // 依次处理每一个文件：
		for(int j=0;j<files.length;j++){
			fi=(FileItem)files[j];
            // 获得文件名，这个文件名包括路径：      
            fileName = fi.getName().substring(fi.getName().lastIndexOf("\\")+1);
            if(fileName!=null) {
				StringTokenizer st = new StringTokenizer(fileName, ".");
			   String extname = "";
			while (st.hasMoreTokens()) {
				extname = st.nextToken();
			}
			if(!extname.equalsIgnoreCase("jsp")){			
				tempPath=new File(getServletContext().getRealPath("/upFile/file/")+"/"+id+"/");
                if(!tempPath.isDirectory())
                    tempPath.mkdirs();
                writeName=new Date().getTime() + "." + extname;
			    fi.write(new File(getServletContext().getRealPath("/upFile/file/")+"/"+id+"/"+writeName));
			    if("pf_pic".equals(fi.getFieldName())){
					pf_name=fileName;
			    	wPFName=writeName;
			    }else if("ba_pic".equals(fi.getFieldName())){
			    	name=fileName;
			    	wName=writeName;
			    } 
				//若文件为图片则生成缩略图
//				try {
//					if(extname.toLowerCase().equals("jpg")||extname.toLowerCase().equals("bmp")){
//						ImageTools.cutImage(350,230, getServletContext().getRealPath("/upFile/file/")+"/"+id+"/"+writeName, getServletContext().getRealPath("/upFile/file/")+ "/"+id+"/_" +writeName ,1);
//					}
//				} catch (Exception e) {}			    
			}else{
				out.println("<script language=javascript>");
	            out.println("alert('上传失败，不能上传jsp文件!')");
	            out.println("</script>");
			}
           }
   }
		DataBaseControl.getInstance().executeSql("insert into T_ZHEN_TU values(SEQ_T_ZHEN_TU_0.NEXTVAL,?,?,?,?,?,?,?,?,?,?,?,'',?)",new Object[]{id,id+"/"+wName,name,pf_name,type,nian_xian,pi_fu,bei_an,gh_danwei,gh_ren,hg_dianhua,id+"/"+wPFName});			
	   	out.println("<script language=javascript>");
		out.println("parent.window.returnValue='"+outP + "';");
		out.println("parent.window.close();");
		out.println("</script>");        
    }
    catch(Exception e) {
	e.printStackTrace();
   	out.println("<script language=javascript>");
	out.println("alert('上传失败，请不要上传大于5MB的文件!')");
    out.println("parent.window.close();");
	out.println("</script>");
    }				
%>