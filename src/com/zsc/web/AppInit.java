/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Created on 2008-8-5</p>
 * <p> @author ShenChang zou</p>
 */
package com.zsc.web;

import java.io.FileInputStream;
import java.sql.Connection;
import java.util.Properties;

import javax.servlet.http.HttpServlet;

import com.zsc.db.DataBaseControl;
/**
 * 系统启动之初加载必须属性文件
 */
public class AppInit extends HttpServlet {
	public void init() {
		CommonProperties commonProperties=CommonProperties.getInstance();
		try {
			FileInputStream fis = new FileInputStream(getServletContext().getRealPath("/")+getInitParameter("appProperties"));
			Properties pt = new Properties();
			// 读入文件的信息
			pt.load(fis);
			// 关闭文件
			fis.close();
			// 将文件中的信息写入变量中
			commonProperties.setLogLevel(pt.getProperty(CommonProperties.LOGLEVEL).trim().toLowerCase());
			commonProperties.setPropertiesEncoding(pt.getProperty(CommonProperties.PROPERTIESENCODING).trim());
			commonProperties.setDatasourceJNDIName(pt.getProperty(CommonProperties.DATASOURCEJNDINAME).trim());
			commonProperties.setInitInfo(pt.getProperty(CommonProperties.INITINFO).trim());
			commonProperties.setDestroyInfo(pt.getProperty(CommonProperties.DESTROYINFO).trim());
			commonProperties.setMapPackage(pt.getProperty(CommonProperties.MAPPACKGE).trim());
			commonProperties.setWebPackage(pt.getProperty(CommonProperties.WEBPACKGE).trim());
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println("%%%%%%%%%%%% 读取系统配置文件失败！ %%%%%%%%%%%%");
			System.exit(0);
		}
		//打印系统启动标示
		System.out.println(CommonProperties.getInstance().getInitInfo());
		//测试数据库连接池是否存在及可连
		DataBaseControl dataBaseControl=DataBaseControl.getInstance();
		try{
			Connection con=dataBaseControl.getConnection();
			commonProperties.setDbType(con.getMetaData().getDatabaseProductName().toUpperCase());
			//设置不需要验证的范围
			//getServletContext().setAttribute("purview", dataBaseControl.getSetResultSet("select path from t_popedom where check_up='false' and TYPE!=3", null));
		}catch (Exception e) {
			e.printStackTrace();
			System.err.println("%%%%%%%%%%%% 测试数据库连接池失败！ %%%%%%%%%%%%");
			//System.exit(0);
		}finally{
			try {
				dataBaseControl.clearAllDB();
			}catch (Exception e) {}
		}
	}

	public void destroy() {
        //打印系统关闭标示
		System.out.println(CommonProperties.getInstance().getDestroyInfo());
	}
}