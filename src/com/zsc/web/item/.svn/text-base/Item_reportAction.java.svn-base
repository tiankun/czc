/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2014-1-3</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.item;

import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

public class Item_reportAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		Map user = (Map) session.getAttribute("user");
		String biao_shi=user.get("biao_shi")+"_%";
		String guan_li=user.get("guan_li")+"";
		String checkQuanxian = "yes";
		//判断该项目是否在登录用户管辖区内
		Map map=dataBaseControl.getOneResultSet("select a.id,a.area,b.quan_ming,a.jieduan,a.name from t_item_build a,t_didian b where a.id=? and a.area=b.id " +
		"and b.biao_shi||'_' like ?", new Object[]{request.getParameter("item"),biao_shi});
		if(null==map){
			checkQuanxian = "no";
		}else if(guan_li.equals(map.get("area").toString())){
			checkQuanxian = "no";
		}
		Collection list=dataBaseControl.getOutResultSet("select * from T_ITEM_REPORT where item=? and type=? order by id desc", new Object[]{request.getParameter("item"),request.getParameter("type")});
		request.setAttribute("list", list);
		request.setAttribute("checkQuanxian", checkQuanxian);
		request.setAttribute("item", request.getParameter("item"));
		request.setAttribute("type", request.getParameter("type"));
		request.setAttribute("checkArea",this.checkArea(request, request.getParameter("item")));
		if("2".equals(request.getParameter("type")))
			return "/item/ItemReport/listJiDu.jsp";
		else
			return "/item/ItemReport/listYue.jsp";		
	}
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map item_report = dataBaseControl.getOneResultSet("select t2.*,t1.name itemName from T_ITEM_BUILD t1,T_ITEM_REPORT t2 where t2.id=? and t1.id=t2.item", new Object[]{request.getParameter("id")});
		request.setAttribute("item",item_report.get("item"));
		request.setAttribute("operate",request.getParameter("operate"));
		request.setAttribute("item_report",item_report);
		return "/item/ItemReport/show.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		Map itemBuild = dataBaseControl.getOneResultSet("select t.yu_touzi from T_ITEM_BUILD t where t.id=?", new Object[]{request.getParameter("item")});
		request.setAttribute("item", request.getParameter("item"));
		request.setAttribute("type", request.getParameter("type"));
		request.setAttribute("itemBuild", itemBuild);
		if("2".equals(request.getParameter("type")))
			return "/item/ItemReport/editJiDu.jsp";
		else
			return "/item/ItemReport/editYue.jsp";		
	}
	
	/**
	 * 审批
	 **/
	public String check(HttpServletRequest request) throws Exception {
	    dataBaseControl.executeSql("update T_ITEM_REPORT set PZ_ZHUANGTAI=?,PZ_YIJIAN=?,pizhun=? where id=?", new Object[]{request.getParameter("pz_zhuangtai"),request.getParameter("pz_yijian"),new java.sql.Date(new Date().getTime()),request.getParameter("id")});
		return "/item/Item_report!list.do?item="+request.getParameter("item")+"&type="+request.getParameter("type");
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		Map roport=dataBaseControl.getOneResultSet("select id from T_ITEM_REPORT where item=? and yuefen=?", new Object[]{request.getParameter("item"),request.getParameter("yuefen")});
		dataBaseControl.beginTransaction();
		if(roport==null)
			dataBaseControl.insertByBean(getMapObject(request,new Object[][]{{"input",new java.sql.Date(new Date().getTime())}}));
		else
			dataBaseControl.updateByBean(getMapObject(request,new Object[][]{{"id",roport.get("id")}}));
		dataBaseControl.executeSql("update t_Item_build set jieduan=(select JIEDUAN from t_item_report where item=? and yuefen=(select max(yuefen) from t_item_report t where item=?)) where id=? ", new Object[]{request.getParameter("item"),request.getParameter("item"),request.getParameter("item")});
		dataBaseControl.endTransaction();
		return "/item/Item_report!list.do?item="+request.getParameter("item")+"&type="+request.getParameter("type");
	}
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map item_report = dataBaseControl.getByBean(getMapObject(request));
		Map itemBuild = dataBaseControl.getOneResultSet("select t.yu_touzi from T_ITEM_BUILD t where t.id=?", new Object[]{item_report.get("item")});
		request.setAttribute("item_report",item_report);
		request.setAttribute("item",item_report.get("item"));
		request.setAttribute("itemBuild", itemBuild);
		if("2".equals(item_report.get("type").toString()))
			return "/item/ItemReport/editJiDu.jsp";
		else
			return "/item/ItemReport/editYue.jsp";
	}
	
	/**
	 * 保存更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		Map roport=dataBaseControl.getOneResultSet("select id from T_ITEM_REPORT where item=? and yuefen=? and id!=?", new Object[]{request.getParameter("item"),request.getParameter("yuefen"),request.getParameter("id")});
		if(roport==null){
			dataBaseControl.beginTransaction();
			dataBaseControl.updateByBean(getMapObject(request));
			dataBaseControl.executeSql("update t_Item_build set jieduan=(select JIEDUAN from t_item_report where item=? and yuefen=(select max(yuefen) from t_item_report t where item=?)) where id=? ", new Object[]{request.getParameter("item"),request.getParameter("item"),request.getParameter("item")});
			dataBaseControl.endTransaction();
		}
		return "/item/Item_report!list.do?item="+request.getParameter("item")+"&type="+request.getParameter("type");
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		dataBaseControl.executeSql("DELETE FROM T_ITEM_REPORT WHERE ID=?", new Object[]{request.getParameter("id")});
		return "/item/Item_report!list.do?item="+request.getParameter("item")+"&type="+request.getParameter("type");
	}	
}