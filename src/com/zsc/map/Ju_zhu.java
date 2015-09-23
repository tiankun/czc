/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2012-11-21</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;
/**
 * 村民居住情况
 */
public class Ju_zhu{
	

	//数据库相关字段
	private java.math.BigDecimal id;    //主键
	private Long unit_id;    //对应用户主键
	private Long year;    //年份
	private java.sql.Date tijiao;    //提交时间
	private String beizhu;    //备注
	private String neirong;    //内容
	private String danwei;    //单位
	private java.math.BigDecimal shuliang;    //数量
	private java.math.BigDecimal bili;    //占总户数的比重（%）
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Ju_zhu(){
	}

	public Ju_zhu(java.math.BigDecimal id){
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
	
	public String getNeirong() {
		return this.neirong;
	}
	
	public void setNeirong(String value) {
		this.neirong = value;
	}
	
	public String getDanwei() {
		return this.danwei;
	}
	
	public void setDanwei(String value) {
		this.danwei = value;
	}
	
	public java.math.BigDecimal getShuliang() {
		return this.shuliang;
	}
	
	public void setShuliang(java.math.BigDecimal value) {
		this.shuliang = value;
	}
	
	public java.math.BigDecimal getBili() {
		return this.bili;
	}
	
	public void setBili(java.math.BigDecimal value) {
		this.bili = value;
	}
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("unit_id",getUnit_id())
			.append("year",getYear())
			.append("tijiao",getTijiao())
			.append("beizhu",getBeizhu())
			.append("neirong",getNeirong())
			.append("danwei",getDanwei())
			.append("shuliang",getShuliang())
			.append("bili",getBili())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUnit_id())
			.append(getYear())
			.append(getTijiao())
			.append(getBeizhu())
			.append(getNeirong())
			.append(getDanwei())
			.append(getShuliang())
			.append(getBili())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Ju_zhu == false) return false;
		if(this == obj) return true;
		Ju_zhu other = (Ju_zhu)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getYear(),other.getYear())
			.append(getTijiao(),other.getTijiao())
			.append(getBeizhu(),other.getBeizhu())
			.append(getNeirong(),other.getNeirong())
			.append(getDanwei(),other.getDanwei())
			.append(getShuliang(),other.getShuliang())
			.append(getBili(),other.getBili())
			.isEquals();
	}
*/
}
