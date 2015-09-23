/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-10-16</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.gushu;

import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.zsc.db.DataBaseControl;
import com.zsc.map.Shiwu;
import com.zsc.util.WebUtil;
import com.zsc.web.BaseAction;

public class ShiwuAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	private String type="gushu";
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		String sql="SELECT ts.id,ts.unit_id,ts.operator_xian,ts.operator_zhou,ts.cdate," +
				" case when ts.operator_zhou is not null then '地州已审' when ts.operator_xian is not null then '县级已审' end status_cha," +
				" ts.status,ts.result_xian,ts.result_zhou,td.quan_ming,tdx.name operator_xian_name,tdz.name operator_zhou_name " +
				" FROM T_SHIWU ts left join t_didian td on ts.unit_id=td.id left join t_didian tdx on ts.operator_xian=tdx.id" +
				" left join t_didian tdz on ts.operator_zhou=tdz.id" +
				" where ts.unit_id=? ORDER BY ts.ID DESC";
		List<Map> list = (List<Map>) dataBaseControl.getOutResultSet(sql, new Object[]{user.get("guan_li")});
		Map shiwu=list.isEmpty()?new HashMap():list.get(0);
		request.setAttribute("shiwu", shiwu);
		request.setAttribute("list", list);
		return "/gushu/Shiwu/list.jsp";
	}
	
	/** 
	 * 管理端执行搜索 
	 **/
	public String listDidian(HttpServletRequest request) throws Exception {
		String biao_shi = request.getParameter("biao_shi");
		List list = (List) dataBaseControl.getOutResultSet("select vg.status_cha||'  '||vg.status status_name,vg.* from v_gushu vg where vg.biao_shi=? or vg.biao_shi like ? ", new Object[]{biao_shi,biao_shi+"_%"});
		int bLength = (biao_shi.split("_")).length;
		request.setAttribute("list", list);
		request.setAttribute("biao_shi",biao_shi);
		request.setAttribute("bLength", bLength);
		return "/gushu/Shiwu/listDidian.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
		String op_message;
		//判断必填数据是否填写
        Map fu_ze = dataBaseControl.getOneResultSet("select * from t_fuze where type='"+type+"' and unit_id=?", new Object[]{user.get("guan_li")});
        if (fu_ze!=null&&fu_ze.get("id")!=null&&!"".equals(fu_ze.get("id"))) {
    		//判断是否重复上报
    		List<Map> list = (List<Map>) dataBaseControl.getOutResultSet("SELECT * FROM T_SHIWU ts where ts.unit_id=? ORDER BY ID DESC", new Object[]{user.get("guan_li")});
    		if (list.isEmpty()||!list.get(0).get("status").equals(WebUtil.applied)) {
    			Shiwu shiwu=new Shiwu();
    			shiwu.setUnit_id(Long.valueOf(user.get("guan_li").toString()));
    			shiwu.setStatus(WebUtil.applied);
    			shiwu.setCdate(new Timestamp(new Date().getTime()));
    			dataBaseControl.insertByBean(shiwu);
    			//重新设置用户古树名木的上报信息
    			request.getSession().setAttribute("shiwu_gushu", shiwu);
    			op_message="上报成功！";
    		}else {
    			op_message="已完成上报，请勿重复操作！";
    		}
		}else {
			op_message="请至少填写“填表负责人”！";
		}
		String redirectUrl="/gushu/Shiwu!list.do";
		request.setAttribute("redirectUrl", redirectUrl);
		request.setAttribute("op_message", op_message);
		return "/gushu/redirect.jsp";
	}
	
	/** 
	 * 管理者审核
	 **/
	public String ajaxCheck(HttpServletRequest request,HttpServletResponse response) throws Exception {
		Map user = (Map)request.getSession().getAttribute("user");
//		Map map=request.getParameterMap();
//		System.out.println(((String[])map.get("unit_id"))[0]);
		String op_message="fail";
		if (request.getParameter("unit_id")!=null){
			List<Map> list = (List<Map>) dataBaseControl.getOutResultSet("SELECT ts.* FROM T_SHIWU ts where ts.unit_id=? ORDER BY ID DESC", new Object[]{request.getParameter("unit_id")});
			if (!list.isEmpty()) {
				dataBaseControl.beginTransaction();
				//更新审核状态
				Map shiwuMap=list.get(0);
				String sqlTemp="";
				Object[] objects=new Object[7];
				objects[0]=request.getParameter("status");
				objects[6]=shiwuMap.get("id");
				if (user.get("biao_shi").toString().split("_").length<=2) {
					sqlTemp=",ts.operator_zhou=?,ts.result_zhou=?,ts.mdate_zhou=?,ts.opname_zhou=?,ts.opphone_zhou=?";
					objects[1]=user.get("guan_li");
					objects[2]=request.getParameter("result");
					objects[3]=new Timestamp(new Date().getTime());
					objects[4]=request.getParameter("opname");
					objects[5]=request.getParameter("opphone");
				}
				if (user.get("biao_shi").toString().split("_").length==3) {
					sqlTemp=",ts.operator_xian=?,ts.result_xian=?,ts.mdate_xian=?,ts.opname_xian=?,ts.opphone_xian=?";
					objects[1]=user.get("guan_li");
					objects[2]=request.getParameter("result");
					objects[3]=new Timestamp(new Date().getTime());
					objects[4]=request.getParameter("opname");
					objects[5]=request.getParameter("opphone");
				}
				String sqlUpdate="update T_SHIWU ts set ts.status=? "+sqlTemp+" where ts.id=?";
				dataBaseControl.executeSql(sqlUpdate, objects);
//				//生成编号
//				if (WebUtil.success.equals(request.getParameter("status"))&&user.get("biao_shi").toString().split("_").length<=2) {
//					List<Map> listCustom=(List<Map>)dataBaseControl.getOutResultSet("select tm.* from T_MYUSER tm where tm.guan_li=?",new Object[]{request.getParameter("unit_id")});
//					Map custom=listCustom.get(0);
//					Integer countGs=dataBaseControl.getResultSetSize("select tg.* from t_gushu tg where tg.unit_id=? and tg.num is not null",new Object[]{request.getParameter("unit_id")});
//					List<Map> listGushu = (List<Map>) dataBaseControl.getOutResultSet("SELECT tg.* FROM t_gushu tg where tg.unit_id=? and tg.num is null ORDER BY ID ", new Object[]{request.getParameter("unit_id")});
//					for (Map map : listGushu) {
//						countGs++;
//						dataBaseControl.executeSql("update t_gushu tg set tg.num=? where tg.id=?", new Object[]{custom.get("log_name")+"-"+WebUtil.padLeft(""+countGs, 4, "0"),map.get("id")});
//					}
//					Integer countGjz=dataBaseControl.getResultSetSize("select tgj.* from t_gujianzhu tgj where tgj.unit_id=? and tgj.num is not null",new Object[]{request.getParameter("unit_id")});
//					List<Map> listGujianzhu = (List<Map>) dataBaseControl.getOutResultSet("SELECT tgj.* FROM t_gujianzhu tgj where tgj.unit_id=? and tgj.num is null ORDER BY ID ", new Object[]{request.getParameter("unit_id")});
//					for (Map map : listGujianzhu) {
//						countGjz++;
//						dataBaseControl.executeSql("update t_gujianzhu tgj set tgj.num=? where tgj.id=?", new Object[]{custom.get("log_name")+"-"+WebUtil.padLeft(""+countGjz, 4, "0"),map.get("id")});
//					}
//				}
				dataBaseControl.endTransaction();
				op_message="ok";
			}
		}
		PrintWriter pw =response.getWriter();
		pw.print(op_message); // 将信息返回前台
		pw.flush();
		pw.close();
		return null;
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String check(HttpServletRequest request) throws Exception {
		Long unit_id=new Long(request.getParameter("id"));
		List<Map> list = (List<Map>) dataBaseControl.getOutResultSet("SELECT * FROM T_SHIWU ts where ts.unit_id=? ORDER BY ID DESC", new Object[]{unit_id});
		if (!list.isEmpty()) {
			Map shiwu=list.get(0);
			request.setAttribute("shiwu",shiwu);
		}
		request.setAttribute("biao_shi",request.getParameter("biao_shi"));
		request.setAttribute("didian",dataBaseControl.getOneResultSet("select quan_ming from t_didian where id=?", new Object[]{unit_id}));
		return "/gushu/Shiwu/check.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String show(HttpServletRequest request) throws Exception {
		Long unit_id=new Long(request.getParameter("id"));
		String sql="SELECT ts.*,tdx.name name_xian,tdz.name name_zhou FROM T_SHIWU ts left join t_didian tdx on ts.operator_xian=tdx.id left join " +
				" t_didian tdz on ts.operator_zhou=tdz.id where ts.unit_id=? ORDER BY ID DESC";
		List<Map> list = (List<Map>) dataBaseControl.getOutResultSet(sql, new Object[]{unit_id});
		if (!list.isEmpty()) {
			Map shiwu=list.get(0);
			request.setAttribute("shiwu",shiwu);
		}
		request.setAttribute("biao_shi",request.getParameter("biao_shi"));
		request.setAttribute("didian",dataBaseControl.getOneResultSet("select quan_ming from t_didian where id=?", new Object[]{unit_id}));
		return "/gushu/Shiwu/show.jsp";
	}
}