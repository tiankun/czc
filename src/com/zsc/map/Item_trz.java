/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author ������</p>
 */
package com.zsc.map;

import java.math.BigDecimal;

public class Item_trz{
	

	//���ݿ�����ֶ�
	private Long id;    //����
	private Long item;    //��Ŀ
	private String tz_shang;    //Ͷ����
	private String xingzhi;    //����
	private String kaizhan;    //��չͶ����ʱ��
	private String hezuo;    //������ʽ
	private String fanwei;    //��Ӫ��Χ
	private BigDecimal bili;    //Ͷ���̳��ʱ�����%��
	private String hetong;    //�Ƿ�ǩ��Э���ͬ
	private String jinzhan;    //��չ���
	private String wenti;    //���ڵ�����
	private String remark;    //��ע
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Item_trz(){
	}

	public Item_trz(Long id){
		this.id = id;
	}

	
    //�������get/set����
	public void setId(Long value) {
		this.id = value;
	}
	public Long getId() {
		return this.id;
	}
	public Long getItem() {
		return this.item;
	}
	
	public void setItem(Long value) {
		this.item = value;
	}
	
	public String getTz_shang() {
		return this.tz_shang;
	}
	
	public void setTz_shang(String value) {
		this.tz_shang = value;
	}
	
	public String getXingzhi() {
		return this.xingzhi;
	}
	
	public void setXingzhi(String value) {
		this.xingzhi = value;
	}
	
	public String getKaizhan() {
		return this.kaizhan;
	}
	
	public void setKaizhan(String value) {
		this.kaizhan = value;
	}
	
	public String getHezuo() {
		return this.hezuo;
	}
	
	public void setHezuo(String value) {
		this.hezuo = value;
	}
	
	public String getFanwei() {
		return this.fanwei;
	}
	
	public void setFanwei(String value) {
		this.fanwei = value;
	}
	
	public java.math.BigDecimal getBili() {
		return this.bili;
	}
	
	public void setBili(java.math.BigDecimal value) {
		this.bili = value;
	}
	
	public String getHetong() {
		return this.hetong;
	}
	
	public void setHetong(String value) {
		this.hetong = value;
	}
	
	public String getJinzhan() {
		return this.jinzhan;
	}
	
	public void setJinzhan(String value) {
		this.jinzhan = value;
	}
	
	public String getWenti() {
		return this.wenti;
	}
	
	public void setWenti(String value) {
		this.wenti = value;
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
			.append("tz_shang",getTz_shang())
			.append("xingzhi",getXingzhi())
			.append("kaizhan",getKaizhan())
			.append("hezuo",getHezuo())
			.append("fanwei",getFanwei())
			.append("bili",getBili())
			.append("hetong",getHetong())
			.append("jinzhan",getJinzhan())
			.append("wenti",getWenti())
			.append("remark",getRemark())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getItem())
			.append(getTz_shang())
			.append(getXingzhi())
			.append(getKaizhan())
			.append(getHezuo())
			.append(getFanwei())
			.append(getBili())
			.append(getHetong())
			.append(getJinzhan())
			.append(getWenti())
			.append(getRemark())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Item_trz == false) return false;
		if(this == obj) return true;
		Item_trz other = (Item_trz)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getItem(),other.getItem())
			.append(getTz_shang(),other.getTz_shang())
			.append(getXingzhi(),other.getXingzhi())
			.append(getKaizhan(),other.getKaizhan())
			.append(getHezuo(),other.getHezuo())
			.append(getFanwei(),other.getFanwei())
			.append(getBili(),other.getBili())
			.append(getHetong(),other.getHetong())
			.append(getJinzhan(),other.getJinzhan())
			.append(getWenti(),other.getWenti())
			.append(getRemark(),other.getRemark())
			.isEquals();
	}
*/
}
