/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2012-11-14</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.archive;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

/**
 * 近期建设项目情况相关操作
 */
public class Jq_xiangmuAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request,HttpServletResponse response) throws Exception {	
		Map jq_xiangmu = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("jq_xiangmu",jq_xiangmu);
		return "/archive/JqXiangmu/show.jsp";
	}
}