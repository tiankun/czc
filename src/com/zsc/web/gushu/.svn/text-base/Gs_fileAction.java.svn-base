/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-10-9</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.gushu;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;
import com.zsc.web.BaseAction;

public class Gs_fileAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Page page = dataBaseControl.getPageByBean(getMapObject(request), request);
		savePage(page,request);
		return "/gushu/GsFile/list.jsp";
	}
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map gs_file = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("gs_file",gs_file);
		return "/gushu/GsFile/show.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		return "/gushu/GsFile/create.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		dataBaseControl.insertByBean(getMapObject(request));
		return "/gushu/Gs_file!list.do";
	}
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map gs_file = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("gs_file",gs_file);
		return "/gushu/GsFile/edit.jsp";
	}
	
	/**
	 * 保存更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		dataBaseControl.updateByBean(getMapObject(request));
		return "/gushu/Gs_file!list.do";
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		String[] items = request.getParameterValues("items");
		for(int i = 0; i < items.length; i++) {			
			java.math.BigDecimal id = new java.math.BigDecimal(items[i]);
			dataBaseControl.executeSql("DELETE FROM T_GS_FILE WHERE ID=?", new Object[]{id});
		}
		return "/gushu/Gs_file!list.do";
	}	
}