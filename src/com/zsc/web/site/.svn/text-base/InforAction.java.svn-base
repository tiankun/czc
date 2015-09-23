/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2015 官房电子科技有限公司</p>
 * <p> Created on 2015-2-9</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.site;

import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;
import com.zsc.web.BaseAction;

public class InforAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/**
	 * 首页
	 */
	public String find(HttpServletRequest request)throws Exception
	{		
		request.setAttribute("list2", dataBaseControl.getTopResultSet("select id,biaoti from t_infor where inforname=? order by times desc", new Object[]{"领导讲话"}, 5));
		request.setAttribute("list1", dataBaseControl.getTopResultSet("select id,biaoti,tupian from t_infor where inforname=? order by times desc", new Object[]{"简讯"}, 5));
		request.setAttribute("list3", dataBaseControl.getTopResultSet("select id,biaoti from t_infor where inforname=? order by times desc", new Object[]{"文件"}, 5));
		//request.setAttribute("list4", userService.getInforbyname("法律法规",0,5).getList());
		request.setAttribute("list5", dataBaseControl.getTopResultSet("select id,biaoti from t_infor where inforname=? order by times desc", new Object[]{"农村住房业绩考核排行榜"}, 5));
		request.setAttribute("list6", dataBaseControl.getTopResultSet("select id,biaoti from t_infor where inforname=? order by times desc", new Object[]{"规划管理业绩考核排行榜"}, 5));
		request.setAttribute("list7", dataBaseControl.getTopResultSet("select id,biaoti from t_infor where inforname=? order by times desc", new Object[]{"招商项目"}, 5));
		request.setAttribute("list8", dataBaseControl.getTopResultSet("select id,biaoti from t_infor where inforname=? order by times desc", new Object[]{"村镇适用经济技术推荐"}, 5));
		request.setAttribute("list9", dataBaseControl.getTopResultSet("select id,biaoti,tupian from t_infor where inforname=? order by times desc", new Object[]{"旧貌换新颜图片展"}, 20));
		request.setAttribute("list10", dataBaseControl.getTopResultSet("select id,biaoti,gaiyao from t_infor where inforname=? order by times desc", new Object[]{"友情链接"}, 18));
		request.setAttribute("list11", dataBaseControl.getTopResultSet("select id,biaoti from t_infor where inforname=? order by times desc", new Object[]{"工作研究"}, 5));
		request.setAttribute("list12", dataBaseControl.getTopResultSet("select id,biaoti from t_infor where inforname=? order by times desc", new Object[]{"机构工作研究"}, 5));
		request.setAttribute("list13", dataBaseControl.getTopResultSet("select id,biaoti,wenjian,wenbieming from t_infor where inforname=? order by times desc", new Object[]{"课件下载"}, 12));
		request.setAttribute("list14", dataBaseControl.getTopResultSet("select id,biaoti from t_infor where inforname=? order by times desc", new Object[]{"经验交流"}, 5));
		return "/start.jsp";
	}
	/**
	 * 二级页面
	 */
	public String getPage(HttpServletRequest request)throws Exception
	{   int pageNumber=1;
		try {pageNumber=Integer.parseInt(request.getParameter("page"));} catch (Exception e) {}
		pageNumber=pageNumber<1?1:pageNumber;
		String inforname=URLDecoder.decode(request.getParameter("inforname"), "UTF-8");
		Page pager=dataBaseControl.getPageResultSet("select id,biaoti,wenbieming,wenjian from t_Infor where inforname=? order by times desc", new Object[]{inforname}, pageNumber, 35);
		request.setAttribute("list1",pager.getThisPageElements());
		request.setAttribute("page",pager.getThisPageNumber());
		request.setAttribute("totalpage",pager.getLastPageNumber());
		request.setAttribute("list10", dataBaseControl.getTopResultSet("select id,biaoti,gaiyao from t_infor where inforname=? order by times desc", new Object[]{"友情链接"}, 18));
		request.setAttribute("infor", inforname);
		return "/getPage.jsp";
	}
	/**
	 * 查看信息
	 */
	public String findInfor(HttpServletRequest request)throws Exception
	{
		request.setAttribute("infor",dataBaseControl.getOneResultSet("select * from t_Infor where id=?", new Object[]{request.getParameter("id")}));
		request.setAttribute("list10", dataBaseControl.getTopResultSet("select id,biaoti,gaiyao from t_infor where inforname=? order by times desc", new Object[]{"友情链接"}, 18));
		return "/searchTotal.jsp";
	}
	/**
	 * 搜索信息
	 */
	public String search(HttpServletRequest request)throws Exception
	{
		String select=request.getParameter("select");
		String y=request.getParameter("y");
		if("1".equals(y))
			select=URLDecoder.decode(select, "UTF-8");
		else
			select=new String(select.getBytes("GBK"),"UTF-8");
		int pageNumber=1;
		try {pageNumber=Integer.parseInt(request.getParameter("page"));} catch (Exception e) {}
		pageNumber=pageNumber<1?1:pageNumber;
		Page pager=dataBaseControl.getPageResultSet("select id,biaoti,wenbieming,wenjian from t_Infor where wenbieming like ? or biaoti like ? and inforname!='友情链接' and inforname!='村镇建设成就展'", new Object[]{"%"+select+"%","%"+select+"%"}, pageNumber, 35);
		request.setAttribute("list1",pager.getThisPageElements());
		request.setAttribute("page",pager.getThisPageNumber());
		request.setAttribute("totalpage",pager.getLastPageNumber());
		request.setAttribute("list10", dataBaseControl.getTopResultSet("select id,biaoti,gaiyao from t_infor where inforname=? order by times desc", new Object[]{"友情链接"}, 18));
		request.setAttribute("infor", select);		
		return "/search.jsp";
	}
}
