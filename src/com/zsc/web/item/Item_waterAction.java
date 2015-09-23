/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.item;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

public class Item_waterAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map item_water = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("item_water",item_water);
		return "/item/ItemWater/show.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		String jsp = "";
		Map itemWater = dataBaseControl.getByBean(getMapObject(request));
		if(this.checkArea(request,request.getParameter("id"))){
			jsp = "/item/ItemWater/create.jsp";
		}else{
			jsp = "/item/ItemWater/show.jsp";
		}
		request.setAttribute("item",request.getParameter("id"));
		request.setAttribute("itemWater", itemWater);
		request.setAttribute("info", request.getParameter("info"));
		return jsp;
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		String id = request.getParameter("id");
		int itemWater = dataBaseControl.getResultSetSize("select t.id from T_ITEM_WATER t where t.id=?", new Object[]{id});		
		if(itemWater==0){
			dataBaseControl.insertByBean(getMapObject(request),id);
		}else{
			dataBaseControl.updateByBean(getMapObject(request));
		}
		
		return "/item/Item_water!create.do?id="+id+"&info=success";
	}	
}