/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2008-11-19</p>
 * <p> @author ������</p>
 */
package com.zsc.web.admin;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

public class RoleAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * ִ������ 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Collection list = dataBaseControl.getOutResultSet("SELECT * FROM T_ROLE ORDER BY ID", null);
		request.setAttribute("list", list);
		return "/admin/Role/role.jsp";
	}
	
//	/** 
//	 * �鿴����
//	 **/
//	public String show(HttpServletRequest request) throws Exception {	
//		Map role = dataBaseControl.getByBean(getMapObject(request));
//		request.setAttribute("role",role);
//		return "/admin/Role/show.jsp";
//	}
//	
//	/** 
//	 * ��������ҳ��
//	 **/
//	public String create(HttpServletRequest request) throws Exception {
//		return "/admin/Role/create.jsp";
//	}
	
	/** 
	 * ������������
	 **/
	public String save(HttpServletRequest request) throws Exception {
		dataBaseControl.insertByBean(getMapObject(request));
		return "/admin/Role!list.do";
	}
	
//	/**
//	 * �������ҳ��
//	 **/
//	public String edit(HttpServletRequest request) throws Exception {
//		Map role = dataBaseControl.getByBean(getMapObject(request));
//		request.setAttribute("role",role);
//		return "/admin/Role/edit.jsp";
//	}
	
	/**
	 * ������¶���
	 **/
	public String update(HttpServletRequest request) throws Exception {
		dataBaseControl.updateByBean(getMapObject(request));
		return "/admin/Role!list.do";
	}
	
	/**
	 *ɾ������
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		dataBaseControl.deleteByBean(getMapObject(request));
		return "/admin/Role!list.do";
	}	
}