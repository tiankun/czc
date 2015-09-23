/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.item;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

public class Item_buildAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();		
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map item_build = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("item_build",item_build);
		return "/item/ItemBuild/show.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		String jsp = "";
		Map itemBuild = dataBaseControl.getByBean(getMapObject(request));
		String type = itemBuild.get("type").toString();
		
		if(this.checkArea(request, itemBuild.get("id").toString())){
			if("1".equals(type)){
				jsp = "/item/ItemBuild/create_gs.jsp";
			}else if("2".equals(type)){
				jsp = "/item/ItemBuild/create_ws.jsp";
			}else{
				jsp = "/item/ItemBuild/create_lj.jsp";
			}
		}else{
			if("1".equals(type)){
				jsp = "/item/ItemBuild/show_gs.jsp";
			}else if("2".equals(type)){
				jsp = "/item/ItemBuild/show_ws.jsp";
			}else{
				jsp = "/item/ItemBuild/show_lj.jsp";
			}
		}
		request.setAttribute("item", itemBuild.get("id"));
		request.setAttribute("itemBuild", itemBuild);
		request.setAttribute("info", request.getParameter("info"));
		return jsp;
	}
	
	/** 
	 * 进入项目设计界面
	 **/
	public String sheji(HttpServletRequest request) throws Exception {
		Map itemBuild = dataBaseControl.getOneResultSet("select type from t_Item_build where id=?", new Object[]{request.getParameter("id")});
		String type = itemBuild.get("type").toString();		
		if("1".equals(type)){
			return new Item_waterAction().create(request);
		}else if("2".equals(type)){
			return new Item_sewageAction().create(request);
		}else{
			return new Item_rubbishAction().create(request);
		}
	}	
	/** 
	 * 保存新增或更新对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		String id = request.getParameter("id");		
		dataBaseControl.updateByBean(getMapObject(request));		
		return "/item/Item_build!create.do?id="+id+"&info=success";
	}	
}