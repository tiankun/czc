/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2012-11-14</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.archive;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

/**
 * 村民居住情况相关操作
 */
public class Ju_zhuAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	
	/** 
	 * 查看对象
	 **/
	public String show(HttpServletRequest request) throws Exception {	
		String biao_shi = request.getParameter("biao_shi");
		String sql = "select round(sum(b.shuliang),2) as shuliang,b.neirong from t_ju_zhu b where b.unit_id in (select a.id from t_didian" +
				" a where a.biao_shi like '"+biao_shi;
		if (biao_shi.split("_").length<=4)
			sql+="_%' and length(a.biao_shi)-length(replace(a.biao_shi,'_',''))=4) group by b.neirong";
		else
			sql+="') group by b.neirong";		
		List ju_zhuList = (List)dataBaseControl.getOutResultSet(sql, null);
		//设置相应的内容变量
		Map gongyou = new HashMap();
		Map wuren = new HashMap();
		Map liangchu = new HashMap();
		Map gaizao = new HashMap();
		//给内容相应对象赋值
		for(int i = 0;i<ju_zhuList.size();i++){
			Map temp = (Map)ju_zhuList.get(i);
			if("共有住房".equals(temp.get("neirong"))||temp.get("neirong")=="共有住房"){
				gongyou.put("shuliang", temp.get("shuliang"));
			}
			else if("无人居住的住房".equals(temp.get("neirong"))||temp.get("neirong")=="无人居住的住房"){
				wuren.put("shuliang", temp.get("shuliang"));
			}
			else if("有两处以上宅基的户数".equals(temp.get("neirong"))||temp.get("neirong")=="有两处以上宅基的户数"){
				liangchu.put("shuliang", temp.get("shuliang"));
			}
			else if("农村危房改造总数量".equals(temp.get("neirong"))||temp.get("neirong")=="农村危房改造总数量"){
				gaizao.put("shuliang", temp.get("shuliang"));
			}
		}
        request.setAttribute("biao_shi",biao_shi);
        request.setAttribute("flag","ju_zhu");
		request.setAttribute("pingfen",request.getParameter("pingfen"));
		request.setAttribute("length",request.getParameter("length"));
		request.setAttribute("gongyou",gongyou);
		request.setAttribute("wuren",wuren);
		request.setAttribute("liangchu",liangchu);
		request.setAttribute("gaizao",gaizao);
		return "/archive/JuZhu/show.jsp";
	}
}