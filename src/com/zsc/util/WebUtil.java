/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Created on 2011-5-25</p>
 * <p> @author ShenChang zou</p>
 */
package com.zsc.util;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class WebUtil {
	/**
	 * 未上报
	 */
	public static final String noapply="未上报";
	/**
	 * 已上报
	 */
	public static final String applied="已上报";
	/**
	 * 通过
	 */
	public static final String success="审核通过";
	/**
	 * 不通过
	 */
	public static final String fail="审核不通过";
	/**
	 * 地州管理者
	 */
	public static final String op_dizhou="地州";
	/**
	 * 县管理者
	 */
	public static final String op_xian="县";
	/**
	 * 乡镇申报者
	 */
	public static final String op_xiangzhen="乡镇";
	
	public String getNoapply(){
		return noapply;
	}
	public String getApplied(){
		return applied;
	}
	public String getSuccess(){
		return success;
	}
	public String getFail(){
		return fail;
	}
	/**
	 * 获取年份
	 * @return
	 */
	public static Integer getYear() {
		Integer year = Calendar.getInstance().get(Calendar.YEAR);
		return year;
	}
	/**
	 * 左补位，右对齐
	 * @param oriStr  原字符串
	 * @param len  目标字符串长度
	 * @param alexin  补位字符
	 * @return  目标字符串
	 */
	public static String padLeft(String oriStr, int len, String alexin) {
		int strlen = oriStr.length();
		String str = "";
		if (strlen < len) {
			for (int i = 0; i < len - strlen; i++) {
				str = str + alexin;
			}
		}
		str = str + oriStr;
		return str;
	}
	/**
	 * 根据起始月份获取从起始月份到结束月份的列表
	 * @param begin　起始时间　xxxx-xx
	 * @param end　终止时间 xxxx-xx
	 * @return
	 */
	public static List getList(String begin,String end) {
		List temp=new ArrayList();
		Calendar beginC=Calendar.getInstance();
		Calendar endC=Calendar.getInstance();
		beginC.setTime(DataFormat.toDate(begin+"-01"));
		endC.setTime(DataFormat.toDate(end+"-01"));
		do {
			temp.add(DataFormat.toString(beginC.getTime()).substring(0, 7));
			beginC.add(Calendar.MONTH, 1);
		} while (beginC.before(endC)); 
		return temp;
	}	
}
