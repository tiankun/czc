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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;
import com.zsc.web.BaseAction;

public class Village_promAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		String biao_shi=request.getParameter("biao_shi")==null||request.getParameter("biao_shi").equals("")?user.get("biao_shi")+"":request.getParameter("biao_shi");
		String sqlTemp=" and td.biao_shi like '"+biao_shi+"%'";
		String sql="select t.*from T_VILLAGE_PROM t join t_didian td on t.city=td.id  where 1=1  and t.fid=?" +
				" order by t.id desc";
	
		
		request.setAttribute("biao_shi", biao_shi);
		request.setAttribute("fid", request.getParameter("fid"));
		List<Map> list = (List<Map>) dataBaseControl.getOutResultSet(sql, new Object[]{Integer.parseInt(request.getParameter("fid").toString())});
		request.setAttribute("list",list);
		return "/village/VillageProm/list.jsp";
	}
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map village_prom = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("village_prom",village_prom);
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		request.setAttribute("fid", request.getParameter("fid"));
		return "/village/VillageProm/show.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		request.setAttribute("fid", request.getParameter("fid"));
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		return "/village/VillageProm/create.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		dataBaseControl.insertByBean(getMapObject(request));
		String fid=request.getParameter("fid");
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		return "/village/Village_prom!list.do?fid="+fid;
	}
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map village_prom = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("village_prom",village_prom);
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		request.setAttribute("fid", request.getParameter("fid"));
		return "/village/VillageProm/edit.jsp";
	}
	
	/**
	 * 保存更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		dataBaseControl.updateByBean(getMapObject(request));
		String fid=request.getParameter("fid");
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		return "/village/Village_prom!list.do?biao_shi="+biao_shi+"&fid="+fid;
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		String[] items = request.getParameterValues("items");
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		String fid=request.getParameter("fid");
		for(int i = 0; i < items.length; i++) {			
			dataBaseControl.executeSql("DELETE FROM T_VILLAGE_PROM WHERE ID=?", new Object[]{items[i]});
		}
		return "/village/Village_prom!list.do?biao_shi="+biao_shi+"&fid="+fid;
	}	
}