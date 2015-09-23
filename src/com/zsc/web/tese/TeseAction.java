/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Created on 2013-2-20</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.tese;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;

/**
 * @author 邹申昶
 */
public class TeseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		String biao_shi = request.getParameter("biao_shi");
		List list = (List) dataBaseControl.getOutResultSet("select * from v_tese where biao_shi=? or biao_shi like ? ", new Object[]{biao_shi,biao_shi+"_%"});
		request.setAttribute("list", list);
		request.setAttribute("biao_shi",biao_shi);
		request.setAttribute("flag","tese");
		request.setAttribute("length",biao_shi.split("_").length);
		return "/tese/list.jsp";
	}
}
