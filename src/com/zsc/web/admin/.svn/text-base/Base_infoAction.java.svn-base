/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2011-5-18</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.admin;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;
import com.zsc.web.BaseAction;

public class Base_infoAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Page page = dataBaseControl.getPageByBean(getMapObject(request), request);
		savePage(page,request);
		return "/admin/BaseInfo/list.jsp";
	}
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map base_info = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("base_info",base_info);
		return "/admin/BaseInfo/show.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		return "/admin/BaseInfo/create.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		dataBaseControl.insertByBean(getMapObject(request));
		return "/admin/Base_info!list.do";
	}
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map base_info = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("base_info",base_info);
		return "/admin/BaseInfo/edit.jsp";
	}
	
	/**
	 * 保存更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		dataBaseControl.updateByBean(getMapObject(request));
		return "/admin/Base_info!list.do";
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		String[] items = request.getParameterValues("items");
		for(int i = 0; i < items.length; i++) {			
			Integer id = new Integer(items[i]);
			dataBaseControl.executeSql("DELETE FROM T_BASE_INFO WHERE ID=?", new Object[]{id});
		}
		return "/admin/Base_info!list.do";
	}	
}