package com.zsc.web.tese;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

import com.zsc.db.DataBaseControl;
import com.zsc.map.Fuze;
import com.zsc.web.BaseAction;

public class Ts_fuzeAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	private String type="tese";
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {
		Long unit_id=new Long(request.getParameter("id"));
        Map fu_ze = dataBaseControl.getOneResultSet("select * from t_fuze where type='"+type+"' and unit_id=?", new Object[]{unit_id});
        request.setAttribute("fu_ze",fu_ze);
		request.setAttribute("didian",dataBaseControl.getOneResultSet("select quan_ming from t_didian where id=?", new Object[]{unit_id}));
		return "/tese/Fuze/show.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
        Map fu_ze = dataBaseControl.getOneResultSet("select * from t_fuze where type='"+type+"' and unit_id=?", new Object[]{unit_id});
        request.setAttribute("fu_ze",fu_ze);
		request.setAttribute("suss",request.getParameter("suss"));        
		return "/tese/Fuze/edit.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
		dataBaseControl.beginTransaction();
		dataBaseControl.executeSql("delete from t_fuze where type='"+type+"' and unit_id=?", new Object[]{unit_id});
		Fuze fuze=new Fuze();
		Map map=request.getParameterMap();
		BeanUtils.populate(fuze, map);
		fuze.setUnit_id(unit_id);
		fuze.setType(type);
		dataBaseControl.insertByBean(fuze);
		dataBaseControl.endTransaction();
		return "/tese/Ts_fuze!edit.do?suss=suss";
		
	}
}
