package com.zsc.web.archive;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;
import com.zsc.web.BaseAction;

public class FileAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	
	/** 
	 * 展示图片
	 **/
	public String list(HttpServletRequest request) throws Exception {	
		String biao_shi = request.getParameter("biao_shi");
		String pagenum = request.getParameter("pageNumber");
		int pageNumber = 1;
		if(null!=pagenum){
			pageNumber = Integer.parseInt(pagenum);
		}
		String sql = "select h.id,h.path,K.QUAN_MING name,case when INSTR(h.path,'/')>0 then replace(h.path,'/','/_') else '_'||h.path end vpath,h.remark from t_file h,T_DIDIAN K where h.unit_id in (select" +
				" t.id from t_didian t where t.biao_shi like '"+biao_shi;
		if (biao_shi.split("_").length<=5)
			sql+="%') and (LOWER(h.path) like '%.jpg' or LOWER(h.path) like '%.bmp') AND H.UNIT_ID=K.ID";
		else
			sql+="') and (LOWER(h.path) like '%.jpg' or LOWER(h.path) like '%.bmp') AND H.UNIT_ID=K.ID";		
		Page fileList = dataBaseControl.getPageResultSet(sql, null, pageNumber, 15);
		request.setAttribute("nowPage", fileList.getThisPageNumber());
		request.setAttribute("nextPage", fileList.hasNextPage());
		request.setAttribute("previousPage", fileList.hasPreviousPage());
        request.setAttribute("biao_shi",biao_shi);
        request.setAttribute("flag","file");
		request.setAttribute("pingfen",request.getParameter("pingfen"));
		request.setAttribute("length",request.getParameter("length"));
		request.setAttribute("fileList",fileList);
		return "/archive/File/list.jsp";
	}
	
	/** 
	 * 优秀展示图片
	 **/
	public String youxiuList(HttpServletRequest request) throws Exception {	
		String biao_shi = request.getParameter("biao_shi");
		String pagenum = request.getParameter("pageNumber");
		int pageNumber = 1;
		if(null!=pagenum){
			pageNumber = Integer.parseInt(pagenum);
		}
		String sql = "select h.id,h.path,K.QUAN_MING name,case when INSTR(h.path,'/')>0 then replace(h.path,'/','/_') else '_'||h.path end vpath,h.remark from t_file h,T_DIDIAN K where h.unit_id in (select" +
				        " t.id from t_didian t where t.biao_shi like '"+biao_shi;
		if (biao_shi.split("_").length<=5)
			sql+="%') and (LOWER(h.path) like '%.jpg' or LOWER(h.path) like '%.bmp')AND H.UNIT_ID=K.ID and h.remark='优秀'";
		else
			sql+="') and (LOWER(h.path) like '%.jpg' or LOWER(h.path) like '%.bmp')AND H.UNIT_ID=K.ID and h.remark='优秀'";		
		Page fileList = dataBaseControl.getPageResultSet(sql, null, pageNumber, 15);
		request.setAttribute("nowPage", fileList.getThisPageNumber());
		request.setAttribute("nextPage", fileList.hasNextPage());
		request.setAttribute("previousPage", fileList.hasPreviousPage());
        request.setAttribute("biao_shi",biao_shi);
        request.setAttribute("flag","youxiufile");
		request.setAttribute("pingfen",request.getParameter("pingfen"));
		request.setAttribute("length",request.getParameter("length"));
		request.setAttribute("fileList",fileList);
		return "/archive/File/list.jsp";
	}
	
	/** 
	 * 查询相关文件
	 **/
	public String fileList(HttpServletRequest request) throws Exception {	
		String biao_shi = request.getParameter("biao_shi");
		String pagenum = request.getParameter("pageNumber");
		int pageNumber = 1;
		if(null!=pagenum){
			pageNumber = Integer.parseInt(pagenum);
		}
		String sql = "select h.path,substr(h.name, 0, INSTR(h.name,'.', 1, 1)-1) name from t_file h where h.unit_id in (select" +
		" t.id from t_didian t where t.biao_shi='"+biao_shi+"' or t.biao_shi like '"+biao_shi+"_%')";
		Page fileList = dataBaseControl.getPageResultSet(sql, null, pageNumber, 20);
		request.setAttribute("nowPage", fileList.getThisPageNumber());
		request.setAttribute("nextPage", fileList.hasNextPage());
		request.setAttribute("previousPage", fileList.hasPreviousPage());
        request.setAttribute("biao_shi",biao_shi);
        request.setAttribute("flag","file");
		request.setAttribute("pingfen",request.getParameter("pingfen"));
		request.setAttribute("length",request.getParameter("length"));
		request.setAttribute("fileList",fileList);
		return "/archive/File/fileList.jsp";
	}
	
	/** 
	 * 成果选优
	 **/
	public String xuanyou(HttpServletRequest request) throws Exception {	
		String biao_shi = request.getParameter("biao_shi");
		String pagenum = request.getParameter("pageNumber");
		int pageNumber = 1;
		if(null!=pagenum){
			pageNumber = Integer.parseInt(pagenum);
		}
		String sql = "select h.id,h.path,K.QUAN_MING name,h.remark from t_file h,T_DIDIAN K where h.unit_id in (select" +
		" t.id from t_didian t where t.biao_shi like '"+biao_shi+"_%') and (h.path like '%.jpg' or h.path like '%.bmp')" +
		"AND H.UNIT_ID=K.ID";
		Page fileList = dataBaseControl.getPageResultSet(sql, null, pageNumber, 20);
		dataBaseControl.executeSql("update t_file set remark='优秀' where id=?", new Object[]{request.getParameter("id")});
		request.setAttribute("nowPage", fileList.getThisPageNumber());
		request.setAttribute("nextPage", fileList.hasNextPage());
		request.setAttribute("previousPage", fileList.hasPreviousPage());
        request.setAttribute("biao_shi",biao_shi);
        request.setAttribute("flag","file");
		request.setAttribute("pingfen",request.getParameter("pingfen"));
		request.setAttribute("length",request.getParameter("length"));
		request.setAttribute("fileList",fileList);
		return "/archive/File/list.jsp";
	}

	/**
	 * 读取文件流
	 * @throws IOException 
	 **/
	public String uploadImg(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String fileName = request.getParameter("fileName");
		String path = "D://upFile/file/"+ "/" + fileName;//获取文件路径
		File file =new File(path); 
		OutputStream fout = response.getOutputStream();
		BufferedInputStream bufferedInputStream=new BufferedInputStream(new FileInputStream(file));  //把文件读为流
		    byte[] b = new byte[2048];
	        int len = 0;
	        while((len = bufferedInputStream.read(b)) != -1) {    //把文件以流输出
            fout.write(b, 0, len);
	        }
	        //依次关闭
	        fout.close();
	        bufferedInputStream.close();
		return null;
	}
	
}
