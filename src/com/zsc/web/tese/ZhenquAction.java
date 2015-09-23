/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-1-23</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.tese;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

import com.zsc.db.DataBaseControl;
import com.zsc.map.Zhenqu;
import com.zsc.map.temp.ZhenquJin;
import com.zsc.map.temp.ZhenquYuan;
import com.zsc.util.CopyFields;
import com.zsc.web.BaseAction;

/**
 * 特色小镇镇区（乡驻地）信息相关操作
 */
public class ZhenquAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Long unit_id=new Long(request.getParameter("id"));
		List list=(List) dataBaseControl.getOutResultSet("select * from T_ZHENQU where UNIT_ID=? order by year", new Object[]{unit_id});
		if(list!=null&&!list.isEmpty()){
			request.setAttribute("zhenqu",list.get(0));
			request.setAttribute("zhenquj",list.get(1));
			request.setAttribute("zhenquy",list.get(2));
		}
		request.setAttribute("didian",dataBaseControl.getOneResultSet("select quan_ming from t_didian where id=?", new Object[]{unit_id}));
		return "/tese/Zhenqu/show.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
		Map map=request.getParameterMap();
		Zhenqu zhenqu=new Zhenqu();
		Zhenqu zhenquj=new Zhenqu();
		Zhenqu zhenquy=new Zhenqu();
		ZhenquJin zhenquJin=new ZhenquJin();
		ZhenquYuan zhenquYuan=new ZhenquYuan();
		BeanUtils.populate(zhenqu, map);
		zhenqu.setUnit_id(unit_id);
		zhenqu.setYear(2012L);		
		BeanUtils.populate(zhenquJin, map);
		BeanUtils.populate(zhenquYuan, map);
		CopyFields.copy(zhenquJin, zhenquj);
		zhenquj.setUnit_id(unit_id);
		zhenquj.setYear(2015L);
		CopyFields.copy(zhenquYuan, zhenquy);
		zhenquy.setUnit_id(unit_id);
		zhenquy.setYear(2030L);
		dataBaseControl.beginTransaction();
		dataBaseControl.executeSql("delete from T_ZHENQU where UNIT_ID=?", new Object[]{unit_id});		
		dataBaseControl.insertByBean(zhenqu);
		dataBaseControl.insertByBean(zhenquj);
		dataBaseControl.insertByBean(zhenquy);
		dataBaseControl.endTransaction();
		return "/tese/Zhenqu!edit.do?suss=suss";
	}
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
		List list=(List) dataBaseControl.getOutResultSet("select * from T_ZHENQU where UNIT_ID=? order by year", new Object[]{unit_id});
		if(list!=null&&!list.isEmpty()){
			request.setAttribute("zhenqu",list.get(0));
			request.setAttribute("zhenquj",list.get(1));
			request.setAttribute("zhenquy",list.get(2));
		}
		request.setAttribute("suss",request.getParameter("suss"));
		return "/tese/Zhenqu/edit.jsp";
	}	
}