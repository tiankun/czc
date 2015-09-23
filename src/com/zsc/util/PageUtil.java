/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Created on 2011-3-11</p>
 * <p> @author ShenChang zou</p>
 */
package com.zsc.util;

import java.util.Collection;
import java.util.Map;

public class PageUtil {
	/**
	 * 判断指定的字符串是否不在给定的列表中
	 * @param list 给定列表
	 * @param obj 给定字符串
	 * @return 如果不在则返回true
	 */
	public static boolean isQiTa(Collection list, Object obj) {
		String objStr="";
		if(obj!=null)
			objStr=obj.toString();
		boolean out=true;
		Object[] maps=list.toArray();
		for (int i = 0; i < maps.length; i++) {
			if(!"其它".equals(((Map)maps[i]).get("name").toString())&&objStr.equals(((Map)maps[i]).get("name").toString()))
				out=false;
		}
		return out;
	}
	/**
	 * 判断指定的字符串是否不在给定的列表中
	 * @param list 给定列表
	 * @param obj 给定字符串
	 * @return 如果不在则返回true
	 */
	public static boolean isQiTa(Collection list, String obj) {
		return isQiTa(list,(Object)obj);
	}	
}
