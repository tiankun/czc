/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2011-5-18</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.admin;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

import com.zsc.db.DataBaseControl;
import com.zsc.map.Contact;
import com.zsc.map.Plan;
import com.zsc.util.WebUtil;
import com.zsc.web.BaseAction;

public class PlanAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map item = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("item",item);
		return "/admin/Plan/show.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	@SuppressWarnings("unchecked")
	public String save(HttpServletRequest request) throws Exception {
		String id=request.getParameter("unit_id");
		Map requestMap=request.getParameterMap();
		//保存村联系人信息
		Contact contact_=new Contact();
		BeanUtils.populate(contact_, requestMap);
		if(request.getParameter("contact_id")==null||"".equals(request.getParameter("contact_id")))
			dataBaseControl.insertByBean(contact_);
		else{
			contact_.setId(Integer.valueOf(request.getParameter("contact_id")));
			dataBaseControl.updateByBean(contact_);
		}
		Plan plan_;
        //保存规划编制情况
		for (int i = 0; i < 3; i++) {	
			plan_=new Plan();
			requestMap=new HashMap<String, String>();
			requestMap.put("lei_xing", request.getParameter("lei_xing"+i));
			requestMap.put("zhuang_kuang", request.getParameter("zhuang_kuang"+i));
			requestMap.put("begin", request.getParameter("begin"+i));
			requestMap.put("end", request.getParameter("end"+i));
			requestMap.put("bian_zhi", request.getParameter("bian_zhi"+i));
			requestMap.put("shen_pi", request.getParameter("shen_pi"+i));
			requestMap.put("cheng_guo", request.getParameter("cheng_guo"+i));	
			requestMap.put("remark", request.getParameter("remark"+i));
			BeanUtils.populate(plan_, requestMap);
			plan_.setYear(Integer.parseInt(request.getParameter("year")));
			plan_.setUnit_id(Integer.parseInt(request.getParameter("unit_id")));
			if(request.getParameter("plan_id"+i)==null||"".equals(request.getParameter("plan_id"+i)))
				dataBaseControl.insertByBean(plan_);
			else{
				plan_.setId(Integer.valueOf(request.getParameter("plan_id"+i)));
				dataBaseControl.updateByBean(plan_);
			}
		}
		return "/admin/Plan!edit.do?unit_id="+id;
	}
	
	/**
	 * 进入编辑页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		String id=request.getParameter("unit_id");
		Integer year=WebUtil.getYear();
		//查询村联系人信息
		Map contact = dataBaseControl.getOneResultSet("select * from t_contact t where t.unit_id=? and lx_type='2' and year=?", new Object[]{id,year});
		request.setAttribute("contact",contact);
        //规划编制情况
		String[] temp=new String[]{"a","b","c"};
		for (int i = 0; i < 3; i++) {
			request.setAttribute("plan"+i,dataBaseControl.getOneResultSet("select * from t_plan t where t.unit_id=? and lei_xing=? and year=?", new Object[]{id,temp[i],year}));
		}
		request.setAttribute("unit_id",id);
		request.setAttribute("year",year);
		return "/admin/Plan/edit.jsp";
	}
	/**
	 * 进入编辑页面(县级以上，包括县)
	 **/
	@SuppressWarnings("unchecked")
	public String xianedit(HttpServletRequest request) throws Exception {
		String id=request.getParameter("unit_id");
		Integer year=WebUtil.getYear();
		Map user=dataBaseControl.getOneResultSet("select t.biao_shi from t_didian t where t.id=?", new Object[]{id});
		String biaoshi_=user.get("biao_shi").toString();
		//查询镇联系人信息
		Map contact = dataBaseControl.getOneResultSet("select * from t_contact t where t.unit_id=? and year=? and lx_type='2'", new Object[]{id,year});
		request.setAttribute("contact",contact);				
        //统计规划编制（按照类型）
		Object[] tongb_ = dataBaseControl.getOutResultSet("select sum(a) a,sum(b) b,sum(c) c,sum(d) d,lei_xing from (select a.* from v_tonge a,T_DIDIAN b where a.unit_id=b.id and a.year=? and SUBSTR(b.biao_shi,0,length('"+biaoshi_+"_'))='"+biaoshi_+"_')t group by lei_xing", new Object[]{year}).toArray();
		Map temp;
		for (int i = 0; i < tongb_.length; i++) {
			temp=(Map) tongb_[i];
			if(temp.get("lei_xing")!=null)
			request.setAttribute(temp.get("lei_xing").toString(), temp);
		}		
		//统计乡镇及村庄数量
		Collection tonga = dataBaseControl.getOutResultSet("select b,count(*) mycount from v_tongd t where SUBSTR(biao_shi,0,length('"+biaoshi_+"_'))='"+biaoshi_+"_' group by b order by b asc", null);
		request.setAttribute("tonga",tonga);
		request.setAttribute("unit_id",id);
		request.setAttribute("year",year);
		return "/admin/Plan/xian.jsp";
	}
	/** 
	 * 保存新增对象(县级以上，包括县)
	 **/
	public String xiansave(HttpServletRequest request) throws Exception {
		String id=request.getParameter("unit_id");
		Map requestMap=request.getParameterMap();
		//保存镇联系人信息
		Contact contact_=new Contact();
		BeanUtils.populate(contact_, requestMap);
		if(request.getParameter("contact_id")==null||"".equals(request.getParameter("contact_id")))
			dataBaseControl.insertByBean(contact_);
		else{
			contact_.setId(Integer.valueOf(request.getParameter("contact_id")));
			dataBaseControl.updateByBean(contact_);
		}		
		return "/admin/Plan!xianedit.do?unit_id="+id+"&year="+request.getParameter("year");
	}		
}