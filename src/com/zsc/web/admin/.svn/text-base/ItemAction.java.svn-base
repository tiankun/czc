/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2011-5-18</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.admin;

import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

public class ItemAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		String id=request.getParameter("unit_id");
		request.setAttribute("unit_id",id);		
        Map view_user = dataBaseControl.getOneResultSet("select length(a.biao_shi)-length(replace(a.biao_shi,'_')) mylength,a.biao_shi from t_didian a where a.id=?", new Object[]{id});
        request.setAttribute("view_user",view_user);
        return "/admin/Item/list.jsp";
	}
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map item = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("item",item);
		return "/admin/Item/show.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		String id=request.getParameter("unit_id");
		request.setAttribute("unit_id",id);
		request.setAttribute("edit_id",id);
        Map view_user = dataBaseControl.getOneResultSet("select length(a.biao_shi)-length(replace(a.biao_shi,'_')) mylength,a.biao_shi from t_didian a where a.id=?", new Object[]{id});
        request.setAttribute("view_user",view_user);		
		return "/admin/Item/edit.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		String id =request.getParameter("id");
		if (id == null || "".equals(id))
			dataBaseControl.insertByBean(getMapObject(request,new Object[][]{{"tian_jia",new java.sql.Date(new Date().getTime())}}));
		else
			dataBaseControl.updateByBean(getMapObject(request));
		return "/admin/Item!list.do?unit_id="+request.getParameter("back_id");
	}
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map item = dataBaseControl.getByBean(getMapObject(request,new Object[][]{{"unit_id",null}}));
		request.setAttribute("item",item);
        Map view_user = dataBaseControl.getOneResultSet("select length(a.biao_shi)-length(replace(a.biao_shi,'_')) mylength,a.biao_shi from t_didian a where a.id=?", new Object[]{request.getParameter("unit_id")});
        request.setAttribute("view_user",view_user);
        request.setAttribute("edit_id",item.get("unit_id"));
        request.setAttribute("unit_id",request.getParameter("unit_id"));
		return "/admin/Item/edit.jsp";
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		String[] items = request.getParameterValues("items");
		for(int i = 0; i < items.length; i++) {			
			Integer id = new Integer(items[i]);
			dataBaseControl.executeSql("DELETE FROM T_ITEM WHERE ID=?", new Object[]{id});
		}
		return "/admin/Item!list.do?unit_id="+request.getParameter("unit_id");
	}	
}