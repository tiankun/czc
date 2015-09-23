/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Created on 2008-7-31</p>
 * <p> @author ShenChang zou</p>
 */
package com.zsc.db;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
import java.lang.reflect.Field;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;
import javax.sql.rowset.CachedRowSet;

import com.sun.rowset.CachedRowSetImpl;
import com.zsc.util.Log;
import com.zsc.util.Type;
import com.zsc.web.CommonProperties;
/**
 * 数据库操作的基类，可在mysql,sql server,oracle,db2上通用，但是要求每个表的主键必须为id且自增（oracle使用表名的序列名）
 * oracle存储大对象用Long Raw字段类型
 */
public final class DataBaseControl {
	private static final String gDsjn = CommonProperties.getInstance().getDatasourceJNDIName(); // 链接池的链接名

	private static Context ctx=getInitialContext();

	protected Connection conn;
	
	protected Boolean transaction=false;//是否打开事务

	protected PreparedStatement ptmt;

	protected Statement stmt;

	protected ResultSet rs=null;

	/**
	 * 初始化方法
	 */
	private DataBaseControl() {
	}
	/**
	 * 获取一个InitialContext实例
	 * @return
	 */
	private static Context getInitialContext() {
	      if (ctx == null) {
	    	  try {
				ctx = new InitialContext();
			} catch (NamingException e) {
				e.printStackTrace();
			}
	      }
	      return ctx;
	}
	/**
	 * 打开事务
	 */
	public void beginTransaction(){
		transaction=true;
		try {
			getConnection().setAutoCommit(false);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 清除所有数据库链接和存储对象
	 * 
	 * @throws SQLException
	 * @throws Exception
	 */
	public void clearAllDB() throws SQLException, Exception {
			if (rs != null) {
				// 关闭结果集
				try {rs.close();} catch (Exception e) {}
				rs = null;
			}
			if (ptmt != null) {
				try {
					// 清除所有参数值
					ptmt.clearParameters();
					ptmt.close();
				} catch (Exception e) {}
				ptmt = null;
			}
			if (stmt != null) {
				// 关闭statement
				try {stmt.clearBatch();stmt.close();} catch (Exception e) {}
				stmt = null;
			}	
			if (!transaction&&conn != null) {
				// 关闭数据库的链接
				try {conn.close();} catch (Exception e) {}
				conn = null;
			}
	}
	/**
	 * 事务结束并关闭
	 */
	public void endTransaction(){
		transaction=false;
		try {
			conn.commit();
		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}finally{
			try {
				clearAllDB();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	/**
	 * 产生一个对象的实例
	 * 
	 * @return DataBaseControl
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 * @throws Exception
	 */
	public static DataBaseControl getInstance() {
		return new DataBaseControl();
	}

	/**
	 * 获取数据库的链接 参数: 无 返回值： 返回一个connection 对象
	 * 
	 * @return Connection
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 * @throws Exception
	 */
	public Connection getConnection() throws ClassNotFoundException,
			SQLException, Exception {
		// 用链接池方式得到connection对象
		if (conn == null) {
			DataSource ds = (DataSource) ctx.lookup(gDsjn);
			conn = ds.getConnection();
			//Class.forName("oracle.jdbc.driver.OracleDriver") ;   	  
	        //conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.17.31:1521:orcl","czc","czc") ;   
		}
		return conn;
	}

	/**
	 * 创建preparedstatement
	 * 
	 * @param sql
	 * @throws SQLException
	 * @throws Exception
	 */
	protected void createPrepareStatement(String sql) throws SQLException,
			Exception {
		if (ptmt == null) {// 如果不存在就创建
			conn = getConnection();
			ptmt = conn.prepareStatement(sql.toLowerCase());
		}
	}

	/**
	 * 创建Statement
	 * 
	 * @throws SQLException
	 * @throws Exception
	 */
	protected void createStatement() throws SQLException, Exception {
		if (stmt == null) {// 如果不存在就创建
			conn = getConnection();
			stmt = conn.createStatement();
		}
	}
	/**
	 * 获取一个CachedRowSet对象,执行sql语句 参数：
	 * 
	 * @param sql
	 *            传入执行的sql语句
	 * @return 传回一个CachedRowSet对象
	 * @throws SQLException
	 * @throws Exception
	 */
	public CachedRowSet getResultSet(String sql) throws SQLException, Exception {
		// 创建Statement对象
		createStatement();
		CachedRowSet cachedRowSet = new CachedRowSetImpl();
		cachedRowSet.setReadOnly(true);
		// 执行sql语句
		try {
			rs = stmt.executeQuery(sql);
			cachedRowSet.populate(rs);
		} catch (Exception e) {
			transaction=false;
			throw e;
		} finally {
			clearAllDB();
		}
		return cachedRowSet;
	}

	/**
	 * 获取一个CachedRowSet对象,传入给PreparedStatement对象的参数存储在Vector对象中
	 * 
	 * @param sql
	 *            执行的sql语句
	 * @param values
	 *            存储传入给PreparedStatement对象的参数
	 * @return 传回CachedRowSet对象
	 * @throws SQLException
	 * @throws Exception
	 */
	public CachedRowSet getResultSet(String sql, Object[] values)
			throws SQLException, Exception {
		// 创建PreparedStatement对象
		createPrepareStatement(sql);
		CachedRowSet cachedRowSet = new CachedRowSetImpl();
		cachedRowSet.setReadOnly(true);
		try {
			if (values != null)
				for (int i = 0; i < values.length; i++) {
					ptmt.setObject(i + 1, values[i]);
				}
			rs = ptmt.executeQuery();
			cachedRowSet.populate(rs);
		} catch (Exception e) {
			transaction=false;
			throw e;
		} finally {
			clearAllDB();
		}
		return cachedRowSet;
	}
	/**
	 * 获取查询结果的第一列装入一个Set对象,传入给PreparedStatement对象的参数存储在Vector对象中
	 * 
	 * @param sql  执行的sql语句
	 * @param values 存储传入给PreparedStatement对象的参数
	 * @return 传回Collection对象(实际为一个Map的列表集合)
	 * @throws SQLException
	 * @throws Exception
	 */
	public Set getSetResultSet(String sql, Object[] values)
			throws SQLException, Exception {
		Set set ;
		// 创建PreparedStatement对象
		createPrepareStatement(sql);
		try {
			if (values != null)
				for (int i = 0; i < values.length; i++) {
					ptmt.setObject(i + 1, values[i]);
				}
			rs = ptmt.executeQuery();
			set=RowProcessor.toSet(rs);
		} catch (Exception e) {
			transaction=false;
			throw e;
		} finally {
			clearAllDB();
		}
		return set;
	}	
	/**
	 * 获取一个Collection对象,传入给PreparedStatement对象的参数存储在Vector对象中
	 * 
	 * @param sql  执行的sql语句
	 * @param values 存储传入给PreparedStatement对象的参数
	 * @return 传回Collection对象(实际为一个Map的列表集合)
	 * @throws SQLException
	 * @throws Exception
	 */
	public Collection getOutResultSet(String sql, Object[] values)
			throws SQLException, Exception {
		Collection maps ;
		// 创建PreparedStatement对象
		createPrepareStatement(sql);
		try {
			if (values != null)
				for (int i = 0; i < values.length; i++) {
					ptmt.setObject(i + 1, values[i]);
				}
			rs = ptmt.executeQuery();
			maps=RowProcessor.getMaps(rs);
		} catch (Exception e) {
			transaction=false;
			throw e;
		} finally {
			clearAllDB();
		}
		return maps;
	}
	/**
	 * 获取单条对象,传入给PreparedStatement对象的参数存储在Map对象中
	 * 
	 * @param sql  执行的sql语句
	 * @param values 存储传入给PreparedStatement对象的参数
	 * @return 传回Map对象
	 * @throws SQLException
	 * @throws Exception
	 */
	public Map getOneResultSet(String sql, Object[] values)
			throws SQLException, Exception {
		Map map = null;
		int size = getResultSetSize(sql, values);
		if (size == 0)
			return map;
		else if (size > 1)
			throw new Exception("======此条件的数据不唯一======");
		else {
			// 创建PreparedStatement对象
			createPrepareStatement(sql);
			try {
				if (values != null)
					for (int i = 0; i < values.length; i++) {
						ptmt.setObject(i + 1, values[i]);
					}
				rs = ptmt.executeQuery();
				map = RowProcessor.toMap(rs);
			} catch (Exception e) {
				transaction=false;
				throw e;
			} finally {
				clearAllDB();
			}
			return map;
		}
	}	
    /**
     * 进行分页处理
     * @param sql
     * @param values
     * @param pageNumber
     * @param pageSize
     * @return
     * @throws SQLException
     * @throws Exception
     */
	@SuppressWarnings("unchecked")
	public Page getPageResultSet(String sql, Object[] values,int pageNumber,int pageSize)
			throws SQLException, Exception {
        int count=getResultSetSize(sql,values);
        if(count==0)
		    return new Page(pageNumber,pageSize,count,null);
        else{
        	int countPage=(count/pageSize)+(count%pageSize==0?0:1);
        	pageNumber=pageNumber>countPage?countPage:pageNumber;
        	String pageSql=getPageSql(sql,CommonProperties.getInstance().getDbType(),pageNumber,pageSize);
        	Log.debug(pageSql);
			if(CommonProperties.getInstance().getDbType().indexOf("SQL SERVER")>=0){
        		List temp=new ArrayList();
        		for (int j = 0; j < 2; j++) {
        			for (int i = 0; i < values.length; i++) {
            			temp.add(values[i]);
    				}	
				}
        		values=	temp.toArray();
			}	
        	return new Page(pageNumber,pageSize,count,getOutResultSet(pageSql,values));
        }
        	
	}
    /**
     * 获取指定查询语句的前几条数据
     * @param sql
     * @param values
     * @param top
     * @return
     * @throws SQLException
     * @throws Exception
     */
	public Collection getTopResultSet(String sql, Object[] values, int top)
			throws SQLException, Exception {
		String pageSql = getTopSql(sql, CommonProperties.getInstance()
				.getDbType(), top);
		Log.debug(pageSql);
		return getOutResultSet(pageSql, values);
	}		
	/**
	 * 执行PrepareStatement类型的sql语句
	 * 
	 * @param sql
	 * @param values
	 * @return int 更新记录数目
	 * @throws SQLException
	 * @throws Exception
	 */
	public int executeSql(String sql, Object[] values) throws SQLException,
			Exception {
		int reInt = 0;
		createPrepareStatement(sql);
		try {
			if (values != null)
				for (int i = 0; i < values.length; i++) {
					if (values[i] instanceof InputStream) {
						try {
							ptmt.setBinaryStream(i + 1,(InputStream) values[i],((InputStream) values[i]).available());
						} catch (IOException e) {
							e.printStackTrace();
							throw new SQLException(
									"Error setting BinaryStream value in PreparedStatement");
						}
					} else
						ptmt.setObject(i+1, values[i]);
				}
			reInt = ptmt.executeUpdate();
		} catch (Exception e) {
			transaction=false;
			throw e;
		} finally {
			clearAllDB();
		}
		return reInt;
	}

	/**
	 * 执行CallableStatement类型的sql语句
	 * 
	 * @param sql
	 * @param values
	 * @return boolean 执行存储过程成功与否
	 * @throws SQLException
	 * @throws Exception
	 */
	public boolean callStoreProcedure(String sql, Object[] values)
			throws SQLException, Exception {
		boolean reBool = false;
		conn = this.getConnection();
		CallableStatement callpsm = conn.prepareCall(sql);
		try {
			if (values != null)
				for (int i = 0; i < values.length; i++) {
					callpsm.setObject(i + 1, values[i]);
				}
			reBool = callpsm.execute();
		} catch (Exception e) {
			throw e;
		} finally {
			callpsm.close();
			callpsm = null;
			// 关闭数据库的链接
			conn.close();
			conn = null;
		}
		return reBool;
	}
	/**
	 * 获取指定sql语句的结果集条数
	 * 
	 * @param sql 执行的sql语句
	 * @param values  存储传入给PreparedStatement对象的参数
	 * @return 传回执行语句的结果集条数
	 * @throws SQLException
	 * @throws Exception
	 */
	public int getResultSetSize(String sql, Object[] values)
			throws SQLException, Exception {
		int size=0;
		sql="SELECT COUNT(*) FROM("+sql+") a";
		// 创建PreparedStatement对象
		createPrepareStatement(sql);
		try {
			if (values != null)
				for (int i = 0; i < values.length; i++) {
					ptmt.setObject(i + 1, values[i]);
				}
			rs = ptmt.executeQuery();
			rs.next();
			size=rs.getInt(1);
		} catch (Exception e) {
			transaction=false;
			throw e;
		} finally {
			clearAllDB();
		}
		return size;
	}	
	/**
	 * 根据实体bean进行添加操作
	 * 此处针对不用默认序列来做ｉｄ（当需要自定义ｉｄ值的时候）
	 * @throws Exception
	 */
	public int insertByBean(Object bean,Object...id) throws Exception {
		int reInt = 0;
		Field[] fields = bean.getClass().getDeclaredFields();
		StringBuffer sql = new StringBuffer("INSERT INTO T_"
				+ bean.getClass().getSimpleName().toUpperCase() + " (");
		StringBuffer sqlParms = new StringBuffer(") VALUES (");
		if(id!=null&&id.length>0){
			sql.append("ID,");
			sqlParms.append(id[0]+",");	
		}else if(CommonProperties.getInstance().getDbType().indexOf("ORACLE")>=0){
		   sql.append("ID,");
		   sqlParms.append("SEQ_T_"+ bean.getClass().getSimpleName().toUpperCase()+ "_0.nextval,");
		}			
		List<Object> parms = new ArrayList<Object>();
		for (Field key : fields) {
			String beanProperty = key.getName();
			key.setAccessible(true); 
			if (!"id".equals(beanProperty)) {
				Object beanPropertyVale = key.get(bean);
				if (beanPropertyVale != null && !"".equals(beanPropertyVale)) {
					sql.append(beanProperty.toUpperCase() + ",");
					sqlParms.append("?,");
					Type type=key.getAnnotation(Type.class);
					if(type!=null&&"LOB".equals(type.value())){
						parms.add(new ByteArrayInputStream(beanPropertyVale.toString().getBytes("GBK"))); 
					}else
						parms.add("null".equals(beanPropertyVale)?null:beanPropertyVale);
				}
			}
		}
		if (parms.isEmpty())
			// throw new Exception("不能插入空数据");
			return reInt;
		String outSql = sql.toString().substring(0, sql.length() - 1);
		outSql += (sqlParms.toString().substring(0, sqlParms.length() - 1))
				+ ")";
		Log.debug(outSql);
		reInt = executeSql(outSql, parms.toArray());
		return reInt;
	}
	/**
	 * 根据实体bean进行添加操作并返回主键（XXX 针对自动生成主键数据库）
	 * @throws Exception
	 */
	public Long insertByBeanOfAutoId(Object bean) throws Exception {
		Long reInt = 0L;
		Field[] fields = bean.getClass().getDeclaredFields();
		StringBuffer sql = new StringBuffer("INSERT INTO T_"
				+ bean.getClass().getSimpleName().toUpperCase() + " (");
		StringBuffer sqlParms = new StringBuffer(") VALUES (");			
		List<Object> parms = new ArrayList<Object>();
		for (Field key : fields) {
			String beanProperty = key.getName();
			key.setAccessible(true); 
			if (!"id".equals(beanProperty)) {
				Object beanPropertyVale = key.get(bean);
				if (beanPropertyVale != null && !"".equals(beanPropertyVale)) {
					sql.append(beanProperty.toUpperCase() + ",");
					sqlParms.append("?,");
					Type type=key.getAnnotation(Type.class);
					if(type!=null&&"LOB".equals(type.value())){
						parms.add(new ByteArrayInputStream(beanPropertyVale.toString().getBytes("GBK"))); 
					}else
						parms.add("null".equals(beanPropertyVale)?null:beanPropertyVale);
				}
			}
		}
		if (parms.isEmpty())
			return reInt;// throw new Exception("不能插入空数据");
		String outSql = sql.toString().substring(0, sql.length() - 1);
		outSql += (sqlParms.toString().substring(0, sqlParms.length() - 1))
				+ ")";
		Log.debug(outSql);
		conn = getConnection();
		ptmt = conn.prepareStatement(outSql,PreparedStatement.RETURN_GENERATED_KEYS);
		Object[] tempParms=parms.toArray();
		try {
			if (tempParms != null)
				for (int i = 0; i <  tempParms.length; i++) {
					if ( tempParms[i] instanceof InputStream) {
						try {
							ptmt.setBinaryStream(i + 1,(InputStream)  tempParms[i],((InputStream)  tempParms[i]).available());
						} catch (IOException e) {
							e.printStackTrace();
							throw new SQLException(
									"Error setting BinaryStream value in PreparedStatement");
						}
					} else
						ptmt.setObject(i+1,  tempParms[i]==null?"": tempParms[i]);
				}
			if (1 == ptmt.executeUpdate()) {
				rs = ptmt.getGeneratedKeys();
				if (rs.next())// 打印插入记录主键值
					reInt=rs.getLong(1);
			} else 
				throw new Exception("插入失败！");
		} catch (Exception e) {
			transaction=false;
			throw e;
		} finally {
			clearAllDB();
		}		
		return reInt;
	}
	/**
	 * 根据实体bean进行更新操作
	 * 
	 * @throws Exception
	 */
	public int updateByBean(Object bean) throws Exception {
		int reInt = 0;
		Field[] fields = bean.getClass().getDeclaredFields();
		StringBuffer sql = new StringBuffer("UPDATE T_"
				+ bean.getClass().getSimpleName().toUpperCase() + " SET ");
		List<Object> parms = new ArrayList<Object>();
		Object id = null;
		for (Field key : fields) {
			String beanProperty = key.getName();
			key.setAccessible(true);
			if ("id".equals(beanProperty)) {
				id = key.get(bean);
				if (id == null || "".equals(id) || "0".equals(id))
					return reInt;
			} else {
				Object beanPropertyVale = key.get(bean);
				sql.append(beanProperty.toUpperCase() + "=?,");
				Type type = key.getAnnotation(Type.class);
				if (type != null && ("LOB".equals(type.value()))) {
					parms.add(new ByteArrayInputStream(beanPropertyVale.toString().getBytes("GBK")));
				} else
					parms.add("null".equals(beanPropertyVale)?null:beanPropertyVale);
			}
		}
		if (parms.isEmpty() || id == null || "".equals(id))
			// throw new Exception("更新数据条件不足");
			return reInt;
		String outSql = sql.toString().substring(0, sql.length() - 1)
				+ " WHERE ID=?";
		parms.add(id);
		Log.debug(outSql);
		reInt = executeSql(outSql, parms.toArray());
		return reInt;
	}
	/**
	 * 根据实体类,更新属性,更新值进行更新操作（只针对指定id值）
	 * @param myParms 更新属性数组
	 * @param myValues  跟更新属性对应的值数组
	 * @param id  需要更新的数据的id值
	 * @throws Exception
	 */
	public int updateByClass(Class bean,String[] myParms,Object[] myValues,Object id) throws Exception {
		int reInt = 0;
		if(myParms==null||myValues==null||myParms.length==0||myValues.length==0||myParms.length!=myValues.length)
			return reInt;
		StringBuffer sql = new StringBuffer("UPDATE T_"
				+ bean.getSimpleName().toUpperCase() + " SET ");
		List<Object> parms = new ArrayList<Object>();
		for (int i = 0; i < myParms.length; i++) {
			sql.append(myParms[i].toUpperCase() + "=?,");
			parms.add(myValues[i]);
		}
		if (parms.isEmpty() || id == null || "".equals(id))
			// throw new Exception("更新数据条件不足");
			return reInt;
		String outSql = sql.toString().substring(0, sql.length() - 1)
				+ " WHERE ID=?";
		parms.add(id);
		Log.debug(outSql);
		reInt = executeSql(outSql, parms.toArray());
		return reInt;
	}	
	/**
	 * 根据实体bean属性进行删除操作
	 * 
	 * @throws Exception
	 */
	public int deleteByBean(Object bean) throws Exception {
		int reInt = 0;
		Field[] fields = bean.getClass().getDeclaredFields();
		StringBuffer sql = new StringBuffer("DELETE FROM T_"
				+ bean.getClass().getSimpleName().toUpperCase() + " WHERE ");
		List<Object> parms = new ArrayList<Object>();
		for (Field key : fields) {
			String beanProperty = key.getName();
			key.setAccessible(true); 
			Object beanPropertyVale = key.get(bean);
			if (beanPropertyVale != null && !"".equals(beanPropertyVale)) {
				sql.append(beanProperty.toUpperCase() + "=? AND ");
				parms.add(beanPropertyVale);
			}
		}
		if (parms.isEmpty())
			// throw new Exception("请指明删除条件！");
			return reInt;
		String outSql = sql.toString().substring(0, sql.length() - 5);
		Log.debug(outSql);
		reInt = executeSql(outSql, parms.toArray());
		return reInt;
	}
	/**
	 * 获取单条对象,传入给PreparedStatement对象的参数存储在Map对象中
	 * 
	 * @param tableName  对应的表名字
	 * @param values 存储传入给PreparedStatement对象的参数
	 * @return 传回Map对象
	 * @throws SQLException
	 * @throws Exception
	 */
	public Map getByBean(Object bean)throws SQLException, Exception {
		Field[] fields = bean.getClass().getDeclaredFields();
		StringBuffer sql = new StringBuffer("SELECT * FROM T_"
				+ bean.getClass().getSimpleName().toUpperCase() + " WHERE ");
		List<Object> parms = new ArrayList<Object>();
		for (Field key : fields) {
			String beanProperty = key.getName();
			key.setAccessible(true); 
			Object beanPropertyVale = key.get(bean);
			if (beanPropertyVale != null && !"".equals(beanPropertyVale)) {
				sql.append(beanProperty.toUpperCase() + "=? AND ");
				parms.add("null".equals(beanPropertyVale)?null:beanPropertyVale);
			}
		}
		if (parms.isEmpty())
			// throw new Exception("查询唯一数据时候需要查询条件！");
			return null;
		String outSql = sql.toString().substring(0, sql.length() - 5);
		Log.debug(outSql);
		return getOneResultSet(outSql,parms.toArray());
	}
	/**
	 * 获取单条对象,传入给PreparedStatement对象的参数存储在Map对象中
	 * 
	 * @param tableName  对应的表名字
	 * @param values 存储传入给PreparedStatement对象的参数
	 * @return 传回page对象
	 * @throws SQLException
	 * @throws Exception
	 */
	public Page getPageByBean(Object bean,HttpServletRequest request)throws SQLException, Exception {
		Field[] fields = bean.getClass().getDeclaredFields();
		StringBuffer sql = new StringBuffer("SELECT * FROM T_"
				+ bean.getClass().getSimpleName().toUpperCase() + " WHERE ");
		List<Object> parms = new ArrayList<Object>();
		for (Field key : fields) {
			String beanProperty = key.getName();
			key.setAccessible(true); 
			if (!"id".equals(beanProperty)) {
				Object beanPropertyVale = key.get(bean);
				if (beanPropertyVale != null && !"".equals(beanPropertyVale)) {
					sql.append(beanProperty.toUpperCase() + "=? AND ");
					parms.add(beanPropertyVale);
				}
			}
		}
		String outSql = sql.toString().substring(0, sql.length() - 5);
		if (parms.isEmpty())
			outSql=outSql.substring(0, outSql.length() - 2);
		Log.debug(outSql);
		int pageNumber=1;
		try {
			pageNumber=new Integer(request.getParameter("pageNumber"));
		} catch (Exception e) {}
		return getPageResultSet(outSql, parms.toArray(), pageNumber, Page.defaultPageSize);
	}	
	/**
	 * 获取所有符合条件的对象,传入给PreparedStatement对象的参数存储在Map对象中
	 * 
	 * @param values 存储传入给PreparedStatement对象的参数
	 * @return 传回Collection对象
	 * @throws SQLException
	 * @throws Exception
	 */
	public Collection getCollectionByBean(Object bean,HttpServletRequest request)throws SQLException, Exception {
		Field[] fields = bean.getClass().getDeclaredFields();
		StringBuffer sql = new StringBuffer("SELECT * FROM T_"
				+ bean.getClass().getSimpleName().toUpperCase() + " WHERE ");
		List<Object> parms = new ArrayList<Object>();
		for (Field key : fields) {
			String beanProperty = key.getName();
			key.setAccessible(true); 
			if (!"id".equals(beanProperty)) {
				Object beanPropertyVale = key.get(bean);
				if (beanPropertyVale != null && !"".equals(beanPropertyVale)) {
					sql.append(beanProperty.toUpperCase() + "=? AND ");
					parms.add("null".equals(beanPropertyVale)?null:beanPropertyVale);
				}
			}
		}
		String outSql = sql.toString().substring(0, sql.length() - 5);
		if (parms.isEmpty())
			outSql=outSql.substring(0, outSql.length() - 2);
		Log.debug(outSql);
		return getOutResultSet(outSql, parms.toArray());
	}	
	/**
	 * 根据给定语句及数据库类型生成对应的分页语句
	 * FIXME 注意此处应用于SQL Server要求查询必须有一个主键，并且为ID,注意在SQL SERVER 中用order by排序时候排序字段不要带前缀
	 * @param sql
	 * @return
	 * @throws Exception 
	 */
	private String getPageSql(String sql,String type,int pageNumber,int pageSize) throws Exception {
		if((type.indexOf("MYSQL")>=0)||(type.indexOf("SQLITE")>=0))
			sql+=" LIMIT "+((pageNumber-1)*pageSize)+","+pageSize;
		else if(type.indexOf("ORACLE")>=0)
			sql="SELECT * FROM (SELECT a.*, ROWNUM row_num FROM ("+sql+")a where ROWNUM<="+pageNumber*pageSize+")b WHERE b.row_num>="+((pageNumber-1)*pageSize+1); 
		else if(type.indexOf("SQL SERVER")>=0){
			int orderBy=sql.toLowerCase().indexOf("order by");
			String temp="";
			if(orderBy!=-1)
				temp+=sql.substring(orderBy);
			sql="SELECT TOP "+pageSize+" * FROM ("+removeOrders(sql)+")A WHERE (ID NOT IN (SELECT TOP "+((pageNumber-1)*pageSize)+" ID "+removeSelect(sql)+"))"+temp;
		}
		else if(type.indexOf("DB2")>=0)
			sql="SELECT * FROM (SELECT rownumber() AS RN, "+sql.substring(7)+") WHERE RN BETWEEN "+((pageNumber-1)*pageSize+1)+" AND "+(pageNumber*pageSize); 
		else
			throw new Exception("========对不起，此数据库暂不被支持智能分页========");
		return sql;
	}
	/**
	 * 根据给定语句及数据库类型生成对应的分页语句
	 * FIXME 注意此处应用于SQL Server要求查询必须有一个主键，并且为ID,注意在SQL SERVER 中用order by排序时候排序字段不要带前缀
	 * @param sql
	 * @return
	 * @throws Exception 
	 */
	private String getTopSql(String sql,String type,int top) throws Exception {
		if((type.indexOf("MYSQL")>=0)||(type.indexOf("SQLITE")>=0))
			sql+=" LIMIT "+top;
		else if(type.indexOf("ORACLE")>=0)
			sql="SELECT * FROM (SELECT a.*, ROWNUM row_num FROM ("+sql+")a)b WHERE b.row_num <="+top; 
		else if(type.indexOf("SQL SERVER")>=0){
			int orderBy=sql.toLowerCase().indexOf("order by");
			String temp="";
			if(orderBy!=-1)
				temp+=sql.substring(orderBy);
			sql="SELECT TOP "+top+" "+sql.substring(7);
		}
		else if(type.indexOf("DB2")>=0)
			sql="SELECT * FROM (SELECT rownumber() as RN, "+sql.substring(7)+") WHERE RN <= "+top; 
		else
			throw new Exception("========对不起，此数据库暂不被支持智能提取前几条数据========");
		return sql;
	}		
	/**
	 * 去除select 子句，未考虑union的情况 //final String countQuery = "select count(*) " + removeSelect(query);
	 * 
	 * @param sql
	 * @return
	 */
	private String removeSelect(String sql) {
		int beginPos = sql.toLowerCase().indexOf("from");
		return sql.substring(beginPos);
	}

	/**
	 * 去除order by 子句
	 * 
	 * @param sql
	 * @return
	 */
	private String removeOrders(String sql) {
		Pattern p = Pattern.compile("order\\s*by[\\w|\\W|\\s|\\S]*",
				Pattern.CASE_INSENSITIVE);
		Matcher m = p.matcher(sql);
		StringBuffer sb = new StringBuffer();
		while (m.find()) {
			m.appendReplacement(sb, "");
		}
		m.appendTail(sb);
		return sb.toString();
	}
	/**
	 * 根据实体bean进行添加操作 FIXME 只针对ORACLE数据库并且添加的数据有CLOB或者BLOB形
	 * XXX 此处针对Oracle不用默认序列来做ｉｄ（当需要自定义ｉｄ值的时候）
	 * @throws Exception
	 */
	@SuppressWarnings("deprecation")
	public boolean insertByBeanLob(Object bean,Long...id) throws Exception {
		long myid ;
		//进行数据库插入操作
		Field[] fields = bean.getClass().getDeclaredFields();
		StringBuffer sql = new StringBuffer("INSERT INTO T_"
				+ bean.getClass().getSimpleName().toUpperCase() + " (");
		StringBuffer sqlParms = new StringBuffer(") VALUES (");
		List<String> upParm = new ArrayList<String>();  //lob类型参数列表
		List<Object> upParms = new ArrayList<Object>();  //lob类型参数值
		List<String> upType=new ArrayList<String>();  //lob类型列表
		List<Object> parms = new ArrayList<Object>();
		sql.append("ID,");
		sqlParms.append("?,");
		if(id==null||id.length<1){
			myid=getSeq(bean.getClass().getSimpleName());
		}else{
			myid=id[0];
		}
		parms.add(myid);
		for (Field key : fields) {
			String beanProperty = key.getName();
			key.setAccessible(true); 
			Type type=key.getAnnotation(Type.class);
			if (!"id".equals(beanProperty)) {
				Object beanPropertyVale = key.get(bean);
				if (beanPropertyVale != null && !"".equals(beanPropertyVale)||type!=null&&("CLOB".equals(type.value())||"BLOB".equals(type.value()))) {
					sql.append(beanProperty.toUpperCase() + ",");
					if(type!=null&&"LOB".equals(type.value())){
						sqlParms.append("?,");
						parms.add(new ByteArrayInputStream(beanPropertyVale.toString().getBytes("GBK"))); 
					}else if(type!=null&&"CLOB".equals(type.value())){
						upType.add("CLOB");
						sqlParms.append("empty_clob(),");
						if(beanPropertyVale != null && !"".equals(beanPropertyVale)){
						upParm.add(beanProperty.toUpperCase());
						upParms.add(beanPropertyVale);
						}
					}else if(type!=null&&"BLOB".equals(type.value())){
						upType.add("BLOB");
						sqlParms.append("empty_blob(),");
						if(beanPropertyVale != null && !"".equals(beanPropertyVale)){
						upParm.add(beanProperty.toUpperCase());
						upParms.add(beanPropertyVale);
						}
					}else{
						sqlParms.append("?,");
						parms.add("null".equals(beanPropertyVale)?null:beanPropertyVale);
					}
				}
			}
		}
		String outSql = sql.toString().substring(0, sql.length() - 1);
		outSql += (sqlParms.toString().substring(0, sqlParms.length() - 1))
				+ ")";
		Log.debug(outSql);
		if(executeSql(outSql, parms.toArray())>0&&upParm!=null&&!upParm.isEmpty()){//进行更新操作

			String upSql="SELECT ";
			for (int i = 0; i < upParm.size(); i++) {
				upSql+=upParm.get(i)+",";
			}
			upSql=upSql.substring(0, upSql.length() - 1);
			upSql+=" FROM T_"+bean.getClass().getSimpleName().toUpperCase()+" WHERE ID="+myid+" FOR UPDATE";
			Log.debug(upSql);
			conn=getConnection();
			conn.setAutoCommit(false); 
			stmt=conn.createStatement();
			rs = stmt.executeQuery(upSql);    
		    try {
				if (rs.next())    
				{    
					for (int i = 0; i < upParm.size(); i++) {
						if("CLOB".equals(upType.get(i))){
						    //得到java.sql.Clob对象后强制转换为oracle.sql.CLOB    
				            oracle.sql.CLOB clob = (oracle.sql.CLOB)rs.getClob(upParm.get(i));
				            Writer out = clob.setCharacterStream(0);
				            out.write(upParms.get(i).toString());
				            out.flush();
				            out.close();
						}else{
							 oracle.sql.BLOB blob = (oracle.sql.BLOB)rs.getBlob(upParm.get(i));    
							 OutputStream os = blob.setBinaryStream(0); // 建立输出流
							 byte[] buff = new byte[2048];  //用做文件写入的缓冲
							 int bytesRead;
							 while(-1 != (bytesRead = ((InputStream)upParms.get(i)).read(buff, 0, buff.length))) {
							   os.write(buff, 0, bytesRead);
							  }
							 os.flush();
							 os.close(); 
							 }      
						}
					if(!transaction)//总事务未打开则执行提交
						conn.commit(); 
					}
				return true;
			} catch (Exception e) {//回滚数据
				transaction=false;
				conn.rollback();
				executeSql("DELETE FROM T_"+ bean.getClass().getSimpleName().toUpperCase() + " WHERE ID=?",new Object[]{id});
				return false;
			}finally{
				clearAllDB();
			}
		}else
		  return false;
	}
	/**
	 * 根据实体bean进行更新操作 FIXME 只针对ORACLE数据库并且添加的数据有CLOB或者BLOB形
	 * 
	 * @throws Exception
	 */
	@SuppressWarnings("deprecation")
	public int updateByBeanLob(Object bean) throws Exception {
		int reInt = 0;
		Field[] fields = bean.getClass().getDeclaredFields();
		StringBuffer sql = new StringBuffer("UPDATE T_"+ bean.getClass().getSimpleName().toUpperCase() + " SET ");
		List<String> upParm = new ArrayList<String>();  //lob类型参数列表
		List<Object> upParms = new ArrayList<Object>();  //lob类型参数值
		List<String> upType=new ArrayList<String>();  //lob类型列表
		List<Object> parms = new ArrayList<Object>();
		Object id = null;
		for (Field key : fields) {
			String beanProperty = key.getName();
			key.setAccessible(true);
			if ("id".equals(beanProperty)) {
				id = key.get(bean);
				if (id == null || "".equals(id) || "0".equals(id))
					return reInt;
			} else {
				Object beanPropertyVale = key.get(bean);
				Type type=key.getAnnotation(Type.class);
				if(type!=null&&("CLOB".equals(type.value()))){
					upType.add("CLOB");
					if(beanPropertyVale != null && !"".equals(beanPropertyVale)){
						upParm.add(beanProperty.toUpperCase());
						upParms.add(beanPropertyVale);
					}
				}else if(type!=null&&("BLOB".equals(type.value()))){
					upType.add("BLOB");
					if(beanPropertyVale != null && !"".equals(beanPropertyVale)){
						upParm.add(beanProperty.toUpperCase());
						upParms.add(beanPropertyVale);
					}
				}else if (beanPropertyVale != null) {
					sql.append(beanProperty.toUpperCase() + "=?,");
					if(type!=null&&("LOB".equals(type.value()))){
						parms.add(new ByteArrayInputStream(beanPropertyVale.toString().getBytes("GBK"))); 
					}else
					parms.add("null".equals(beanPropertyVale)?null:beanPropertyVale);
				}
			}
		}
		if ((parms.isEmpty()&&upParms.isEmpty())|| id == null || "".equals(id))
			return reInt;
		else{
		if (!parms.isEmpty()) {
				String outSql = sql.toString().substring(0, sql.length() - 1)+ " WHERE ID=?";
				parms.add(id);
				Log.debug(outSql);
				reInt = executeSql(outSql, parms.toArray());
			}
		if(!upParm.isEmpty()){
			conn = getConnection();
			conn.setAutoCommit(false);
			stmt = conn.createStatement();
			//清空CLOB和BLOB
			String temp="UPDATE T_"+bean.getClass().getSimpleName().toUpperCase()+" SET ";
			for (int i = 0; i < upParm.size(); i++) {
				temp+=upParm.get(i)+"="+("CLOB".equals(upType.get(i))?"empty_clob()":"empty_blob()")+",";
			}
			temp = temp.substring(0, temp.length() - 1);
			stmt.executeUpdate(temp+" WHERE ID=" + id );
		    //更新CLOB和BLOB
		    String upSql = "SELECT ";
			for (int i = 0; i < upParm.size(); i++) {
				upSql += upParm.get(i) + ",";
			}
			upSql = upSql.substring(0, upSql.length() - 1);
			upSql += " FROM T_" + bean.getClass().getSimpleName().toUpperCase()+ " WHERE ID=" + id + " FOR UPDATE";
			Log.debug(upSql);
			rs = stmt.executeQuery(upSql);
			try {
				if (rs.next()) {
					for (int i = 0; i < upParm.size(); i++) {
						if ("CLOB".equals(upType.get(i))) {
							// 得到java.sql.Clob对象后强制转换为oracle.sql.CLOB
							oracle.sql.CLOB clob = (oracle.sql.CLOB) rs.getClob(upParm.get(i));
							Writer out = clob.setCharacterStream(0);
							out.write(upParms.get(i).toString());
							out.flush();
							out.close();
						} else {
							 oracle.sql.BLOB blob = (oracle.sql.BLOB)rs.getBlob(upParm.get(i));    
							 OutputStream os = blob.setBinaryStream(0); // 建立输出流
							 byte[] buff = new byte[2048];  //用做文件写入的缓冲
							 int bytesRead;
							 while(-1 != (bytesRead = ((InputStream)upParms.get(i)).read(buff, 0, buff.length))) {
							   os.write(buff, 0, bytesRead);
							  }
							 os.flush();
							 os.close(); 
						}
					}
					if(!transaction)//总事务未打开则执行提交
						conn.commit(); 
				}
			} catch (Exception e) {// 回滚数据
				transaction=false;
				e.printStackTrace();
				conn.rollback();
			} finally {
				clearAllDB();
			}
		}
		}
		return reInt;
	}		
	/**
	 * 获取数据库的序列值
	 * @param bean
	 * @return
	 * @throws Exception
	 */
	public Long getSeq(String beanName) throws Exception {	
		Long seq_id = 0L;		
        //获取插入的主键值
		createPrepareStatement("SELECT SEQ_T_"+beanName.toUpperCase()+"_0.NEXTVAL FROM DUAL");
		try {
			rs = ptmt.executeQuery();
			rs.next();
			seq_id=rs.getLong(1);
		} catch (Exception e) {
			transaction=false;
			throw e;
		} finally {
			clearAllDB();
		}
		return seq_id;
	}
}
