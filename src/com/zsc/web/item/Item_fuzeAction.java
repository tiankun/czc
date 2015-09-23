package com.zsc.web.item;

import java.util.List;
import java.util.Map;

import javacommon.xsqlbuilder.XsqlBuilder;
import javacommon.xsqlbuilder.XsqlBuilder.XsqlFilterResult;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.zsc.db.DataBaseControl;
import com.zsc.map.Fuze;
import com.zsc.web.BaseAction;

public class Item_fuzeAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	private String type="item";
	
	/** 
	 * 查看对象
	 **/
	public String list(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		Map user = (Map) session.getAttribute("user");
		Map searchMap=getParameterMap(request);
		String biao_shi=user.get("biao_shi")+"_%";
		searchMap.put("biao_shi", biao_shi);
		
		String sql = "select t.*,t1.quan_ming from t_fuze t left join t_didian t1 on t1.id=t.unit_id where t.type='"+type+"' " +
				"/~ and t1.biao_shi || '_' like '[biao_shi]' ~/" +
				" order by t.unit_id asc";
		
        XsqlFilterResult result = new XsqlBuilder().generateSql(sql,searchMap);
		List list = (List)dataBaseControl.getOutResultSet(result.getXsql(), result.getAcceptedFilters().values().toArray());
		
        request.setAttribute("list",list);
		return "/item/Fuze/list.jsp";
	}
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {
		String id = request.getParameter("id");
		Map fu_ze = dataBaseControl.getOneResultSet("select t.*,t1.quan_ming from t_fuze t left join t_didian t1 on t1.id=t.unit_id where t.type='"+type+"' and t.id=?"
				, new Object[]{id});
		request.setAttribute("fu_ze",fu_ze);
		return "/item/Fuze/show.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		return "/item/Fuze/create.jsp";
	}
	
	
	/** 
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
        Map fu_ze = dataBaseControl.getOneResultSet("select * from t_fuze where id=?", new Object[]{request.getParameter("id")});
        request.setAttribute("fu_ze",fu_ze);  
		return "/item/Fuze/edit.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
		String[] fz_works = request.getParameterValues("fz_work");
		String fz_work=";";
		if(null!=fz_works){
			for(int i=0;i<fz_works.length;i++){
				fz_work = fz_work+fz_works[i]+";";
			}
		}
		//dataBaseControl.beginTransaction();
		//dataBaseControl.executeSql("delete from t_fuze where type='"+type+"' and unit_id=?", new Object[]{unit_id});
		Fuze fuze=new Fuze();
		Map map=request.getParameterMap();
		BeanUtils.populate(fuze, map);
		fuze.setUnit_id(unit_id);
		fuze.setType(type);
		fuze.setFz_work(fz_work);
		dataBaseControl.insertByBean(fuze);
		//dataBaseControl.endTransaction();
		return "/item/Item_fuze!list.do";
		
	}
	
	/** 
	 * 更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		String[] fz_works = request.getParameterValues("fz_work");
		String fz_work=";";
		if(null!=fz_works){
			for(int i=0;i<fz_works.length;i++){
				fz_work = fz_work+fz_works[i]+";";
			}
		}
		Fuze fuze=new Fuze();
	    Map map=request.getParameterMap();
	    BeanUtils.populate(fuze, map);
		fuze.setFz_work(fz_work);
		dataBaseControl.updateByBean(fuze);
		return "/item/Item_fuze!list.do";
		
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		dataBaseControl.executeSql("DELETE FROM t_fuze WHERE ID=?", new Object[]{request.getParameter("id")});
		return "/item/Item_fuze!list.do";
	}	
}
