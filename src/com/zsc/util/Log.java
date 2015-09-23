/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2008-9-27</p>
 * <p> @author ShenChang zou</p>
 */
package com.zsc.util;

import com.zsc.web.CommonProperties;
/**
 * �Լ���װ��һ������־����࣬��־�����Ϊ�ļ�(�ɵ͵���)��debug,info,warn,error
 */
public class Log {
	private static final String logLevel = CommonProperties.getInstance().getLogLevel(); // ��־�ȼ�

	public static void debug(String logStr) {
		if(logLevel.equals("debug"))
        System.out.println("#DEBUG: "+logStr);
	}
	public static void info(String logStr) {
		if(logLevel.equals("debug")||logLevel.equals("info"))
        System.out.println("#INFO: "+logStr);
	}
	public static void warn(String logStr) {
		if(!logLevel.equals("error"))
        System.out.println("#WARN: "+logStr);
	}
	public static void error(String logStr) {
        System.out.println("#ERROR: "+logStr);
	}
	public static boolean isDebug() {
		if(logLevel.equals("debug"))
            return true;
		else
			return false;
	}
	public static boolean isInfo() {
		if(logLevel.equals("debug")||logLevel.equals("info"))
          return true;
		else
		 return false;
	}
	public static boolean isWarn() {
		if(!logLevel.equals("error"))
          return true;
		else
		 return false;
	}
	public static boolean isError() {
          return true;
	}	
}