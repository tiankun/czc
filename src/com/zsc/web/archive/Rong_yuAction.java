/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2012-11-14</p>
 * <p> @author ������</p>
 */
package com.zsc.web.archive;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

/**
 * �ٻ���¼����������ز���
 */
public class Rong_yuAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * �鿴����
	 **/
	public String show(HttpServletRequest request) throws Exception {	
//		Map rong_yu = dataBaseControl.getByBean(getMapObject(request));
//		request.setAttribute("rong_yu",rong_yu);
		return "/archive/RongYu/show.jsp";
	}

}