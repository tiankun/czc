/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2012-11-14</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.archive;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

/**
 * 经济发展情况相关操作
 */
public class Jing_jiAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	

	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {		
		String biao_shi = request.getParameter("biao_shi");
		String sql = "select round(sum(b.nian_shouru),2) as nian_shouru,round(sum(b.rj_shouru),2) as rj_shouru,round(sum(b.cj_zongchanzhi),2) as " +
				"cj_zongchanzhi,round(sum(b.dy_chanzhi),2) as dy_chanzhi,round(sum(b.de_chanzhi),2) as de_chanzhi,round(sum(b.ds_chanzhi),2) as ds_chanzhi," +
				"round(sum(b.qiye_shu),2) as qiye_shu,round(sum(b.qiye_chanzbhi),2) as qiye_chanzbhi from t_jing_ji b where b.unit_id in (select" +
				" a.id from t_didian a where a.biao_shi like '"+biao_shi;
		if (biao_shi.split("_").length<=4)
			sql+="_%' and length(a.biao_shi)-length(replace(a.biao_shi,'_',''))=4)";
		else
			sql+="')";
        Map jing_ji = (Map)dataBaseControl.getOneResultSet(sql, null);
        request.setAttribute("biao_shi",biao_shi);
        request.setAttribute("flag","jing_ji");
		request.setAttribute("pingfen",request.getParameter("pingfen"));
		request.setAttribute("length",request.getParameter("length"));
		request.setAttribute("jing_ji",jing_ji);
		return "/archive/JingJi/show.jsp";
	}

}