/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-10-9</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.gushu;

import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

import javacommon.xsqlbuilder.XsqlBuilder;
import javacommon.xsqlbuilder.XsqlBuilder.XsqlFilterResult;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;
import com.zsc.map.Gs_file;
import com.zsc.map.Gushu;
import com.zsc.web.BaseAction;

public class GushuAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
		Collection list=dataBaseControl.getOutResultSet("SELECT * FROM T_GUSHU where unit_id=? order by id desc", new Object[]{unit_id});
		request.setAttribute("list", list);
		return "/gushu/Gushu/list.jsp";
	}
	
	/** 
	 * 专家搜索 
	 **/
	public String listZj(HttpServletRequest request) throws Exception {
		Collection list=dataBaseControl.getOutResultSet("SELECT t.*,d.quan_ming FROM T_GUSHU t,t_didian d where d.id=t.unit_id order by t.id desc", null);
		request.setAttribute("list", list);
		return "/gushu/Gushu/listZj.jsp";
	}
	
	/** 
	 * 执行搜索 
	 **/
	public String listSearch(HttpServletRequest request) throws Exception {
		//限制查询区域
		Map user = (Map)request.getSession().getAttribute("user");
		String biao_shi=request.getParameter("biao_shi")==null||request.getParameter("biao_shi").equals("")?user.get("biao_shi")+"":request.getParameter("biao_shi");
		String sqlTemp=" and td.biao_shi like '"+biao_shi+"%'";
		Map searchMap=getParameterMap(request);
		//设定页号和页大小
		String pageNo = (request.getParameter("pageno") == null || request.getParameter("pageno").equals("")) ? "1" : 
			request.getParameter("pageno").toString();
		int pageNumber = (new Integer(pageNo)).intValue();
		int pageSize = 20;
		String sql="SELECT tg.*,td.quan_ming FROM T_GUSHU tg join t_didian td on tg.unit_id=td.id  where 1=1 " +
				sqlTemp+
				"/~ and td.quan_ming like '%[quan_ming]%' ~/"+
				"/~ and tg.mingcheng like '%[mingcheng]%' ~/"+
				"/~ and tg.leixing = {leixing} ~/"+
				"/~ and tg.jibie = {jibie} ~/"+
				"/~ and tg.shuling >= {shuling_min} ~/"+
				"/~ and tg.shuling <= {shuling_max} ~/"+
				"/~ and tg.shugao >= {shugao_min} ~/"+
				"/~ and tg.shugao <= {shugao_max} ~/"+
				"/~ and tg.guanfu_dx >= {guanfu_dx_min} ~/"+
				"/~ and tg.guanfu_dx <= {guanfu_dx_max} ~/"+
				"/~ and tg.guanfu_nb >= {guanfu_nb_min} ~/"+
				"/~ and tg.guanfu_nb <= {guanfu_nb_max} ~/"+
				"/~ and tg.xongwei >= {xongwei_min} ~/"+
				"/~ and tg.xongwei <= {xongwei_max} ~/"+
				"/~ and tg.shengzhang like '%[shengzhang]%' ~/"+
				" order by td.id desc";
		XsqlFilterResult result = new XsqlBuilder().generateSql(sql,searchMap );
		Page page=(Page) dataBaseControl.getPageResultSet(result.getXsql(),result.getAcceptedFilters().values().toArray(), pageNumber, pageSize);
		request.setAttribute("biao_shi", biao_shi);
		request.setAttribute("searchMap", searchMap);
		request.setAttribute("page", page);
		return "/gushu/Gushu/listSearch.jsp";
	}
	
	/** 
	 * 管理端执行搜索 
	 **/
	public String listCheck(HttpServletRequest request) throws Exception {
		String unit_id = (String)request.getParameter("id");
		Collection list=dataBaseControl.getOutResultSet("SELECT * FROM T_GUSHU where unit_id=? order by id desc", new Object[]{unit_id});
		request.setAttribute("list", list);
		return "/gushu/Gushu/listCheck.jsp";
	}
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map gushu = dataBaseControl.getByBean(getMapObject(request));
		Collection pics=dataBaseControl.getOutResultSet("select * from t_Gs_file where gs_id=? and type=1", new Object[]{Long.parseLong(request.getParameter("id"))});
		request.setAttribute("gushu",gushu);
		request.setAttribute("pics",pics);
		return "/gushu/Gushu/show.jsp";
	}
	
	/** 
	 * 管理端查看对象
	 **/
	public String showCheck(HttpServletRequest request) throws Exception {	
		Map gushu = dataBaseControl.getByBean(getMapObject(request));
		Collection pics=dataBaseControl.getOutResultSet("select * from t_Gs_file where gs_id=? and type=1", new Object[]{Long.parseLong(request.getParameter("id"))});
		request.setAttribute("gushu",gushu);
		request.setAttribute("pics",pics);
		return "/gushu/Gushu/showCheck.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
		Collection quns=dataBaseControl.getOutResultSet("select * from T_GUSHU_QUN where unit_id=? order by id desc", new Object[]{unit_id});
		request.setAttribute("quns",quns);
		request.setAttribute("myear", Calendar.getInstance().get(Calendar.YEAR));
		request.setAttribute("month", Calendar.getInstance().get(Calendar.MONTH)+1);
		return "/gushu/Gushu/create.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
		String year=request.getParameter("year");
		String month=request.getParameter("month");
		Long qun=null;
		String leixing=request.getParameter("leixing");
		if("古树群".equals(leixing))
			qun=Long.parseLong(request.getParameter("qun"));
		String[] pics=request.getParameterValues("pic");
		String[] types=request.getParameterValues("type");
		String[] remarks=request.getParameterValues("remark");
		Gs_file gs_file;
		dataBaseControl.beginTransaction();
		Long id=dataBaseControl.getSeq("GUSHU");
		dataBaseControl.insertByBean(getMapObject(request,new Object[][]{{"unit_id",unit_id},{"input",new Timestamp(new Date().getTime())},{"diaocha",year+"-"+month},{"qun",qun}}),id);
		if(pics!=null&&pics.length>0)
			for (int i = 0; i < pics.length; i++) {
				gs_file=new Gs_file();
				gs_file.setGs_id(id);
				gs_file.setType(1l);
				gs_file.setPath(pics[i]);
				gs_file.setLeixing(types[i]);
				gs_file.setShuoming(remarks[i]);
				dataBaseControl.insertByBean(gs_file);
			}
		dataBaseControl.endTransaction();
		return "/gushu/Gushu!list.do";
	}
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map gushu = dataBaseControl.getByBean(getMapObject(request));
		Collection pics=dataBaseControl.getOutResultSet("select * from t_Gs_file where gs_id=? and type=1", new Object[]{Long.parseLong(request.getParameter("id"))});
		request.setAttribute("gushu",gushu);
		request.setAttribute("pics",pics);
		request.setAttribute("myear", Calendar.getInstance().get(Calendar.YEAR));
		if(gushu.get("diaocha")!=null){
			String[] diaochas=gushu.get("diaocha").toString().split("-");
			request.setAttribute("year",diaochas[0]);
			request.setAttribute("month", diaochas[1]);	
		}
		Collection quns=dataBaseControl.getOutResultSet("select * from T_GUSHU_QUN where unit_id=? order by id desc", new Object[]{Long.parseLong(gushu.get("unit_id").toString())});
		request.setAttribute("quns",quns);
		return "/gushu/Gushu/edit.jsp";
	}
	
	/**
	 * 进入专家审查页面
	 **/
	public String zjAudit(HttpServletRequest request) throws Exception {
		String issub=request.getParameter("issub");
		DateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
		Date today = new Date();
		if(issub!=null && !issub.equals("") && issub.equals("1")){
			Gushu gushu = (Gushu) getMapObject(request);
			gushu.setZj_date((new java.sql.Date((fmt.parse(dFormat.format(today)).getTime()))));
			int i=dataBaseControl.updateByBean(gushu);
			if(i==1)request.setAttribute("issave", "alert(\"保存成功\");parent.window.location='Gushu!listZj.do'");
		}else{
			Map gushu = dataBaseControl.getByBean(getMapObject(request));
			Collection pics=dataBaseControl.getOutResultSet("select * from t_Gs_file where gs_id=? and type=1", new Object[]{Long.parseLong(request.getParameter("id"))});
			
			request.setAttribute("gushu",gushu);
			request.setAttribute("pics",pics);
		}
		
		request.setAttribute("issub", "1");
		return "/gushu/Gushu/zjAudit.jsp";
	}
	
	/**
	 * 保存更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
		String year=request.getParameter("year");
		String month=request.getParameter("month");
		Long qun=null;
		String leixing=request.getParameter("leixing");
		if("古树群".equals(leixing))
			qun=Long.parseLong(request.getParameter("qun"));
		String[] pics=request.getParameterValues("pic");
		String[] types=request.getParameterValues("type");
		String[] remarks=request.getParameterValues("remark");
		Long id=Long.parseLong(request.getParameter("id"));
		Gs_file gs_file;
		dataBaseControl.beginTransaction();
		dataBaseControl.updateByBean(getMapObject(request,new Object[][]{{"unit_id",unit_id},{"input",new Timestamp(new Date().getTime())},{"diaocha",year+"-"+month},{"qun",qun}}));
		dataBaseControl.executeSql("DELETE FROM t_Gs_file WHERE type=1 and gs_id=?", new Object[]{id});
		if(pics!=null&&pics.length>0)
			for (int i = 0; i < pics.length; i++) {
				gs_file=new Gs_file();
				gs_file.setGs_id(id);
				gs_file.setType(1l);
				gs_file.setPath(pics[i]);
				gs_file.setLeixing(types[i]);
				gs_file.setShuoming(remarks[i]);
				dataBaseControl.insertByBean(gs_file);
			}
		dataBaseControl.endTransaction();
		return "/gushu/Gushu!list.do";
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		String[] items = request.getParameterValues("items");
		dataBaseControl.beginTransaction();
		for(int i = 0; i < items.length; i++) {			
			Long id = new Long(items[i]);
			dataBaseControl.executeSql("DELETE FROM T_GUSHU WHERE ID=?", new Object[]{id});
			dataBaseControl.executeSql("DELETE FROM t_Gs_file WHERE type=1 and gs_id=?", new Object[]{id});
		}
		dataBaseControl.endTransaction();
		return "/gushu/Gushu!list.do";
	}
	
	/**
	 *新增古树群
	 **/
	public String ajaxQun(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
		String name=request.getParameter("name").trim();
		Long id=dataBaseControl.getSeq("GUSHU_QUN");
		dataBaseControl.executeSql("insert into T_GUSHU_QUN values(?,?,?)", new Object[]{id,unit_id,name});
		PrintWriter pw =response.getWriter();
		pw.print("ok##"+id); // 将信息返回前台
		pw.flush();
		pw.close();
		return null;
	}
	/**
	 *报表信息
	 **/
	public String report(HttpServletRequest request) throws Exception {
		String biao_shi=request.getParameter("biao_shi");
		String[] ids=biao_shi.split("_");
		if(ids.length==4){
			request.setAttribute("xiang", "Y");	
		}else{
			//分地区统计数量
			Collection diqu=dataBaseControl.getOutResultSet("select biao_shi,name,sum(my_count) my_count from(select x.id,x.biao_shi,x.name,count(y.unit_id) my_count from (select t.name,t.biao_shi,t.id from t_didian t where t.parent=?)x "
          +"left join (select a.unit_id,b.biao_shi from t_gushu a,t_didian b where a.unit_id=b.id)y on (y.biao_shi like x.biao_shi||'_%') group by x.id,x.biao_shi,x.name "
          +"UNION "          
          +"select x.id,x.biao_shi,x.name,count(y.unit_id) my_count from (select t.name,t.biao_shi,t.id from t_didian t where t.parent=?)x "
          +"left join (select a.unit_id,b.biao_shi from t_gushu a,t_didian b where a.unit_id=b.id)y on (y.biao_shi=x.biao_shi) group by x.id,x.biao_shi,x.name) "
          +"group by biao_shi,name,id order by id", new Object[]{ids[ids.length-1],ids[ids.length-1]});
			StringBuffer diqus=new StringBuffer("<chart palette='2' caption='古树/名木分区统计' xAxisName='地区' yAxisName='数量' showValues='1' decimals='0' formatNumberScale='0' useRoundEdges='1' baseFontSize ='12' rotateYAxisName='0'>");
			for (Iterator iterator = diqu.iterator(); iterator.hasNext();) {
				Map map = (Map) iterator.next();
				diqus.append("<set label='"+map.get("name")+"' value='"+map.get("my_count")+"' link='JavaScript:mylink(%26apos;"+map.get("biao_shi")+"%26apos;);'/>");			
			}
			request.setAttribute("diqu", diqus.append("</chart>").toString());			
		}
		//按类型统计
		Collection leixing=dataBaseControl.getOutResultSet("select x.name,y.my_count from (select * from t_chaxun where type=1)x left join(select leixing,count(*) my_count from"+
				" (select case when a.leixing='古树群' then '古树' else a.leixing end leixing,b.biao_shi from t_gushu a,t_didian b where a.unit_id=b.id)"+
				" where biao_shi like ? or biao_shi=? group by leixing)y on x.name=y.leixing order by x.id", new Object[]{biao_shi+"_%",biao_shi});
		//古树群数和属于古树群的树木总数
		Map qun=dataBaseControl.getOneResultSet("select count(distinct qun) qun,sum(liang) liang from (select a.qun,1 liang from (select unit_id,qun from t_gushu where leixing='古树群') a," +
				"(select id,biao_shi from t_didian where biao_shi=? or biao_shi like ?) b  where a.unit_id=b.id)", new Object[]{biao_shi,biao_shi+"_%"});
		StringBuffer leixings=new StringBuffer("<chart palette='4' caption='古树/名木按类型统计' showValues='1' decimals='0' formatNumberScale='0' useRoundEdges='1' baseFontSize ='12' rotateYAxisName='0'>");
		for (Iterator iterator = leixing.iterator(); iterator.hasNext();) {
			Map map = (Map) iterator.next();
			if(map.get("name").toString().equals("古树")){
				leixings.append("<set label='"+map.get("name"));
				if(Integer.parseInt(qun.get("qun").toString())>0)
					leixings.append("\\r(含:古树群:"+qun.get("qun")+" 古树:"+(qun.get("liang")==null?"0":qun.get("liang"))+")");
				leixings.append("' value='"+map.get("my_count")+"' link='JavaScript:myJS(1);'/>");
			}else
				leixings.append("<set label='"+map.get("name")+"' value='"+map.get("my_count")+"' />");			
		}
		request.setAttribute("leixing", leixings.append("</chart>").toString());
		//按生长状况统计
		Collection zhuangkuang=dataBaseControl.getOutResultSet("select x.name,y.my_count from (select * from t_chaxun where type=2)x left join(select shengzhang,count(*) my_count from"+
				"(select a.shengzhang,b.biao_shi from t_gushu a,t_didian b where a.unit_id=b.id)"+
				" where biao_shi like ? or biao_shi=? group by shengzhang)y on x.name=y.shengzhang order by x.id", new Object[]{biao_shi+"_%",biao_shi});
		StringBuffer zhuangkuangs=new StringBuffer("<chart palette='4' caption='古树/名木按生长状况统计' showValues='1' decimals='0' formatNumberScale='0' useRoundEdges='1' baseFontSize ='12' rotateYAxisName='0'>");
		for (Iterator iterator = zhuangkuang.iterator(); iterator.hasNext();) {
			Map map = (Map) iterator.next();
			zhuangkuangs.append("<set label='"+map.get("name")+"' value='"+map.get("my_count")+"' />");			
		}
		request.setAttribute("zhuangkuang", zhuangkuangs.append("</chart>").toString());	
		//古树按古树登记统计
		Collection jiebie=dataBaseControl.getOutResultSet("select x.name,y.my_count from (select * from t_chaxun where type=3)x left join(select jibie,count(*) my_count from"+
        " (select a.jibie,b.biao_shi from (select unit_id,jibie from t_gushu where leixing='古树' or leixing='古树群') a,t_didian b where a.unit_id=b.id)"+
        " where biao_shi like ? or biao_shi=? group by jibie)y on x.name=y.jibie order by x.id", new Object[]{biao_shi+"_%",biao_shi});
		StringBuffer jiebies=new StringBuffer("<chart palette='4' caption='古树按级别统计' showValues='1' decimals='0' formatNumberScale='0' useRoundEdges='1' baseFontSize ='12' rotateYAxisName='0'>");
		for (Iterator iterator = jiebie.iterator(); iterator.hasNext();) {
			Map map = (Map) iterator.next();
			jiebies.append("<set label='"+map.get("name")+"' value='"+map.get("my_count")+"' />");			
		}
		request.setAttribute("jiebie", jiebies.append("</chart>").toString());
		return "/gushu/Gushu/report.jsp";
	}	
}