/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2012-11-14</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.archive;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

/**
 * 荣获名录及相关情况相关操作
 */
public class Rong_yuAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
//		Map rong_yu = dataBaseControl.getByBean(getMapObject(request));
//		request.setAttribute("rong_yu",rong_yu);
		return "/archive/RongYu/show.jsp";
	}

}