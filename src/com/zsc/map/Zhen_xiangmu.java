/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2013-2-18</p>
 * <p> @author ������</p>
 */
package com.zsc.map;

import java.math.BigDecimal;

/**
 * ��ɫС����Ŀ���
 */
public class Zhen_xiangmu{
	

	//���ݿ�����ֶ�
	private Long id;    //����
	private Long unit_id;    //�ص�
	private String fen_lei;    //��Ŀ����
	private String ming_cheng;    //��Ŀ����
	private String xing_zhi;    //��������
	private String gui_mo;    //�����ģ
	private BigDecimal zong_touzi;    //��Ͷ�ʣ���Ԫ��
	private BigDecimal nian_xian;    //��������
	private String lei_bie;    //�����;��
	private BigDecimal yong_di;    //�õع�ģ
	private BigDecimal yongdi_nianxian;    //�õ�ʹ������
	private BigDecimal xinzeng_yongdi;    //���������õع�ģ
	private java.sql.Date input;    //���ʱ��
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Zhen_xiangmu(){
	}

	public Zhen_xiangmu(Long id){
		this.id = id;
	}

	
    //�������get/set����
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
	
	public String getFen_lei() {
		return this.fen_lei;
	}
	
	public void setFen_lei(String value) {
		this.fen_lei = value;
	}
	
	public String getMing_cheng() {
		return this.ming_cheng;
	}
	
	public void setMing_cheng(String value) {
		this.ming_cheng = value;
	}
	
	public String getXing_zhi() {
		return this.xing_zhi;
	}
	
	public void setXing_zhi(String value) {
		this.xing_zhi = value;
	}
	
	public String getGui_mo() {
		return this.gui_mo;
	}
	
	public void setGui_mo(String value) {
		this.gui_mo = value;
	}
	
	public BigDecimal getZong_touzi() {
		return this.zong_touzi;
	}
	
	public void setZong_touzi(BigDecimal value) {
		this.zong_touzi = value;
	}
	
	public BigDecimal getNian_xian() {
		return this.nian_xian;
	}
	
	public void setNian_xian(BigDecimal value) {
		this.nian_xian = value;
	}
	
	public String getLei_bie() {
		return this.lei_bie;
	}
	
	public void setLei_bie(String value) {
		this.lei_bie = value;
	}
	
	public BigDecimal getYong_di() {
		return this.yong_di;
	}
	
	public void setYong_di(BigDecimal value) {
		this.yong_di = value;
	}
	
	public BigDecimal getYongdi_nianxian() {
		return this.yongdi_nianxian;
	}
	
	public void setYongdi_nianxian(BigDecimal value) {
		this.yongdi_nianxian = value;
	}
	
	public BigDecimal getXinzeng_yongdi() {
		return this.xinzeng_yongdi;
	}
	
	public void setXinzeng_yongdi(BigDecimal value) {
		this.xinzeng_yongdi = value;
	}
	
	public java.sql.Date getInput() {
		return this.input;
	}
	
	public void setInput(java.sql.Date value) {
		this.input = value;
	}
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("unit_id",getUnit_id())
			.append("fen_lei",getFen_lei())
			.append("ming_cheng",getMing_cheng())
			.append("xing_zhi",getXing_zhi())
			.append("gui_mo",getGui_mo())
			.append("zong_touzi",getZong_touzi())
			.append("nian_xian",getNian_xian())
			.append("lei_bie",getLei_bie())
			.append("yong_di",getYong_di())
			.append("yongdi_nianxian",getYongdi_nianxian())
			.append("xinzeng_yongdi",getXinzeng_yongdi())
			.append("input",getInput())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUnit_id())
			.append(getFen_lei())
			.append(getMing_cheng())
			.append(getXing_zhi())
			.append(getGui_mo())
			.append(getZong_touzi())
			.append(getNian_xian())
			.append(getLei_bie())
			.append(getYong_di())
			.append(getYongdi_nianxian())
			.append(getXinzeng_yongdi())
			.append(getInput())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Zhen_xiangmu == false) return false;
		if(this == obj) return true;
		Zhen_xiangmu other = (Zhen_xiangmu)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getFen_lei(),other.getFen_lei())
			.append(getMing_cheng(),other.getMing_cheng())
			.append(getXing_zhi(),other.getXing_zhi())
			.append(getGui_mo(),other.getGui_mo())
			.append(getZong_touzi(),other.getZong_touzi())
			.append(getNian_xian(),other.getNian_xian())
			.append(getLei_bie(),other.getLei_bie())
			.append(getYong_di(),other.getYong_di())
			.append(getYongdi_nianxian(),other.getYongdi_nianxian())
			.append(getXinzeng_yongdi(),other.getXinzeng_yongdi())
			.append(getInput(),other.getInput())
			.isEquals();
	}
*/
}
