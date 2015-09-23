/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.item;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.zsc.db.DataBaseControl;
import com.zsc.map.Item_build;
import com.zsc.map.Item_fees;
import com.zsc.map.Item_plan;
import com.zsc.map.temp.ItemPlan;
import com.zsc.util.WebUtil;
import com.zsc.web.BaseAction;

public class Item_planAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		Map user = (Map) session.getAttribute("user");
		String type=request.getParameter("type");
		String id=request.getParameter("item");
		List list;
		List fees;
		Map item_build=null;
		if(user.get("biao_shi").toString().split("_").length>3||id!=null)//乡镇用户
			item_build=dataBaseControl.getOneResultSet("select id,name,type,area,fugai from t_Item_build where (area=? and type=?) or id=?", new Object[]{user.get("guan_li"),type,id});
		if(item_build==null){
			list=new ArrayList();
			fees=new ArrayList();
			Item_plan item_plan;
			String[] jie_duans=new String[]{"县域体系规划","实施方案","可行性研究","初步设计","施工图","土建","设备安装","试运行","竣工"}; 
			for (int i = 0; i < jie_duans.length; i++) {
				item_plan=new Item_plan();
				item_plan.setJie_duan(jie_duans[i]);
				list.add(item_plan);
			}
			fees.add(new Item_fees());
		}else{
			list=(List) dataBaseControl.getOutResultSet("select * from t_Item_plan where item=? order by id", new Object[]{item_build.get("id")});
			fees=(List) dataBaseControl.getOutResultSet("select * from t_Item_fees where item=? and type=1 order by id", new Object[]{item_build.get("id")});
			request.setAttribute("item_build",item_build);
			request.setAttribute("item",item_build.get("id"));
		}
		request.setAttribute("list",list);
		request.setAttribute("fees",fees);
		request.setAttribute("item_build",item_build);
		request.setAttribute("type",type==null?item_build.get("type"):type);
		//县级项目显示管辖乡镇
		if((user.get("biao_shi").toString().split("_").length==3&&id==null)||
				(user.get("biao_shi").toString().split("_").length==3&&item_build!=null&&item_build.get("area").toString().equals(user.get("guan_li").toString()))){			
			request.setAttribute("guanxia",dataBaseControl.getOutResultSet("select id,name from t_Didian where parent=?", new Object[]{user.get("guan_li")}));			
		}
		return "/item/ItemPlan/edit.jsp";
	}	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		Map user = (Map) session.getAttribute("user");
		Item_plan item_plan;
		Item_fees item_fees;
		Map item;
		Long id;
		String name=request.getParameter("name");
		String type=request.getParameter("type");
		String rid=request.getParameter("item");
		String[] jie_duans=request.getParameterValues("jie_duan");
		String[] gxs=request.getParameterValues("gx");
		String[] years=request.getParameterValues("year");
		String[] months=request.getParameterValues("month");
		String[] remarks=request.getParameterValues("remark");
		String[] shiduans=request.getParameterValues("shiduan");
		String[] miaoshus=request.getParameterValues("miaoshu");
		String[] remarkfs=request.getParameterValues("remarkf");
		dataBaseControl.beginTransaction();
		if((rid==null||"".equals(rid))&&(user.get("biao_shi").toString().split("_").length>3))
			item=dataBaseControl.getOneResultSet("select id from t_Item_build where area=? and type=?", new Object[]{user.get("guan_li"),type});
		else
			item=dataBaseControl.getOneResultSet("select id from t_Item_build where id=?", new Object[]{rid});
		if(item!=null){
			id=Long.parseLong(item.get("id").toString());
			//更新项目名称
			dataBaseControl.executeSql("update t_Item_build set name=? where id=?", new Object[]{name,id});
			//删除项目进度计划和收费计划
			dataBaseControl.executeSql("delete from t_Item_plan where item=?", new Object[]{id});
			dataBaseControl.executeSql("delete from t_Item_fees where item=? and type=1", new Object[]{id});
		}else{
			id=dataBaseControl.getSeq(Item_build.class.getSimpleName());
			//保存项目信息
			Item_build item_build=new Item_build();
			item_build.setName(name);
			item_build.setType(Long.parseLong(type));
			item_build.setArea(Long.parseLong(user.get("guan_li").toString()));
			dataBaseControl.insertByBean(item_build, id);
		}
		if(null!=gxs){
			String gx = ";";
			for(int i = 0;i<gxs.length;i++){
				gx = gx+gxs[i]+";";
			}
			dataBaseControl.executeSql("update t_Item_build set fugai=? where id=?", new Object[]{gx,id});	
		}
		//保存进度计划
		for (int i = 0; i < jie_duans.length; i++) {
			item_plan=new Item_plan();
			item_plan.setItem(id);
			item_plan.setJie_duan(jie_duans[i]);
			item_plan.setKaishi(""+years[i]+"-"+months[i]);
			item_plan.setRemark(remarks[i]);
			dataBaseControl.insertByBean(item_plan);
		}
		//保存收费计划
		for (int i = 0; i < shiduans.length; i++) {
			item_fees=new Item_fees();
			item_fees.setItem(id);
			item_fees.setType("1");
			item_fees.setShiduan(shiduans[i]);
			item_fees.setMiaoshu(miaoshus[i]);
			item_fees.setRemark(remarkfs[i]);
			dataBaseControl.insertByBean(item_fees);
		}
		dataBaseControl.endTransaction();
		return "/item/ItemTongji!yueList.do?type="+type;
	}
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {
		String item=request.getParameter("item");
		//处理进度计划列表
		List plans=new ArrayList();
		ItemPlan itemPlan;
		List liebiao;
		List list=(List) dataBaseControl.getOutResultSet("select kaishi,jie_duan from t_Item_plan where item=? order by id", new Object[]{item});
		String begin=((Map)list.get(0)).get("kaishi").toString();
		for (int i = 0; i < list.size()-1; i++) {
			itemPlan=new ItemPlan();
			liebiao=WebUtil.getList(begin, ((Map)list.get(i+1)).get("kaishi").toString());
			itemPlan.setJieduan(((Map)list.get(i)).get("jie_duan").toString());			
			itemPlan.setHang(liebiao.size());
			itemPlan.setLiebiao(liebiao);
			plans.add(itemPlan);
			begin=((Map)list.get(i+1)).get("kaishi").toString();
		}
		itemPlan=new ItemPlan();
		itemPlan.setHang(1);
		liebiao=new ArrayList();
		liebiao.add(((Map)list.get(list.size()-1)).get("kaishi"));
		itemPlan.setLiebiao(liebiao);
		itemPlan.setJieduan(((Map)list.get(list.size()-1)).get("jie_duan").toString());
		plans.add(itemPlan);
		request.setAttribute("plans",plans);
		//处理计划范围内月报
		HashMap<String, Object> itemReports=new HashMap<String, Object>();
		list=(List) dataBaseControl.getOutResultSet("select yuefen,jieduan,jinzhan,pz_zhuangtai from t_Item_report where item=? and type=1 and yuefen<=(select max(kaishi) from t_item_plan where ITEM=?) order by yuefen", new Object[]{item,item});
		for (int i = 0; i < list.size(); i++) {
			itemReports.put(((Map)list.get(i)).get("yuefen").toString(), list.get(i));
		}
		request.setAttribute("itemReports",itemReports);
		//查询计划范围外月报
		list=(List) dataBaseControl.getOutResultSet("select yuefen,jieduan,jinzhan,pz_zhuangtai from t_Item_report where item=? and type=1 and yuefen>(select max(kaishi) from t_item_plan where ITEM=?) order by yuefen", new Object[]{item,item});
		request.setAttribute("list",list);
		//累计资金统计
		Map tongji= dataBaseControl.getOneResultSet("select x.YU_TOUZI,y.LJ_DAOWEI,y.LJ_SHIYONG from (select t.id,t.YU_TOUZI from t_item_build t where id=?)x,"+
				"(select t.LJ_DAOWEI,t.LJ_SHIYONG,t.item from t_item_report t where t.item=? and yuefen=(select max(yuefen) from t_item_report where item=?))y where x.id=y.item", new Object[]{item,item,item});		
		request.setAttribute("tongji",tongji);
		//月资金统计
		List zijin=(List) dataBaseControl.getOutResultSet("select t.yuefen,t.SJ_SHIYONG from t_item_report t where t.item=? and t.type=1 order by t.yuefen", new Object[]{item});
		request.setAttribute("zijin",zijin);
		request.setAttribute("item",item);
		return "/item/itemReport.jsp";
	}	
}