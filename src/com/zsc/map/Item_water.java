/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author ������</p>
 */
package com.zsc.map;

public class Item_water{
	

	//���ݿ�����ֶ�
	private Long id;    //����
	private java.math.BigDecimal chang_gui;    //����ˮ������滮��ģ����������/�գ�
	private java.math.BigDecimal guan_gui;    //���׹����ܳ�(����)
	private String yaiji;    //���ʹ��ҩ��
	private String xiaodu;    //���ʹ��������
	private java.math.BigDecimal gs_qu;    //��ˮ���������ƽ�����
	private String gongyi;    //�����������̣�������_��_��_����
	private String yi_ming;    //ˮԴһ����
	private String yi_lei;    //ˮԴһ����
	private String yi_ji;    //ˮԴһ����
	private String er_ming;    //ˮԴ������
	private String er_lei;    //ˮԴ������
	private String er_ji;    //ˮԴ������
	private String san_ming;    //ˮԴ������
	private String san_lei;    //ˮԴ������
	private String san_ji;    //ˮԴ������
	private java.math.BigDecimal ss_qiu;    //��ˮ��ī�����ܣ����
	private java.math.BigDecimal ss_gang;    //��ˮ�ֹܣ����
	private java.math.BigDecimal ss_zhu;    //��ˮ�����ܣ����
	private java.math.BigDecimal ss_hun;    //��ˮԤӦ���ֽ�������ܣ����
	private java.math.BigDecimal ss_suliao;    //��ˮ���Ϲܣ����
	private java.math.BigDecimal ss_qita;    //��ˮ�����ܲģ����
	private java.math.BigDecimal ss_zong;    //��ˮ�ܵ����Ⱥϼƣ����
	private java.math.BigDecimal ps_qiu;    //����ˮ��ī�����ܣ����
	private java.math.BigDecimal ps_gang;    //����ˮ�ֹܣ����
	private java.math.BigDecimal ps_zhu;    //����ˮ�����ܣ����
	private java.math.BigDecimal ps_hun;    //����ˮԤӦ���ֽ�������ܣ����
	private java.math.BigDecimal ps_suliao;    //����ˮ���Ϲܣ����
	private java.math.BigDecimal ps_qita;    //����ˮ�����ܲģ����
	private java.math.BigDecimal ps_zong;    //����ˮ�ܵ����Ⱥϼƣ����
	private String remark;    //��ע
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Item_water(){
	}

	public Item_water(Long id){
		this.id = id;
	}

	
    //�������get/set����
	
	
	public java.math.BigDecimal getChang_gui() {
		return this.chang_gui;
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}


	public void setChang_gui(java.math.BigDecimal value) {
		this.chang_gui = value;
	}
	
	public java.math.BigDecimal getGuan_gui() {
		return this.guan_gui;
	}
	
	public void setGuan_gui(java.math.BigDecimal value) {
		this.guan_gui = value;
	}
	
	public String getYaiji() {
		return this.yaiji;
	}
	
	public void setYaiji(String value) {
		this.yaiji = value;
	}
	
	public String getXiaodu() {
		return this.xiaodu;
	}
	
	public void setXiaodu(String value) {
		this.xiaodu = value;
	}
	
	public java.math.BigDecimal getGs_qu() {
		return this.gs_qu;
	}
	
	public void setGs_qu(java.math.BigDecimal value) {
		this.gs_qu = value;
	}
	
	public String getGongyi() {
		return this.gongyi;
	}
	
	public void setGongyi(String value) {
		this.gongyi = value;
	}
	
	public String getYi_ming() {
		return this.yi_ming;
	}
	
	public void setYi_ming(String value) {
		this.yi_ming = value;
	}
	
	public String getYi_lei() {
		return this.yi_lei;
	}
	
	public void setYi_lei(String value) {
		this.yi_lei = value;
	}
	
	public String getYi_ji() {
		return this.yi_ji;
	}
	
	public void setYi_ji(String value) {
		this.yi_ji = value;
	}
	
