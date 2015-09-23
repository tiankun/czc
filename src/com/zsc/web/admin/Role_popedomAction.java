/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2008-11-19</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.web.admin;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;

import com.zsc.db.DataBaseControl;
import com.zsc.web.BaseAction;

public class Role_popedomAction extends BaseAction {
	DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
	/** 
	 * 执行搜索 CHECK_UP
	 **/
	public String list(HttpServletRequest request) throws Exception {
		String role=request.getParameter("role");
		Collection role_popedoms=dataBaseControl.getOutResultSet("select id,name,father,view_group,case role  when ? then 'checked' else '' end checked from(select a.id,a.name,a.father,a.view_group from t_popedom a where a.check_up='true') c left join (select b.role,b.popedom from t_role_popedom b where b.role=?) d on c.id=d.popedom order by view_group,father,id", new Object[]{new Integer(role),new Integer(role)});
		request.setAttribute("role_popedoms", role_popedoms);
		request.setAttribute("role", role);
		return "/admin/RolePopedom/rolePopedom.jsp";
	}
	
	/** 
	 * 保存新增对象
	 **/
	public String save(HttpServletRequest request) throws Exception {
		Integer role=new Integer(request.getParameter("role"));
		dataBaseControl.executeSql("delete from t_role_popedom where role=?", new Object[]{role});
		String[] items = request.getParameterValues("popedom");
		if(items!=null)
		for(int i = 0; i < items.length; i++) {			
			java.lang.Integer popedom = new java.lang.Integer(items[i]);
			dataBaseControl.executeSql("INSERT INTO T_ROLE_POPEDOM (id,ROLE,POPEDOM) VALUES (SEQ_T_ROLE_POPEDOM_0.nextval,?,?)", new Object[]{role,popedom});
		}
		return "/admin/Role!list.do";
	}
}