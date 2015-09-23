/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2012-11-14</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.archive;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

/**
 * 基础设施情况相关操作
 */
public class Ji_chuAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	

	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {		
		String biao_shi = request.getParameter("biao_shi");
		String sql = "select round(sum(b.xshuliang),2) as xshuliang,round(sum(b.xguimo)," +
				"2) as xguimo,round(sum(b.gliang),2) as gliang,round(sum(b.guimo)," +
				"2) as guimo,round(sum(b.gdi),2) as gdi,b.mingcheng from t_ji_chu b " +
				"where b.unit_id in (select a.id from t_didian a where a.biao_shi like '"+biao_shi;
		if (biao_shi.split("_").length<=4)
			sql+="_%' and length(a.biao_shi)-length(replace(a.biao_shi,'_',''))=4) group by b.mingcheng";
		else
			sql+="') group by b.mingcheng";		
		List ji_chuList = (List)dataBaseControl.getOutResultSet(sql, null);
		//设置相应的设施变量
		Map gongshui = new HashMap();
		Map wushui = new HashMap();
		Map laji = new HashMap();
		Map zhaoqi = new HashMap();
		Map biandian = new HashMap();
		Map cesuo = new HashMap();
		Map keyun = new HashMap();
		//给设施相应对象赋值
		for(int i = 0;i<ji_chuList.size();i++){
			Map temp = (Map)ji_chuList.get(i);
			if("供水设施".equals(temp.get("mingcheng"))||temp.get("mingcheng")=="供水设施"){
				gongshui.put("xshuliang", temp.get("xshuliang"));
				gongshui.put("xguimo", temp.get("xguimo"));
				gongshui.put("gliang", temp.get("gliang"));
				gongshui.put("guimo", temp.get("guimo"));
				gongshui.put("gdi", temp.get("gdi"));
			}
			else if("污水处理设施".equals(temp.get("mingcheng"))||temp.get("mingcheng")=="污水处理设施"){
				wushui.put("xshuliang", temp.get("xshuliang"));
				wushui.put("xguimo", temp.get("xguimo"));
				wushui.put("gliang", temp.get("gliang"));
				wushui.put("guimo", temp.get("guimo"));
				wushui.put("gdi", temp.get("gdi"));
			}
			else if("垃圾处理设施".equals(temp.get("mingcheng"))||temp.get("mingcheng")=="垃圾处理设施"){
				laji.put("xshuliang", temp.get("xshuliang"));
				laji.put("xguimo", temp.get("xguimo"));
				laji.put("gliang", temp.get("gliang"));
				laji.put("guimo", temp.get("guimo"));
				laji.put("gdi", temp.get("gdi"));
			}
			else if("沼气池".equals(temp.get("mingcheng"))||temp.get("mingcheng")=="沼气池"){
				zhaoqi.put("xshuliang", temp.get("xshuliang"));
				zhaoqi.put("xguimo", temp.get("xguimo"));
				zhaoqi.put("gliang", temp.get("gliang"));
				zhaoqi.put("guimo", temp.get("guimo"));
				zhaoqi.put("gdi", temp.get("gdi"));
			}
			else if("变电站".equals(temp.get("mingcheng"))||temp.get("mingcheng")=="变电站"){
				biandian.put("xshuliang", temp.get("xshuliang"));
				biandian.put("xguimo", temp.get("xguimo"));
				biandian.put("gliang", temp.get("gliang"));
				biandian.put("guimo", temp.get("guimo"));
				biandian.put("gdi", temp.get("gdi"));
			}
			else if("厕所".equals(temp.get("mingcheng"))||temp.get("mingcheng")=="厕所"){
				cesuo.put("xshuliang", temp.get("xshuliang"));
				cesuo.put("xguimo", temp.get("xguimo"));
				cesuo.put("gliang", temp.get("gliang"));
				cesuo.put("guimo", temp.get("guimo"));
				cesuo.put("gdi", temp.get("gdi"));
			}
			else if("客运站".equals(temp.get("mingcheng"))||temp.get("mingcheng")=="客运站"){
				keyun.put("xshuliang", temp.get("xshuliang"));
				keyun.put("xguimo", temp.get("xguimo"));
				keyun.put("gliang", temp.get("gliang"));
				keyun.put("guimo", temp.get("guimo"));
				keyun.put("gdi", temp.get("gdi"));
			}
		}
        request.setAttribute("gongshui",gongshui);
        request.setAttribute("wushui",wushui);
        request.setAttribute("laji",laji);
        request.setAttribute("zhaoqi",zhaoqi);
        request.setAttribute("biandian",biandian);
        request.setAttribute("cesuo",cesuo);
        request.setAttribute("keyun",keyun);
        request.setAttribute("biao_shi",biao_shi);
        request.setAttribute("flag","ji_chu");
		request.setAttribute("pingfen",request.getParameter("pingfen"));
		request.setAttribute("length",request.getParameter("length"));
		return "/archive/JiChu/show.jsp";
	}
}