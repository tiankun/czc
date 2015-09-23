/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2015-3-12</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.village;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javacommon.xsqlbuilder.XsqlBuilder;
import javacommon.xsqlbuilder.XsqlBuilder.XsqlFilterResult;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;

import com.sun.jndi.cosnaming.IiopUrl;
import com.sun.org.apache.xerces.internal.impl.dtd.models.DFAContentModel;
import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;
import com.zsc.map.Village_info;
import com.zsc.web.BaseAction;

public class Village_infoAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		//String biao_shi = request.getParameter("biao_shi");
		Map searchMap=getParameterMap(request);
		String biao_shi=request.getParameter("biao_shi")==null||request.getParameter("biao_shi").equals("")?user.get("biao_shi")+"":request.getParameter("biao_shi");
		/*String sql="select t.* from T_VILLAGE_INFO t join t_didian td on t.city=td.id  where 1=1  and td.biao_shi=? or td.biao_shi like ?" +
				" order by t.id desc";*/
	    String sql2="select t.* from T_VILLAGE_INFO t join t_didian td on t.city=td.id  where 1=1"
	    		 +"/~ and td.biao_shi={biao_shi} ~/ "
				 +"/~ and t.shudi like '%[ec_f_shudi]%' ~/ "
				 +"/~ and t.name like '%[ec_f_name]%' ~/ "
				 +"/~ and t.area like '%[ec_f_area]%' ~/ "
				 +"/~ and t.space like '%[ec_f_space]%' ~/ "
				 +"/~ and t.permenent_residents like '%[ec_f_permenent_residents]%' ~/ "
				 +"/~ and t.revenue like '%[ec_f_revenue]%' ~/ "
				 +"/~ and t.national like '%[ec_f_national]%' ~/ "
				 +"/~ and t.traditional_village_groups like '%[ec_f_traditional_village_groups]%' ~/ "
				 +"/~ and t.request_money_groups like '%[ec_f_request_money_groups]%' ~/ "
				 +"/~ and t.ave_income like '%[ec_f_ave_income]%' ~/ "
				 +"/~ or td.biao_shi like '[biao_shi]%' ~/ "
				 +"/~ and t.shudi like '%[ec_f_shudi]%' ~/ "
				 +"/~ and t.name like '%[ec_f_name]%' ~/ "
				 +"/~ and t.area like '%[ec_f_area]%' ~/ "
				 +"/~ and t.space like '%[ec_f_space]%' ~/ "
				 +"/~ and t.permenent_residents like '%[ec_f_permenent_residents]%' ~/ "
				 +"/~ and t.revenue like '%[ec_f_revenue]%' ~/ "
				 +"/~ and t.national like '%[ec_f_national]%' ~/ "
				 +"/~ and t.traditional_village_groups like '%[ec_f_traditional_village_groups]%' ~/ "
				 +"/~ and t.request_money_groups like '%[ec_f_request_money_groups]%' ~/ "
				 +"/~ and t.ave_income like '%[ec_f_ave_income]%' ~/ "
				 +" order by t.id desc";
		
	    XsqlFilterResult xsql = new XsqlBuilder().generateSql(sql2,searchMap);
	    
		String sql1="select ((nvl(avg(h.pro_progress),0) + nvl(avg(c.pro_progress),0) +nvl(avg(b.pro_progress),0) +nvl(avg(m.pro_progress),0) +nvl(avg(s.pro_progress),0)))/5 avg" +
				" from T_VILLAGE_INFO t " +
				"left join T_VILLAGE_HR h on t.id=h.fid " +
				"left join T_VILLAGE_CR c on t.id=c.fid " +
				"left join T_VILLAGE_BASE b on t.id=b.fid " +
				"left join T_VILLAGE_MODE m on t.id=m.fid " +
				"left join T_VILLAGE_SAFE s on t.id=s.fid " +
				"where t.id =?";
		request.setAttribute("biao_shi", biao_shi);
		
		List<Map> list = (List<Map>) dataBaseControl.getOutResultSet(xsql.getXsql(), xsql.getAcceptedFilters().values().toArray());
		/*List<Map> list = (List<Map>) dataBaseControl.getOutResultSet(sql, new Object[]{biao_shi,biao_shi+"_%"});*/
		int m=list.size();
		Double countNum = 0d;
		if(list!=null && list.size()>0){
			for (int i = 0;i <list.size();i++) {
				Map  map1  = list.get(i);
				String fid=list.get(i).get("id").toString();
				Map map=(Map)dataBaseControl.getOneResultSet(sql1, new Object[]{Integer.parseInt(fid)});
				if(map.get("avg")!=null&&map.size()>0){
					
					countNum+= Double.parseDouble(map.get("avg")+"");
				}
				map1.putAll(map);
			}
			DecimalFormat df=new DecimalFormat("######0.00");
			request.setAttribute("countNum",df.format(countNum/list.size()));
			}
		request.setAttribute("list",list);
		
		return "/village/VillageInfo/list.jsp";
		
	
  }
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		Map village_info = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("village_info",village_info);
		String fid=request.getParameter("id");
		request.setAttribute("fid",fid );
		return "/village/VillageInfo/show.jsp?";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		return "/village/VillageInfo/create.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		dataBaseControl.insertByBean(getMapObject(request));
		return "/village/Village_info!list.do";
	}
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		Map Village_info = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("village_info",Village_info);
		return "/village/VillageInfo/edit.jsp";
	}
	
	/**
	 * 保存更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		dataBaseControl.updateByBean(getMapObject(request));
		return "/village/Village_info!list.do";
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		String[] items = request.getParameterValues("items");
		for(int i = 0; i < items.length; i++) {			
			dataBaseControl.executeSql("DELETE FROM T_VILLAGE_INFO WHERE ID=?", new Object[]{items[i]});
		}
		return "/village/Village_info!list.do";
	}	
}