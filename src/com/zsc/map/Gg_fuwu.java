/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2012-11-21</p>
 * <p> @author ������</p>
 */
package com.zsc.map;
/**
 * ����������ʩ���
 */
public class Gg_fuwu{
	

	//���ݿ�����ֶ�
	private java.math.BigDecimal id;    //����
	private Long unit_id;    //��Ӧ�û�����
	private Long year;    //���
	private String ming_cheng;    //��ʩ����
	private String lei_bie;    //���
	private java.math.BigDecimal shu_liang;    //����������
	private java.math.BigDecimal gui_mo;    //��ģ�����꣩
	private String gh_shifou;    //�Ƿ���Ҫ�滮�½�
	private java.math.BigDecimal gshu_liang;    //����������
	private java.math.BigDecimal ggui_mo;    //�õع�ģ�����꣩
	private java.sql.Date tijiao;    //�ύʱ��
	private String beizhu;    //��ע
	private String gcun;    //�滮������Ȼ��
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Gg_fuwu(){
	}

	public Gg_fuwu(java.math.BigDecimal id){
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
