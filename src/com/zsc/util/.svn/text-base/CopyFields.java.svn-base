/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Created on 2013-2-19</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.util;

import java.lang.reflect.Field;

/**
 * @author 邹申昶
 */
public class CopyFields {
	public static void copy(Object fromBean, Object toBean) {
		Field[] fields = fromBean.getClass().getDeclaredFields();
		for (Field key : fields) {
			String property = key.getName();
			key.setAccessible(true);
			if (!"id".equals(property)) {
				try {
					Object beanPropertyVale = key.get(fromBean);
					if(beanPropertyVale!=null)
						toBean.getClass().getMethod(
									"set"+ toFirstLetterUpperCase(property.substring(0, property.length() - 1)),
									beanPropertyVale.getClass()).invoke(toBean,beanPropertyVale);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static String toFirstLetterUpperCase(String str) {
		if (str == null || str.length() < 2) {
			return str;
		}
		String firstLetter = str.substring(0, 1).toUpperCase();
		return firstLetter + str.substring(1, str.length());
	}
}
