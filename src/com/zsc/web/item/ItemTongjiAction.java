/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.item;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.zsc.db.DataBaseControl;
import com.zsc.map.temp.ItemReportTongJi;
import com.zsc.web.BaseAction;

public class ItemTongjiAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 月报表搜索 
	 **/
	public String yueList(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		Map user = (Map) session.getAttribute("user");
		String year=""+Calendar.getInstance().get(Calendar.YEAR);
		if(user.get("biao_shi").toString().split("_").length>3){//乡镇用户
			Map map=dataBaseControl.getOneResultSet("select id from t_Item_build where area=? and type=?", new Object[]{user.get("guan_li"),request.getParameter("type")});
			if(map!=null)
				return "/item/Item_plan!show.do?item="+map.get("id");
			else
				return new Item_planAction().edit(request);	
		}else{
			String type=request.getParameter("type");
			String years=request.getParameter("year");
			if(years!=null&&!"".equals(years))
				year=years;
			String biao_shi=user.get("biao_shi")+"_%";
			if(request.getParameter("biao_shi")!=null)
				biao_shi=request.getParameter("biao_shi")+"_%";
			if(type==null){
				Map item=dataBaseControl.getOneResultSet("select type from t_Item_build where id=?", new Object[]{request.getParameter("item")});
				type=item.get("type").toString();
			}
			ItemReportTongJi itemReportTongJi=new ItemReportTongJi();
			HashMap<String, String> itemReports=new HashMap<String, String>();
			Map itemReport;
			//项目列表
			List list=(List) dataBaseControl.getOutResultSet("select a.id,b.quan_ming,a.jieduan,a.name from t_item_build a,t_didian b where a.type=? and a.area=b.id " +
					"and b.biao_shi||'_' like ?", new Object[]{type,biao_shi});
			//进度报表信息
			List reports=(List) dataBaseControl.getOutResultSet("select t.item,t.jieduan,SUBSTR(t.yuefen,6,2) yue,t.PZ_ZHUANGTAI from t_item_report t where t.type=1 " +
					"and SUBSTR(t.yuefen,0,4)=? and t.item in(select a.id from t_item_build a,t_didian b where a.type=? and a.area=b.id and b.biao_shi||'_' like ?)",
					new Object[]{year,type,biao_shi});
			for (int i = 0; i < reports.size(); i++) {
				itemReport=(Map) reports.get(i);
				itemReports.put(""+itemReport.get("item").toString()+"@"+Integer.parseInt(itemReport.get("yue").toString()), itemReport.get("pz_zhangtai")==null?"0":itemReport.get("pz_zhangtai").toString());
			}
			itemReportTongJi.setItem(list);
			itemReportTongJi.setItemReports(itemReports);
			request.setAttribute("itemReportTongJi", itemReportTongJi);
			request.setAttribute("type", type);
			request.setAttribute("year", year);
			return "/item/yueList.jsp";
		}
	}	
	
}