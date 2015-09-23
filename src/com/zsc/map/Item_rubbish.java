/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;

public class Item_rubbish{
	

	//数据库相关字段
	private Long id;    //主键
	private java.math.BigDecimal ljc_guimo;    //垃圾处理厂设计总规模（吨/日）
	private java.math.BigDecimal bq_guimo;    //其中：本期建设规划（吨/日）
	private java.math.BigDecimal zz_guimo;    //中转站设计规模（吨/日）
	private String lj_chuli;    //垃圾处理方式
	private String lj_youji;    //垃圾成分中含有机物（%）
	private String lj_wuji;    //垃圾成分中含无机物（%）
	private String lj_shui;    //垃圾成分中含水率（%）
	private String fangsen;    //防渗措施
	private String sl_cuoshi;    //渗滤液处理措施
	private String sl_paifang;    //渗滤液设计排放标准
	private String sj_cod;    //实际排放水质COD含量（mg/L）
	private String sj_bod5;    //实际排放水质BOD5含量（mg/L）
	private String sj_ad;    //实际排放水质氨氮含量（mg/L）
	private String sj_ss;    //实际排放水质SS含量（mg/L）
	private String sl_liang;    //渗滤液产生量（吨/日）
	private String remark;    //备注
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Item_rubbish(){
	}

	public Item_rubbish(Long id){
		this.id = id;
	}

	
    //相关属性get/set方法
	
	public java.math.BigDecimal getLjc_guimo() {
		return this.ljc_guimo;
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}


	public void setLjc_guimo(java.math.BigDecimal value) {
		this.ljc_guimo = value;
	}
	
	public java.math.BigDecimal getBq_guimo() {
		return this.bq_guimo;
	}
	
	public void setBq_guimo(java.math.BigDecimal value) {
		this.bq_guimo = value;
	}
	
	public java.math.BigDecimal getZz_guimo() {
		return this.zz_guimo;
	}
	
	public void setZz_guimo(java.math.BigDecimal value) {
		this.zz_guimo = value;
	}
	
	public String getLj_chuli() {
		return this.lj_chuli;
	}
	
	public void setLj_chuli(String value) {
		this.lj_chuli = value;
	}
	
	public String getLj_youji() {
		return this.lj_youji;
	}
	
	public void setLj_youji(String value) {
		this.lj_youji = value;
	}
	
	public String getLj_wuji() {
		return this.lj_wuji;
	}
	
	public void setLj_wuji(String value) {
		this.lj_wuji = value;
	}
	
	public String getLj_shui() {
		return this.lj_shui;
	}
	
	public void setLj_shui(String value) {
		this.lj_shui = value;
	}
	
	public String getFangsen() {
		return this.fangsen;
	}
	
	public void setFangsen(String value) {
		this.fangsen = value;
	}
	
	public String getSl_cuoshi() {
		return this.sl_cuoshi;
	}
	
	public void setSl_cuoshi(String value) {
		this.sl_cuoshi = value;
	}
	
	public String getSl_paifang() {
		return this.sl_paifang;
	}
	
	public void setSl_paifang(String value) {
		this.sl_paifang = value;
	}
	
	public String getSj_cod() {
		return this.sj_cod;
	}
	
	public void setSj_cod(String value) {
		this.sj_cod = value;
	}
	
	public String getSj_bod5() {
		return this.sj_bod5;
	}
	
	public void setSj_bod5(String value) {
		this.sj_bod5 = value;
	}
	
	public String getSj_ad() {
		return this.sj_ad;
	}
	
	public void setSj_ad(String value) {
		this.sj_ad = value;
	}
	
	public String getSj_ss() {
		return this.sj_ss;
	}
	
	public void setSj_ss(String value) {
		this.sj_ss = value;
	}
	
	public String getSl_liang() {
		return this.sl_liang;
	}
	
	public void setSl_liang(String value) {
		this.sl_liang = value;
	}
	
	public String getRemark() {
		return this.remark;
	}
	
	public void setRemark(String value) {
		this.remark = value;
	}
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("item",getItem())
			.append("ljc_guimo",getLjc_guimo())
			.append("bq_guimo",getBq_guimo())
			.append("zz_guimo",getZz_guimo())
			.append("lj_chuli",getLj_chuli())
			.append("lj_youji",getLj_youji())
			.append("lj_wuji",getLj_wuji())
			.append("lj_shui",getLj_shui())
			.append("fangsen",getFangsen())
			.append("sl_cuoshi",getSl_cuoshi())
			.append("sl_paifang",getSl_paifang())
			.append("sj_cod",getSj_cod())
			.append("sj_bod5",getSj_bod5())
			.append("sj_ad",getSj_ad())
			.append("sj_ss",getSj_ss())
			.append("sl_liang",getSl_liang())
			.append("remark",getRemark())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getItem())
			.append(getLjc_guimo())
			.append(getBq_guimo())
			.append(getZz_guimo())
			.append(getLj_chuli())
			.append(getLj_youji())
			.append(getLj_wuji())
			.append(getLj_shui())
			.append(getFangsen())
			.append(getSl_cuoshi())
			.append(getSl_paifang())
			.append(getSj_cod())
			.append(getSj_bod5())
			.append(getSj_ad())
			.append(getSj_ss())
			.append(getSl_liang())
			.append(getRemark())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Item_rubbish == false) return false;
		if(this == obj) return true;
		Item_rubbish other = (Item_rubbish)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getItem(),other.getItem())
			.append(getLjc_guimo(),other.getLjc_guimo())
			.append(getBq_guimo(),other.getBq_guimo())
			.append(getZz_guimo(),other.getZz_guimo())
			.append(getLj_chuli(),other.getLj_chuli())
			.append(getLj_youji(),other.getLj_youji())
			.append(getLj_wuji(),other.getLj_wuji())
			.append(getLj_shui(),other.getLj_shui())
			.append(getFangsen(),other.getFangsen())
			.append(getSl_cuoshi(),other.getSl_cuoshi())
			.append(getSl_paifang(),other.getSl_paifang())
			.append(getSj_cod(),other.getSj_cod())
			.append(getSj_bod5(),other.getSj_bod5())
			.append(getSj_ad(),other.getSj_ad())
			.append(getSj_ss(),other.getSj_ss())
			.append(getSl_liang(),other.getSl_liang())
			.append(getRemark(),other.getRemark())
			.isEquals();
	}
*/
}
