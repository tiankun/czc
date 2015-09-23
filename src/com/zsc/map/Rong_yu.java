/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2012-11-21</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;
/**
 * 荣获名录及相关情况
 */
public class Rong_yu{
	

	//数据库相关字段
	private java.math.BigDecimal id;    //主键
	private Long unit_id;    //对应用户主键
	private Long year;    //年份
	private String zd_fazhan;    //村庄列入哪一级重点发展
	private String cheng_hao;    //荣获称号
	private String zhi_chi;    //村庄是否获相关政策支持
	private String jianjie;    //行政村简介
	private java.sql.Date tijiao;    //提交时间
	private String beizhu;    //备注
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Rong_yu(){
	}

	public Rong_yu(java.math.BigDecimal id){
		this.id = id;
	}

	
    //相关属性get/set方法
	public void setId(java.math.BigDecimal value) {
		this.id = value;
	}
	public java.math.BigDecimal getId() {
		return this.id;
	}
	public Long getUnit_id() {
		return this.unit_id;
	}
	
	public void setUnit_id(Long value) {
		this.unit_id = value;
	}
	
	public Long getYear() {
		return this.year;
	}
	
	public void setYear(Long value) {
		this.year = value;
	}
	
	public String getZd_fazhan() {
		return this.zd_fazhan;
	}
	
	public void setZd_fazhan(String value) {
		this.zd_fazhan = value;
	}
	
	public String getCheng_hao() {
		return this.cheng_hao;
	}
	
	public void setCheng_hao(String value) {
		this.cheng_hao = value;
	}
	
	public String getZhi_chi() {
		return this.zhi_chi;
	}
	
	public void setZhi_chi(String value) {
		this.zhi_chi = value;
	}
	
	public String getJianjie() {
		return this.jianjie;
	}
	
	public void setJianjie(String value) {
		if (value!=null&&value.length()>2000)
			value=value.substring(0, 1999);	
		this.jianjie = value;
	}
	
	public java.sql.Date getTijiao() {
		return this.tijiao;
	}
	
	public void setTijiao(java.sql.Date value) {
		this.tijiao = value;
	}
	
	public String getBeizhu() {
		return this.beizhu;
	}
	
	public void setBeizhu(String value) {
		this.beizhu = value;
	}
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("unit_id",getUnit_id())
			.append("year",getYear())
			.append("zd_fazhan",getZd_fazhan())
			.append("cheng_hao",getCheng_hao())
			.append("zhi_chi",getZhi_chi())
			.append("jianjie",getJianjie())
			.append("tijiao",getTijiao())
			.append("beizhu",getBeizhu())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUnit_id())
			.append(getYear())
			.append(getZd_fazhan())
			.append(getCheng_hao())
			.append(getZhi_chi())
			.append(getJianjie())
			.append(getTijiao())
			.append(getBeizhu())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Rong_yu == false) return false;
		if(this == obj) return true;
		Rong_yu other = (Rong_yu)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getYear(),other.getYear())
			.append(getZd_fazhan(),other.getZd_fazhan())
			.append(getCheng_hao(),other.getCheng_hao())
			.append(getZhi_chi(),other.getZhi_chi())
			.append(getJianjie(),other.getJianjie())
			.append(getTijiao(),other.getTijiao())
			.append(getBeizhu(),other.getBeizhu())
			.isEquals();
	}
*/
}
