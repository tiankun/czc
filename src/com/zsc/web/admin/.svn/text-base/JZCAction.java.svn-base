/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Created on 2011-5-19</p>
 * <p> @author ShenChang zou</p>
 */
package com.zsc.web.admin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

import com.zsc.db.DataBaseControl;
import com.zsc.map.Base_info;
import com.zsc.map.Contact;
import com.zsc.map.Economy;
import com.zsc.map.Facility;
import com.zsc.map.Plan;
import com.zsc.util.WebUtil;
import com.zsc.web.BaseAction;
/**
 * 建制村相关处理
 * @author 邹申昶
 */
public class JZCAction
	extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map item = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("item",item);
		return "/admin/jzc/show.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		String id=request.getParameter("unit_id");
		Map requestMap=request.getParameterMap();
		//保存基本介绍
		Map base_info = dataBaseControl.getOneResultSet("select * from t_base_info t where t.id=?", new Object[]{id});
		Base_info base_info_=new Base_info();
		BeanUtils.populate(base_info_, requestMap);
		if(base_info==null)
			dataBaseControl.insertByBeanLob(base_info_, new Long(id));
		else{
			base_info_.setId(new Integer(id));
			dataBaseControl.updateByBeanLob(base_info_);
			}
		//保存村联系人信息
		Contact contact_=new Contact();
		BeanUtils.populate(contact_, requestMap);
		if(request.getParameter("contact_id")==null||"".equals(request.getParameter("contact_id")))
			dataBaseControl.insertByBean(contact_);
		else{
			contact_.setId(Integer.valueOf(request.getParameter("contact_id")));
			dataBaseControl.updateByBean(contact_);
		}
		//保存社会经济情况
		Economy economy_=new Economy();
		BeanUtils.populate(economy_, requestMap);
		if(request.getParameter("economy_id")==null||"".equals(request.getParameter("economy_id")))
			dataBaseControl.insertByBean(economy_);
		else{
			economy_.setId(Integer.valueOf(request.getParameter("economy_id")));
			dataBaseControl.updateByBean(economy_);
		}
        //保存规划编制情况
		Plan plan_=new Plan();
		BeanUtils.populate(plan_, requestMap);
		plan_.setLei_xing("d");
		if(request.getParameter("plan_id")==null||"".equals(request.getParameter("plan_id")))
			dataBaseControl.insertByBean(plan_);
		else{
			plan_.setId(Integer.valueOf(request.getParameter("plan_id")));
			dataBaseControl.updateByBean(plan_);
		}
        //保存设施现状	
		Facility facility_=new Facility();
		BeanUtils.populate(facility_, requestMap);
		if(request.getParameter("facility_id")==null||"".equals(request.getParameter("facility_id")))
			dataBaseControl.insertByBean(facility_);
		else{
			facility_.setId(Integer.valueOf(request.getParameter("facility_id")));
			dataBaseControl.updateByBean(facility_);
		}
		return "/admin/JZC!edit.do?unit_id="+id+"&year="+request.getParameter("year");
	}
	
	/**
	 * 进入编辑页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		String id=request.getParameter("unit_id");
		Integer year=WebUtil.getYear();
		//查询基本介绍
		Map base_info = dataBaseControl.getOneResultSet("select * from t_base_info t where t.id=?", new Object[]{id});
		request.setAttribute("base_info",base_info);
		//查询村联系人信息
		Map contact = dataBaseControl.getOneResultSet("select * from t_contact t where t.unit_id=? and year=?", new Object[]{id,year});
		request.setAttribute("contact",contact);
		//查询社会经济情况
		Map economy = dataBaseControl.getOneResultSet("select * from t_economy t where t.unit_id=? and year=?", new Object[]{id,year});
		request.setAttribute("economy",economy);
        //查询规划编制情况
		Map plan = dataBaseControl.getOneResultSet("select * from t_plan t where t.unit_id=? and year=?", new Object[]{id,year});
		request.setAttribute("plan",plan);
        //基础设施现状
		Map facility = dataBaseControl.getOneResultSet("select * from t_facility t where t.unit_id=? and year=?", new Object[]{id,year});
		request.setAttribute("facility",facility);
		request.setAttribute("unit_id",id);
		request.setAttribute("year",year);
		return "/admin/jzc/edit.jsp";
	}
}