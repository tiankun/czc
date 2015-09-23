/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-1-23</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.tese;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

/**
 * 特色小镇项目情况相关操作
 */
public class Zhen_xiangmuAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();
	/** 
	 * 执行搜索 
	 **/
	public String listGuan(HttpServletRequest request) throws Exception {
		Long unit_id=new Long(request.getParameter("id"));
		List list = (List) dataBaseControl.getOutResultSet("select * from T_ZHEN_XIANGMU where unit_id=?", new Object[]{unit_id});
		request.setAttribute("list", list);
		request.setAttribute("didian",dataBaseControl.getOneResultSet("select quan_ming from t_didian where id=?", new Object[]{unit_id}));
		return "/tese/ZhenXiangmu/listGuan.jsp";
	}	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
		List list = (List) dataBaseControl.getOutResultSet("select * from T_ZHEN_XIANGMU where unit_id=?", new Object[]{unit_id});
		request.setAttribute("list", list);
		return "/tese/ZhenXiangmu/list.jsp";
	}
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map zhen_xiangmu = dataBaseControl.getOneResultSet("select t.*,a.quan_ming unit_name from t_zhen_xiangmu t,t_didian a where t.id=? and t.unit_id=a.id", new Object[]{request.getParameter("id")});
		request.setAttribute("zhen_xiangmu",zhen_xiangmu);
		return "/tese/ZhenXiangmu/show.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		return "/tese/ZhenXiangmu/create.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
		dataBaseControl.insertByBean(getMapObject(request,new Object[][]{{"unit_id",unit_id}}));
		return "/tese/Zhen_xiangmu!list.do";
	}
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map zhen_xiangmu = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("zhen_xiangmu",zhen_xiangmu);
		return "/tese/ZhenXiangmu/edit.jsp";
	}
	
	/**
	 * 保存更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
		dataBaseControl.updateByBean(getMapObject(request,new Object[][]{{"unit_id",unit_id}}));
		return "/tese/Zhen_xiangmu!list.do";
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		String[] items = request.getParameterValues("items");
		for(int i = 0; i < items.length; i++) {			
			java.math.BigDecimal id = new java.math.BigDecimal(items[i]);
			dataBaseControl.executeSql("DELETE FROM T_ZHEN_XIANGMU WHERE ID=?", new Object[]{id});
		}
		return "/tese/Zhen_xiangmu!list.do";
	}	
}