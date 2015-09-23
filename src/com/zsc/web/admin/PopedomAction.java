/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2008-11-19</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.admin;

import java.util.Collection;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

import com.zsc.db.DataBaseControl;
import com.zsc.map.Popedom;
import com.zsc.web.BaseAction;

public class PopedomAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Collection myList = dataBaseControl.getOutResultSet("select t.id,t.name,t.path,t.target,case t.type  when 1 then '权限+菜单' when 2 then '权限' else '菜单' end type,t.check_up from t_popedom t order by t.view_group desc,t.father,t.id", null);
		request.setAttribute("myList", myList);
		return "/admin/Popedom/list.jsp";
	}
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map popedom = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("popedom",popedom);
		return "/admin/Popedom/show.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		return "/admin/Popedom/create.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	@SuppressWarnings("unchecked")
	public String save(HttpServletRequest request) throws Exception {
		Popedom popedom=(Popedom) getMapObject(request,new Object[][]{{"view_group",request.getParameter("father")}});
		dataBaseControl.insertByBean(popedom);
		if ("0".equals(request.getParameter("father"))) {
			Map map = dataBaseControl.getByBean(popedom);
			map.put("view_group", map.get("id"));
			BeanUtils.populate(popedom, map);
			dataBaseControl.updateByBean(popedom);
		}
		return "/admin/Popedom!list.do";
	}
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map popedom = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("popedom",popedom);
		return "/admin/Popedom/edit.jsp";
	}
	
	/**
	 * 保存更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		dataBaseControl.updateByBean(getMapObject(request,new Object[][]{{"view_group",request.getParameter("father")}}));
		return "/admin/Popedom!list.do";
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		String[] items = request.getParameterValues("items");
		for(int i = 0; i < items.length; i++) {			
			java.math.BigDecimal id = new java.math.BigDecimal(items[i]);
			dataBaseControl.executeSql("DELETE FROM T_POPEDOM WHERE ID=?", new Object[]{id});
		}
		return "/admin/Popedom!list.do";
	}	
}