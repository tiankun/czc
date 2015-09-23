/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Created on 2008-7-30</p>
 * <p> @author ShenChang zou</p>
 */
package com.zsc.web;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Set;

import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zsc.util.Log;

/**
 * 对web请求内容进行编码
 */
public class FilterDispatcher extends HttpServlet {
	protected String extension;

	public void init(FilterConfig filterconfig) throws ServletException {
		extension = filterconfig.getInitParameter("extension");
		if (extension == null || "".equals(extension))
			extension = "do";
	}

	/**
	 * 对用户权限进行验证
	 * 
	 * @param request
	 * @return 当返回null是标示通过
	 * @throws Exception
	 */
	@SuppressWarnings("unused")
	private int check(HttpServletRequest request){
		//return 0;
		int outCheck = 1; //登录过期
		boolean newSession = false;
		// 验证是否是不需要验证的地址
		String url = request.getRequestURI();
		String contextPath = request.getContextPath();
		url = url.substring(contextPath.length());
		HttpSession session;
		if (request.getSession(false) == null) {
			newSession = true;
		}
		session = request.getSession();
		Set purview ;
		if(((Set) session.getServletContext().getAttribute("purview")).contains(url)){
			return 0;  //验证通过
	    }else {
			if (newSession) {
				outCheck=-1; //需要登录才可访问
			}else{
				Object obj=session.getAttribute("purview");
				if(obj==null)
					outCheck=-1; //需要登录才可访问
				else {
					purview = (Set) obj;
					if (purview.contains(url)) {
						Map user = (Map) session.getAttribute("user");
						if (user != null && user.get("log_name") != null&& !"".equals(user.get("log_name").toString())&&user.get("type")!=null&& !"".equals(user.get("type").toString()))
							outCheck = 0;
					}
				}
			}
			return outCheck;
		}
	}
	/**
	 * 对用户全权限进行验证
	 * @param request
	 * @return 当返回null是标示通过
	 * @throws Exception
	 */
	public boolean mycheck(HttpServletRequest request) throws Exception {
		boolean outCheck=false;
		HttpSession session = request.getSession();
		Map user=(Map) session.getAttribute("user");
		if(user!=null){
			Object log_name=user.get("log_name");
			if(log_name!=null&&!"".equals(log_name)){
				outCheck=true;
			}
		}
		return outCheck;
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * 进行总分发
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Log.info(request.getServerName());//获取网址域名
		String forward = "/error.jsp"; // 默认为出错页面
		String servletPath = request.getServletPath(); // 获得客户端所请求的脚本文件的文件路径
		int outCheck = 0;
		try {
			if (!mycheck(request)&&!servletPath.equals("/site/Infor!find.do")&&!servletPath.equals("/site/Infor!getPage.do")&&!servletPath.equals("/site/Infor!findInfor.do")&&!servletPath.equals("/site/Infor!search.do")
					&&!servletPath.equals("/admin/Myuser!login.do")&&!servletPath.equals("/archive/Upload!uploadLogin.do")&&!servletPath.equals("/archive/Upload!uploadMychange.do")&&!servletPath.equals("/archive/Upload!uploadChange.do")) {
				forward = "/admin/timeOut.jsp";
			} else {
				long start = 0;
				if (Log.isInfo())
					start = System.currentTimeMillis();
				String action = ""; // 实际请求的action类
				String methodName = "execute"; // 对应action类里面的方法
				// 以下模块用于根据传入路径解析出类名和方法名
				String actionMethod = servletPath.substring(servletPath.indexOf("/"), servletPath.length() - 3); // 获取action!method的组合
				String[] temp = actionMethod.split("!");
				if (temp.length >=2)
					methodName = temp[1];
				action = temp[0].replaceAll("/", ".") + "Action";
				// 以下模块用反射机制调用对应的类方法
				Class clazz = Class.forName(CommonProperties.getInstance().getWebPackage()+ action);
				if(methodName.startsWith("ajax")){
				    request.setCharacterEncoding("UTF-8");   
			        response.setCharacterEncoding("UTF-8");  
					Method method = clazz.getMethod(methodName,HttpServletRequest.class,HttpServletResponse.class);
					forward = (String) method.invoke(clazz.newInstance(), request,response);
				}else if("down".equals(methodName)||methodName.startsWith("upload")){//XXX 特殊设定down为下载，需要response
					Method method = clazz.getMethod(methodName,HttpServletRequest.class,HttpServletResponse.class);
					forward = (String) method.invoke(clazz.newInstance(), request,response);
				}else{
				    Method method = clazz.getMethod(methodName,HttpServletRequest.class);
				    forward = (String) method.invoke(clazz.newInstance(), request);
				}
				if (Log.isInfo())
					Log.info("执行"+ CommonProperties.getInstance().getWebPackage()+ action + "." + methodName + "()耗时："+ (System.currentTimeMillis() - start)+ "ms;  跳转到:" + forward);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 执行相应的跳转
		if(forward!=null)
		if (forward.indexOf(".do") >= 0)// 再次回到后台进行处理
			response.sendRedirect(request.getContextPath() + forward);
		else{
			getServletContext().getRequestDispatcher(forward).forward(request, response);// 跳转到显示页面
		}
	}
}