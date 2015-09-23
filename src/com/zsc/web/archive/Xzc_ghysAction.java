/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2012-11-14</p>
 * <p> @author ������</p>
 */
package com.zsc.web.archive;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

/**
 * ����������滮�ɹ������������ֱ���ز���
 */
public class Xzc_ghysAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	Calendar calendar = Calendar.getInstance();
	/** 
	 * ִ������ 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		List list = (List) dataBaseControl.getOutResultSet("select * from T_XZC_GHYS", null);
		request.setAttribute("list", list);
		return "/archive/XzcGhys/list.jsp";
	}
	
	/** 
	 * �鿴����
	 **/
	public String show(HttpServletRequest request) throws Exception {
		String biao_shi = request.getParameter("biao_shi");
		String[] biaoshi = biao_shi.split("_");
		Long unit_id = Long.parseLong(biaoshi[biaoshi.length-1]);
		int year =2012; //calendar.get(calendar.YEAR);
		Long id = Long.parseLong(request.getParameter("id"));
		String sql = "select a.* from t_xzc_ghys a where a.id=?";
		Map xzc_ghys = dataBaseControl.getOneResultSet(sql, new Object[]{id});
		Map xzc_ghys_xian = dataBaseControl.getOneResultSet("select a.* from t_xzc_ghys a where a.year=? and unit_id=? and remark='xian'", new Object[]{year,unit_id});
		Map xzc_ghys_zhou = dataBaseControl.getOneResultSet("select a.* from t_xzc_ghys a where a.year=? and unit_id=? and remark='zhou'", new Object[]{year,unit_id});
		request.setAttribute("xzc_ghys",xzc_ghys);
		request.setAttribute("xzc_ghys_xian",xzc_ghys_xian);
		request.setAttribute("xzc_ghys_zhou",xzc_ghys_zhou);
		request.setAttribute("flag","xzc");
		request.setAttribute("pingfen",request.getParameter("pingfen"));
		request.setAttribute("length",request.getParameter("length"));
		request.setAttribute("biao_shi", biao_shi);
		request.setAttribute("user_length", request.getParameter("user_length"));
		return "/archive/XzcGhys/show.jsp";
	}
	
	/** 
	 * ��������ҳ��
	 **/
	public String create(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		Map user = (Map)session.getAttribute("user");
		String biao_shi = request.getParameter("biao_shi");
		String[] biaoshi = biao_shi.split("_");
		Long unit_id = Long.parseLong(biaoshi[biaoshi.length-1]);
		int year =2012; //calendar.get(calendar.YEAR);
		
		Map xzc_ghys = dataBaseControl.getOneResultSet("select a.* from t_xzc_ghys a where a.year=? and unit_id=? and remark='sheng'", new Object[]{year,unit_id});
		Map xzc_ghys_xian = dataBaseControl.getOneResultSet("select a.* from t_xzc_ghys a where a.year=? and unit_id=? and remark='xian'", new Object[]{year,unit_id});
		Map xzc_ghys_zhou = dataBaseControl.getOneResultSet("select a.* from t_xzc_ghys a where a.year=? and unit_id=? and remark='zhou'", new Object[]{year,unit_id});
		Map user_didian = dataBaseControl.getOneResultSet("select a.biao_shi from t_didian a where a.id=?",new Object[]{user.get("guan_li")});
		
		String user_biaoshi = user_didian.get("biao_shi").toString();
		int user_length = user_biaoshi.split("_").length;
		String jsp = "/archive/XzcGhys/create.jsp";
		if(null!=xzc_ghys){
			request.setAttribute("xzc_ghys",xzc_ghys);
        	jsp = "/archive/XzcGhys/show.jsp";
        }
		request.setAttribute("xzc_ghys_xian",xzc_ghys_xian);
		request.setAttribute("xzc_ghys_zhou",xzc_ghys_zhou);
		request.setAttribute("user_length",user_length);
		request.setAttribute("unit_id", request.getParameter("unit_id"));
		request.setAttribute("biao_shi", request.getParameter("biao_shi"));
        request.setAttribute("flag","xzc");
		request.setAttribute("pingfen",request.getParameter("pingfen"));
		request.setAttribute("length",request.getParameter("length"));
		return jsp;
	}
	
	/** 
	 * ������������
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
		Long seq = dataBaseControl.getSeq("xzc_ghys");      //��ȡ���к�
		java.sql.Date ys_shijian = new java.sql.Date(new Date().getTime());
		int year = 2012;//calendar.get(calendar.YEAR);
		Object[][] changeParameter = {{"year",year},{"remark",remark},{"unit_id",biaoshi[biaoshi.length-1]},{"ys_shijian",ys_shijian},{"ys_ren",user.get("user_name")},{"qz_zhuanjia",user.get("user_name")}};
		dataBaseControl.insertByBean(getMapObject(request,changeParameter),seq);

		return "/archive/Xzc_ghys!show.do?id="+seq+"&biao_shi="+biao_shi+"&pingfen="+request.getParameter("pingfen")+
		"&length="+request.getParameter("length")+"&user_length="+user_length+"";
	}
	
	/**
	 * �������ҳ��
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		String biao_shi = request.getParameter("biao_shi");
		String[] biaoshi = biao_shi.split("_");
		Long unit_id = Long.parseLong(biaoshi[biaoshi.length-1]);
		int year =2012; //calendar.get(calendar.YEAR);
		Map xzc_ghys = dataBaseControl.getByBean(getMapObject(request));
		Map xzc_ghys_xian = dataBaseControl.getOneResultSet("select a.* from t_xzc_ghys a where a.year=? and unit_id=? and remark='xian'", new Object[]{year,unit_id});
		Map xzc_ghys_zhou = dataBaseControl.getOneResultSet("select a.* from t_xzc_ghys a where a.year=? and unit_id=? and remark='zhou'", new Object[]{year,unit_id});
		request.setAttribute("xzc_ghys",xzc_ghys);
		request.setAttribute("xzc_ghys_xian",xzc_ghys_xian);
		request.setAttribute("xzc_ghys_zhou",xzc_ghys_zhou);
		request.setAttribute("biao_shi", biao_shi);
        request.setAttribute("flag","xzc");
		request.setAttribute("pingfen",request.getParameter("pingfen"));
		request.setAttribute("length",request.getParameter("length"));
		request.setAttribute("user_length", request.getParameter("user_length"));
		return "/archive/XzcGhys/edit.jsp";
	}
	
	/**
	 * ������¶���
	 **/
	public String update(HttpServletRequest request) throws Exception {
		Long id = Long.parseLong(request.getParameter("id"));
		dataBaseControl.updateByBean(getMapObject(request));
		return "/archive/Xzc_ghys!show.do?id="+id+"&biao_shi="+request.getParameter("biao_shi")+"&pingfen=" +
				""+request.getParameter("pingfen")+"&length="+request.getParameter("length")+"&user_length="+
				request.getParameter("user_length")+"";
	}
	
	/**
	 *ɾ������
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		String[] items = request.getParameterValues("items");
		for(int i = 0; i < items.length; i++) {			
			java.math.BigDecimal id = new java.math.BigDecimal(items[i]);
			dataBaseControl.executeSql("DELETE FROM T_XZC_GHYS WHERE ID=?", new Object[]{id});
		}
		return "/archive/Xzc_ghys!list.do";
	}	
}