/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Created on 2008-9-9</p>
 * <p> @author ShenChang zou</p>
 */
package com.zsc.web;

import java.io.PrintWriter;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.BigDecimalConverter;
import org.apache.commons.beanutils.converters.BigIntegerConverter;
import org.apache.commons.beanutils.converters.DoubleConverter;
import org.apache.commons.beanutils.converters.FloatConverter;
import org.apache.commons.beanutils.converters.IntegerConverter;
import org.apache.commons.beanutils.converters.LongConverter;
import org.apache.commons.beanutils.converters.SqlDateConverter;
import org.apache.commons.beanutils.converters.SqlTimeConverter;
import org.apache.commons.beanutils.converters.SqlTimestampConverter;
import org.apache.commons.beanutils.converters.StringConverter;

import com.zsc.db.DataBaseControl;
import com.zsc.db.Page;

public class BaseAction {
	static {
		ConvertUtils.register(new StringConverter(null), String.class);
		ConvertUtils.register(new SqlDateConverter(null), Date.class);
		ConvertUtils.register(new SqlTimeConverter(null), Time.class);
		ConvertUtils.register(new SqlTimestampConverter(null), Timestamp.class);
		ConvertUtils.register(new IntegerConverter(null), Integer.class);
		ConvertUtils.register(new LongConverter(null), Long.class);
		ConvertUtils.register(new FloatConverter(null), Float.class);
		ConvertUtils.register(new DoubleConverter(null), Double.class);
		ConvertUtils.register(new BigDecimalConverter(null), BigDecimal.class);
		ConvertUtils.register(new BigIntegerConverter(null), BigInteger.class);
	}
	/**
	 * 把前台提交数据设置到bean实体对象
	 * @param request
	 * @return
	 * @throws Exception
	 */
	public Object getMapObject(HttpServletRequest request) throws Exception {
		Class clazz = Class.forName(CommonProperties.getInstance()
				.getMapPackage()+ "."
				+ this.getClass().getSimpleName().replaceAll("Action", ""));
		Object obj=clazz.newInstance();
		Map map=request.getParameterMap();
		BeanUtils.populate(obj, map);
		return obj;
	}
    /**
     * 把前台提交数据设置到bean实体对象,并且添加需要特别设置的内容
     * @param request
     * @param changeParameter
     * @return
     * @throws Exception
     */
	@SuppressWarnings("unchecked")
	public Object getMapObject(HttpServletRequest request,Object[][] changeParameter) throws Exception {
		Class clazz = Class.forName(CommonProperties.getInstance()
				.getMapPackage()+ "."
				+ this.getClass().getSimpleName().replaceAll("Action", ""));
		Object obj=clazz.newInstance();
		Map map=request.getParameterMap();   
		BeanUtils.populate(obj, map);
	    for(int i=0;i<changeParameter.length;i++){  
	    	BeanUtils.setProperty(obj,changeParameter[i][0].toString(), changeParameter[i][1]);   
	    } 
		return obj;
	}
	/**
	 * 获取请求中的参数MAP
	 * @return
	 */
	public HashMap<String, String> getParameterMap(HttpServletRequest request) {
		Map temp=request.getParameterMap();
		HashMap<String, String> out=new HashMap<String, String>();
		for(Iterator it = temp.entrySet().iterator(); it.hasNext();) {
			Map.Entry entry = (Map.Entry)it.next();
			out.put((String)entry.getKey(), request.getParameter((String)entry.getKey()));
		}
		return out;
	}
	/** 
	 * 使用extremeTable时候，需要使用此方法进行设置
	 */
	public void savePage(Page page, HttpServletRequest request) {
		request.setAttribute("page", page);
		request.setAttribute("totalRows", new Integer(page.getTotalNumberOfElements()));
	}
	
	/**
	 * 在页面中弹出一个提示框
	 * @param response
	 * @param error
	 */
	public void doResult(HttpServletResponse response, String error) {
		response.setContentType("text/html; charset=gbk");
		response.setCharacterEncoding("gbk");
		try {
			PrintWriter out = response.getWriter();
			out.println("<script type='text/javascript'>");
			out.println("history.back();");
			out.println("alert('" + error + "');");
			out.println("</script>");
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 判定项目区域与登录用户匹配情况
	 * @throws Exception 
	 * @throws SQLException 
	 */
	public boolean checkArea(HttpServletRequest request,String item) throws SQLException, Exception{
		HttpSession session = request.getSession(true);
		Map user = (Map) session.getAttribute("user");
		String guan_li = user.get("guan_li").toString();
		DataBaseControl dataBaseControl=DataBaseControl.getInstance();	
		Map map = dataBaseControl.getOneResultSet("select t.area from t_item_build t" +
				" where t.id=?", new Object[]{item});
		if(guan_li.equals(map.get("area").toString())){
			return true;
		}else{
			return false;
		}
	}
}