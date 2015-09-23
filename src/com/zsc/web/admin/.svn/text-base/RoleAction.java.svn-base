/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2008-11-19</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.admin;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

public class RoleAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Collection list = dataBaseControl.getOutResultSet("SELECT * FROM T_ROLE ORDER BY ID", null);
		request.setAttribute("list", list);
		return "/admin/Role/role.jsp";
	}
	
//	/** 
//	 * 查看对象
//	 **/
//	public String show(HttpServletRequest request) throws Exception {	
//		Map role = dataBaseControl.getByBean(getMapObject(request));
//		request.setAttribute("role",role);
//		return "/admin/Role/show.jsp";
//	}
//	
//	/** 
//	 * 进入新增页面
//	 **/
//	public String create(HttpServletRequest request) throws Exception {
//		return "/admin/Role/create.jsp";
//	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		dataBaseControl.insertByBean(getMapObject(request));
		return "/admin/Role!list.do";
	}
	
//	/**
//	 * 进入更新页面
//	 **/
//	public String edit(HttpServletRequest request) throws Exception {
//		Map role = dataBaseControl.getByBean(getMapObject(request));
//		request.setAttribute("role",role);
//		return "/admin/Role/edit.jsp";
//	}
	
	/**
	 * 保存更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		dataBaseControl.updateByBean(getMapObject(request));
		return "/admin/Role!list.do";
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		dataBaseControl.deleteByBean(getMapObject(request));
		return "/admin/Role!list.do";
	}	
}