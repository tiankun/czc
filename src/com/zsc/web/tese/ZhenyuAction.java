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
import com.zsc.map.Zhenyu;
import com.zsc.map.temp.ZhenyuJin;
import com.zsc.map.temp.ZhenyuYuan;
import com.zsc.util.CopyFields;
import com.zsc.web.BaseAction;

/**
 * 特色小镇镇域信息相关操作
 */
public class ZhenyuAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();		
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {
		Long unit_id=new Long(request.getParameter("id"));
		List list=(List) dataBaseControl.getOutResultSet("select * from T_ZHENYU where UNIT_ID=? order by year", new Object[]{unit_id});
		if(list!=null&&!list.isEmpty()){
			request.setAttribute("zhenyu",list.get(0));
			request.setAttribute("zhenyuj",list.get(1));
			request.setAttribute("zhenyuy",list.get(2));
		}
		request.setAttribute("didian",dataBaseControl.getOneResultSet("select quan_ming from t_didian where id=?", new Object[]{unit_id}));
		return "/tese/Zhenyu/show.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
		Map map=request.getParameterMap();
		Zhenyu zhenyu=new Zhenyu();
		Zhenyu zhenyuj=new Zhenyu();
		Zhenyu zhenyuy=new Zhenyu();
		ZhenyuJin zhenyuJin=new ZhenyuJin();
		ZhenyuYuan zhenyuYuan=new ZhenyuYuan();
		BeanUtils.populate(zhenyu, map);
		zhenyu.setUnit_id(unit_id);
		zhenyu.setYear(2012L);		
		BeanUtils.populate(zhenyuJin, map);
		BeanUtils.populate(zhenyuYuan, map);
		CopyFields.copy(zhenyuJin, zhenyuj);
		zhenyuj.setUnit_id(unit_id);
		zhenyuj.setYear(2015L);
		CopyFields.copy(zhenyuYuan, zhenyuy);
		zhenyuy.setUnit_id(unit_id);
		zhenyuy.setYear(2030L);
		dataBaseControl.beginTransaction();
		dataBaseControl.executeSql("delete from T_ZHENYU where UNIT_ID=?", new Object[]{unit_id});
		dataBaseControl.insertByBean(zhenyu);
		dataBaseControl.insertByBean(zhenyuj);
		dataBaseControl.insertByBean(zhenyuy);
		dataBaseControl.endTransaction();
		return "/tese/Zhenyu!edit.do?suss=suss";
	}
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
		List list=(List) dataBaseControl.getOutResultSet("select * from T_ZHENYU where UNIT_ID=? order by year", new Object[]{unit_id});
		if(list!=null&&!list.isEmpty()){
			request.setAttribute("zhenyu",list.get(0));
			request.setAttribute("zhenyuj",list.get(1));
			request.setAttribute("zhenyuy",list.get(2));
		}
		request.setAttribute("suss",request.getParameter("suss"));
		return "/tese/Zhenyu/edit.jsp";
	}	
}