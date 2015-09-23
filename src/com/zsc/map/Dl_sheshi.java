/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2012-11-21</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;
/**
 * 道路交通设施情况
 */
public class Dl_sheshi{
	

	//数据库相关字段
	private java.math.BigDecimal id;    //主键
	private Long unit_id;    //对应用户主键
	private Long year;    //年份
	private java.math.BigDecimal shu;    //数量（条）
	private java.math.BigDecimal kuan;    //宽度（米）
	private java.math.BigDecimal chang;    //长度（米）
	private java.math.BigDecimal gshu;    //规划数量（条）
	private java.math.BigDecimal gkuan;    //规划宽度（米）
	private java.math.BigDecimal gchang;    //规划长度（米）
	private String gleixing;    //规划路面类型
	private java.sql.Date tijiao;    //提交时间
	private String beizhu;    //备注
	private String dengji;    //道路等级
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Dl_sheshi(){
	}

	public Dl_sheshi(java.math.BigDecimal id){
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
	
	public java.math.BigDecimal getShu() {
		return this.shu;
	}
	
	public void setShu(java.math.BigDecimal value) {
		this.shu = value;
	}
	
	public java.math.BigDecimal getKuan() {
		return this.kuan;
	}
	
	public void setKuan(java.math.BigDecimal value) {
		this.kuan = value;
	}
	
	public java.math.BigDecimal getChang() {
		return this.chang;
	}
	
	public void setChang(java.math.BigDecimal value) {
		this.chang = value;
	}
	
	public java.math.BigDecimal getGshu() {
		return this.gshu;
	}
	
	public void setGshu(java.math.BigDecimal value) {
		this.gshu = value;
	}
	
	public java.math.BigDecimal getGkuan() {
		return this.gkuan;
	}
	
	public void setGkuan(java.math.BigDecimal value) {
		this.gkuan = value;
	}
	
	public java.math.BigDecimal getGchang() {
		return this.gchang;
	}
	
	public void setGchang(java.math.BigDecimal value) {
		this.gchang = value;
	}
	
	public String getGleixing() {
		return this.gleixing;
	}
	
	public void setGleixing(String value) {
		this.gleixing = value;
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
	
	public String getDengji() {
		return this.dengji;
	}
	
	public void setDengji(String value) {
		this.dengji = value;
	}
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("unit_id",getUnit_id())
			.append("year",getYear())
			.append("shu",getShu())
			.append("kuan",getKuan())
			.append("chang",getChang())
			.append("gshu",getGshu())
			.append("gkuan",getGkuan())
			.append("gchang",getGchang())
			.append("gleixing",getGleixing())
			.append("tijiao",getTijiao())
			.append("beizhu",getBeizhu())
			.append("dengji",getDengji())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUnit_id())
			.append(getYear())
			.append(getShu())
			.append(getKuan())
			.append(getChang())
			.append(getGshu())
			.append(getGkuan())
			.append(getGchang())
			.append(getGleixing())
			.append(getTijiao())
			.append(getBeizhu())
			.append(getDengji())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Dl_sheshi == false) return false;
		if(this == obj) return true;
		Dl_sheshi other = (Dl_sheshi)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getYear(),other.getYear())
			.append(getShu(),other.getShu())
			.append(getKuan(),other.getKuan())
			.append(getChang(),other.getChang())
			.append(getGshu(),other.getGshu())
			.append(getGkuan(),other.getGkuan())
			.append(getGchang(),other.getGchang())
			.append(getGleixing(),other.getGleixing())
			.append(getTijiao(),other.getTijiao())
			.append(getBeizhu(),other.getBeizhu())
			.append(getDengji(),other.getDengji())
			.isEquals();
	}
*/
}
