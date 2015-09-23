/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2012-11-14</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.archive;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

/**
 * 人口与用地情况相关操作
 */
public class Ren_diAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		String biao_shi = request.getParameter("biao_shi");
		String sql = "select round(sum(b.CZ_ZHANDI),2) as cz_zhandi,round(sum(b.CZ_GUIHUA),2) as cz_guihua,round(sum(b.JS_YONGDI),2) as js_yongdi," +
				     "round(sum(b.GD_MIANJI),2) as gd_mianji,round(sum(b.NONGTIAN),2) as nongtian,round(sum(b.GY_TUDI),2) as gy_tudi," +
				     "round(sum(b.JT_TUDI),2) as jt_tudi,round(sum(b.BQ_BILI),2) as bq_bili,round(sum(b.SQ_BILI),2) as sq_bili," +
				     "round(sum(b.GH_XZDI),2) as gh_xzdi,round(sum(b.GH_XZHU),2) as gh_xzhu,round(sum(b.RENKOU),2) as renkou," +
				     "round(sum(b.HUSHU),2) as hushu,round(sum(b.HUJI),2) as huji,round(sum(b.CHANGZHU),2) as changzhu,round(sum(b.NY_RENKOU),2) as ny_renkou," +
				     "round(sum(b.FNY_RENKOU),2) as fny_renkou,round(sum(b.NM_RENKOU),2) as nm_renkou,round(sum(b.CY_MIANJI),2) as cy_mianji" +
				     " from T_REN_DI b where b.unit_id in (select a.id from t_didian a where a.biao_shi like '"+biao_shi;
		if (biao_shi.split("_").length<=4)
			sql+="_%' and length(a.biao_shi)-length(replace(a.biao_shi,'_',''))=4)";
		else
			sql+="')";		
		Map ren_di = (Map)dataBaseControl.getOneResultSet(sql, null);
		request.setAttribute("ren_di",ren_di);
		request.setAttribute("biao_shi",biao_shi);
		request.setAttribute("flag","ren_di");
		request.setAttribute("pingfen",request.getParameter("pingfen"));
		request.setAttribute("length",request.getParameter("length"));
		return "/archive/RenDi/show.jsp";
	}

}