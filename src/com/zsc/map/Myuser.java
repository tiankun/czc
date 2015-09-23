/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2008-11-24</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;

public class Myuser{
	

	//数据库相关字段
	private java.math.BigDecimal id;    //主键
	private java.lang.String log_name;    //登录名称
	private java.lang.String user_name;    //用户实际名称
	private java.lang.String log_pass;    //登录密码
	private java.lang.String type;    //用户类型
	private java.lang.String remark;    //备注
	private java.math.BigDecimal role;    //所属组
	private String guan_li;    //所属地址
	private String shu_di;    //所属地址中文显示(完整显示)
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Myuser(){
	}

	public Myuser(java.math.BigDecimal id){
		this.id = id;
	}

	
    //相关属性get/set方法
	public void setId(java.math.BigDecimal value) {
		this.id = value;
	}
	public java.math.BigDecimal getId() {
		return this.id;
	}
	public java.lang.String getLog_name() {
		return this.log_name;
	}
	
	public void setLog_name(java.lang.String value) {
		this.log_name = value;
	}
	
	public java.lang.String getUser_name() {
		return this.user_name;
	}
	
	public void setUser_name(java.lang.String value) {
		this.user_name = value;
	}
	
	public java.lang.String getLog_pass() {
		return this.log_pass;
	}
	
	public void setLog_pass(java.lang.String value) {
		this.log_pass = value;
	}
	
	public java.lang.String getType() {
		return this.type;
	}
	
	public void setType(java.lang.String value) {
		this.type = value;
	}
	
	public java.lang.String getRemark() {
		return this.remark;
	}
	
	public void setRemark(java.lang.String value) {
		this.remark = value;
	}
	
	public java.math.BigDecimal getRole() {
		return this.role;
	}
	
	public void setRole(java.math.BigDecimal value) {
		this.role = value;
	}

	/**
	 * @return the guan_li
	 */
	public String getGuan_li() {
		return guan_li;
	}

	/**
	 * @param guan_li the guan_li to set
	 */
	public void setGuan_li(String guan_li) {
		this.guan_li = guan_li;
	}

	/**
	 * @return the shu_di
	 */
	public String getShu_di() {
		return shu_di;
	}

	/**
	 * @param shu_di the shu_di to set
	 */
	public void setShu_di(String shu_di) {
		this.shu_di = shu_di;
	}
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("log_name",getLog_name())
			.append("user_name",getUser_name())
			.append("log_pass",getLog_pass())
			.append("type",getType())
			.append("remark",getRemark())
			.append("city",getCity())
			.append("county",getCounty())
			.append("role",getRole())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getLog_name())
			.append(getUser_name())
			.append(getLog_pass())
			.append(getType())
			.append(getRemark())
			.append(getCity())
			.append(getCounty())
			.append(getRole())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Myuser == false) return false;
		if(this == obj) return true;
		Myuser other = (Myuser)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getLog_name(),other.getLog_name())
			.append(getUser_name(),other.getUser_name())
			.append(getLog_pass(),other.getLog_pass())
			.append(getType(),other.getType())
			.append(getRemark(),other.getRemark())
			.append(getCity(),other.getCity())
			.append(getCounty(),other.getCounty())
			.append(getRole(),other.getRole())
			.isEquals();
	}
*/
}
