package com.zsc.web.dVillage;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import javacommon.xsqlbuilder.XsqlBuilder;
import javacommon.xsqlbuilder.XsqlBuilder.XsqlFilterResult;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import com.zsc.db.DataBaseControl;
import com.zsc.map.Demonstration_village;
import com.zsc.map.PlanPro;
import com.zsc.web.BaseAction;

public class Demonstration_villageAction extends BaseAction{
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		Map searchMap=getParameterMap(request);
		String biao_shi=request.getParameter("biao_shi")==null||request.getParameter("biao_shi").equals("")?user.get("biao_shi")+"":request.getParameter("biao_shi");
		String sql="select t.*, t.rowid from T_DEMONSTRATION_VILLAGE t join t_didian td on t.area=td.id  where 1=1"
				 +"/~ and td.biao_shi={biao_shi} ~/ "
				 +"/~ or td.biao_shi like '[biao_shi]%' ~/ "
				 +" order by t.id desc";
				
		XsqlFilterResult xsql = new XsqlBuilder().generateSql(sql,searchMap);
		List dvlist=(List) dataBaseControl.getOutResultSet(xsql.getXsql(), xsql.getAcceptedFilters().values().toArray());
		request.setAttribute("dvlist", dvlist);
		request.setAttribute("biao_shi", biao_shi);
		return "/dVillage/info/list.jsp";
	}
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		Map user = (Map) session.getAttribute("user");
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		String guan_li = user.get("guan_li").toString();
		List areaList = (List)dataBaseControl.getOutResultSet("select t.* from t_didian t where t.parent=?", new Object[]{guan_li});
		Map me=dataBaseControl.getOneResultSet("select t.id,t.parent,t.name,t.quan_ming from t_didian t where t.id=?", new Object[]{guan_li});
		Collection list = dataBaseControl.getOutResultSet("select t.id,t.parent,t.name,t.quan_ming from t_didian t where t.parent=? order by id", new Object[]{guan_li});
		request.setAttribute("me", me);
		request.setAttribute("list", list);
        //乡镇用户标识
		request.setAttribute("xiangzhen","no");
		request.setAttribute("areaList",areaList);
		return "/dVillage/info/create.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		String id=request.getParameter("id");
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		String[] dlwzs = request.getParameterValues("dlwz");
		String[] xmmcs = request.getParameterValues("xmmc");
		String[] jtjsnrs = request.getParameterValues("jtjsnr");
		String[] tzgss = request.getParameterValues("tzgs");
		String dlwz=";";
		if(null!=dlwzs){
			for(int i=0;i<dlwzs.length;i++){
				dlwz = dlwz+dlwzs[i]+";";
			}
		}
		Demonstration_village dv=new Demonstration_village();
		dataBaseControl.beginTransaction();
		
        if (!id.equals("")) {
        	String delsql="delete from T_PLANPRO t where t.fid=?";
        	dataBaseControl.executeSql(delsql, new Object[]{id});
        	if (null!=xmmcs) {
                for(int i=0;i<xmmcs.length;i++){
             	   PlanPro pp=new PlanPro();
             	   pp.setXmmc(xmmcs[i]);
             	   pp.setTzgs(tzgss[i]);
             	   pp.setJtjsnr(jtjsnrs[i]);
             	   pp.setFid(Long.parseLong(id));
             	   dataBaseControl.insertByBean(pp);
             	   
 			}
 		}
 		
 		BeanUtils.populate(dv, getParameterMap(request));
 		dv.setDlwz(dlwz);
 		dataBaseControl.updateByBean(dv);
			
		}else{
			Long fid=dataBaseControl.getSeq("Demonstration_village")+1;
			if (null!=xmmcs) {
	               for(int i=0;i<xmmcs.length;i++){
	            	   PlanPro pp=new PlanPro();
	            	   pp.setXmmc(xmmcs[i]);
	            	   pp.setTzgs(tzgss[i]);
	            	   pp.setJtjsnr(jtjsnrs[i]);
	            	   pp.setFid(fid);
	            	   dataBaseControl.insertByBean(pp);
	            	   
				}
			}
			
			BeanUtils.populate(dv, getParameterMap(request));
			dv.setDlwz(dlwz);
			dataBaseControl.insertByBean(dv);
		}
		
		dataBaseControl.endTransaction();
		return "/dVillage/Demonstration_village!list.do?biao_shi="+biao_shi;
	}
	public String show(HttpServletRequest request) throws Exception {
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		String id=request.getParameter("id");
		String dvsql="select t.*, t.rowid from T_DEMONSTRATION_VILLAGE t where t.id=?";
	    List dvlist=	(List) dataBaseControl.getOutResultSet(dvsql, new Object[]{id});
	    Map dvmap=(Map) dvlist.get(0);
	    if (dvmap.size()>0) {
			String ppsql="select t.*, t.rowid from T_PLANPRO t where t.fid=?";
			List ppList=(List) dataBaseControl.getOutResultSet(ppsql, new Object[]{id});
			request.setAttribute("planProList", ppList);
		}
	    request.setAttribute("demonstration_village", dvmap);
	    request.setAttribute("id", id);
	    request.setAttribute("flag", "show");
		return "/dVillage/info/create.jsp";
	}
	public String edit(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		Map user = (Map) session.getAttribute("user");
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		String guan_li = user.get("guan_li").toString();
		List areaList = (List)dataBaseControl.getOutResultSet("select t.* from t_didian t where t.parent=?", new Object[]{guan_li});
		Map me=dataBaseControl.getOneResultSet("select t.id,t.parent,t.name,t.quan_ming from t_didian t where t.id=?", new Object[]{guan_li});
		Collection list = dataBaseControl.getOutResultSet("select t.id,t.parent,t.name,t.quan_ming from t_didian t where t.parent=? order by id", new Object[]{guan_li});
		request.setAttribute("me", me);
		request.setAttribute("list", list);
        //乡镇用户标识
		request.setAttribute("xiangzhen","no");
		request.setAttribute("areaList",areaList);
		
		
		
		
		
		String id=request.getParameter("id");
		
		String dvsql="select t.*, t.rowid from T_DEMONSTRATION_VILLAGE t where t.id=?";
	    List dvlist=	(List) dataBaseControl.getOutResultSet(dvsql, new Object[]{id});
	    Map dvmap=(Map) dvlist.get(0);
	    if (dvmap.size()>0) {
			String ppsql="select t.*, t.rowid from T_PLANPRO t where t.fid=?";
			List ppList=(List) dataBaseControl.getOutResultSet(ppsql, new Object[]{id});
			request.setAttribute("planProList", ppList);
		}
	    request.setAttribute("demonstration_village", dvmap);
	    request.setAttribute("id", id);
		return "/dVillage/info/create.jsp";
	}
	public String delete(HttpServletRequest request) throws Exception {
		String biao_shi=request.getParameter("biao_shi");
		request.setAttribute("biao_shi",biao_shi);
		String[] items = request.getParameterValues("items");
		for(int i = 0; i < items.length; i++) {			
			dataBaseControl.executeSql("DELETE FROM T_DEMONSTRATION_VILLAGE WHERE ID=?", new Object[]{items[i]});
		}
		
		
		return "/dVillage/Demonstration_village!list.do?biao_shi="+biao_shi;
	}
}
