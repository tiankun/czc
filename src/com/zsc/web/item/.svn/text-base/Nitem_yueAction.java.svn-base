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
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;
import com.zsc.map.Gs_file;
import com.zsc.map.Nitem_file;
import com.zsc.map.temp.ItemReportTongJi;
import com.zsc.web.BaseAction;

public class Nitem_yueAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String uploadList(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String item_id = request.getParameter("item_id");
		HttpSession session = request.getSession(true);
		String type = request.getParameter("type");
		Map user = (Map) session.getAttribute("user");
		String biao_shi=user.get("biao_shi")+"_%";
		String guan_li=user.get("guan_li")+"";
		String checkQuanxian = "";
		String sql = "";
		String itemSql = "";
		String checkSql = "";
		if("1".equals(type)){
			sql = "select t.*,t1.name,t1.num,t1.guan_li,trunc(to_date(t.year || '-' || to_number(t.month) || '-' || '06','yyyy-mm-dd')-sysdate) as dd from T_NITEM_YUE t left join t_nitem_water t1 on t.item_id=t1.id where t.type=1 and t.ITEM_ID=? order by t.id desc";
			itemSql = "select t.guan_li from t_nitem_water t where t.id=?";
			checkSql = "select a.id,a.guan_li,b.quan_ming from t_nitem_water a,t_didian b where a.id=? and a.area=b.id "
				+ "and b.biao_shi||'_' like ?";
		}else if("2".equals(type)){
			sql = "select t.*,t1.name,t1.num,t1.guan_li,trunc(to_date(t.year || '-' || to_number(t.month) || '-' || '06','yyyy-mm-dd')-sysdate) as dd from T_NITEM_YUE t left join T_NITEM_SEWAGA t1 on t.item_id=t1.id where t.type=2 and t.ITEM_ID=? order by t.id desc";
			itemSql = "select t.guan_li from T_NITEM_SEWAGA t where t.id=?";
			checkSql = "select a.id,a.guan_li,b.quan_ming from T_NITEM_SEWAGA a,t_didian b where a.id=? and a.area=b.id "
				+ "and b.biao_shi||'_' like ?";
		}else{
			sql = "select t.*,t1.name,t1.num,t1.guan_li,trunc(to_date(t.year || '-' || to_number(t.month) || '-' || '06','yyyy-mm-dd')-sysdate) as dd from T_NITEM_YUE t left join T_NITEM_RUBBISH t1 on t.item_id=t1.id where t.type=3 and t.ITEM_ID=? order by t.id desc";
			itemSql = "select t.guan_li from T_NITEM_RUBBISH t where t.id=?";
			checkSql = "select a.id,a.guan_li,b.quan_ming from T_NITEM_RUBBISH a,t_didian b where a.id=? and a.area=b.id "
				+ "and b.biao_shi||'_' like ?";
		}
		List list = (List)dataBaseControl.getOutResultSet(sql, new Object[]{item_id});
		Map project = dataBaseControl.getOneResultSet(itemSql, new Object[]{item_id});
		//判断该项目是否在登录用户管辖区内
		Map map=dataBaseControl.getOneResultSet(checkSql, new Object[]{item_id,biao_shi});
		
		if(null==map){
			checkQuanxian = "no";
		}else if(guan_li.equals(map.get("guan_li").toString())){
			checkQuanxian = "no";
		}else{
			checkQuanxian = "yes";
		}
		
		request.setAttribute("pro_area", project.get("guan_li").toString());
		request.setAttribute("type",type);
		request.setAttribute("item_id",item_id);
		request.setAttribute("project",project);
		request.setAttribute("list",list);
		request.setAttribute("checkQuanxian", checkQuanxian);
		
		if("".equals(item_id)){
			this.doResult(response, "请先进行项目填报！");
			return null;
		}else{
			return "/item/NitemYue/list.jsp";
		}
	}
	

	/** 
	 * 月报表搜索
	 **/
	public String yueList(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		Map user = (Map) session.getAttribute("user");
		String year=""+Calendar.getInstance().get(Calendar.YEAR);
		String month=""+(Calendar.getInstance().get(Calendar.MONTH)+1);
		String type = request.getParameter("type");
		if(user.get("biao_shi").toString().split("_").length>3){//乡镇用户
			if("1".equals(type)){
				return "/item/Nitem_water!create.do";
			}else if("2".equals(type)){
				return "/item/Nitem_sewaga!create.do";
			}else{
				return "/item/Nitem_rubbish!create.do";
			}
		}else{
			String jsp = "";
			String itemSql1 = "";
			String itemSql2 = "";
			String yueSql = "";
			String biao_shi=user.get("biao_shi")+"_%";
			if(request.getParameter("biao_shi")!=null){
				biao_shi=request.getParameter("biao_shi")+"_%";
			}
			if("1".equals(type)){
				itemSql1 = "select t1.jungong,count(t1.id) shuliang,sum(t1.CLGM_JINQI) CLGM_JINQI,sum(t1.clgm_yuanqi) clgm_yuanqi," +
						"sum(t1.zong_touzi) touzi,sum(t1.guan_zong) guan_zong,sum(t1.fwrk_jinqi) fwrk_jinqi,sum(t1.fwrk_yuanqi) " +
						"fwrk_yuanqi from t_nitem_water t1,t_didian t2 where t2.biao_shi || '_' like ? and t1.guan_li=t2.id " +
						"and t1.jungong='是' group by t1.jungong";
				itemSql2 = "select t1.jungong,count(t1.id) shuliang,sum(t1.CLGM_JINQI) CLGM_JINQI,sum(t1.clgm_yuanqi) clgm_yuanqi," +
				"sum(t1.zong_touzi) touzi,sum(t1.guan_zong) guan_zong,sum(t1.fwrk_jinqi) fwrk_jinqi,sum(t1.fwrk_yuanqi) " +
				"fwrk_yuanqi from t_nitem_water t1,t_didian t2 where t2.biao_shi || '_' like ? and t1.guan_li=t2.id " +
				"and t1.jungong='否' group by t1.jungong";
				yueSql = "select count(t.id) zongshu from T_NITEM_YUE t left join t_nitem_water t1 on t1.id=t.ITEM_ID left join" +
						" t_didian t2 on t1.guan_li=t2.id where t2.biao_shi || '_' like ? and t.type=1 and t.year=? and t.month=?";
				jsp = "/item/NitemYue/yueListWater.jsp";
			}else if("2".equals(type)){
				itemSql1 = "select t1.jungong,count(t1.id) shuliang,sum(t1.CLGM_JINQI) CLGM_JINQI,sum(t1.clgm_yuanqi) clgm_yuanqi," +
				"sum(t1.zong_touzi) touzi,sum(t1.guan_zong) guan_zong,sum(t1.fwrk_jinqi) fwrk_jinqi,sum(t1.fwrk_yuanqi) " +
				"fwrk_yuanqi from t_nitem_Sewaga t1,t_didian t2 where t2.biao_shi || '_' like ? and t1.guan_li=t2.id " +
				"and t1.jungong='是' group by t1.jungong";
	        	itemSql2 = "select t1.jungong,count(t1.id) shuliang,sum(t1.CLGM_JINQI) CLGM_JINQI,sum(t1.clgm_yuanqi) clgm_yuanqi," +
		        "sum(t1.zong_touzi) touzi,sum(t1.guan_zong) guan_zong,sum(t1.fwrk_jinqi) fwrk_jinqi,sum(t1.fwrk_yuanqi) " +
		        "fwrk_yuanqi from t_nitem_Sewaga t1,t_didian t2 where t2.biao_shi || '_' like ? and t1.guan_li=t2.id " +
		        "and t1.jungong='否' group by t1.jungong";
				yueSql = "select count(t.id) zongshu from T_NITEM_YUE t left join t_nitem_water t1 on t1.id=t.ITEM_ID left join" +
				" t_didian t2 on t1.guan_li=t2.id where t2.biao_shi || '_' like ? and t.type=2 and t.year=? and t.month=?";
				jsp = "/item/NitemYue/yueListSewage.jsp";
			}else{
				itemSql1 = "select t1.jungong,count(t1.id) shuliang,sum(t1.CLGM_JINQI) CLGM_JINQI,sum(t1.clgm_yuanqi) clgm_yuanqi," +
				"sum(t1.zong_touzi) touzi,sum(t1.ZHONG_MO) ZHONG_MO,sum(t1.fwrk_jinqi) fwrk_jinqi,sum(t1.fwrk_yuanqi) " +
				"fwrk_yuanqi from t_nitem_Rubbish t1,t_didian t2 where t2.biao_shi || '_' like ? and t1.guan_li=t2.id " +
				"and t1.jungong='是' group by t1.jungong";
	        	itemSql2 = "select t1.jungong,count(t1.id) shuliang,sum(t1.CLGM_JINQI) CLGM_JINQI,sum(t1.clgm_yuanqi) clgm_yuanqi," +
		        "sum(t1.zong_touzi) touzi,sum(t1.ZHONG_MO) ZHONG_MO,sum(t1.fwrk_jinqi) fwrk_jinqi,sum(t1.fwrk_yuanqi) " +
		        "fwrk_yuanqi from t_nitem_Rubbish t1,t_didian t2 where t2.biao_shi || '_' like ? and t1.guan_li=t2.id " +
		        "and t1.jungong='否' group by t1.jungong";
				yueSql = "select count(t.id) zongshu from T_NITEM_YUE t left join t_nitem_water t1 on t1.id=t.ITEM_ID left join" +
				" t_didian t2 on t1.guan_li=t2.id where t2.biao_shi || '_' like ? and t.type=3 and t.year=? and t.month=?";
				jsp = "/item/NitemYue/yueListRubbish.jsp";
			}
			//运营统计
			Map itemTongji1=(Map) dataBaseControl.getOneResultSet(itemSql1,new Object[]{biao_shi});
			//在建统计
			Map itemTongji2=(Map) dataBaseControl.getOneResultSet(itemSql2,new Object[]{biao_shi});
			//已报月报统计
			Map yueTongji=(Map) dataBaseControl.getOneResultSet(yueSql,new Object[]{biao_shi,year,month});
			
            request.setAttribute("itemTongji1", itemTongji1);
			request.setAttribute("itemTongji2", itemTongji2);
			request.setAttribute("yueTongji", yueTongji);
			request.setAttribute("type", type);
			return jsp;
		}
	}	
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		String item_id = request.getParameter("item_id");
		String type = request.getParameter("type");
		String id = request.getParameter("id");
		String pro_area = request.getParameter("pro_area");
		
		//获取对应jindu值
		String jindu = ((dataBaseControl.getOneResultSet("select jindu from t_nitem_yue where id=?", new Object[]{id})).get("jindu")).toString();
		
		Collection pics=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and id_type=2 and jindu=?", new Object[]{id,jindu});
		request.setAttribute("pics", pics);
		
		String sql = "";
		if("1".equals(type)){
			sql = "select t.*,t1.name,t1.num,t1.guan_li,trunc(to_date(t.year || '-' || to_number(t.month) || '-' || '06','yyyy-mm-dd')-sysdate) as dd from T_NITEM_YUE t left join t_nitem_water t1 on t.item_id=t1.id where t.id=?";
		}else if("2".equals(type)){
			sql = "select t.*,t1.name,t1.num,t1.guan_li,trunc(to_date(t.year || '-' || to_number(t.month) || '-' || '06','yyyy-mm-dd')-sysdate) as dd from T_NITEM_YUE t left join T_NITEM_SEWAGA t1 on t.item_id=t1.id where t.id=?";
		}else{
			sql = "select t.*,t1.name,t1.num,t1.guan_li,trunc(to_date(t.year || '-' || to_number(t.month) || '-' || '06','yyyy-mm-dd')-sysdate) as dd from T_NITEM_YUE t left join T_NITEM_RUBBISH t1 on t.item_id=t1.id where t.id=?";
		}
		Map nitem_yue = dataBaseControl.getOneResultSet(sql, new Object[]{request.getParameter("id")});
		request.setAttribute("pro_area",pro_area);
		request.setAttribute("item_id",item_id);
		request.setAttribute("type",type);
		request.setAttribute("nitem_yue",nitem_yue);
		request.setAttribute("operate",request.getParameter("operate"));
		return "/item/NitemYue/show.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		String item_id = request.getParameter("item_id");
		String type = request.getParameter("type");
		String sql = "";
		if("1".equals(type)){
			sql = "select t.name,t.num from t_nitem_water t where t.id=?";
		}else if("2".equals(type)){
			sql = "select t.name,t.num from t_nitem_sewaga t where t.id=?";
		}else{
			sql = "select t.name,t.num from t_nitem_rubbish t where t.id=?";
		}
		Map nitem_yue = dataBaseControl.getOneResultSet(sql, new Object[]{item_id});
		request.setAttribute("type",type);
		request.setAttribute("item_id",item_id);
		request.setAttribute("nitem_yue",nitem_yue);
		return "/item/NitemYue/create.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String uploadSave(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String item_id = request.getParameter("item_id");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		
		Map yuebao = dataBaseControl.getOneResultSet("select t.* from t_nitem_yue t where t.item_id=? and t.year=? and t.month=? and t.type=?", new Object[]{item_id,year,month,request.getParameter("type")});
		Object[][] changeParameter = {{"create_date",new java.sql.Date(new Date().getTime())},{"statu","0"}};
		if(null==yuebao){
			String[] pics=request.getParameterValues("pic");
			String[] pic_types=request.getParameterValues("pic_type");
			String[] remarks=request.getParameterValues("remark");
			String item_type = request.getParameter("type");
			String jindu = request.getParameter("jindu");
			
			dataBaseControl.beginTransaction();
			Long id=dataBaseControl.getSeq("NITEM_YUE")+1;	
			dataBaseControl.insertByBean(getMapObject(request,changeParameter));
			Nitem_file file;
			//保存图片
			if(pics!=null&&pics.length>0){
				for (int i = 0; i < pics.length; i++) {
					file=new Nitem_file();
					file.setYue_id(id);
					file.setItem_type(Long.parseLong(item_type));
					file.setPath(pics[i]);
					file.setPic_type(pic_types[i]);
					file.setRemark(remarks[i]);
					file.setId_type(2L);
					file.setJindu(jindu);
					dataBaseControl.insertByBean(file);
				}
			}
			dataBaseControl.endTransaction();
			
			return "/item/Nitem_yue!uploadList.do?type="+request.getParameter("type")+"&item_id="+item_id+"";
		}else{
			this.doResult(response, "该月月报已上报过，请确认日期！");
			return null;
		}
	}
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		String item_id = request.getParameter("item_id");
		String type = request.getParameter("type");
		String id = request.getParameter("id");
		
		//获取对应jindu值
		String jindu = ((dataBaseControl.getOneResultSet("select jindu from t_nitem_yue where id=?", new Object[]{id})).get("jindu")).toString();
		
		Collection pics=dataBaseControl.getOutResultSet("select * from t_nitem_file where yue_id=? and id_type=2 and jindu=?", new Object[]{id,jindu});
		request.setAttribute("pics", pics);
		
		String sql = "";
		if("1".equals(type)){
			sql = "select t.*,t1.name,t1.num from T_NITEM_YUE t left join t_nitem_water t1 on t.item_id=t1.id where t.id=?";
		}else if("2".equals(type)){
			sql = "select t.*,t1.name,t1.num from T_NITEM_YUE t left join T_NITEM_SEWAGA t1 on t.item_id=t1.id where t.id=?";
		}else{
			sql = "select t.*,t1.name,t1.num from T_NITEM_YUE t left join T_NITEM_RUBBISH t1 on t.item_id=t1.id where t.id=?";
		}
		Map nitem_yue = dataBaseControl.getOneResultSet(sql, new Object[]{request.getParameter("id")});
		request.setAttribute("item_id",item_id);
		request.setAttribute("type",type);
		request.setAttribute("nitem_yue",nitem_yue);
		return "/item/NitemYue/edit.jsp";
	}
	
	/**
	 * 保存更新对象
	 **/
	public String uploadUpdate(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String item_id = request.getParameter("item_id");
		String year = request.getParameter("year");
		String month = request.getParameter("month");

		Map yuebao = dataBaseControl.getOneResultSet("select t.* from t_nitem_yue t where t.item_id=? and t.year=? and t.month=? and t.id<>?", new Object[]{item_id,year,month,request.getParameter("id")});
		if(null==yuebao){
			
			
			String[] pics=request.getParameterValues("pic");
			String[] pic_types=request.getParameterValues("pic_type");
			String[] remarks=request.getParameterValues("remark");
			String item_type = request.getParameter("type");
			String jindu = request.getParameter("jindu");
			Long id=Long.parseLong(request.getParameter("id"));
			dataBaseControl.beginTransaction();
			dataBaseControl.updateByBean(getMapObject(request));
			dataBaseControl.executeSql("delete from t_nitem_file where yue_id=? and item_type=? and id_type=2", new Object[]{id,item_type});		
			//保存图片
			Nitem_file file;
			if(pics!=null&&pics.length>0){
				for (int i = 0; i < pics.length; i++) {
					file=new Nitem_file();
					file.setYue_id(id);
					file.setItem_type(Long.parseLong(item_type));
					file.setPath(pics[i]);
					file.setPic_type(pic_types[i]);
					file.setRemark(remarks[i]);
					file.setId_type(2L);
					file.setJindu(jindu);
					dataBaseControl.insertByBean(file);
				}
			}
			dataBaseControl.endTransaction();
		}else{
			this.doResult(response, "该月月报已上报过，请确认日期！");
			return null;
		}
		return "/item/Nitem_yue!uploadList.do?type="+request.getParameter("type")+"&item_id="+item_id+"";
	}
	
	/**
	 * 审批
	 **/
	public String check(HttpServletRequest request) throws Exception {
	    dataBaseControl.executeSql("update t_nitem_yue set statu=?,PZ_YIJIAN=?,PZ_DATE=?,OPERATER=? where id=?", 
	    		new Object[]{request.getParameter("statu"),request.getParameter("pz_yijian"),new java.sql.Date(new Date().getTime()),request.getParameter("operater"),request.getParameter("id")});
		return "/item/Nitem_yue!uploadList.do?type="+request.getParameter("type")+"&item_id="+request.getParameter("item_id")+"";
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		dataBaseControl.executeSql("DELETE FROM T_NITEM_YUE WHERE ID=?", new Object[]{request.getParameter("id")});
		return "/item/Nitem_yue!uploadList.do?type="+request.getParameter("type")+"&item_id="+request.getParameter("item_id")+"";
	}	
}