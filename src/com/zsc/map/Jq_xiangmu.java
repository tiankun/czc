/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2012-11-21</p>
 * <p> @author ������</p>
 */
package com.zsc.map;
/**
 * ���ڽ�����Ŀ���
 */
public class Jq_xiangmu{
	

	//���ݿ�����ֶ�
	private Long id;    //����
	private Long unit_id;    //��Ӧ�û�����
	private Long year;    //���
	private String ming_cheng;    //��Ŀ����
	private java.math.BigDecimal nian_xian;    //����
	private String gui_mo;    //��ģ
	private java.math.BigDecimal tou_zi;    //�ƻ�Ͷ�ʽ���Ԫ��
	private java.sql.Date tijiao;    //�ύʱ��
	private String beizhu;    //��ע
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Jq_xiangmu(){
	}

	public Jq_xiangmu(Long id){
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