	public String getEr_ming() {
		return this.er_ming;
	}
	
	public void setEr_ming(String value) {
		this.er_ming = value;
	}
	
	public String getEr_lei() {
		return this.er_lei;
	}
	
	public void setEr_lei(String value) {
		this.er_lei = value;
	}
	
	public String getEr_ji() {
		return this.er_ji;
	}
	
	public void setEr_ji(String value) {
		this.er_ji = value;
	}
	
	public String getSan_ming() {
		return this.san_ming;
	}
	
	public void setSan_ming(String value) {
		this.san_ming = value;
	}
	
	public String getSan_lei() {
		return this.san_lei;
	}
	
	public void setSan_lei(String value) {
		this.san_lei = value;
	}
	
	public String getSan_ji() {
		return this.san_ji;
	}
	
	public void setSan_ji(String value) {
		this.san_ji = value;
	}
	
	public java.math.BigDecimal getSs_qiu() {
		return this.ss_qiu;
	}
	
	public void setSs_qiu(java.math.BigDecimal value) {
		this.ss_qiu = value;
	}
	
	public java.math.BigDecimal getSs_gang() {
		return this.ss_gang;
	}
	
	public void setSs_gang(java.math.BigDecimal value) {
		this.ss_gang = value;
	}
	
	public java.math.BigDecimal getSs_zhu() {
		return this.ss_zhu;
	}
	
	public void setSs_zhu(java.math.BigDecimal value) {
		this.ss_zhu = value;
	}
	
	public java.math.BigDecimal getSs_hun() {
		return this.ss_hun;
	}
	
	public void setSs_hun(java.math.BigDecimal value) {
		this.ss_hun = value;
	}
	
	public java.math.BigDecimal getSs_suliao() {
		return this.ss_suliao;
	}
	
	public void setSs_suliao(java.math.BigDecimal value) {
		this.ss_suliao = value;
	}
	
	public java.math.BigDecimal getSs_qita() {
		return this.ss_qita;
	}
	
	public void setSs_qita(java.math.BigDecimal value) {
		this.ss_qita = value;
	}
	
	public java.math.BigDecimal getSs_zong() {
		return this.ss_zong;
	}
	
	public void setSs_zong(java.math.BigDecimal value) {
		this.ss_zong = value;
	}
	
	public java.math.BigDecimal getPs_qiu() {
		return this.ps_qiu;
	}
	
	public void setPs_qiu(java.math.BigDecimal value) {
		this.ps_qiu = value;
	}
	
	public java.math.BigDecimal getPs_gang() {
		return this.ps_gang;
	}
	
	public void setPs_gang(java.math.BigDecimal value) {
		this.ps_gang = value;
	}
	
	public java.math.BigDecimal getPs_zhu() {
		return this.ps_zhu;
	}
	
	public void setPs_zhu(java.math.BigDecimal value) {
		this.ps_zhu = value;
	}
	
	public java.math.BigDecimal getPs_hun() {
		return this.ps_hun;
	}
	
	public void setPs_hun(java.math.BigDecimal value) {
		this.ps_hun = value;
	}
	
	public java.math.BigDecimal getPs_suliao() {
		return this.ps_suliao;
	}
	
	public void setPs_suliao(java.math.BigDecimal value) {
		this.ps_suliao = value;
	}
	
	public java.math.BigDecimal getPs_qita() {
		return this.ps_qita;
	}
	
	public void setPs_qita(java.math.BigDecimal value) {
		this.ps_qita = value;
	}
	
	public java.math.BigDecimal getPs_zong() {
		return this.ps_zong;
	}
	
