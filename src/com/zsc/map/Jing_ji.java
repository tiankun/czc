/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2012-11-21</p>
 * <p> @author ������</p>
 */
package com.zsc.map;
/**
 * ���÷�չ���
 */
public class Jing_ji{
	

	//���ݿ�����ֶ�
	private java.math.BigDecimal id;    //����
	private Long unit_id;    //��Ӧ�û�����
	private Long year;    //���
	private java.math.BigDecimal nian_shouru;    //�弶������
	private java.math.BigDecimal rj_shouru;    //ũ���˾�������
	private java.math.BigDecimal cj_zongchanzhi;    //�弶�ܲ�ֵ
	private java.math.BigDecimal dy_chanzhi;    //��һ��ҵ�ܲ�ֵ
	private java.math.BigDecimal de_chanzhi;    //�ڶ���ҵ�ܲ�ֵ
	private java.math.BigDecimal ds_chanzhi;    //������ҵ�ܲ�ֵ
	private String zhu_chanye;    //��ֵ�ϸߵ�2-3����Ҫ��ҵ
	private String tese_chanpin;    //��ɫ��Ʒ
	private java.math.BigDecimal qiye_shu;    //������ҵ����
	private java.math.BigDecimal qiye_chanzbhi;    //������ҵ�ܲ�ֵ
	private java.sql.Date tijiao;    //�ύʱ��
	private String beizhu;    //��ע
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Jing_ji(){
	}

	public Jing_ji(java.math.BigDecimal id){
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
	
	public java.math.BigDecimal getNian_shouru() {
		return this.nian_shouru;
	}
	
	public void setNian_shouru(java.math.BigDecimal value) {
		this.nian_shouru = value;
	}
	
	public java.math.BigDecimal getRj_shouru() {
		return this.rj_shouru;
	}
	
	public void setRj_shouru(java.math.BigDecimal value) {
		this.rj_shouru = value;
	}
	
	public java.math.BigDecimal getCj_zongchanzhi() {
		return this.cj_zongchanzhi;
	}
	
	public void setCj_zongchanzhi(java.math.BigDecimal value) {
		this.cj_zongchanzhi = value;
	}
	
	public java.math.BigDecimal getDy_chanzhi() {
		return this.dy_chanzhi;
	}
	
	public void setDy_chanzhi(java.math.BigDecimal value) {
		this.dy_chanzhi = value;
	}
	
	public java.math.BigDecimal getDe_chanzhi() {
		return this.de_chanzhi;
	}
	
	public void setDe_chanzhi(java.math.BigDecimal value) {
		this.de_chanzhi = value;
	}
	
	public java.math.BigDecimal getDs_chanzhi() {
		return this.ds_chanzhi;
	}
	
	public void setDs_chanzhi(java.math.BigDecimal value) {
		this.ds_chanzhi = value;
	}
	
	public String getZhu_chanye() {
		return this.zhu_chanye;
	}
	
	public void setZhu_chanye(String value) {
		this.zhu_chanye = value;
	}
	
	public String getTese_chanpin() {
		return this.tese_chanpin;
	}
	
	public void setTese_chanpin(String value) {
		this.tese_chanpin = value;
	}
	
	public java.math.BigDecimal getQiye_shu() {
		return this.qiye_shu;
	}
	
	public void setQiye_shu(java.math.BigDecimal value) {
		this.qiye_shu = value;
	}
	
	public java.math.BigDecimal getQiye_chanzbhi() {
		return this.qiye_chanzbhi;
	}
	
	public void setQiye_chanzbhi(java.math.BigDecimal value) {
		this.qiye_chanzbhi = value;
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
			.append("nian_shouru",getNian_shouru())
			.append("rj_shouru",getRj_shouru())
			.append("cj_zongchanzhi",getCj_zongchanzhi())
			.append("dy_chanzhi",getDy_chanzhi())
			.append("de_chanzhi",getDe_chanzhi())
			.append("ds_chanzhi",getDs_chanzhi())
			.append("zhu_chanye",getZhu_chanye())
			.append("tese_chanpin",getTese_chanpin())
			.append("qiye_shu",getQiye_shu())
			.append("qiye_chanzbhi",getQiye_chanzbhi())
			.append("tijiao",getTijiao())
			.append("beizhu",getBeizhu())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUnit_id())
			.append(getYear())
			.append(getNian_shouru())
			.append(getRj_shouru())
			.append(getCj_zongchanzhi())
			.append(getDy_chanzhi())
			.append(getDe_chanzhi())
			.append(getDs_chanzhi())
			.append(getZhu_chanye())
			.append(getTese_chanpin())
			.append(getQiye_shu())
			.append(getQiye_chanzbhi())
			.append(getTijiao())
			.append(getBeizhu())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Jing_ji == false) return false;
		if(this == obj) return true;
		Jing_ji other = (Jing_ji)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getYear(),other.getYear())
			.append(getNian_shouru(),other.getNian_shouru())
			.append(getRj_shouru(),other.getRj_shouru())
			.append(getCj_zongchanzhi(),other.getCj_zongchanzhi())
			.append(getDy_chanzhi(),other.getDy_chanzhi())
			.append(getDe_chanzhi(),other.getDe_chanzhi())
			.append(getDs_chanzhi(),other.getDs_chanzhi())
			.append(getZhu_chanye(),other.getZhu_chanye())
			.append(getTese_chanpin(),other.getTese_chanpin())
			.append(getQiye_shu(),other.getQiye_shu())
			.append(getQiye_chanzbhi(),other.getQiye_chanzbhi())
			.append(getTijiao(),other.getTijiao())
			.append(getBeizhu(),other.getBeizhu())
			.isEquals();
	}
*/
}
