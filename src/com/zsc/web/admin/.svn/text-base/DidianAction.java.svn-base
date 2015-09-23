/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2010-10-14</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.admin;

import java.util.Map;

import javacommon.xsqlbuilder.SafeSqlProcesserFactory;
import javacommon.xsqlbuilder.XsqlBuilder;
import javacommon.xsqlbuilder.XsqlBuilder.XsqlFilterResult;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;
import com.zsc.map.Didian;
import com.zsc.web.BaseAction;

public class DidianAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
        //sql语句,/~ ~/为一个语法块
		String sql= "select t.*,h.quan_ming parent_name from v_didian t,t_didian h where 1=1 " 
		          + "/~ and remark like '%[remark]%' ~/"   
		          + "/~ and t.quan_ming like '%[quan_ming]%' ~/"
		          + "/~ and t.zhu_xiao like '%[zhu_xiao]%' ~/"	
		          + "/~ and t.jibie like '%[jibie]%' ~/"		          
		          + " and t.parent=h.id order by t.parent,t.id";   
		XsqlFilterResult result = new XsqlBuilder(SafeSqlProcesserFactory.getOracle()).generateSql(sql,getParameterMap(request));  	
		String pageSize=request.getParameter("pageSize");
		String pageNumber=request.getParameter("pageNumber");
		if (pageSize != null && !"".equals(pageSize))
			try {
				pageSize = "" + Integer.parseInt(pageSize);
			} catch (Exception e) {
				pageSize = "" + Page.defaultPageSize;
			}
		else
			pageSize = "" + Page.defaultPageSize;
		if (pageNumber != null && !"".equals(pageNumber))
			try {
				pageNumber = "" + Integer.parseInt(pageNumber);
			} catch (Exception e) {
				pageNumber = "1";
			}
		else
			pageNumber = "1";
		Page page=dataBaseControl.getPageResultSet(result.getXsql(), null, new Integer(pageNumber), new Integer(pageSize));
		request.setAttribute("remark", request.getParameter("remark"));
		request.setAttribute("quan_ming", request.getParameter("quan_ming"));
		request.setAttribute("zhu_xiao", request.getParameter("zhu_xiao"));
		request.setAttribute("jibie", request.getParameter("jibie"));
		request.setAttribute("page", page);
		return "/admin/Didian/list.jsp";
	}
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		Map parent=dataBaseControl.getOneResultSet("select * from t_didian t where id=?", new Object[]{request.getParameter("parent")});
		Didian didian=(Didian) getMapObject(request);
		long id=dataBaseControl.getSeq("Didian");
		didian.setId(id);
		didian.setBiao_shi(parent.get("biao_shi").toString()+"_"+id);
		didian.setQuan_ming(parent.get("quan_ming")+request.getParameter("name"));
		dataBaseControl.insertByBean(didian,id);
		return "/admin/Didian!list.do";
	}		
	
	/**
	 * 保存更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		Long id = Long.parseLong(request.getParameter("id"));
		String name = request.getParameter("name");
		String old_name = request.getParameter("old_name");
		String parent = request.getParameter("parent");
		String parent_name = request.getParameter("parent_name");
		String old_parent_name = request.getParameter("old_parent_name");
		String old_biao_shi = request.getParameter("old_biao_shi");
		String old_quan_ming = old_parent_name+old_name;
		String quan_ming = parent_name+name;
		Map didian = (Map)dataBaseControl.getOneResultSet("select * from t_didian where id=?", new Object[]{parent});
		String parent_biaoshi = didian.get("biao_shi").toString();
		String biao_shi = parent_biaoshi+"_"+id;
		String sql1 = "update t_didian set name=?,quan_ming=?,parent=?,biao_shi=? where id=?";//修改本地名称
		String sql2 = "update t_didian set quan_ming=replace(quan_ming,?,?),biao_shi=replace(biao_shi,?,?) where biao_shi like '"+old_biao_shi+"_%'";//修改下属地级名称
		dataBaseControl.beginTransaction();
		dataBaseControl.executeSql(sql1, new Object[]{name,quan_ming,parent,biao_shi,id});
		dataBaseControl.executeSql(sql2, new Object[]{old_quan_ming,quan_ming,old_biao_shi,biao_shi});
		dataBaseControl.endTransaction();
		return "/admin/Didian!list.do";
	}
	
	/**
	 * 注销对象
	 **/
	public String zhuxiao(HttpServletRequest request) throws Exception {
		Long id = Long.parseLong(request.getParameter("id"));
		String biao_shi = request.getParameter("biao_shi");
		String sql1 = "update t_didian set ZHU_XIAO='是' where id=?";//注销本地
		String sql2 = "update t_didian set ZHU_XIAO='是' where biao_shi like '"+biao_shi+"_%'";//注销下属地区
		dataBaseControl.beginTransaction();
		dataBaseControl.executeSql(sql1, new Object[]{id});
		dataBaseControl.executeSql(sql2, null);
		dataBaseControl.endTransaction();
		return "/admin/Didian!list.do";
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		String[] items = request.getParameterValues("id");
		for(int i = 0; i < items.length; i++) {			
			Integer id = new Integer(items[i]);
			dataBaseControl.executeSql("UPDATE t_didian SET ZHU_XIAO='是' WHERE ID=?", new Object[]{id});
		}
		return "/admin/Didian!list.do";
	}
}