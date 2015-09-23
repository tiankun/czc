/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Created on 2008-9-26</p>
 * <p> @author ShenChang zou</p>
 */
package com.zsc.db;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.sql.Types;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * ResultSet的加工类
 */
public class RowProcessor {
	public final static SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	public final static SimpleDateFormat format_time = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	/**
	 * 把结果集的第一列记录转化成Set
	 * 
	 * @param rs
	 * @return
	 * @throws SQLException
	 */
	public static Set<String> toSet(ResultSet rs) throws SQLException,Exception {
		Set<String> result = new HashSet<String>();
		ResultSetMetaData rsmd = rs.getMetaData();
		int cols = rsmd.getColumnCount();
		if (cols != 0)
			while (rs.next())
				result.add(rs.getString(1));
		return result;
	}	
	/**
	 * 把结果集的单行记录转化成Map
	 * 
	 * @param rs
	 * @return
	 * @throws SQLException
	 */
	@SuppressWarnings("unchecked")
	public static Map toMap(ResultSet rs) throws SQLException,Exception {
		Map result = new CaseInsensitiveHashMap();
		ResultSetMetaData rsmd = rs.getMetaData();
		int cols = rsmd.getColumnCount();
		if (rs.next())
			for (int i = 1; i <= cols; i++) {
				int columnType=rsmd.getColumnType(i);
				if(columnType==Types.CLOB)
					result.put(rsmd.getColumnLabel(i), rs.getString(i));
				else if(columnType==Types.BLOB){
					    InputStream  inputStream =rs.getBinaryStream(i);
					    //result.put(rsmd.getColumnLabel(i)+"_str", inputStream2String(inputStream));
						result.put(rsmd.getColumnLabel(i), inputStream);
                        //文件存盘
//						File fileOutput = new File("c:/backa.exe");
//						OutputStream fout = new FileOutputStream(fileOutput, true);
//					        //下面将BLOB数据写入文件
//					        byte[] b = new byte[2048];
//					        int len = 0;
//					        while((len = inputStream.read(b)) != -1) {
//					            fout.write(b, 0, len);
//					        }
//					        //依次关闭
//					        fout.close();
//					        inputStream.close();
				}else if(columnType==Types.LONGVARBINARY)
					result.put(rsmd.getColumnLabel(i), inputStream2String(rs.getBinaryStream(i)));
				else if(columnType==Types.TIMESTAMP){
					Timestamp temp=rs.getTimestamp(i);
					if(temp==null)
						result.put(rsmd.getColumnLabel(i),temp);
					else
						result.put(rsmd.getColumnLabel(i),format_time.format(temp));
				}else if(columnType==Types.DATE){
					Date temp=rs.getDate(i);
					if(temp==null)
						result.put(rsmd.getColumnLabel(i),temp);
					else
						result.put(rsmd.getColumnLabel(i),format.format(temp));
				}else
				    result.put(rsmd.getColumnLabel(i), rs.getObject(i));
			}
		return result;
	}
	@SuppressWarnings("unchecked")
	public static Collection getMaps(ResultSet resultSet) throws Exception {

		// Acquire resultSet MetaData
		ResultSetMetaData metaData = resultSet.getMetaData();
		int cols = metaData.getColumnCount();

		// Use ArrayList to maintain ResultSet sequence
		List list = new ArrayList();

		// Scroll to each record, make map of row, add to list
		while (resultSet.next()) {
			Map row = new CaseInsensitiveHashMap();
			for (int i = 1; i <= cols; i++) {
				int columnType=metaData.getColumnType(i);
				if(columnType==Types.CLOB)
					row.put(metaData.getColumnLabel(i), resultSet.getString(i));
				else if(columnType==Types.BLOB){
					    InputStream  inputStream =resultSet.getBinaryStream(i);
						//row.put(metaData.getColumnLabel(i)+"_str", inputStream2String(inputStream));
						row.put(metaData.getColumnLabel(i),inputStream);
				}else if(columnType==Types.LONGVARBINARY)
					row.put(metaData.getColumnLabel(i), inputStream2String(resultSet.getBinaryStream(i)));				
				else if(columnType==Types.TIMESTAMP){
					Timestamp temp=resultSet.getTimestamp(i);
					if(temp==null){
						row.put(metaData.getColumnLabel(i),temp);
					}else
						row.put(metaData.getColumnLabel(i),format_time.format(temp));
				}else if(columnType==Types.DATE){
					Date temp=resultSet.getDate(i);
					if(temp==null){
						row.put(metaData.getColumnLabel(i),temp);
					}else
						row.put(metaData.getColumnLabel(i),format.format(temp));
				}else
					row.put(metaData.getColumnLabel(i), resultSet.getObject(i));
			}
			list.add(row);
		} 
		return ((Collection) list);
	}
	public Object toBean(ResultSet rs, Class type) throws SQLException {
		return type;
	}

	public List toBeanList(ResultSet rs, Class type) throws SQLException {
		return null;
	}
	public static String inputStream2String(InputStream is) throws Exception {
		if (is != null) {
			BufferedReader in = new BufferedReader(new InputStreamReader(is,"GBK"));
			StringBuffer buffer = new StringBuffer();
			String line = "";
			try {
				while ((line = in.readLine()) != null) {
					buffer.append(line);
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
			return buffer.toString();
		} else
			return "";
	}
	private static class CaseInsensitiveHashMap extends HashMap {

		/**
		 * @see java.util.Map#containsKey(java.lang.Object)
		 */
		public boolean containsKey(Object key) {
			return super.containsKey(key.toString().toLowerCase());
		}

		/**
		 * @see java.util.Map#get(java.lang.Object)
		 */
		public Object get(Object key) {
			return super.get(key.toString().toLowerCase());
		}

		/**
		 * @see java.util.Map#put(java.lang.Object, java.lang.Object)
		 */
		@SuppressWarnings("unchecked")
		public Object put(Object key, Object value) {
			return super.put(key.toString().toLowerCase(), value);
		}

		/**
		 * @see java.util.Map#putAll(java.util.Map)
		 */
		public void putAll(Map m) {
			Iterator iter = m.keySet().iterator();
			while (iter.hasNext()) {
				Object key = iter.next();
				Object value = m.get(key);
				this.put(key, value);
			}
		}

		/**
		 * @see java.util.Map#remove(java.lang.Object)
		 */
		public Object remove(Object key) {
			return super.remove(key.toString().toLowerCase());
		}
	}
}