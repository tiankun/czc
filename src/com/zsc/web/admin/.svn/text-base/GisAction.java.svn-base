/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Created on 2011-6-21</p>
 * <p> @author ShenChang zou</p>
 */
package com.zsc.web.admin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

public class GisAction
	extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();		
	/** 
	 * 查看对象(google)
	 **/
	public String showG(HttpServletRequest request) throws Exception {
		String id=request.getParameter("id");
		Map item = dataBaseControl.getOneResultSet("select t.quan_ming,t.jibie from v_didian t where t.id=?", new Object[]{id});
		request.setAttribute("item",item);
		String jibie=item.get("jibie").toString();
		if("省".equals(jibie))
			request.setAttribute("zoom",5);
		else if("州（市）".equals(jibie))
			request.setAttribute("zoom",7);
		else if("县（区、市）".equals(jibie))
			request.setAttribute("zoom",9);
		else if("乡镇".equals(jibie))
			request.setAttribute("zoom",11);
		else 
			request.setAttribute("zoom",13);
		return "/admin/Gis/index.jsp";
	}
	/** 
	 * 查看对象(灵图)
	 **/
	public String showL(HttpServletRequest request) throws Exception {
		String id=request.getParameter("id");
		Map item = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("item",item);
		return "/admin/Gis/test.jsp";
	}	
}
