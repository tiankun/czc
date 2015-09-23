/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.item;

import java.util.Collection;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

public class Item_fileAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Map item_build=dataBaseControl.getOneResultSet("select area from t_Item_build where id=?", new Object[]{request.getParameter("item")});
		Collection list=dataBaseControl.getOutResultSet("select * from T_ITEM_FILE where item=? and leibie=? order by id desc", new Object[]{request.getParameter("item"),request.getParameter("leibie")});
		request.setAttribute("item_build", item_build);
		request.setAttribute("list", list);
		request.setAttribute("item", request.getParameter("item"));
		request.setAttribute("leibie", request.getParameter("leibie"));
		request.setAttribute("checkArea",this.checkArea(request, request.getParameter("item")));
		if("2".equals(request.getParameter("leibie")))
			return "/item/ItemFile/listPic.jsp";
		else
			return "/item/ItemFile/listFile.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		String[] pic=request.getParameterValues("pic");
		StringBuffer path=new StringBuffer("");
		for (int i = 0; i < pic.length; i++) {
			path.append(pic[i]);
			if(i!=pic.length-1)
				path.append(";");	
		}
		dataBaseControl.insertByBean(getMapObject(request,new Object[][]{{"shangchuan",new java.sql.Date(new Date().getTime())},{"path",path.toString()}}));
		return "/item/Item_file!list.do?item="+request.getParameter("item")+"&leibie="+request.getParameter("leibie");
	}
	
	/**
	 * 保存更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		String[] pic=request.getParameterValues("pic");
		StringBuffer path=new StringBuffer("");
		for (int i = 0; i < pic.length; i++) {
			path.append(pic[i]);
			if(i!=pic.length-1)
				path.append(";");	
		}
		dataBaseControl.updateByBean(getMapObject(request,new Object[][]{{"shangchuan",new java.sql.Date(new Date().getTime())},{"path",path.toString()}}));
		return "/item/Item_file!list.do?item="+request.getParameter("item")+"&leibie="+request.getParameter("leibie");
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		dataBaseControl.executeSql("DELETE FROM T_ITEM_FILE WHERE ID=?", new Object[]{request.getParameter("id")});
		return "/item/Item_file!list.do?item="+request.getParameter("item")+"&leibie="+request.getParameter("leibie");
	}
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		request.setAttribute("item", request.getParameter("item"));
		request.setAttribute("leibie", request.getParameter("leibie"));
		if("2".equals(request.getParameter("leibie")))
			return "/item/ItemFile/editPic.jsp";
		else
			return "/item/ItemFile/editFile.jsp";
	}
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map item_file = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("item_file",item_file);
		if("2".equals(item_file.get("leibie").toString()))
			return "/item/ItemFile/editPic.jsp";
		else
			return "/item/ItemFile/editFile.jsp";
	}
}