/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2012-11-14</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.archive;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

/**
 * 自然村村庄规划验收评分表相关操作
 */
public class Zrc_ghysAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	Calendar calendar = Calendar.getInstance();
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request,HttpServletResponse response) throws Exception {
		List list = (List) dataBaseControl.getOutResultSet("select * from T_ZRC_GHYS", null);
		request.setAttribute("list", list);
		return "/archive/ZrcGhys/list.jsp";
	}
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Long id = Long.parseLong(request.getParameter("id"));
		String biao_shi = request.getParameter("biao_shi");
		String[] biaoshi = biao_shi.split("_");
		Long unit_id = Long.parseLong(biaoshi[biaoshi.length-1]);
		int year = 2012;//calendar.get(calendar.YEAR);
		String sql = "select a.* from t_zrc_ghys a where a.id=?";
		Map zrc_ghys = dataBaseControl.getOneResultSet(sql, new Object[]{id});
		Map zrc_ghys_xian = dataBaseControl.getOneResultSet("select a.* from t_zrc_ghys a where a.year=? and unit_id=? and remark='xian'", new Object[]{year,unit_id});
		Map zrc_ghys_zhou = dataBaseControl.getOneResultSet("select a.* from t_zrc_ghys a where a.year=? and unit_id=? and remark='zhou'", new Object[]{year,unit_id});
		request.setAttribute("zrc_ghys",zrc_ghys);
        request.setAttribute("flag","zrc");
		request.setAttribute("pingfen",request.getParameter("pingfen"));
		request.setAttribute("length",request.getParameter("length"));
		request.setAttribute("biao_shi", biao_shi);
		request.setAttribute("user_length", request.getParameter("user_length"));
		request.setAttribute("zrc_ghys_xian",zrc_ghys_xian);
		request.setAttribute("zrc_ghys_zhou",zrc_ghys_zhou);
		return "/archive/ZrcGhys/show.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		Map user = (Map)session.getAttribute("user");
		String biao_shi = request.getParameter("biao_shi");
		String[] biaoshi = biao_shi.split("_");
		Long unit_id = Long.parseLong(biaoshi[biaoshi.length-1]);
		int year = 2012;//calendar.get(calendar.YEAR);
		Map zrc_ghys = dataBaseControl.getOneResultSet("select a.* from t_zrc_ghys a where a.year=? and unit_id=? and remark='sheng'", new Object[]{year,unit_id});
		Map zrc_ghys_xian = dataBaseControl.getOneResultSet("select a.* from t_zrc_ghys a where a.year=? and unit_id=? and remark='xian'", new Object[]{year,unit_id});
		Map zrc_ghys_zhou = dataBaseControl.getOneResultSet("select a.* from t_zrc_ghys a where a.year=? and unit_id=? and remark='zhou'", new Object[]{year,unit_id});
		Map user_didian = dataBaseControl.getOneResultSet("select a.biao_shi from t_didian a where a.id=?",new Object[]{user.get("guan_li")});
		String user_biaoshi = user_didian.get("biao_shi").toString();
		int user_length = user_biaoshi.split("_").length;
		String jsp = "/archive/ZrcGhys/create.jsp";
		if(null!=zrc_ghys){
			request.setAttribute("zrc_ghys",zrc_ghys);
        	jsp = "/archive/ZrcGhys/show.jsp";
        }
		request.setAttribute("zrc_ghys_xian",zrc_ghys_xian);
		request.setAttribute("zrc_ghys_zhou",zrc_ghys_zhou);
		request.setAttribute("unit_id", request.getParameter("unit_id"));
		request.setAttribute("user_length",user_length);
		request.setAttribute("biao_shi", request.getParameter("biao_shi"));
        request.setAttribute("flag","zrc");
		request.setAttribute("pingfen",request.getParameter("pingfen"));
		request.setAttribute("length",request.getParameter("length"));
		return jsp;
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		Map user = (Map)session.getAttribute("user");
		int user_length = Integer.parseInt(null==request.getParameter("user_length")?"0":request.getParameter("user_length"));
		String remark = "";
		if(user_length==2){
			remark = "zhou";
		}else if(user_length<2){
			remark = "sheng";
		}
		String biao_shi = request.getParameter("biao_shi");
		String[] biaoshi = biao_shi.split("_");
		Long seq = dataBaseControl.getSeq("zrc_ghys");      //获取序列号
		java.sql.Date ys_shijian = new java.sql.Date(new Date().getTime());
		int year = 2012;//calendar.get(calendar.YEAR);
		Object[][] changeParameter = {{"year",year},{"remark",remark},{"unit_id",biaoshi[biaoshi.length-1]},
				{"ys_shijian",ys_shijian},{"ys_ren",user.get("user_name")},{"qz_zhuanjia",user.get("user_name")}};
		dataBaseControl.insertByBean(getMapObject(request,changeParameter),seq);

		return "/archive/Zrc_ghys!show.do?id="+seq+"&biao_shi="+biao_shi+"&pingfen="+request.getParameter("pingfen")+
		"&length="+request.getParameter("length")+"&user_length="+user_length+"";
	}
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		String biao_shi = request.getParameter("biao_shi");
		String[] biaoshi = biao_shi.split("_");
		Long unit_id = Long.parseLong(biaoshi[biaoshi.length-1]);
		int year = 2012;//calendar.get(calendar.YEAR);
		Map zrc_ghys = dataBaseControl.getByBean(getMapObject(request));
		Map zrc_ghys_xian = dataBaseControl.getOneResultSet("select a.* from t_zrc_ghys a where a.year=? and unit_id=? and remark='xian'", new Object[]{year,unit_id});
		Map zrc_ghys_zhou = dataBaseControl.getOneResultSet("select a.* from t_zrc_ghys a where a.year=? and unit_id=? and remark='zhou'", new Object[]{year,unit_id});
		request.setAttribute("biao_shi",biao_shi);
        request.setAttribute("flag","zrc");
		request.setAttribute("pingfen",request.getParameter("pingfen"));
		request.setAttribute("length",request.getParameter("length"));
		request.setAttribute("user_length", request.getParameter("user_length"));
		request.setAttribute("zrc_ghys",zrc_ghys);
		request.setAttribute("zrc_ghys_xian",zrc_ghys_xian);
		request.setAttribute("zrc_ghys_zhou",zrc_ghys_zhou);
		return "/archive/ZrcGhys/edit.jsp";
	}
	
	/**
	 * 保存更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		Long id = Long.parseLong(request.getParameter("id"));
		dataBaseControl.updateByBean(getMapObject(request));
		return "/archive/Zrc_ghys!show.do?id="+id+"&biao_shi="+request.getParameter("biao_shi")+"&pingfen=" +
				""+request.getParameter("pingfen")+"&length="+request.getParameter("length")+"&user_length="
				+request.getParameter("user_length")+"";
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String[] items = request.getParameterValues("items");
		for(int i = 0; i < items.length; i++) {			
			java.math.BigDecimal id = new java.math.BigDecimal(items[i]);
			dataBaseControl.executeSql("DELETE FROM T_ZRC_GHYS WHERE ID=?", new Object[]{id});
		}
		return "/archive/Zrc_ghys!list.do";
	}	
}