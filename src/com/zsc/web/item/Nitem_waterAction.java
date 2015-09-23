/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2014-2-18</p>
 * <p> @author ������</p>
 */
package com.zsc.web.item;

import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javacommon.xsqlbuilder.XsqlBuilder;
import javacommon.xsqlbuilder.XsqlBuilder.XsqlFilterResult;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;
import com.zsc.map.Nitem_file;
import com.zsc.map.Nitem_water;
import com.zsc.web.BaseAction;

public class Nitem_waterAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * ִ������ 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		int month = Calendar.getInstance().get(Calendar.MONTH);//�����·���
		int year = Calendar.getInstance().get(Calendar.YEAR);//���������
		Map user = (Map) session.getAttribute("user");
		Map searchMap=getParameterMap(request);
		String biao_shi=user.get("biao_shi")+"_%";
		if(request.getParameter("biao_shi")!=null)
			biao_shi=request.getParameter("biao_shi")+"_%";
		searchMap.put("biao_shi", biao_shi);
		
		//left join T_NITEM_YUE t3 on t3.type=1 and t3.item_id=t.id and t3.year="+year+" and t3.month="+month+"
		String sql = "select t.*,t2.quan_ming,t4.dao_zijin from V_NITEM_WATER_YUE t left join t_didian t1 on t1.id=t.guan_li left" +
				" join t_didian t2 on t2.id=t.area left join (select t.item_id,sum(t.dao_zijin) dao_zijin from t_nitem_yue t" +
						" where t.type = 1 group by t.item_id, t.type) t4 on t4.item_id=t.id where 1=1 " +
						"and (t.nianfen != '�ƻ�����Ŀ' or t.nianfen is null) " +
				"/~ and t1.biao_shi || '_' like '[biao_shi]' ~/" +
				"/~ and t.name like '%[name]%' ~/" +
				"/~ and t.xingzhi = '[xingzhi]' ~/" +
				"/~ and t.biaoshi like '%[biaoshi]%' ~/" +
				"/~ and t.clgm_jinqi = '[clgm_jinqi]' ~/" +
				"/~ and t.clgm_yuanqi = '[clgm_yuanqi]' ~/" +
				"/~ and t.item_begin >= to_date('[item_begin]','yyyy-MM-dd') ~/" +
				"/~ and t.item_begin <= to_date('[item_end]','yyyy-MM-dd') ~/" +
				"/~ and t.jungong = '[jungong]' ~/" +
				"/~ and t.jungong_date >= to_date('[jungong_date]','yyyy-MM-dd') ~/" +
				"/~ and t.jungong_date <= to_date('[jungong_end]','yyyy-MM-dd') ~/" +
				" order by t.id desc";
		XsqlFilterResult result = new XsqlBuilder().generateSql(sql,searchMap);
		
		List list = (List)dataBaseControl.getOutResultSet(result.getXsql(), result.getAcceptedFilters().values().toArray());
		request.setAttribute("list", list);
		request.setAttribute("month", month);
		request.setAttribute("year", year);
		request.setAttribute("searchMap", searchMap);
		return "/item/NitemWater/list.jsp";
	}
	
	/** 
	 * �鿴����
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		String id = request.getParameter("id");
		Map nitem_water = dataBaseControl.getOneResultSet("select t.*,t1.quan_ming from t_nitem_water t left join t_didian t1 on t1.id=t.area where t.id=?", new Object[]{id});
		Map zijin = dataBaseControl.getOneResultSet("select sum(t.dao_zijin) dao_zijin,sum(t.ZHONG_ZIJIN) ZHONG_ZIJIN,sum(t.sheng_zijin) sheng_zijin,sum(t.shi_zijin+t.xian_zijin) difang_zijin,sum(t.zi_zijin) zi_zijin from t_nitem_yue t where t.item_id = ? and t.type = 1 group by t.item_id, t.type", new Object[]{id});
		
		//��ȡ���ϴ��ļ�
		Collection keyan=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=1 and pic_type='����'", new Object[]{id});
		request.setAttribute("keyan", keyan);
		Collection chushe=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=1 and pic_type='����'", new Object[]{id});
		request.setAttribute("chushe", chushe);
		Collection shishi=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=1 and pic_type='ʵʩ'", new Object[]{id});
		request.setAttribute("shishi", shishi);
		Collection shigong=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=1 and pic_type='ʩ��'", new Object[]{id});
		request.setAttribute("shigong", shigong);
		
		request.setAttribute("zijin",zijin);
		request.setAttribute("nitem_water",nitem_water);
		return "/item/NitemWater/show.jsp";
	}
	
	/** 
	 * ��������ҳ�棨����
	 **/
	public String create(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		Map user = (Map) session.getAttribute("user");
		String guan_li = user.get("guan_li").toString();
		Map nitem_water = dataBaseControl.getOneResultSet("select t.* from T_NITEM_WATER t where t.GUAN_LI=?", new Object[]{guan_li});
		Map me=dataBaseControl.getOneResultSet("select t.id,t.parent,t.name,t.quan_ming from t_didian t where t.id=?", new Object[]{guan_li});
		Collection list = dataBaseControl.getOutResultSet("select t.id,t.parent,t.name,t.quan_ming from t_didian t where t.parent=? order by id", new Object[]{guan_li});
		request.setAttribute("me", me);
		request.setAttribute("list", list);
        //�����û���ʶ
		request.setAttribute("xiangzhen","yes");
		request.setAttribute("nitem_water",nitem_water);
		return "/item/NitemWater/create.jsp";
	}
	
	/** 
	 * ��������ҳ�棨�ؼ������ϣ�
	 **/
	public String createAdmin(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		Map user = (Map) session.getAttribute("user");
		String guan_li = user.get("guan_li").toString();
		List areaList = (List)dataBaseControl.getOutResultSet("select t.* from t_didian t where t.parent=?", new Object[]{guan_li});
		Map me=dataBaseControl.getOneResultSet("select t.id,t.parent,t.name,t.quan_ming from t_didian t where t.id=?", new Object[]{guan_li});
		Collection list = dataBaseControl.getOutResultSet("select t.id,t.parent,t.name,t.quan_ming from t_didian t where t.parent=? order by id", new Object[]{guan_li});
		request.setAttribute("me", me);
		request.setAttribute("list", list);
        //�����û���ʶ
		request.setAttribute("xiangzhen","no");
		request.setAttribute("areaList",areaList);
		return "/item/NitemWater/create.jsp";
	}
	
	/** 
	 * ������������
	 **/
	public String save(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		Map user = (Map) session.getAttribute("user");
		String id=request.getParameter("id");
		String[] xiang_types = request.getParameterValues("xiang_type");
		String xiang_type=";";
		String jsp = "";
		if(null!=xiang_types){
			for(int i=0;i<xiang_types.length;i++){
				xiang_type = xiang_type+xiang_types[i]+";";
			}
		}
		
		String[] paths = request.getParameterValues("path");
		String[] pic_types = request.getParameterValues("pic_type");
		String[] file_names = request.getParameterValues("file_name");
		String[] file_exts = request.getParameterValues("file_ext");
		
		dataBaseControl.beginTransaction();
		Long item_id=dataBaseControl.getSeq("nitem_water")+1;
		Nitem_file file;
		if(paths!=null&&paths.length>0){
			for(int i = 0; i < paths.length; i++){
				file = new Nitem_file();
				file.setId_type(1L);
				file.setItem_type(1L);
				file.setYue_id(item_id);
				file.setPath(paths[i]);
				file.setPic_type(pic_types[i]);
				file.setFile_ext(file_exts[i]);
				file.setFile_name(file_names[i]);
				
				dataBaseControl.insertByBean(file);
			}
		}
		dataBaseControl.endTransaction();
		
		Object[][] changeParameter = {{"xiang_type",xiang_type},{"cdate",new java.sql.Date(new Date().getTime())}};
		
		if(null==id||"".equals(id)){
			dataBaseControl.insertByBean(getMapObject(request,changeParameter));
		}else{
			dataBaseControl.updateByBean(getMapObject(request,changeParameter));
		}

		if(user.get("biao_shi").toString().split("_").length>3){//�����û�
			jsp = "/item/Nitem_water!create.do";
		}else{
			jsp = "/item/Nitem_water!list.do?biao_shi="+request.getParameter("biao_shi")+"";
		}
		return jsp;
	}
	
	/**
	 * �������ҳ��
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		String id = request.getParameter("id");
		Map user = (Map) session.getAttribute("user");
		String guan_li = user.get("guan_li").toString();
		Map nitem_water = dataBaseControl.getByBean(getMapObject(request));
		//List areaList = (List)dataBaseControl.getOutResultSet("select t.* from t_didian t where t.parent=?", new Object[]{guan_li});

		Map me=dataBaseControl.getOneResultSet("select t.id,t.parent,t.name,t.quan_ming,t.biao_shi from t_didian t where t.id=?", new Object[]{nitem_water.get("area")});
		request.setAttribute("me", me);
		Collection list = dataBaseControl.getOutResultSet("select t.id,t.parent,t.name,t.quan_ming from t_didian t where t.parent=? order by id", new Object[]{guan_li});
		request.setAttribute("list", list);
		//�����û���ʶ
		request.setAttribute("xiangzhen","no");
		//request.setAttribute("areaList",areaList);
		request.setAttribute("nitem_water",nitem_water);
		
		//��ȡ���ϴ��ļ�
		Collection keyan=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=1 and pic_type='����'", new Object[]{id});
		request.setAttribute("keyan", keyan);
		Collection chushe=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=1 and pic_type='����'", new Object[]{id});
		request.setAttribute("chushe", chushe);
		Collection shishi=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=1 and pic_type='ʵʩ'", new Object[]{id});
		request.setAttribute("shishi", shishi);
		Collection shigong=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=1 and pic_type='ʩ��'", new Object[]{id});
		request.setAttribute("shigong", shigong);
		
		return "/item/NitemWater/edit.jsp";
	}
	
	/**
	 * ������¶���
	 **/
	public String update(HttpServletRequest request) throws Exception {
		String[] xiang_types = request.getParameterValues("xiang_type");
		String xiang_type=";";
		if(null!=xiang_types){
		for(int i=0;i<xiang_types.length;i++){
			xiang_type = xiang_type+xiang_types[i]+";";
		}}
		Object[][] changeParameter = {{"xiang_type",xiang_type}};
		
		String[] paths = request.getParameterValues("path");
		String[] pic_types = request.getParameterValues("pic_type");
		String[] file_names = request.getParameterValues("file_name");
		String[] file_exts = request.getParameterValues("file_ext");
		
		dataBaseControl.beginTransaction();
		dataBaseControl.updateByBean(getMapObject(request,changeParameter));
		Long id=Long.parseLong(request.getParameter("id"));
		//ɾ���ٲ�
		dataBaseControl.executeSql("delete from t_nitem_file where yue_id=? and item_type=1 and id_type=1", new Object[]{id});
		Nitem_file file;
		if(paths!=null&&paths.length>0){
			for(int i = 0; i < paths.length; i++){
				file = new Nitem_file();
				file.setId_type(1L);
				file.setItem_type(1L);
				file.setYue_id(id);
				file.setPath(paths[i]);
				file.setPic_type(pic_types[i]);
				file.setFile_ext(file_exts[i]);
				file.setFile_name(file_names[i]);
				
				dataBaseControl.insertByBean(file);
			}
		}
		dataBaseControl.endTransaction();
		
		return "/item/Nitem_water!list.do?biao_shi="+request.getParameter("biao_shi")+"";
	}
	
	/**
	 * ���
	 **/
	public String shenhe(HttpServletRequest request) throws Exception {
		dataBaseControl.executeSql("update T_NITEM_WATER t set t.biaoshi=?,t.nianfen=?,t.beizhu=?,t.shen_date=? where t.id=?", new Object[]{request.getParameter("biaoshi"),request.getParameter("nianfen"),request.getParameter("beizhu"),new java.sql.Date(new Date().getTime()),request.getParameter("id")});
		return "/item/Nitem_water!list.do?biao_shi="+request.getParameter("biao_shi")+"";
	}
	
	
	/**
	 *ɾ������
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		String id = request.getParameter("id");	
		dataBaseControl.executeSql("DELETE FROM T_NITEM_WATER WHERE ID=?", new Object[]{id});
		dataBaseControl.executeSql("delete from t_nitem_file where yue_id=? and item_type=1", new Object[]{id});
		dataBaseControl.executeSql("delete from t_nitem_yue where item_id=? and type=1", new Object[]{id});
		return "/item/Nitem_water!list.do?biao_shi="+request.getParameter("biao_shi")+"";
	}	
}