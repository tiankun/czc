/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.item;

import java.util.Collection;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

public class Item_biaoAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Collection list=dataBaseControl.getOutResultSet("select * from T_ITEM_BIAO where item=? order by id desc", new Object[]{request.getParameter("item")});
		request.setAttribute("list", list);
		request.setAttribute("item", request.getParameter("item"));
		request.setAttribute("checkArea",this.checkArea(request, request.getParameter("item")));
		return "/item/ItemBiao/list.jsp";
	}
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map item_biao = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("item_biao",item_biao);
		return "/item/ItemBiao/show.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		request.setAttribute("item", request.getParameter("item"));
		return "/item/ItemBiao/create.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		dataBaseControl.insertByBean(getMapObject(request));
		return "/item/Item_biao!list.do?item="+request.getParameter("item");
	}
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map item_biao = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("item_biao",item_biao);
		return "/item/ItemBiao/edit.jsp";
	}
	
	/**
	 * 保存更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		dataBaseControl.updateByBean(getMapObject(request));
		return "/item/Item_biao!list.do?item="+request.getParameter("item");
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		String[] items = request.getParameterValues("items");
		for(int i = 0; i < items.length; i++) {			
			java.math.BigDecimal id = new java.math.BigDecimal(items[i]);
			dataBaseControl.executeSql("DELETE FROM T_ITEM_BIAO WHERE ID=?", new Object[]{id});
		}
		return "/item/Item_biao!list.do?item="+request.getParameter("item");
	}	
}