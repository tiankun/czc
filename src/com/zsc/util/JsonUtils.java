/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2010-9-3</p>
 * <p> @author ShenChang zou</p>
 */
package com.zsc.util;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import net.sf.ezmorph.object.DateMorpher;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import net.sf.json.processors.JsonValueProcessor;
import net.sf.json.util.JSONUtils;

@SuppressWarnings("unchecked")
public class JsonUtils {

	/**
	 * ��һ��JSON �����ַ���ʽ�еõ�һ��java�������磺 {"id" : idValue, "name" : nameValue,
	 * "aBean" : {"aBeanId" : aBeanIdValue, ...}}
	 * 
	 * @param object
	 * @param clazz
	 * @return
	 */
	public static Object getDTO(String jsonString, Class clazz) {
		JSONObject jsonObject = null;
		try {
			setDataFormat2JAVA();
			jsonObject = JSONObject.fromObject(jsonString);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return JSONObject.toBean(jsonObject, clazz);
	}

	/**
	 * ��һ��JSON �����ַ���ʽ�еõ�һ��java��������beansList��һ��ļ��ϣ����磺 {"id" : idValue, "name" :
	 * nameValue, "aBean" : {"aBeanId" : aBeanIdValue, ...}, beansList:[{}, {},
	 * ...]}
	 * 
	 * @param jsonString
	 * @param clazz
	 * @param map
	 *            �������Ե����� (key : ����������, value : ������������class) eg: ("beansList" :
	 *            Bean.class)
	 * @return
	 */
	public static Object getDTO(String jsonString, Class clazz, Map map) {
		JSONObject jsonObject = null;
		try {
			setDataFormat2JAVA();
			jsonObject = JSONObject.fromObject(jsonString);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return JSONObject.toBean(jsonObject, clazz, map);
	}

	/**
	 * ��һ��JSON����õ�һ��java�������飬���磺 [{"id" : idValue, "name" : nameValue}, {"id" :
	 * idValue, "name" : nameValue}, ...]
	 * 
	 * @param object
	 * @param clazz
	 * @return
	 */
	public static Object[] getDTOArray(String jsonString, Class clazz) {
		setDataFormat2JAVA();
		JSONArray array = JSONArray.fromObject(jsonString);
		Object[] obj = new Object[array.size()];
		for (int i = 0; i < array.size(); i++) {
			JSONObject jsonObject = array.getJSONObject(i);
			obj[i] = JSONObject.toBean(jsonObject, clazz);
		}
		return obj;
	}

	/**
	 * ��һ��JSON����õ�һ��java�������飬���磺 [{"id" : idValue, "name" : nameValue}, {"id" :
	 * idValue, "name" : nameValue}, ...]
	 * 
	 * @param object
	 * @param clazz
	 * @param map
	 * @return
	 */
	public static Object[] getDTOArray(String jsonString, Class clazz, Map map) {
		setDataFormat2JAVA();
		JSONArray array = JSONArray.fromObject(jsonString);
		Object[] obj = new Object[array.size()];
		for (int i = 0; i < array.size(); i++) {
			JSONObject jsonObject = array.getJSONObject(i);
			obj[i] = JSONObject.toBean(jsonObject, clazz, map);
		}
		return obj;
	}

	/**
	 * ��һ��JSON����õ�һ��java���󼯺�
	 * 
	 * @param object
	 * @param clazz
	 * @return
	 */

	public static List getDTOList(String jsonString, Class clazz) {
		setDataFormat2JAVA();
		JSONArray array = JSONArray.fromObject(jsonString);
		List list = new ArrayList();
		for (Iterator iter = array.iterator(); iter.hasNext();) {
			JSONObject jsonObject = (JSONObject) iter.next();
			list.add(JSONObject.toBean(jsonObject, clazz));
		}
		return list;
	}

	/**
	 * ��һ��JSON����õ�һ��java���󼯺ϣ����ж����а����м�������
	 * 
	 * @param object
	 * @param clazz
	 * @param map
	 *            �������Ե�����
	 * @return class MyBean{ private List data; // getters & setters }
	 * 
	 * class Person{ private String name; // getters & setters }
	 * 
	 * ...
	 * 
	 * String json = "{'data':[{'name':'Wallace'},{'name':'Grommit'}]}"; Map
	 * classMap = new HashMap(); classMap.put( "data", Person.class ); MyBean
	 * bean = JSONObject.toBean( JSONObject.fromObject(json), MyBean.class,
	 * classMap );
	 */
	public static List getDTOList(String jsonString, Class clazz, Map map) {
		setDataFormat2JAVA();
		JSONArray array = JSONArray.fromObject(jsonString);
		List list = new ArrayList();
		for (Iterator iter = array.iterator(); iter.hasNext();) {
			JSONObject jsonObject = (JSONObject) iter.next();
			list.add(JSONObject.toBean(jsonObject, clazz, map));
		}
		return list;
	}

	/**
	 * ��json HASH���ʽ�л�ȡһ��map����map֧��Ƕ�׹��� ���磺{"id" : "johncon", "name" : "Сǿ"}
	 * ע��commons-collections�汾���������org.apache.commons.collections.map.MultiKeyMap
	 * 
	 * @param object
	 * @return
	 */
	public static Map getMapFromJson(String jsonString) {
		setDataFormat2JAVA();
		JSONObject jsonObject = JSONObject.fromObject(jsonString);
		Map map = new HashMap();
		for (Iterator iter = jsonObject.keys(); iter.hasNext();) {
			String key = (String) iter.next();
			map.put(key, jsonObject.get(key));
		}
		return map;
	}

	/**
	 * ��json�����еõ���Ӧjava���� json���磺["123", "456"]
	 * 
	 * @param jsonString
	 * @return
	 */
	public static Object[] getObjectArrayFromJson(String jsonString) {
		JSONArray jsonArray = JSONArray.fromObject(jsonString);
		return jsonArray.toArray();
	}

	/**
	 * �����ݶ���ת����json�ַ��� DTO�������磺{"id" : idValue, "name" : nameValue, ...}
	 * ����������磺[{}, {}, {}, ...] map�������磺{key1 : {"id" : idValue, "name" :
	 * nameValue, ...}, key2 : {}, ...}
	 * 
	 * @param object
	 * @return
	 */
	public static String getJSONString(Object object) throws Exception {
		String jsonString = null;
		// ����ֵ������
		JsonConfig jsonConfig = new JsonConfig();
		jsonConfig.registerJsonValueProcessor(java.sql.Date.class,
				new JsonDateValueProcessor());
		if (object != null) {
			if (object instanceof Collection || object instanceof Object[]) {
				jsonString = JSONArray.fromObject(object, jsonConfig)
						.toString();
			} else {
				jsonString = JSONObject.fromObject(object, jsonConfig)
						.toString();
			}
		}
		return jsonString == null ? "{}" : jsonString;
	}

	private static void setDataFormat2JAVA() {
		// �趨����ת����ʽ
		JSONUtils.getMorpherRegistry().registerMorpher(
				new DateMorpher(new String[] { "yyyy-MM-dd"}));
	}

	public static void main(String[] arg) throws Exception {
		String s = "{status : 'success'}";
		System.out.println(" object : " + JsonUtils.getJSONString(s));
	}
}

class JsonDateValueProcessor
		implements JsonValueProcessor {

	private String format = "yyyy-MM-dd";

	public JsonDateValueProcessor() {

	}

	public JsonDateValueProcessor(String format) {
		this.format = format;
	}

	public Object processArrayValue(Object value, JsonConfig jsonConfig) {
		return process(value, jsonConfig);
	}

	public Object processObjectValue(String key, Object value,
			JsonConfig jsonConfig) {
		return process(value, jsonConfig);
	}

	private Object process(Object value, JsonConfig jsonConfig) {
		if (value instanceof Date) {
			String str = new SimpleDateFormat(format).format((Date) value);
			return str;
		}
		return value == null ? null : value.toString();
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}

}
