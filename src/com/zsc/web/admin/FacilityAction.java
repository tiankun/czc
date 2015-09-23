/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2011-5-18</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.admin;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;
import com.zsc.map.Contact;
import com.zsc.map.Facility;
import com.zsc.util.WebUtil;
import com.zsc.web.BaseAction;

public class FacilityAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Page page = dataBaseControl.getPageByBean(getMapObject(request), request);
		savePage(page,request);
		return "/admin/Facility/list.jsp";
	}
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map item = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("item",item);
		return "/admin/Facility/show.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
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
		//保存社会经济情况
		Facility facility_=new Facility();
		BeanUtils.populate(facility_, requestMap);
		if(request.getParameter("facility_id")==null||"".equals(request.getParameter("facility_id")))
			dataBaseControl.insertByBean(facility_);
		else{
			facility_.setId(Integer.valueOf(request.getParameter("facility_id")));
			dataBaseControl.updateByBean(facility_);
		}
		return "/admin/Facility!edit.do?unit_id="+id;
	}
	
	/**
	 * 进入编辑页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		String id=request.getParameter("unit_id");
		//查询镇联系人信息
		Map contact = dataBaseControl.getOneResultSet("select * from t_contact t where t.unit_id=? and lx_type='3'", new Object[]{id});
		request.setAttribute("contact",contact);		
		//查询社会经济情况
		Map facility = dataBaseControl.getOneResultSet("select * from t_facility t where t.unit_id=?", new Object[]{id});
		request.setAttribute("facility",facility);
		request.setAttribute("unit_id",id);
		return "/admin/Facility/edit.jsp";
	}
	/**
	 * 进入编辑页面(县级以上，包括县)
	 **/
	public String xianedit(HttpServletRequest request) throws Exception {
		String id=request.getParameter("unit_id");
		Integer year=WebUtil.getYear();
		Map user=dataBaseControl.getOneResultSet("select t.biao_shi from t_didian t where t.id=?", new Object[]{id});
		String biaoshi_=user.get("biao_shi").toString();
		//查询镇联系人信息
		Map contact = dataBaseControl.getOneResultSet("select * from t_contact t where t.unit_id=? and year=? and lx_type='3'", new Object[]{id,year});
		request.setAttribute("contact",contact);				
        //统计
		Map tongf1 = dataBaseControl.getOneResultSet("select sum(a) a,sum(b) b,sum(c) c,sum(d) d,sum(e) e,sum(f) f,sum(ZL_GUIMO) ZL_GUIMO,sum(zl_fuwu) zl_fuwu,sum(zl_touzi) zl_touzi,sum(a1) a1,sum(b1) b1,sum(c1) c1,sum(d1) d1,sum(e1) e1,sum(f1) f1,sum(ZL_GUANCHANG) ZL_GUANCHANG,sum(ZL_MIANJI) ZL_MIANJI from v_tongf1 where year=? and unit_id in(select t.ID from v_tongd t where t.B=3 and SUBSTR(biao_shi,0,length('"+biaoshi_+"_'))='"+biaoshi_+"_')", new Object[]{year});
		request.setAttribute("tongf1",tongf1);
		Map tongf2 = dataBaseControl.getOneResultSet("select sum(a) a,sum(b) b,sum(c) c,sum(d) d,sum(e) e,sum(f) f,sum(WS_GUIMO) WS_GUIMO,sum(WS_TOUZI) WS_TOUZI,sum(a1) a1,sum(b1) b1,sum(c1) c1,sum(d1) d1,sum(e1) e1,sum(f1) f1,sum(WS_GUANCHANG) WS_GUANCHANG from v_tongf2 where year=? and unit_id in(select t.ID from v_tongd t where t.B=3 and SUBSTR(biao_shi,0,length('"+biaoshi_+"_'))='"+biaoshi_+"_')", new Object[]{year});
		request.setAttribute("tongf2",tongf2);
		Map tongf3 = dataBaseControl.getOneResultSet("select sum(a) a,sum(b) b,sum(c) c,sum(d) d,sum(e) e,sum(f) f,sum(LJ_GUIMO) LJ_GUIMO,sum(LJ_ZHONGZHUAN) LJ_ZHONGZHUAN,sum(LJ_CHE) LJ_CHE,sum(LJ_TOUZI) LJ_TOUZI from v_tongf3 where year=? and unit_id in(select t.ID from v_tongd t where t.B=3 and SUBSTR(biao_shi,0,length('"+biaoshi_+"_'))='"+biaoshi_+"_')", new Object[]{year});
		request.setAttribute("tongf3",tongf3);
		Map tongf4 = dataBaseControl.getOneResultSet("select sum(a) a,sum(b) b,sum(c) c,sum(JD_SHU) JD_SHU,sum(a1) a1,sum(b1) b1,sum(c1) c1,sum(JM_SHU) JM_SHU from v_tongf4 where year=? and unit_id in(select t.ID from v_tongd t where t.B=3 and SUBSTR(biao_shi,0,length('"+biaoshi_+"_'))='"+biaoshi_+"_')", new Object[]{year});
		request.setAttribute("tongf4",tongf4);
		request.setAttribute("unit_id",id);
		request.setAttribute("year",year);
		return "/admin/Facility/xian.jsp";
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
		return "/admin/Facility!xianedit.do?unit_id="+id+"&year="+request.getParameter("year");
	}	
}