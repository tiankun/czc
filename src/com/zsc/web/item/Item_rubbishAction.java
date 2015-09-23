/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author ������</p>
 */
package com.zsc.web.item;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

public class Item_rubbishAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	
	/** 
	 * �鿴����
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map itemRubbish = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("itemRubbish",itemRubbish);
		return "/item/ItemRubbish/show.jsp";
	}
	
	/** 
	 * ��������ҳ��
	 **/
	public String create(HttpServletRequest request) throws Exception {
		String jsp = "";
		Map itemRubbish = dataBaseControl.getByBean(getMapObject(request));
		if(this.checkArea(request,request.getParameter("id"))){
			jsp = "/item/ItemRubbish/create.jsp";
		}else{
			jsp = "/item/ItemRubbish/show.jsp";
		}
		request.setAttribute("item", request.getParameter("id"));
		request.setAttribute("itemRubbish", itemRubbish);
		request.setAttribute("info", request.getParameter("info"));
		return jsp;
	}
	
	/** 
	 * ������������
	 **/
	public String save(HttpServletRequest request) throws Exception {
		String id = request.getParameter("id");
		
		int itemRubbish = dataBaseControl.getResultSetSize("select t.id from T_ITEM_RUBBISH t where t.id=?", new Object[]{id});		
		if(itemRubbish==0){
			dataBaseControl.insertByBean(getMapObject(request),id);
		}else{
			dataBaseControl.updateByBean(getMapObject(request));
		}
		
		return "/item/Item_rubbish!create.do?id="+id+"&info=success";
	}	
}