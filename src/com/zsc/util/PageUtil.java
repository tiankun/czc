/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2011-3-11</p>
 * <p> @author ShenChang zou</p>
 */
package com.zsc.util;

import java.util.Collection;
import java.util.Map;

public class PageUtil {
	/**
	 * �ж�ָ�����ַ����Ƿ��ڸ������б���
	 * @param list �����б�
	 * @param obj �����ַ���
	 * @return ��������򷵻�true
	 */
	public static boolean isQiTa(Collection list, Object obj) {
		String objStr="";
		if(obj!=null)
			objStr=obj.toString();
		boolean out=true;
		Object[] maps=list.toArray();
		for (int i = 0; i < maps.length; i++) {
			if(!"����".equals(((Map)maps[i]).get("name").toString())&&objStr.equals(((Map)maps[i]).get("name").toString()))
				out=false;
		}
		return out;
	}
	/**
	 * �ж�ָ�����ַ����Ƿ��ڸ������б���
	 * @param list �����б�
	 * @param obj �����ַ���
	 * @return ��������򷵻�true
	 */
	public static boolean isQiTa(Collection list, String obj) {
		return isQiTa(list,(Object)obj);
	}	
}
