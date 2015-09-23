/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2012-11-14</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.archive;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

/**
 * 道路交通设施情况相关操作
 */
public class Dl_sheshiAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		String biao_shi = request.getParameter("biao_shi");
		String sql = "select round(sum(b.shu),2) as shu,round(sum(b.kuan),2) " +
				"as kuan,round(sum(b.chang),2) as chang,round(sum(b.gshu),2) " +
				"as gshu,round(sum(b.gkuan),2) as gkuan,round(sum(b.gchang),2)" +
				" as gchang,b.dengji from t_dl_sheshi b where b.unit_id in (select a.id" +
				" from t_didian a where a.biao_shi like '"+biao_shi;
		if (biao_shi.split("_").length<=4)
			sql+="_%' and length(a.biao_shi)-length(replace(a.biao_shi,'_',''))=4) group by b.dengji";
		else
			sql+="') group by b.dengji";		
		List dl_sheshiList = (List)dataBaseControl.getOutResultSet(sql, null);
        request.setAttribute("biao_shi",biao_shi);
        request.setAttribute("flag","dl_sheshi");
		request.setAttribute("pingfen",request.getParameter("pingfen"));
		request.setAttribute("length",request.getParameter("length"));
		request.setAttribute("dl_sheshiList",dl_sheshiList);
		return "/archive/DlSheshi/show.jsp";
	}	
}