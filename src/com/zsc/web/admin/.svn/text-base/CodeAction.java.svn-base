/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2010-10-14</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.admin;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;
import com.zsc.web.BaseAction;

public class CodeAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		List list=(List) dataBaseControl.getOutResultSet("select * from T_CODE where reference_id=? order by shun_xu", new Object[]{request.getParameter("reference_id")});
	    request.setAttribute("myList", list);
	    request.setAttribute("reference_id", request.getParameter("reference_id"));
		return "/admin/Code/list.jsp";
	}
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		dataBaseControl.insertByBean(getMapObject(request));
		return "/admin/Code!list.do?reference_id="+request.getParameter("reference_id");
	}		
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map code = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("code",code);
		Page page = dataBaseControl.getPageByBean(getMapObject(request), request);
		savePage(page,request);
	    request.setAttribute("reference_id", code.get("reference_id"));		
		return "/admin/Code/list.jsp";
	}
	
	/**
	 * 保存更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		dataBaseControl.updateByBean(getMapObject(request));
		return "/admin/Code!list.do?reference_id="+request.getParameter("reference_id");
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		String[] items = request.getParameterValues("items");
		for(int i = 0; i < items.length; i++) {			
			Integer id = new Integer(items[i]);
			dataBaseControl.executeSql("DELETE FROM T_CODE WHERE ID=?", new Object[]{id});
		}
		return "/admin/Code!list.do?reference_id="+request.getParameter("reference_id");
	}
//	/** 
//	 * 查看对象
//	 **/
//	public String show(HttpServletRequest request) throws Exception {	
//		Map code = dataBaseControl.getByBean(getMapObject(request));
//		request.setAttribute("code",code);
//		return "/admin/Code/show.jsp";
//	}
//	
//	/** 
//	 * 进入新增页面
//	 **/
//	public String create(HttpServletRequest request) throws Exception {
//		return "/admin/Code/create.jsp";
//	}
//	
}