/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2015-3-12</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;

public class Village_info{
	

	//数据库相关字段
	private Integer id;    //id
	private String name;    //村落基本信息
	private String area;    //村域面积
	private String permenent_residents;    //常住人口
	private String revenue;    //村集体年收入
	private Integer city;    //所属州市、县市区、乡镇id
	private String space;    //村庄占地面积
	private String national;    //主要民族
	private String traditional_village_groups;    //传统村落批次
	private String request_money_groups;    //申请资金批次
	private java.math.BigDecimal total_progress;    //总进度情况
	private String ave_income;    //村民人均年收入
	private String shudi;    //所属州市、县市区、乡镇
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Village_info(){
	}

	
    //相关属性get/set方法
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer value) {
		this.id = value;
	}
	
	public String getName() {
		return this.name;
	}
	
	public void setName(String value) {
		this.name = value;
	}
	
	public String getArea() {
		return this.area;
	}
	
	public void setArea(String value) {
		this.area = value;
	}
	
	public String getPermenent_residents() {
		return this.permenent_residents;
	}
	
	public void setPermenent_residents(String value) {
		this.permenent_residents = value;
	}
	
	public String getRevenue() {
		return this.revenue;
	}
	
	public void setRevenue(String value) {
		this.revenue = value;
	}
	
	public Integer getCity() {
		return this.city;
	}
	
	public void setCity(Integer value) {
		this.city = value;
	}
	
	public String getSpace() {
		return this.space;
	}
	
	public void setSpace(String value) {
		this.space = value;
	}
	
	public String getNational() {
		return this.national;
	}
	
	public void setNational(String value) {
		this.national = value;
	}
	
	public String getTraditional_village_groups() {
		return this.traditional_village_groups;
	}
	
	public void setTraditional_village_groups(String value) {
		this.traditional_village_groups = value;
	}
	
	public String getRequest_money_groups() {
		return this.request_money_groups;
	}
	
	public void setRequest_money_groups(String value) {
		this.request_money_groups = value;
	}
	
	public java.math.BigDecimal getTotal_progress() {
		return this.total_progress;
	}
	
	public void setTotal_progress(java.math.BigDecimal value) {
		this.total_progress = value;
	}
	
	public String getAve_income() {
		return this.ave_income;
	}
	
	public void setAve_income(String value) {
		this.ave_income = value;
	}


	public String getShudi() {
		return shudi;
	}


	public void setShudi(String shudi) {
		this.shudi = shudi;
	}
	
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("name",getName())
			.append("area",getArea())
			.append("permenent_residents",getPermenent_residents())
			.append("revenue",getRevenue())
			.append("city",getCity())
			.append("space",getSpace())
			.append("national",getNational())
			.append("traditional_village_groups",getTraditional_village_groups())
			.append("request_money_groups",getRequest_money_groups())
			.append("total_progress",getTotal_progress())
			.append("ave_income",getAve_income())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getName())
			.append(getArea())
			.append(getPermenent_residents())
			.append(getRevenue())
			.append(getCity())
			.append(getSpace())
			.append(getNational())
			.append(getTraditional_village_groups())
			.append(getRequest_money_groups())
			.append(getTotal_progress())
			.append(getAve_income())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Village_info == false) return false;
		if(this == obj) return true;
		Village_info other = (Village_info)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getName(),other.getName())
			.append(getArea(),other.getArea())
			.append(getPermenent_residents(),other.getPermenent_residents())
			.append(getRevenue(),other.getRevenue())
			.append(getCity(),other.getCity())
			.append(getSpace(),other.getSpace())
			.append(getNational(),other.getNational())
			.append(getTraditional_village_groups(),other.getTraditional_village_groups())
			.append(getRequest_money_groups(),other.getRequest_money_groups())
			.append(getTotal_progress(),other.getTotal_progress())
			.append(getAve_income(),other.getAve_income())
			.isEquals();
	}
*/
}
