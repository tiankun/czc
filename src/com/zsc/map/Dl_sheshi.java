/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2012-11-21</p>
 * <p> @author ������</p>
 */
package com.zsc.map;
/**
 * ��·��ͨ��ʩ���
 */
public class Dl_sheshi{
	

	//���ݿ�����ֶ�
	private java.math.BigDecimal id;    //����
	private Long unit_id;    //��Ӧ�û�����
	private Long year;    //���
	private java.math.BigDecimal shu;    //����������
	private java.math.BigDecimal kuan;    //��ȣ��ף�
	private java.math.BigDecimal chang;    //���ȣ��ף�
	private java.math.BigDecimal gshu;    //�滮����������
	private java.math.BigDecimal gkuan;    //�滮��ȣ��ף�
	private java.math.BigDecimal gchang;    //�滮���ȣ��ף�
	private String gleixing;    //�滮·������
	private java.sql.Date tijiao;    //�ύʱ��
	private String beizhu;    //��ע
	private String dengji;    //��·�ȼ�
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Dl_sheshi(){
	}

	public Dl_sheshi(java.math.BigDecimal id){
		this.id = id;
	}

	
    //�������get/set����
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
