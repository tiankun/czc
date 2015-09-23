/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2011-5-18</p>
 * <p> @author ������</p>
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
	 * ִ������ 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Page page = dataBaseControl.getPageByBean(getMapObject(request), request);
		savePage(page,request);
		return "/admin/BaseInfo/list.jsp";
	}
	
	/** 
	 * �鿴����
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map base_info = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("base_info",base_info);
		return "/admin/BaseInfo/show.jsp";
	}
	
	/** 
	 * ��������ҳ��
	 **/
	public String create(HttpServletRequest request) throws Exception {
		return "/admin/BaseInfo/create.jsp";
	}
	
	/** 
	 * ������������
	 **/
	public String save(HttpServletRequest request) throws Exception {
		dataBaseControl.insertByBean(getMapObject(request));
		return "/admin/Base_info!list.do";
	}
	
	/**
	 * �������ҳ��
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map base_info = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("base_info",base_info);
		return "/admin/BaseInfo/edit.jsp";
	}
	
	/**
	 * ������¶���
	 **/
	public String update(HttpServletRequest request) throws Exception {
		dataBaseControl.updateByBean(getMapObject(request));
		return "/admin/Base_info!list.do";
	}
	
	/**
	 *ɾ������
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