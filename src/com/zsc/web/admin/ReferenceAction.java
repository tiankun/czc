/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2010-10-14</p>
 * <p> @author ������</p>
 */
package com.zsc.web.admin;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;
import com.zsc.web.BaseAction;

public class ReferenceAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * ִ������ 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Page page = dataBaseControl.getPageByBean(getMapObject(request), request);
		savePage(page,request);
		return "/admin/Reference/list.jsp";
	}
	/** 
	 * ������������
	 **/
	public String save(HttpServletRequest request) throws Exception {
		dataBaseControl.insertByBean(getMapObject(request));
		return "/admin/Reference!list.do";
	}	
//	/** 
//	 * �鿴����
//	 **/
//	public String show(HttpServletRequest request) throws Exception {	
//		Map reference = dataBaseControl.getByBean(getMapObject(request));
//		request.setAttribute("reference",reference);
//		return "/admin/Reference/show.jsp";
//	}
//	
//	/** 
//	 * ��������ҳ��
//	 **/
//	public String create(HttpServletRequest request) throws Exception {
//		return "/admin/Reference/create.jsp";
//	}	
//	/**
//	 * �������ҳ��
//	 **/
//	public String edit(HttpServletRequest request) throws Exception {
//		Map reference = dataBaseControl.getByBean(getMapObject(request));
//		request.setAttribute("reference",reference);
//		return "/admin/Reference/edit.jsp";
//	}
//	
//	/**
//	 * ������¶���
//	 **/
//	public String update(HttpServletRequest request) throws Exception {
//		dataBaseControl.updateByBean(getMapObject(request));
//		return "/admin/Reference!list.do";
//	}
//	
//	/**
//	 *ɾ������
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