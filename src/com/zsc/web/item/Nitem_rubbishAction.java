/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2014-2-18</p>
 * <p> @author 邹申昶</p>
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
import com.zsc.web.BaseAction;

public class Nitem_rubbishAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		Map user = (Map) session.getAttribute("user");
		int month = Calendar.getInstance().get(Calendar.MONTH);//上月月份数
		int year = Calendar.getInstance().get(Calendar.YEAR);//今年年份数
		Map searchMap=getParameterMap(request);
		String biao_shi=user.get("biao_shi")+"_%";
		if(request.getParameter("biao_shi")!=null)
			biao_shi=request.getParameter("biao_shi")+"_%";
		searchMap.put("biao_shi", biao_shi);
		String sql = "select t.*,t2.quan_ming,t4.dao_zijin from V_NITEM_RUBBISH_YUE t left join t_didian t1 on t1.id=t.guan_li left" +
				" join t_didian t2 on t2.id=t.area left join (select t.item_id,sum(t.dao_zijin) dao_zijin from t_nitem_yue t" +
						" where t.type = 3 group by t.item_id, t.type) t4 on t4.item_id=t.id where 1=1" +
						"and (t.nianfen != '计划外项目' or t.nianfen is null) " +
				"/~ and t1.biao_shi || '_' like '[biao_shi]' ~/" +
				"/~ and t.name like '%[name]%' ~/" +
				"/~ and t.biaoshi like '%[biaoshi]%' ~/" +
				"/~ and t.xingzhi = '[xingzhi]' ~/" +
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
		return "/item/NitemRubbish/list.jsp";
	}
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {		
		String id = request.getParameter("id");
		Map nitem_rubbish = dataBaseControl.getOneResultSet("select t.*,t1.quan_ming from t_nitem_rubbish t left join t_didian t1 on t1.id=t.area where t.id=?", new Object[]{request.getParameter("id")});
		Map zijin = dataBaseControl.getOneResultSet("select sum(t.dao_zijin) dao_zijin,sum(t.ZHONG_ZIJIN) ZHONG_ZIJIN,sum(t.sheng_zijin) sheng_zijin,sum(t.shi_zijin+t.xian_zijin) difang_zijin,sum(t.zi_zijin) zi_zijin from t_nitem_yue t where t.item_id = ? and t.type = 3 group by t.item_id, t.type", new Object[]{id});
		request.setAttribute("zijin",zijin);
		request.setAttribute("nitem_rubbish",nitem_rubbish);
		
		//获取各上传文件
		Collection keyan=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=3 and pic_type='可研'", new Object[]{id});
		request.setAttribute("keyan", keyan);
		Collection chushe=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=3 and pic_type='初设'", new Object[]{id});
		request.setAttribute("chushe", chushe);
		Collection shishi=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=3 and pic_type='实施'", new Object[]{id});
		request.setAttribute("shishi", shishi);
		Collection shigong=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=3 and pic_type='施工'", new Object[]{id});
		request.setAttribute("shigong", shigong);
		Collection shoufei=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=3 and pic_type='收费'", new Object[]{id});
		request.setAttribute("shoufei", shoufei);
		
		return "/item/NitemRubbish/show.jsp";
	}
	
	/** 
	 * 进入新增页面（乡镇）
	 **/
	public String create(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		Map user = (Map) session.getAttribute("user");
		String guan_li = user.get("guan_li").toString();
		Map nitem_rubbish = dataBaseControl.getOneResultSet("select t.* from T_NITEM_rubbish t where t.GUAN_LI=?", new Object[]{guan_li});
		Map me=dataBaseControl.getOneResultSet("select t.id,t.parent,t.name,t.quan_ming from t_didian t where t.id=?", new Object[]{guan_li});
		Collection list = dataBaseControl.getOutResultSet("select t.id,t.parent,t.name,t.quan_ming from t_didian t where t.parent=? order by id", new Object[]{guan_li});
		request.setAttribute("me", me);
		request.setAttribute("list", list);
		request.setAttribute("nitem_rubbish",nitem_rubbish);
		//乡镇用户标识
		request.setAttribute("xiangzhen","yes");
		return "/item/NitemRubbish/create.jsp";
	}

	/** 
	 * 进入新增页面（县级及以上）
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
        //乡镇用户标识
		request.setAttribute("xiangzhen","no");
		request.setAttribute("areaList",areaList);
		return "/item/NitemRubbish/create.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		Map user = (Map) session.getAttribute("user");
		String id=request.getParameter("id");
		String[] xiang_types = request.getParameterValues("xiang_type");
		String[] laji_gongyis = request.getParameterValues("laji_gongyi");
		//String[] lvye_gongyis = request.getParameterValues("lvye_gongyi");
		String xiang_type=";";
		String laji_gongyi=";";
	//	String lvye_gongyi=";";
		String jsp = "";
		//组装多选框
		if(null!=xiang_types){
		for(int i=0;i<xiang_types.length;i++){
			xiang_type = xiang_type+xiang_types[i]+";";
		}}
		if(null!=laji_gongyis){
		for(int i=0;i<laji_gongyis.length;i++){
			laji_gongyi = laji_gongyi+laji_gongyis[i]+";";
		}}
//		if(null!=lvye_gongyis){
//		for(int i=0;i<lvye_gongyis.length;i++){
//			lvye_gongyi = lvye_gongyi+lvye_gongyis[i]+";";
//		}}
		
		//保存上传文件
		String[] paths = request.getParameterValues("path");
		String[] pic_types = request.getParameterValues("pic_type");
		String[] file_names = request.getParameterValues("file_name");
		String[] file_exts = request.getParameterValues("file_ext");
		dataBaseControl.beginTransaction();
		Long item_id=dataBaseControl.getSeq("nitem_rubbish")+1;
		Nitem_file file;
		if(paths!=null&&paths.length>0){
			for(int i = 0; i < paths.length; i++){
				file = new Nitem_file();
				file.setId_type(1L);
				file.setItem_type(3L);
				file.setYue_id(item_id);
				file.setPath(paths[i]);
				file.setPic_type(pic_types[i]);
				file.setFile_ext(file_exts[i]);
				file.setFile_name(file_names[i]);
				
				dataBaseControl.insertByBean(file);
			}
		}
		dataBaseControl.endTransaction();
		
		Object[][] changeParameter = {{"xiang_type",xiang_type},{"laji_gongyi",laji_gongyi},{"cdate",new java.sql.Date(new Date().getTime())}};
		if(null==id||"".equals(id)){
			dataBaseControl.insertByBean(getMapObject(request,changeParameter));
		}else{
			dataBaseControl.updateByBean(getMapObject(request,changeParameter));
		}
		if(user.get("biao_shi").toString().split("_").length>3){//乡镇用户
			jsp = "/item/Nitem_rubbish!create.do";
		}else{
			jsp = "/item/Nitem_rubbish!list.do?biao_shi="+request.getParameter("biao_shi")+"";
		}
		return jsp;
	}
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		String id = request.getParameter("id");
		Map user = (Map) session.getAttribute("user");
		String guan_li = user.get("guan_li").toString();
		Map nitem_rubbish = dataBaseControl.getByBean(getMapObject(request));
		//List areaList = (List)dataBaseControl.getOutResultSet("select t.* from t_didian t where t.parent=?", new Object[]{guan_li});
		Map me=dataBaseControl.getOneResultSet("select t.id,t.parent,t.name,t.quan_ming,t.biao_shi from t_didian t where t.id=?", new Object[]{nitem_rubbish.get("area")});
		request.setAttribute("me", me);
		Collection list = dataBaseControl.getOutResultSet("select t.id,t.parent,t.name,t.quan_ming from t_didian t where t.parent=? order by id", new Object[]{guan_li});
		request.setAttribute("list", list);
        //乡镇用户标识
		request.setAttribute("xiangzhen","no");
		//request.setAttribute("areaList",areaList);
		request.setAttribute("nitem_rubbish",nitem_rubbish);
		
		//获取各上传文件
		Collection keyan=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=3 and pic_type='可研'", new Object[]{id});
		request.setAttribute("keyan", keyan);
		Collection chushe=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=3 and pic_type='初设'", new Object[]{id});
		request.setAttribute("chushe", chushe);
		Collection shishi=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=3 and pic_type='实施'", new Object[]{id});
		request.setAttribute("shishi", shishi);
		Collection shigong=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=3 and pic_type='施工'", new Object[]{id});
		request.setAttribute("shigong", shigong);
		Collection shoufei=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and item_type=3 and pic_type='收费'", new Object[]{id});
		request.setAttribute("shoufei", shoufei);
		
		return "/item/NitemRubbish/edit.jsp";
	}
	
	/**
	 * 保存更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		String[] xiang_types = request.getParameterValues("xiang_type");
		String[] laji_gongyis = request.getParameterValues("laji_gongyi");
		String[] lvye_gongyis = request.getParameterValues("lvye_gongyi");
		String xiang_type=";";
		String laji_gongyi=";";
		String lvye_gongyi=";";
		//组装多选框
		if(null!=xiang_types){
		for(int i=0;i<xiang_types.length;i++){
			xiang_type = xiang_type+xiang_types[i]+";";
		}}
		if(null!=laji_gongyis){
		for(int i=0;i<laji_gongyis.length;i++){
			laji_gongyi = laji_gongyi+laji_gongyis[i]+";";
		}}
		if(null!=lvye_gongyis){
		for(int i=0;i<lvye_gongyis.length;i++){
			lvye_gongyi = lvye_gongyi+lvye_gongyis[i]+";";
		}}
		
		Object[][] changeParameter = {{"xiang_type",xiang_type},{"laji_gongyi",laji_gongyi},{"lvye_gongyi",lvye_gongyi}};
		
		//保存图片
		String[] paths = request.getParameterValues("path");
		String[] pic_types = request.getParameterValues("pic_type");
		String[] file_names = request.getParameterValues("file_name");
		String[] file_exts = request.getParameterValues("file_ext");
		
		dataBaseControl.beginTransaction();
		dataBaseControl.updateByBean(getMapObject(request,changeParameter));
		Long id=Long.parseLong(request.getParameter("id"));
		//删了再插
		dataBaseControl.executeSql("delete from t_nitem_file where yue_id=? and item_type=3 and id_type=1", new Object[]{id});
		Nitem_file file;
		if(paths!=null&&paths.length>0){
			for(int i = 0; i < paths.length; i++){
				file = new Nitem_file();
				file.setId_type(1L);
				file.setItem_type(3L);
				file.setYue_id(id);
				file.setPath(paths[i]);
				file.setPic_type(pic_types[i]);
				file.setFile_ext(file_exts[i]);
				file.setFile_name(file_names[i]);
				
				dataBaseControl.insertByBean(file);
			}
		}
		dataBaseControl.endTransaction();
		
		return "/item/Nitem_rubbish!list.do?biao_shi="+request.getParameter("biao_shi")+"";
	}

	/**
	 * 审核
	 **/
	public String shenhe(HttpServletRequest request) throws Exception {
		dataBaseControl.executeSql("update T_NITEM_RUBBISH t set t.biaoshi=?,t.nianfen=?,t.beizhu=?,t.shen_date=? where t.id=?", new Object[]{request.getParameter("biaoshi"),request.getParameter("nianfen"),request.getParameter("beizhu"),new java.sql.Date(new Date().getTime()),request.getParameter("id")});
		return "/item/Nitem_rubbish!list.do?biao_shi="+request.getParameter("biao_shi")+"";
	}
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		String id = request.getParameter("id");	
		dataBaseControl.executeSql("DELETE FROM T_NITEM_RUBBISH WHERE ID=?", new Object[]{id});
		dataBaseControl.executeSql("delete from t_nitem_file where yue_id=?", new Object[]{id});
		return "/item/Nitem_rubbish!list.do?biao_shi="+request.getParameter("biao_shi")+"";
	}	
}