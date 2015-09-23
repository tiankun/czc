package com.zsc.web.archive;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

public class FuzeAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		String biao_shi = request.getParameter("biao_shi");
		String sql = "select t.*,k.quan_ming from t_fuze t,t_didian k where t.type='archive' and t.unit_id in (select h.id from t_didian h where" +
				" h.biao_shi like '"+biao_shi;
		if (biao_shi.split("_").length<=3)
			sql+="_%') and t.unit_id=k.id";
		else
			sql+="') and t.unit_id=k.id";		
		List fuzeList = (List)dataBaseControl.getOutResultSet(sql, null);
		request.setAttribute("fuzeList",fuzeList);
		request.setAttribute("biao_shi",biao_shi);
		request.setAttribute("flag","fuze");
		request.setAttribute("pingfen",request.getParameter("pingfen"));
		request.setAttribute("length",request.getParameter("length"));
		return "/archive/Fuze/show.jsp";
	}
}
