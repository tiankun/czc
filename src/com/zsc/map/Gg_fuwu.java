/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2012-11-21</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;
/**
 * 公共服务设施情况
 */
public class Gg_fuwu{
	

	//数据库相关字段
	private java.math.BigDecimal id;    //主键
	private Long unit_id;    //对应用户主键
	private Long year;    //年份
	private String ming_cheng;    //设施名称
	private String lei_bie;    //类别
	private java.math.BigDecimal shu_liang;    //数量（个）
	private java.math.BigDecimal gui_mo;    //规模（公顷）
	private String gh_shifou;    //是否需要规划新建
	private java.math.BigDecimal gshu_liang;    //数量（个）
	private java.math.BigDecimal ggui_mo;    //用地规模（公顷）
	private java.sql.Date tijiao;    //提交时间
	private String beizhu;    //备注
	private String gcun;    //规划所在自然村
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Gg_fuwu(){
	}

	public Gg_fuwu(java.math.BigDecimal id){
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
	
	public String getMing_cheng() {
		return this.ming_cheng;
	}
	
	public void setMing_cheng(String value) {
		this.ming_cheng = value;
	}
	
	public String getLei_bie() {
		return this.lei_bie;
	}
	
	public void setLei_bie(String value) {
		this.lei_bie = value;
	}
	
	public java.math.BigDecimal getShu_liang() {
		return this.shu_liang;
	}
	
	public void setShu_liang(java.math.BigDecimal value) {
		this.shu_liang = value;
	}
	
	public java.math.BigDecimal getGui_mo() {
		return this.gui_mo;
	}
	
	public void setGui_mo(java.math.BigDecimal value) {
		this.gui_mo = value;
	}
	
	public String getGh_shifou() {
		return this.gh_shifou;
	}
	
	public void setGh_shifou(String value) {
		this.gh_shifou = value;
	}
	
	public java.math.BigDecimal getGshu_liang() {
		return this.gshu_liang;
	}
	
	public void setGshu_liang(java.math.BigDecimal value) {
		this.gshu_liang = value;
	}
	
	public java.math.BigDecimal getGgui_mo() {
		return this.ggui_mo;
	}
	
	public void setGgui_mo(java.math.BigDecimal value) {
		this.ggui_mo = value;
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
	
	public String getGcun() {
		return this.gcun;
	}
	
	public void setGcun(String value) {
		this.gcun = value;
	}
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("unit_id",getUnit_id())
			.append("year",getYear())
			.append("ming_cheng",getMing_cheng())
			.append("lei_bie",getLei_bie())
			.append("shu_liang",getShu_liang())
			.append("gui_mo",getGui_mo())
			.append("gh_shifou",getGh_shifou())
			.append("gshu_liang",getGshu_liang())
			.append("ggui_mo",getGgui_mo())
			.append("tijiao",getTijiao())
			.append("beizhu",getBeizhu())
			.append("gcun",getGcun())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUnit_id())
			.append(getYear())
			.append(getMing_cheng())
			.append(getLei_bie())
			.append(getShu_liang())
			.append(getGui_mo())
			.append(getGh_shifou())
			.append(getGshu_liang())
			.append(getGgui_mo())
			.append(getTijiao())
			.append(getBeizhu())
			.append(getGcun())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Gg_fuwu == false) return false;
		if(this == obj) return true;
		Gg_fuwu other = (Gg_fuwu)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getYear(),other.getYear())
			.append(getMing_cheng(),other.getMing_cheng())
			.append(getLei_bie(),other.getLei_bie())
			.append(getShu_liang(),other.getShu_liang())
			.append(getGui_mo(),other.getGui_mo())
			.append(getGh_shifou(),other.getGh_shifou())
			.append(getGshu_liang(),other.getGshu_liang())
			.append(getGgui_mo(),other.getGgui_mo())
			.append(getTijiao(),other.getTijiao())
			.append(getBeizhu(),other.getBeizhu())
			.append(getGcun(),other.getGcun())
			.isEquals();
	}
*/
}
