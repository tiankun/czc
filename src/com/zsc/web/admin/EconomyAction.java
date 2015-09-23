/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2011-5-18</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.admin;

import java.util.Arrays;
import java.util.Collection;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;
import com.zsc.map.Base_info;
import com.zsc.map.Contact;
import com.zsc.map.Economy;
import com.zsc.util.WebUtil;
import com.zsc.web.BaseAction;

public class EconomyAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Page page = dataBaseControl.getPageByBean(getMapObject(request), request);
		savePage(page,request);
		return "/admin/Economy/list.jsp";
	}
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map item = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("item",item);
		return "/admin/Economy/show.jsp";
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
		Economy economy_=new Economy();
		BeanUtils.populate(economy_, requestMap);
		economy_.setTe_shu(Arrays.toString(request.getParameterValues("te_shu")));
		if(request.getParameter("economy_id")==null||"".equals(request.getParameter("economy_id")))
			dataBaseControl.insertByBean(economy_);
		else{
			economy_.setId(Integer.valueOf(request.getParameter("economy_id")));
			dataBaseControl.updateByBean(economy_);
		}
		return "/admin/Economy!edit.do?unit_id="+id+"&year="+request.getParameter("year");
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
		//查询镇联系人信息
		Map contact = dataBaseControl.getOneResultSet("select * from t_contact t where t.unit_id=? and year=? and lx_type='1'", new Object[]{id,year});
		request.setAttribute("contact",contact);		
		//查询社会经济情况
		Map economy = dataBaseControl.getOneResultSet("select * from t_economy t where t.unit_id=? and year=?", new Object[]{id,year});
		request.setAttribute("economy",economy);
		request.setAttribute("unit_id",id);
		request.setAttribute("year",year);
		return "/admin/Economy/edit.jsp";
	}
	/**
	 * 进入编辑页面(县级以上，包括县)
	 **/
	public String xianedit(HttpServletRequest request) throws Exception {
		String id=request.getParameter("unit_id");
		Integer year=WebUtil.getYear();
		//查询镇联系人信息
		Map contact = dataBaseControl.getOneResultSet("select * from t_contact t where t.unit_id=? and year=? and lx_type='1'", new Object[]{id,year});
		request.setAttribute("contact",contact);		
		//查询社会经济情况(统计)
		Map user=dataBaseControl.getOneResultSet("select t.biao_shi from t_didian t where t.id=?", new Object[]{id});
		Map economy = dataBaseControl.getOneResultSet("select sum (mycount) mycount,sum(ZONG_REN) ZONG_REN,sum(NONG) NONG,sum(NONG_HU) NONG_HU,sum(LAO_DONG) LAO_DONG,sum(ZONG_MIANJ) ZONG_MIANJ,sum(GENG_DI) GENG_DI,sum(ZONG_SHENGC) ZONG_SHENGC,sum(JINGJ_ZONG) JINGJ_ZONG,(sum(ZONG_SHENGC)*1000/sum(ZONG_REN)) NONGM_JUN,sum(YI) YI,sum(ER) ER,sum(SAN) SAN,sum(ZHU_REN) ZHU_REN,sum(ZHU_MIAN) ZHU_MIAN,sum(ZHU_XIN) ZHU_XIN,sum(ZHU_ZHUAN) ZHU_ZHUAN,sum(a1) a1,sum(a2) a2,sum(a3) a3,sum(a4) a4,sum(baqu) baqu,sum(shanqu) shanqu,sum(b1) b1,sum(b2) b2,sum(b3) b3,sum(b4) b4,sum(b5) b5,sum(b6) b6,sum(c1) c1,sum(c2) c2,sum(c3) c3 from v_tonga t where t.year=? and t.unit_id in(select t.ID from v_tongd t where t.B=3 and SUBSTR(biao_shi,0,length('"+user.get("biao_shi").toString()+"_'))='"+user.get("biao_shi").toString()+"_')", new Object[]{year});
		request.setAttribute("economy",economy);
		String biaoshi_=user.get("biao_shi").toString();
		//统计小城镇（建制镇＋乡）人口规模划分及职能类型
		Map tongb = dataBaseControl.getOneResultSet("select sum(mycount) mycount,sum(a1) a1,sum(a2) a2,sum(a3) a3,sum(a4) a4,sum(b1) b1,sum(b2) b2,sum(b3) b3,sum(b4) b4,sum(b5) b5,sum(b6) b6 from v_tongb t where t.year=? and t.unit_id in(select t.ID from v_tongd t where t.B=3 and SUBSTR(biao_shi,0,length('"+biaoshi_+"_'))='"+biaoshi_+"_')", new Object[]{year});
		request.setAttribute("tongb",tongb);		
        //统计特色小镇数量及职能类型
		Map tongc = dataBaseControl.getOneResultSet("select sum(mycount) mycount,sum(a1) a1,sum(a2) a2,sum(a3) a3,sum(a4) a4,sum(a5) a5,sum(a6) a6 from v_tongc t where t.year=? and t.unit_id in(select t.ID from v_tongd t where t.B=3 and SUBSTR(biao_shi,0,length('"+biaoshi_+"_'))='"+biaoshi_+"_')", new Object[]{year});
		request.setAttribute("tongc",tongc);
		//统计村庄数量
		Collection tongd = dataBaseControl.getOutResultSet("select b,count(*) mycount from v_tongd t where (t.B=4 or t.B=5) and SUBSTR(biao_shi,0,length('"+biaoshi_+"_'))='"+biaoshi_+"_' group by b order by b asc", null);
		request.setAttribute("tongd",tongd);
		request.setAttribute("unit_id",id);
		request.setAttribute("year",year);
		return "/admin/Economy/xian.jsp";
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
		return "/admin/Economy!xianedit.do?unit_id="+id+"&year="+request.getParameter("year");
	}	
}