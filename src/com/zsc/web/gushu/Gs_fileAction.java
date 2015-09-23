/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2013-10-9</p>
 * <p> @author ������</p>
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
	 * ִ������ 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Page page = dataBaseControl.getPageByBean(getMapObject(request), request);
		savePage(page,request);
		return "/gushu/GsFile/list.jsp";
	}
	
	/** 
	 * �鿴����
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map gs_file = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("gs_file",gs_file);
		return "/gushu/GsFile/show.jsp";
	}
	
	/** 
	 * ��������ҳ��
	 **/
	public String create(HttpServletRequest request) throws Exception {
		return "/gushu/GsFile/create.jsp";
	}
	
	/** 
	 * ������������
	 **/
	public String save(HttpServletRequest request) throws Exception {
		dataBaseControl.insertByBean(getMapObject(request));
		return "/gushu/Gs_file!list.do";
	}
	
	/**
	 * �������ҳ��
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map gs_file = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("gs_file",gs_file);
		return "/gushu/GsFile/edit.jsp";
	}
	
	/**
	 * ������¶���
	 **/
	public String update(HttpServletRequest request) throws Exception {
		dataBaseControl.updateByBean(getMapObject(request));
		return "/gushu/Gs_file!list.do";
	}
	
	/**
	 *ɾ������
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