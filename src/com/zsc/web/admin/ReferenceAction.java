/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2010-10-14</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.admin;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;
import com.zsc.web.BaseAction;

public class ReferenceAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Page page = dataBaseControl.getPageByBean(getMapObject(request), request);
		savePage(page,request);
		return "/admin/Reference/list.jsp";
	}
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		dataBaseControl.insertByBean(getMapObject(request));
		return "/admin/Reference!list.do";
	}	
//	/** 
//	 * 查看对象
//	 **/
//	public String show(HttpServletRequest request) throws Exception {	
//		Map reference = dataBaseControl.getByBean(getMapObject(request));
//		request.setAttribute("reference",reference);
//		return "/admin/Reference/show.jsp";
//	}
//	
//	/** 
//	 * 进入新增页面
//	 **/
//	public String create(HttpServletRequest request) throws Exception {
//		return "/admin/Reference/create.jsp";
//	}	
//	/**
//	 * 进入更新页面
//	 **/
//	public String edit(HttpServletRequest request) throws Exception {
//		Map reference = dataBaseControl.getByBean(getMapObject(request));
//		request.setAttribute("reference",reference);
//		return "/admin/Reference/edit.jsp";
//	}
//	
//	/**
//	 * 保存更新对象
//	 **/
//	public String update(HttpServletRequest request) throws Exception {
//		dataBaseControl.updateByBean(getMapObject(request));
//		return "/admin/Reference!list.do";
//	}
//	
//	/**
//	 *删除对象
//	 **/
//	public String delete(HttpServletRequest request) throws Exception {
//		String[] items = request.getParameterValues("items");
//		for(int i = 0; i < items.length; i++) {			
//			Integer id = new Integer(items[i]);
//			dataBaseControl.executeSql("DELETE FROM T_REFERENCE WHERE ID=?", new Object[]{id});
//		}
//		return "/admin/Reference!list.do";
//	}	
}