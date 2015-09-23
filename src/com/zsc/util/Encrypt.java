/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on2007-2-8</p>
 * <p> @author ShenChang zou</p>
 */
package com.zsc.util;

import java.security.MessageDigest;

/**
 * ʵ���˲��������(MD5/SHA)
 */
public class Encrypt { 
	/**
	 * �������ַ������в�������� 
	 * @param str Ҫ����ܵ��ַ���
	 * @return ���ؼ��ܺ�����ģ�������ܲ��ɹ����򷵻ؿգ����ڷ��ش����
	 */
	public static String crypt(String str) {
		if (str == null) {
			throw new IllegalArgumentException(
					"String to encript cannot be null !");
		}
		byte[] unencodedPassword = str.getBytes();
		MessageDigest md = null;
		try {
			md = MessageDigest.getInstance("SHA");
		} catch (Exception e) {
			e.printStackTrace();
			return str;
		}
		md.reset();
		md.update(unencodedPassword);
		byte[] encodedPassword = md.digest();
		StringBuffer buf = new StringBuffer();
		for (int i = 0; i < encodedPassword.length; i++) {
			if ((encodedPassword[i] & 0xff) < 0x10) {
				buf.append("0");
			}
			buf.append(Long.toString(encodedPassword[i] & 0xff, 16));
		}
		return buf.toString();
	}
//	public static void main(String[] arg){
//		System.out.println(Encrypt.crypt("123456"));//7c4a8d09ca3762af61e59520943dc26494f8941b
//	}
}