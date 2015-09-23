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
 * 公共服务设施情况相关操作
 */
public class Gg_fuwuAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		String biao_shi = request.getParameter("biao_shi");
		String sql = "select round(sum(b.shu_liang),2) as shu_liang,round(sum(b.gui_mo)," +
				"2) as gui_mo,round(sum(b.gshu_liang),2) as gshu_liang," +
				"round(sum(b.ggui_mo),2) as ggui_mo, b.ming_cheng from t_gg_fuwu b where b.unit_id" +
				" in (select a.id from t_didian a where a.biao_shi like '"+biao_shi;
		if (biao_shi.split("_").length<=4)
			sql+="_%' and length(a.biao_shi)-length(replace(a.biao_shi,'_',''))=4) group by b.ming_cheng";
		else
			sql+="') group by b.ming_cheng";		
		List gg_fuwuList = (List)dataBaseControl.getOutResultSet(sql, null);
		//设置相应的设施变量
		Map cunwei = new HashMap();
		Map xiaoxue = new HashMap();
		Map youer = new HashMap();
		Map weisheng = new HashMap();
		Map zhensuo = new HashMap();
		Map tushu = new HashMap();
		Map laonian = new HashMap();
		Map yule = new HashMap();
		Map common = new HashMap();
		Map shoop = new HashMap();
		//给设施相应对象赋值
		for(int i = 0;i<gg_fuwuList.size();i++){
			Map temp = (Map)gg_fuwuList.get(i);
			if("村委会".equals(temp.get("ming_cheng"))||temp.get("ming_cheng")=="村委会"){
				cunwei.put("shu_liang", temp.get("shu_liang"));
				cunwei.put("gui_mo", temp.get("gui_mo"));
				cunwei.put("gshu_liang", temp.get("gshu_liang"));
				cunwei.put("ggui_mo", temp.get("ggui_mo"));
			}
			else if("小学".equals(temp.get("ming_cheng"))||temp.get("ming_cheng")=="小学"){
				xiaoxue.put("shu_liang", temp.get("shu_liang"));
				xiaoxue.put("gui_mo", temp.get("gui_mo"));
				xiaoxue.put("gshu_liang", temp.get("gshu_liang"));
				xiaoxue.put("ggui_mo", temp.get("ggui_mo"));
			}
			else if("幼儿园".equals(temp.get("ming_cheng"))||temp.get("ming_cheng")=="幼儿园"){
				youer.put("shu_liang", temp.get("shu_liang"));
				youer.put("gui_mo", temp.get("gui_mo"));
				youer.put("gshu_liang", temp.get("gshu_liang"));
				youer.put("ggui_mo", temp.get("ggui_mo"));
			}
			else if("卫生所".equals(temp.get("ming_cheng"))||temp.get("ming_cheng")=="卫生所"){
				weisheng.put("shu_liang", temp.get("shu_liang"));
				weisheng.put("gui_mo", temp.get("gui_mo"));
				weisheng.put("gshu_liang", temp.get("gshu_liang"));
				weisheng.put("ggui_mo", temp.get("ggui_mo"));
			}
			else if("私人诊所".equals(temp.get("ming_cheng"))||temp.get("ming_cheng")=="私人诊所"){
				zhensuo.put("shu_liang", temp.get("shu_liang"));
				zhensuo.put("gui_mo", temp.get("gui_mo"));
				zhensuo.put("gshu_liang", temp.get("gshu_liang"));
				zhensuo.put("ggui_mo", temp.get("ggui_mo"));
			}
			else if("图书室".equals(temp.get("ming_cheng"))||temp.get("ming_cheng")=="图书室"){
				tushu.put("shu_liang", temp.get("shu_liang"));
				tushu.put("gui_mo", temp.get("gui_mo"));
				tushu.put("gshu_liang", temp.get("gshu_liang"));
				tushu.put("ggui_mo", temp.get("ggui_mo"));
			}
			else if("老年活动室".equals(temp.get("ming_cheng"))||temp.get("ming_cheng")=="老年活动室"){
				laonian.put("shu_liang", temp.get("shu_liang"));
				laonian.put("gui_mo", temp.get("gui_mo"));
				laonian.put("gshu_liang", temp.get("gshu_liang"));
				laonian.put("ggui_mo", temp.get("ggui_mo"));
			}
			else if("娱乐室".equals(temp.get("ming_cheng"))||temp.get("ming_cheng")=="娱乐室"){
				yule.put("shu_liang", temp.get("shu_liang"));
				yule.put("gui_mo", temp.get("gui_mo"));
				yule.put("gshu_liang", temp.get("gshu_liang"));
				yule.put("ggui_mo", temp.get("ggui_mo"));
			}
			else if("公共活动场".equals(temp.get("ming_cheng"))||temp.get("ming_cheng")=="公共活动场"){
				common.put("shu_liang", temp.get("shu_liang"));
				common.put("gui_mo", temp.get("gui_mo"));
				common.put("gshu_liang", temp.get("gshu_liang"));
				common.put("ggui_mo", temp.get("ggui_mo"));
			}
			else if("商店".equals(temp.get("ming_cheng"))||temp.get("ming_cheng")=="商店"){
				shoop.put("shu_liang", temp.get("shu_liang"));
				shoop.put("gui_mo", temp.get("gui_mo"));
				shoop.put("gshu_liang", temp.get("gshu_liang"));
				shoop.put("ggui_mo", temp.get("ggui_mo"));
			}
		}
        request.setAttribute("biao_shi",biao_shi);
        request.setAttribute("flag","gg_fuwu");
		request.setAttribute("pingfen",request.getParameter("pingfen"));
		request.setAttribute("length",request.getParameter("length"));
        request.setAttribute("cunwei",cunwei);
        request.setAttribute("xiaoxue",xiaoxue);
        request.setAttribute("youer",youer);
        request.setAttribute("weisheng",weisheng);
        request.setAttribute("zhensuo",zhensuo);
        request.setAttribute("tushu",tushu);
        request.setAttribute("laonian",laonian);
        request.setAttribute("yule",yule);
        request.setAttribute("common",common);
        request.setAttribute("shoop",shoop);
		return "/archive/GgFuwu/show.jsp";
	}

}