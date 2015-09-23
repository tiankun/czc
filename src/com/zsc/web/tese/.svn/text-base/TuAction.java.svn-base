/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Created on 2013-2-20</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.tese;

import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.util.ImageTools;

/**
 * @author 邹申昶
 */
public class TuAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();
	/** 
	 * 执行搜索 
	 **/
	public String save(HttpServletRequest request) throws Exception {
		DataBaseControl dataBaseControl=DataBaseControl.getInstance();
		Map user = (Map)request.getSession().getAttribute("user");
		Long id=new Long(user.get("guan_li").toString());
		String type=request.getParameter("type");
		if(dataBaseControl.getResultSetSize("select * from T_ZHEN_TU where UNIT_ID=? and TYPE=?", new Object[]{id,type})<=0){
			String[] name=request.getParameterValues("name");
			String[] pic=request.getParameterValues("pic");
			String nian_xian=request.getParameter("nian_xian");
			String pi_fu=request.getParameter("pi_fu");
			String pf_pic=request.getParameter("pf_pic");
			String bei_an=request.getParameter("bei_an");		
			String gh_danwei=request.getParameter("gh_danwei");
			String gh_ren=request.getParameter("gh_ren");
			String hg_dianhua=request.getParameter("gh_dianhua");
			dataBaseControl.executeSql("insert into T_ZHEN_TU values(SEQ_T_ZHEN_TU_0.NEXTVAL,?,?,?,?,?,?,?,?,?,?,?,'',?)",new Object[]{id,getPath(pic,id,request),getPath(name,id,request),null,type,nian_xian,pi_fu,bei_an,gh_danwei,gh_ren,hg_dianhua,pf_pic});			
		}else{
			request.setAttribute("info", type+"已经添加，同种规划数据只能添加一次！");
		}
		return "/tese/ChengGuo/list.jsp";
	}
   public String getPath(String[] names,Long id,HttpServletRequest request){
	   String outStr=null;
	   if(names!=null&&names.length>0){
		   outStr="";
		   for (int i = 0; i < names.length; i++) {
			   outStr+=names[i]+(i!=names.length-1?";":"");
			 //若文件为图片则生成缩略图
				StringTokenizer st = new StringTokenizer(names[i], ".");
				   String extname = "";
				while (st.hasMoreTokens()) {
					extname = st.nextToken();
				}
			   try {
			   	if(extname.toLowerCase().equals("jpg")||extname.toLowerCase().equals("bmp")){
			   		ImageTools.cutImage(350,230, request.getSession().getServletContext().getRealPath("/upFile/file/")+"/"+id+"/"+names[i],request.getSession().getServletContext().getRealPath("/upFile/file/")+ "/"+id+"/_" +names[i] ,1);
			   	}
			   } catch (Exception e) {}				   
		}
	   }
	   return outStr;
   }
}