	public void setPs_zong(java.math.BigDecimal value) {
		this.ps_zong = value;
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
			.append("area",getArea())
			.append("item",getItem())
			.append("chang_gui",getChang_gui())
			.append("guan_gui",getGuan_gui())
			.append("yaiji",getYaiji())
			.append("xiaodu",getXiaodu())
			.append("gs_qu",getGs_qu())
			.append("gongyi",getGongyi())
			.append("yi_ming",getYi_ming())
			.append("yi_lei",getYi_lei())
			.append("yi_ji",getYi_ji())
			.append("er_ming",getEr_ming())
			.append("er_lei",getEr_lei())
			.append("er_ji",getEr_ji())
			.append("san_ming",getSan_ming())
			.append("san_lei",getSan_lei())
			.append("san_ji",getSan_ji())
			.append("ss_qiu",getSs_qiu())
			.append("ss_gang",getSs_gang())
			.append("ss_zhu",getSs_zhu())
			.append("ss_hun",getSs_hun())
			.append("ss_suliao",getSs_suliao())
			.append("ss_qita",getSs_qita())
			.append("ss_zong",getSs_zong())
			.append("ps_qiu",getPs_qiu())
			.append("ps_gang",getPs_gang())
			.append("ps_zhu",getPs_zhu())
			.append("ps_hun",getPs_hun())
			.append("ps_suliao",getPs_suliao())
			.append("ps_qita",getPs_qita())
			.append("ps_zong",getPs_zong())
			.append("remark",getRemark())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getArea())
			.append(getItem())
			.append(getChang_gui())
			.append(getGuan_gui())
			.append(getYaiji())
			.append(getXiaodu())
			.append(getGs_qu())
			.append(getGongyi())
			.append(getYi_ming())
			.append(getYi_lei())
			.append(getYi_ji())
			.append(getEr_ming())
			.append(getEr_lei())
			.append(getEr_ji())
			.append(getSan_ming())
			.append(getSan_lei())
			.append(getSan_ji())
			.append(getSs_qiu())
			.append(getSs_gang())
			.append(getSs_zhu())
			.append(getSs_hun())
			.append(getSs_suliao())
			.append(getSs_qita())
			.append(getSs_zong())
			.append(getPs_qiu())
			.append(getPs_gang())
			.append(getPs_zhu())
			.append(getPs_hun())
			.append(getPs_suliao())
			.append(getPs_qita())
			.append(getPs_zong())
			.append(getRemark())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Item_water == false) return false;
		if(this == obj) return true;
		Item_water other = (Item_water)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getArea(),other.getArea())
			.append(getItem(),other.getItem())
			.append(getChang_gui(),other.getChang_gui())
			.append(getGuan_gui(),other.getGuan_gui())
			.append(getYaiji(),other.getYaiji())
			.append(getXiaodu(),other.getXiaodu())
			.append(getGs_qu(),other.getGs_qu())
			.append(getGongyi(),other.getGongyi())
			.append(getYi_ming(),other.getYi_ming())
			.append(getYi_lei(),other.getYi_lei())
			.append(getYi_ji(),other.getYi_ji())
			.append(getEr_ming(),other.getEr_ming())
			.append(getEr_lei(),other.getEr_lei())
			.append(getEr_ji(),other.getEr_ji())
			.append(getSan_ming(),other.getSan_ming())
			.append(getSan_lei(),other.getSan_lei())
			.append(getSan_ji(),other.getSan_ji())
			.append(getSs_qiu(),other.getSs_qiu())
			.append(getSs_gang(),other.getSs_gang())
			.append(getSs_zhu(),other.getSs_zhu())
			.append(getSs_hun(),other.getSs_hun())
			.append(getSs_suliao(),other.getSs_suliao())
			.append(getSs_qita(),other.getSs_qita())
			.append(getSs_zong(),other.getSs_zong())
			.append(getPs_qiu(),other.getPs_qiu())
			.append(getPs_gang(),other.getPs_gang())
			.append(getPs_zhu(),other.getPs_zhu())
			.append(getPs_hun(),other.getPs_hun())
			.append(getPs_suliao(),other.getPs_suliao())
			.append(getPs_qita(),other.getPs_qita())
			.append(getPs_zong(),other.getPs_zong())
			.append(getRemark(),other.getRemark())
			.isEquals();
	}
*/
}
