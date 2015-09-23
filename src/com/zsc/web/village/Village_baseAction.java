/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2015-3-12</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.village;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import javacommon.xsqlbuilder.XsqlBuilder;
import javacommon.xsqlbuilder.XsqlBuilder.XsqlFilterResult;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;

import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;
import com.zsc.web.BaseAction;

public class Village_baseAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		String biao_shi=request.getParameter("biao_shi")==null||request.getParameter("biao_shi").equals("")?user.get("biao_shi")+"":request.getParameter("biao_shi");
		String sql="select t.*from T_VILLAGE_BASE t join t_didian td on t.city=td.id  where 1=1  and t.fid=?" +
				" order by t.id desc";
		request.setAttribute("fid", request.getParameter("fid"));
		request.setAttribute("biao_shi", biao_shi);
		request.setAttribute("user", user);
		List<Map> list = (List<Map>) dataBaseControl.getOutResultSet(sql, new Object[]{ Integer.parseInt(request.getParameter("fid").toString())});
		request.setAttribute("list",list);
		
		Map searchMap=getParameterMap(request);
		String sql1="select cast(avg(t.PRO_PROGRESS) as decimal(18,2))avg from T_VILLAGE_BASE t join t_didian td on t.city=td.id  where 1=1"
				 +"/~ and t.fid ={fid} ~/ "
				 +"/~ and t.pro_id like '%[ec_f_pro_id]%' ~/ "
				 +"/~ and t.pro_name like '%[ec_f_pro_name]%' ~/ "
				 +"/~ and t.pro_content like '%[ec_f_pro_content]%' ~/ "
				 +"/~ and t.pro_scope like '%[ec_f_pro_scope]%' ~/ "
				 +"/~ and t.pro_progress like '%[ec_f_pro_progress]%' ~/ "
				 +"/~ and t.stime =to_date({ec_f_stime},'yyyy-MM-dd') ~/ "
				 +"/~ and t.ftime =to_date({ec_f_ftime},'yyyy-MM-dd') ~/ "
				 +"/~ and t.constructionperiod like '%[ec_f_constructionperiod]%' ~/ "
				 +"/~ and t.shudi like '%[ec_f_shudi]%' ~/ "
				 +" order by t.id desc";
		
		XsqlFilterResult xsql = new XsqlBuilder().generateSql(sql1,searchMap); 
		//Page page=dataBaseControl.getPageResultSet(xsql.getXsql(), xsql.getAcceptedFilters().values().toArray(),pageNo,pageSize);
		List list2 =(List)dataBaseControl.getOutResultSet(xsql.getXsql(), xsql.getAcceptedFilters().values().toArray());
		request.setAttribute("list2", list2);
		
		return "/village/VillageBase/list.jsp";
	}
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map village_base = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("village_base",village_base);
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		request.setAttribute("fid", request.getParameter("fid"));
		return "/village/VillageBase/show.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		request.setAttribute("fid",request.getParameter("fid").toString());
		return "/village/VillageBase/create.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		String fid=request.getParameter("fid");
		dataBaseControl.insertByBean(getMapObject(request));
		return "/village/Village_base!list.do?fid="+fid;
	}
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		Map village_base = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("village_base",village_base);
		request.setAttribute("fid", request.getParameter("fid"));
		return "/village/VillageBase/edit.jsp";
	}
	
	/**
	 * 保存更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		
		dataBaseControl.updateByBean(getMapObject(request));
		String  fid= request.getParameter("fid");
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		return "/village/Village_base!list.do?biao_shi="+biao_shi+"&fid="+fid;
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		String[] items = request.getParameterValues("items");
		String fid=request.getParameter("fid");
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		for(int i = 0; i < items.length; i++) {			
			dataBaseControl.executeSql("DELETE FROM T_VILLAGE_BASE WHERE ID=?", new Object[]{items[i]});
		}
		return "/village/Village_base!list.do?biao_shi="+biao_shi+"&fid="+fid;
	}	
}