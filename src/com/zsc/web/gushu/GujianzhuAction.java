/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2013-10-9</p>
 * <p> @author ������</p>
 */
package com.zsc.web.gushu;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javacommon.xsqlbuilder.XsqlBuilder;
import javacommon.xsqlbuilder.XsqlBuilder.XsqlFilterResult;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;
import com.zsc.map.Gs_file;
import com.zsc.map.Gujianzhu;
import com.zsc.web.BaseAction;

public class GujianzhuAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();
	/** 
	 * ִ������ 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
		Collection list=dataBaseControl.getOutResultSet("SELECT t.*,t.jianzao_type||'��'||nvl2(t.jianzao_nian,t.jianzao_nian||'��',t.jianzao_chao||'��') as juti FROM T_GUJIANZHU t where t.unit_id=? order by t.id desc", new Object[]{unit_id});
		request.setAttribute("list", list);
		return "/gushu/Gujianzhu/list.jsp";
	}
	
	/** 
	 * ר������ 
	 **/
	public String listZj(HttpServletRequest request) throws Exception {
		Collection list=dataBaseControl.getOutResultSet("SELECT t.*,d.quan_ming FROM T_GUJIANZHU t,t_didian d where d.id=t.unit_id order by t.id desc", null);
		request.setAttribute("list", list);
		return "/gushu/Gujianzhu/listZj.jsp";
	}
	
	/** 
	 * ִ������ 
	 **/
	public String listSearch(HttpServletRequest request) throws Exception {
		//���Ʋ�ѯ����
		Map user = (Map)request.getSession().getAttribute("user");
		String biao_shi=request.getParameter("biao_shi")==null||request.getParameter("biao_shi").equals("")?user.get("biao_shi")+"":request.getParameter("biao_shi");
		String sqlTemp=" and td.biao_shi like '"+biao_shi+"%'";
		Map searchMap=getParameterMap(request);
		//�趨ҳ�ź�ҳ��С
		String pageNo = (request.getParameter("pageno") == null || request.getParameter("pageno").equals("")) ? "1" : 
			request.getParameter("pageno").toString();
		int pageNumber = (new Integer(pageNo)).intValue();
		int pageSize = 20;
		String sql="SELECT tg.*,tg.jianzao_type||'��'||nvl2(tg.jianzao_nian,tg.jianzao_nian||'��',tg.jianzao_chao||'��') as juti,td.quan_ming" +
				" FROM T_GUJIANZHU tg join t_didian td on tg.unit_id=td.id  where 1=1 " +
				sqlTemp+
				"/~ and td.quan_ming like '%[quan_ming]%' ~/"+
				"/~ and tg.mingcheng like '%[mingcheng]%' ~/"+
				"/~ and tg.jiegou like '%[jiegou]%' ~/"+
				"/~ and tg.jianzao_chao like '%[jianzao_chao]%' ~/"+
				"/~ and tg.jianzao_nian >= {jianzao_nian_min} ~/"+
				"/~ and tg.jianzao_nian <= {jianzao_nian_max} ~/"+
				"/~ and tg.cengshu >= {cengshu_min} ~/"+
				"/~ and tg.cengshu <= {cengshu_max} ~/"+
				"/~ and tg.gaodu >= {gaodu_min} ~/"+
				"/~ and tg.gaodu <= {gaodu_max} ~/"+
				"/~ and tg.mianji >= {mianji_min} ~/"+
				"/~ and tg.mianji <= {mianji_max} ~/"+
				" order by td.id desc";
		XsqlFilterResult result = new XsqlBuilder().generateSql(sql,searchMap );
		Page page=(Page) dataBaseControl.getPageResultSet(result.getXsql(),result.getAcceptedFilters().values().toArray(), pageNumber, pageSize);
		request.setAttribute("biao_shi", biao_shi);
		request.setAttribute("searchMap", searchMap);
		request.setAttribute("page", page);
		return "/gushu/Gujianzhu/listSearch.jsp";
	}
	
	/** 
	 * �����ִ������ 
	 **/
	public String listCheck(HttpServletRequest request) throws Exception {
		String unit_id = (String)request.getParameter("id");
		Collection list=dataBaseControl.getOutResultSet("SELECT t.*,t.jianzao_type||'��'||nvl2(t.jianzao_nian,t.jianzao_nian||'��',t.jianzao_chao||'��') as juti FROM T_GUJIANZHU t where t.unit_id=? order by t.id desc", new Object[]{unit_id});
		request.setAttribute("list", list);
		return "/gushu/Gujianzhu/listCheck.jsp";
	}
	
	/** 
	 * �鿴����
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		Map gujianzhu = dataBaseControl.getByBean(getMapObject(request));
		Collection pics=dataBaseControl.getOutResultSet("select * from t_Gs_file where gs_id=? and type=2", new Object[]{Long.parseLong(request.getParameter("id"))});
		request.setAttribute("gujianzhu",gujianzhu);
		request.setAttribute("pics",pics);
		return "/gushu/Gujianzhu/show.jsp";
	}
	
	/** 
	 * ����˲鿴����
	 **/
	public String showCheck(HttpServletRequest request) throws Exception {	
		Map gujianzhu = dataBaseControl.getByBean(getMapObject(request));
		Collection pics=dataBaseControl.getOutResultSet("select * from t_Gs_file where gs_id=? and type=2", new Object[]{Long.parseLong(request.getParameter("id"))});
		request.setAttribute("gujianzhu",gujianzhu);
		request.setAttribute("pics",pics);
		return "/gushu/Gujianzhu/showCheck.jsp";
	}
	
	/** 
	 * ��������ҳ��
	 **/
	public String create(HttpServletRequest request) throws Exception {
		request.setAttribute("myear", Calendar.getInstance().get(Calendar.YEAR));
		request.setAttribute("month", Calendar.getInstance().get(Calendar.MONTH)+1);
		return "/gushu/Gujianzhu/create.jsp";
	}
	
	/** 
	 * ������������
	 **/
	public String save(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
		String year=request.getParameter("year");
		String month=request.getParameter("month");
		String[] pics=request.getParameterValues("pic");
		String[] types=request.getParameterValues("type");
		String[] remarks=request.getParameterValues("remark");
		Gs_file gs_file;
		String jiegou_=null;
		String[] jiegous=request.getParameterValues("jiegou");
		if(jiegous!=null&&jiegous.length>0){
			StringBuffer jiegou=new StringBuffer();
			for (String jg : jiegous) {
				if(!"".equals(jg))
					jiegou.append(jg+";");
			}
			jiegou_=jiegou.substring(0, jiegou.length()-1);
		}
		dataBaseControl.beginTransaction();
		Long id=dataBaseControl.getSeq("Gujianzhu");
		dataBaseControl.insertByBean(getMapObject(request,new Object[][]{{"unit_id",unit_id},{"input",new Timestamp(new Date().getTime())},{"jiegou",jiegou_},{"diaocha",year+"-"+month}}),id);
		if(pics!=null&&pics.length>0)
			for (int i = 0; i < pics.length; i++) {
				gs_file=new Gs_file();
				gs_file.setGs_id(id);
				gs_file.setType(2l);
				gs_file.setPath(pics[i]);
				gs_file.setLeixing(types[i]);
				gs_file.setShuoming(remarks[i]);
				dataBaseControl.insertByBean(gs_file);
			}
		dataBaseControl.endTransaction();
		return "/gushu/Gujianzhu!list.do";
	}
	
	/**
	 * �������ҳ��
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map gujianzhu = dataBaseControl.getByBean(getMapObject(request));
		Collection pics=dataBaseControl.getOutResultSet("select * from t_Gs_file where gs_id=? and type=2", new Object[]{Long.parseLong(request.getParameter("id"))});
		String jiegous=gujianzhu.get("jiegou")==null?"":gujianzhu.get("jiegou").toString();
        List<String> list=new ArrayList<String>(Arrays.asList(jiegous.split(";")));
        if(list.contains("ľ�ṹ")){
        	request.setAttribute("mu","checked");
        	list.remove("ľ�ṹ");
        }
        if(list.contains("ש�ṹ")){
        	request.setAttribute("zhuan","checked");
        	list.remove("ש�ṹ");
        }
        if(list.contains("שʯ�ṹ")){
        	request.setAttribute("zhuanshi","checked");
        	list.remove("שʯ�ṹ");
        }
        if(!list.isEmpty()){
        	request.setAttribute("qita","checked");
        	String temp=list.toString();
        	request.setAttribute("qitaz",temp.substring(1, temp.length()-1));
        }
		request.setAttribute("gujianzhu",gujianzhu);
		request.setAttribute("pics",pics);
		request.setAttribute("myear", Calendar.getInstance().get(Calendar.YEAR));
		if(gujianzhu.get("diaocha")!=null){
			String[] diaochas=gujianzhu.get("diaocha").toString().split("-");
			request.setAttribute("year",diaochas[0]);
			request.setAttribute("month", diaochas[1]);	
		}
		return "/gushu/Gujianzhu/edit.jsp";
	}
	
	/**
	 * ������¶���
	 **/
	public String update(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Long unit_id=new Long(user.get("guan_li").toString());
		String year=request.getParameter("year");
		String month=request.getParameter("month");
		String[] pics=request.getParameterValues("pic");
		String[] types=request.getParameterValues("type");
		String[] remarks=request.getParameterValues("remark");
		Long id=Long.parseLong(request.getParameter("id"));
		Gs_file gs_file;
		String jiegou_=null;
		String[] jiegous=request.getParameterValues("jiegou");
		if(jiegous!=null&&jiegous.length>0){
			StringBuffer jiegou=new StringBuffer();
			for (String jg : jiegous) {
				if(!"".equals(jg))
					jiegou.append(jg+";");
			}
			jiegou_=jiegou.substring(0, jiegou.length()-1);
		}
		dataBaseControl.beginTransaction();
		dataBaseControl.updateByBean(getMapObject(request,new Object[][]{{"unit_id",unit_id},{"input",new Timestamp(new Date().getTime())},{"jiegou",jiegou_},{"diaocha",year+"-"+month}}));
		dataBaseControl.executeSql("DELETE FROM t_Gs_file WHERE type=2 and gs_id=?", new Object[]{id});
		if(pics!=null&&pics.length>0)
			for (int i = 0; i < pics.length; i++) {
				gs_file=new Gs_file();
				gs_file.setGs_id(id);
				gs_file.setType(2l);
				gs_file.setPath(pics[i]);
				gs_file.setLeixing(types[i]);
				gs_file.setShuoming(remarks[i]);
				dataBaseControl.insertByBean(gs_file);
			}
		dataBaseControl.endTransaction();
		return "/gushu/Gujianzhu!list.do";
	}
	
	/** 
	 * ����˲鿴����
	 **/
	public String zjAudit(HttpServletRequest request) throws Exception {	
		String issub=request.getParameter("issub");
		DateFormat dFormat = new SimpleDateFormat("yyyy-MM-dd");
		SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
		Date today = new Date();
		if(issub!=null && !issub.equals("") && issub.equals("1")){
			Gujianzhu gujianzhu = (Gujianzhu) getMapObject(request);
			gujianzhu.setZj_date((new java.sql.Date((fmt.parse(dFormat.format(today)).getTime()))));
			int i=dataBaseControl.updateByBean(gujianzhu);
			if(i==1)request.setAttribute("issave", "alert(\"����ɹ�\");parent.window.location='Gujianzhu!listZj.do'");
		}else{
			Map gujianzhu = dataBaseControl.getByBean(getMapObject(request));
			Collection pics=dataBaseControl.getOutResultSet("select * from t_Gs_file where gs_id=? and type=2", new Object[]{Long.parseLong(request.getParameter("id"))});
			
			request.setAttribute("gujianzhu",gujianzhu);
			request.setAttribute("pics",pics);
		}
		request.setAttribute("issub", "1");
		return "/gushu/Gujianzhu/zjAudit.jsp";
	}
	
	/**
	 *ɾ������
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		String[] items = request.getParameterValues("items");
		dataBaseControl.beginTransaction();
		for(int i = 0; i < items.length; i++) {			
			Long id = new Long(items[i]);
			dataBaseControl.executeSql("DELETE FROM T_GUJIANZHU WHERE ID=?", new Object[]{id});
			dataBaseControl.executeSql("DELETE FROM t_Gs_file WHERE type=2 and gs_id=?", new Object[]{id});
		}
		dataBaseControl.endTransaction();
		return "/gushu/Gujianzhu!list.do";
	}
	/**
	 *������Ϣ
	 **/
	public String report(HttpServletRequest request) throws Exception {
		String biao_shi=request.getParameter("biao_shi");
		String[] ids=biao_shi.split("_");
		if(ids.length==4){
			request.setAttribute("xiang", "Y");	
		}else{
			//�ֵ���ͳ������
			Collection diqu=dataBaseControl.getOutResultSet("select biao_shi,name,sum(my_count) my_count from("
					+"select x.id,x.biao_shi,x.name,count(y.unit_id) my_count from (select t.name,t.biao_shi,t.id from t_didian t where t.parent=?)x "
					+"left join (select a.unit_id,b.biao_shi from t_gujianzhu a,t_didian b where a.unit_id=b.id)y on (y.biao_shi=x.biao_shi) group by x.id,x.biao_shi,x.name "
					+"UNION "         
					+"select x.id,x.biao_shi,x.name,count(y.unit_id) my_count from (select t.name,t.biao_shi,t.id from t_didian t where t.parent=?)x "
					+"left join (select a.unit_id,b.biao_shi from t_gujianzhu a,t_didian b where a.unit_id=b.id)y on (y.biao_shi like x.biao_shi||'_%') group by x.id,x.biao_shi,x.name "
					+")group by biao_shi,name,id order by id ", new Object[]{ids[ids.length-1],ids[ids.length-1]});
			StringBuffer diqus=new StringBuffer("<chart palette='2' caption='�Ž�������ͳ��' xAxisName='����' yAxisName='����' showValues='1' decimals='0' formatNumberScale='0' useRoundEdges='1' baseFontSize ='12' rotateYAxisName='0'>");
			for (Iterator iterator = diqu.iterator(); iterator.hasNext();) {
				Map map = (Map) iterator.next();
				diqus.append("<set label='"+map.get("name")+"' value='"+map.get("my_count")+"' link='JavaScript:mylink(%26apos;"+map.get("biao_shi")+"%26apos;);'/>");			
			}
			request.setAttribute("diqu", diqus.append("</chart>").toString());			
		}
		//���������ͳ��
		Collection leixing=dataBaseControl.getOutResultSet("select x.name,y.my_count from (select * from t_chaxun where type=4)x left join(select leixing,count(*) my_count from"+
				" (select a.jianzao_type leixing,b.biao_shi from t_gujianzhu a,t_didian b where a.unit_id=b.id)"+
				" where biao_shi like ? or biao_shi=? group by leixing)y on x.name=y.leixing order by x.id", new Object[]{biao_shi+"_%",biao_shi});
		StringBuffer leixings=new StringBuffer("<chart palette='4' caption='�Ž������������ͳ��' showValues='1' decimals='0' formatNumberScale='0' useRoundEdges='1' baseFontSize ='12' rotateYAxisName='0'>");
		for (Iterator iterator = leixing.iterator(); iterator.hasNext();) {
			Map map = (Map) iterator.next();
			leixings.append("<set label='"+map.get("name")+"' value='"+map.get("my_count")+"' />");			
		}
		request.setAttribute("leixing", leixings.append("</chart>").toString());
		//���ṹ��ʽͳ��
		Collection zhuangkuang=dataBaseControl.getOutResultSet("select x.name,y.my_count from (select * from t_chaxun where type=5)x left join(select lexing,count(*) my_count from"+
				"(select case when a.jiegou like '%ľ�ṹ%' then 'ľ�ṹ' when a.jiegou like '%ש�ṹ%' then 'ש�ṹ' when a.jiegou like '%שʯ�ṹ%' then 'שʯ�ṹ' else '����' end lexing,b.biao_shi from t_gujianzhu a,t_didian b where a.unit_id=b.id)"+
				" where biao_shi like ? or biao_shi=? group by lexing)y on x.name=y.lexing order by x.id", new Object[]{biao_shi+"_%",biao_shi});
		StringBuffer zhuangkuangs=new StringBuffer("<chart palette='4' caption='�Ž������ṹ��ʽͳ��' showValues='1' decimals='0' formatNumberScale='0' useRoundEdges='1' baseFontSize ='12' rotateYAxisName='0'>");
		for (Iterator iterator = zhuangkuang.iterator(); iterator.hasNext();) {
			Map map = (Map) iterator.next();
			zhuangkuangs.append("<set label='"+map.get("name")+"' value='"+map.get("my_count")+"' />");			
		}
		request.setAttribute("zhuangkuang", zhuangkuangs.append("</chart>").toString());		
		return "/gushu/Gujianzhu/report.jsp";
	}	
}