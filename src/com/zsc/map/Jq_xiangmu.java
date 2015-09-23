/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2012-11-21</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;
/**
 * 近期建设项目情况
 */
public class Jq_xiangmu{
	

	//数据库相关字段
	private Long id;    //主键
	private Long unit_id;    //对应用户主键
	private Long year;    //年份
	private String ming_cheng;    //项目名称
	private java.math.BigDecimal nian_xian;    //年限
	private String gui_mo;    //规模
	private java.math.BigDecimal tou_zi;    //计划投资金额（万元）
	private java.sql.Date tijiao;    //提交时间
	private String beizhu;    //备注
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Jq_xiangmu(){
	}

	public Jq_xiangmu(Long id){
		this.id = id;
	}

	
    //相关属性get/set方法
	public void setId(Long value) {
		this.id = value;
	}
	public Long getId() {
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
	
	public String getMing_cheng() {
		return this.ming_cheng;
	}
	
	public void setMing_cheng(String value) {
		this.ming_cheng = value;
	}
	
	public java.math.BigDecimal getNian_xian() {
		return this.nian_xian;
	}
	
	public void setNian_xian(java.math.BigDecimal value) {
		this.nian_xian = value;
	}
	
	public String getGui_mo() {
		return this.gui_mo;
	}
	
	public void setGui_mo(String value) {
		this.gui_mo = value;
	}
	
	public java.math.BigDecimal getTou_zi() {
		return this.tou_zi;
	}
	
	public void setTou_zi(java.math.BigDecimal value) {
		this.tou_zi = value;
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
			.append("ming_cheng",getMing_cheng())
			.append("nian_xian",getNian_xian())
			.append("gui_mo",getGui_mo())
			.append("tou_zi",getTou_zi())
			.append("tijiao",getTijiao())
			.append("beizhu",getBeizhu())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUnit_id())
			.append(getYear())
			.append(getMing_cheng())
			.append(getNian_xian())
			.append(getGui_mo())
			.append(getTou_zi())
			.append(getTijiao())
			.append(getBeizhu())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Jq_xiangmu == false) return false;
		if(this == obj) return true;
		Jq_xiangmu other = (Jq_xiangmu)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getYear(),other.getYear())
			.append(getMing_cheng(),other.getMing_cheng())
			.append(getNian_xian(),other.getNian_xian())
			.append(getGui_mo(),other.getGui_mo())
			.append(getTou_zi(),other.getTou_zi())
			.append(getTijiao(),other.getTijiao())
			.append(getBeizhu(),other.getBeizhu())
			.isEquals();
	}
*/
}
