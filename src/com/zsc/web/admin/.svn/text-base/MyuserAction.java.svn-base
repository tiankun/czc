/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2008-9-27</p>
 * <p> @author ShenChang zou</p>
 */
package com.zsc.web.admin;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.zsc.db.DataBaseControl;
import com.zsc.map.Myuser;
import com.zsc.util.Encrypt;
import com.zsc.util.WebUtil;
import com.zsc.web.BaseAction;

public class MyuserAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 
	 **/
	public String list(HttpServletRequest request) throws Exception {
		Collection list = dataBaseControl.getOutResultSet("select a.id,a.log_name,a.user_name,a.type,c.name myrole,a.shu_di from t_myuser a,t_role c where a.role=c.id", null);
		request.setAttribute("list",list);
		return "/admin/Myuser/list.jsp";
	}
	
	/** 
	 * 进入新增页面
	 **/
	public String create(HttpServletRequest request) throws Exception {
		Map me=dataBaseControl.getOneResultSet("select t.id,t.parent,t.name from t_didian t where t.id=1", null);
		Collection list = dataBaseControl.getOutResultSet("select t.id,t.parent,t.name from t_didian t where t.parent=1 order by id", null);
		request.setAttribute("me", me);
		request.setAttribute("list", list);
		return "/admin/Myuser/create.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		String log_name = request.getParameter("log_name");
		int size = dataBaseControl.getResultSetSize("select * from t_myuser where log_name=?", new Object[]{ log_name });
		if(size!=0){
			request.setAttribute("error", "登录名已存在");
			return "/admin/back.jsp";
		}
		dataBaseControl.insertByBean(getMapObject(request,new Object[][] { {"log_pass",Encrypt.crypt(request.getParameter("log_pass")) } }));
		return "/admin/Myuser!list.do";
	}
	
	/**
	 * 进入更新页面
	 **/
	public String edit(HttpServletRequest request) throws Exception {
		Map myuser = dataBaseControl.getByBean(getMapObject(request));
		request.setAttribute("myuser",myuser);
		Map me=dataBaseControl.getOneResultSet("select t.id,t.parent,t.name,t.biao_shi from t_didian t where t.id=?", new Object[]{myuser.get("guan_li")});
		request.setAttribute("me", me);
		String temp= "0_"+(me.get("biao_shi").toString());
		String[] temp_=temp.split("_");
		String tempSql="";
		for (int i = 0; i < temp_.length-1; i++) {
			tempSql+=i==0?("t.parent="+temp_[i]):(" or t.parent="+temp_[i]);
		}
		Collection list = dataBaseControl.getOutResultSet("select t.id,t.parent,t.name from t_didian t where "+tempSql+" and id<>? order by id", new Object[]{myuser.get("guan_li")});
		request.setAttribute("list", list);
		return "/admin/Myuser/edit.jsp";
	}
	
	/**
	 * 保存更新对象
	 **/
	public String update(HttpServletRequest request) throws Exception {
		dataBaseControl.updateByBean(getMapObject(request,new Object[][] { {"log_pass",Encrypt.crypt(request.getParameter("log_pass")) } }));
		return "/admin/Myuser!list.do";
	}
	
	/**
	 *删除对象
	 **/
	public String delete(HttpServletRequest request) throws Exception {
		String[] log_name=request.getParameterValues("log_name");
		if(log_name!=null&&log_name.length>0)
			for (int i = 0; i < log_name.length; i++) {
				try {
					dataBaseControl.executeSql("DELETE FROM T_MYUSER WHERE log_name=?", new Object[]{log_name[i]});
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		return "/admin/Myuser!list.do";
	}
	/**
	 * 验证用户的登录
	 */
	public String login(HttpServletRequest request) throws Exception {
		String logName = request.getParameter("logName");
		String password = request.getParameter("password");
		String image = request.getParameter("sRand");
		HttpSession session = request.getSession();
//		if (image == null || "".equals(image) || image.length() != 4
//				|| session.getAttribute("sRand")==null||!session.getAttribute("sRand").equals(image)) {
//			// 验证码错误
//			request.setAttribute("errorType", "验证码错误!");
//			return "/admin/index.jsp";
//		} else {
			if (logName == null || "".equals(logName) || password == null
					|| "".equals(password)) {
				request.setAttribute("errorType", "登录名和密码不能为空!");
				return "/admin/index.jsp";
			} else {
				Collection users = dataBaseControl.getOutResultSet("select tm.*,td.biao_shi from t_myuser tm left join t_didian td on tm.guan_li=td.id where tm.log_name=? and tm.log_pass=?",
						new Object[]{logName,Encrypt.crypt(password)});
				if(users==null||users.isEmpty()){
					request.setAttribute("errorType", "登录名和密码错误!");
					return "/admin/index.jsp";
				}else if (users.size()==1) {
					Map user=(Map) users.toArray()[0];
					session.setAttribute("user", user);
					String table="t_popedom";
//					if(!"1".equals(user.get("role").toString())&&!"特色小镇".equals(user.get("type")))
//						table="(select * from t_popedom t where t.father!=1 and t.id!=1)";
					//设置用户可操作范围
					request.setAttribute("purviews", dataBaseControl.getOutResultSet("select a.id,a.name,a.path,a.view_group,a.target,a.remark from "+table+" a,t_role_popedom b where a.check_up='true' and b.popedom=a.id and a.type!=2 and b.role=? order by a.view_group desc,a.type desc,a.id", new Object[]{user.get("role")}));
					if(!"管理用户".equals(user.get("type"))){
						//设置用户古树名木的上报信息
						String sql="SELECT ts.id,ts.unit_id,ts.operator_xian,ts.operator_zhou,ts.cdate,case when ts.operator_zhou is null then '"+WebUtil.applied+
							"' else ts.status end status,ts.result_xian,ts.result_zhou FROM T_SHIWU ts where ts.unit_id=? ORDER BY ts.ID DESC";
						List<Map> listShiwu = (List<Map>) dataBaseControl.getOutResultSet(sql, new Object[]{user.get("guan_li")});
						Map shiwu=listShiwu.isEmpty()?null:listShiwu.get(0);
						session.setAttribute("shiwu_gushu", shiwu);						
					}
					return "/admin/smain.jsp";
				}else{
					throw new Exception("======数据库数据出现异常======");
				}
			}
		//}
	}
	/**
	 * 进行用户的密码修改（当类型为update的实行执行修改，否则进入修改页面）
	 */
	@SuppressWarnings("unchecked")
	public String modifyPass(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession(true);
		Map user = (Map) session.getAttribute("user");
		if(user==null||user.get("log_name")==null||"".equals(user.get("log_name")))
			return "/admin/timeOut.jsp";
		String type = request.getParameter("type");
		if ("update".equals(type)) {
			String oldPassword = request.getParameter("oldPassword");
			request.setAttribute("ok", "ok");
			if (oldPassword == null || "".equals(oldPassword)
					|| !user.get("log_pass").equals( Encrypt.crypt(oldPassword))) {
				// 原密码不正确
				request.setAttribute("ok", "fail1");
			} else {
				String pass = "";
				String userPassword = request.getParameter("userPassword");
				String checkPassword = request.getParameter("checkPassword");
				// 验证两次密码的统一性
				if (userPassword != null && !"".equals(userPassword)
						&& checkPassword != null && !"".equals(checkPassword)
						&& userPassword.equals(checkPassword)) {
					pass = checkPassword;
				}
				// 修改密码
				if (pass != null && !"".equals(pass) && !"".equals(pass.trim())) {
					BigDecimal id=new BigDecimal(user.get("id").toString());
					dataBaseControl.updateByClass(Myuser.class,new String[]{"log_pass"},new Object[]{Encrypt.crypt(pass)},id);
					user.put("log_pass", Encrypt.crypt(pass));
					session.setAttribute("user", user);
				} else {
					request.setAttribute("ok", "fail2");
				}
			}
		}
		return "/admin/Myuser/modifypass.jsp";
	}
	/**
	 * 登出系统
	 **/
	public String logout(HttpServletRequest request) throws Exception {
		request.getSession().invalidate();
		return "/admin/logout.jsp";
	}
}