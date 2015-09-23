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

public class Item_sewageAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map item_sewage = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("item_sewage",item_sewage);
		return "/item/ItemSewage/show.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		String jsp = "";
		Map itemSewage = dataBaseControl.getByBean(getMapObject(request));
		if(this.checkArea(request,request.getParameter("id"))){
			jsp = "/item/ItemSewage/create.jsp";
		}else{
			jsp = "/item/ItemSewage/show.jsp";
		}
		request.setAttribute("item", request.getParameter("id"));
		request.setAttribute("itemSewage", itemSewage);
		request.setAttribute("info", request.getParameter("info"));
		return jsp;
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		String id = request.getParameter("id");
		int itemSewage = dataBaseControl.getResultSetSize("select t.id from T_ITEM_SEWAGE t where t.id=?", new Object[]{id});
		
		String[] wszx_zhibiaos = request.getParameterValues("wszx_zhibiao");
		String wszx_zhibiao = "";
		if(null!=wszx_zhibiaos){
			for(int i = 0;i<wszx_zhibiaos.length;i++){
				wszx_zhibiao = wszx_zhibiao+wszx_zhibiaos[i]+";";
			}
		}
		Object[][] changeParameter = {{"wszx_zhibiao",wszx_zhibiao}};
		
		if(itemSewage==0){
			dataBaseControl.insertByBean(getMapObject(request,changeParameter),id);
		}else{
			dataBaseControl.updateByBean(getMapObject(request,changeParameter));
		}
		return "/item/Item_sewage!create.do?id="+id+"&info=success";
	}
}