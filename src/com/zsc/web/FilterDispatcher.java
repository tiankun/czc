/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
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
 * ��web�������ݽ��б���
 */
public class FilterDispatcher extends HttpServlet {
	protected String extension;

	public void init(FilterConfig filterconfig) throws ServletException {
		extension = filterconfig.getInitParameter("extension");
		if (extension == null || "".equals(extension))
			extension = "do";
	}

	/**
	 * ���û�Ȩ�޽�����֤
	 * 
	 * @param request
	 * @return ������null�Ǳ�ʾͨ��
	 * @throws Exception
	 */
	@SuppressWarnings("unused")
	private int check(HttpServletRequest request){
		//return 0;
		int outCheck = 1; //��¼����
		boolean newSession = false;
		// ��֤�Ƿ��ǲ���Ҫ��֤�ĵ�ַ
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
			return 0;  //��֤ͨ��
	    }else {
			if (newSession) {
				outCheck=-1; //��Ҫ��¼�ſɷ���
			}else{
				Object obj=session.getAttribute("purview");
				if(obj==null)
					outCheck=-1; //��Ҫ��¼�ſɷ���
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
	 * ���û�ȫȨ�޽�����֤
	 * @param request
	 * @return ������null�Ǳ�ʾͨ��
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
	 * �����ַܷ�
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Log.info(request.getServerName());//��ȡ��ַ����
		String forward = "/error.jsp"; // Ĭ��Ϊ����ҳ��
		String servletPath = request.getServletPath(); // ��ÿͻ���������Ľű��ļ����ļ�·��
		int outCheck = 0;
		try {
			if (!mycheck(request)&&!servletPath.equals("/site/Infor!find.do")&&!servletPath.equals("/site/Infor!getPage.do")&&!servletPath.equals("/site/Infor!findInfor.do")&&!servletPath.equals("/site/Infor!search.do")
					&&!servletPath.equals("/admin/Myuser!login.do")&&!servletPath.equals("/archive/Upload!uploadLogin.do")&&!servletPath.equals("/archive/Upload!uploadMychange.do")&&!servletPath.equals("/archive/Upload!uploadChange.do")) {
				forward = "/admin/timeOut.jsp";
			} else {
				long start = 0;
				if (Log.isInfo())
					start = System.currentTimeMillis();
				String action = ""; // ʵ�������action��
				String methodName = "execute"; // ��Ӧaction������ķ���
				// ����ģ�����ڸ��ݴ���·�������������ͷ�����
				String actionMethod = servletPath.substring(servletPath.indexOf("/"), servletPath.length() - 3); // ��ȡaction!method�����
				String[] temp = actionMethod.split("!");
				if (temp.length >=2)
					methodName = temp[1];
				action = temp[0].replaceAll("/", ".") + "Action";
				// ����ģ���÷�����Ƶ��ö�Ӧ���෽��
				Class clazz = Class.forName(CommonProperties.getInstance().getWebPackage()+ action);
				if(methodName.startsWith("ajax")){
				    request.setCharacterEncoding("UTF-8");   
			        response.setCharacterEncoding("UTF-8");  
					Method method = clazz.getMethod(methodName,HttpServletRequest.class,HttpServletResponse.class);
					forward = (String) method.invoke(clazz.newInstance(), request,response);
				}else if("down".equals(methodName)||methodName.startsWith("upload")){//XXX �����趨downΪ���أ���Ҫresponse
					Method method = clazz.getMethod(methodName,HttpServletRequest.class,HttpServletResponse.class);
					forward = (String) method.invoke(clazz.newInstance(), request,response);
				}else{
				    Method method = clazz.getMethod(methodName,HttpServletRequest.class);
				    forward = (String) method.invoke(clazz.newInstance(), request);
				}
				if (Log.isInfo())
					Log.info("ִ��"+ CommonProperties.getInstance().getWebPackage()+ action + "." + methodName + "()��ʱ��"+ (System.currentTimeMillis() - start)+ "ms;  ��ת��:" + forward);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// ִ����Ӧ����ת
		if(forward!=null)
		if (forward.indexOf(".do") >= 0)// �ٴλص���̨���д���
			response.sendRedirect(request.getContextPath() + forward);
		else{
			getServletContext().getRequestDispatcher(forward).forward(request, response);// ��ת����ʾҳ��
		}
	}
}