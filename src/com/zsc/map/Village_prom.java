/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2015-3-12</p>
 * <p> @author ������</p>
 */
package com.zsc.map;

public class Village_prom{
	

	//���ݿ�����ֶ�
	private java.math.BigDecimal total_vest;    //��Ͷ��
	private java.math.BigDecimal total_use;    //�ܵ�λ�ʽ�
	private java.math.BigDecimal county_supple;    //���Ҳ���
	private java.math.BigDecimal county_supple_use;    //���Ҳ�����λ�ʽ�
	private java.math.BigDecimal province_supple;    //ʡ������
	private java.math.BigDecimal province_supple_use;    //ʡ��������λ�ʽ�
	private java.math.BigDecimal place_supple;    //�ط�����
	private java.math.BigDecimal place_supple_use;    //�ط����׵�λ�ʽ�
	private java.math.BigDecimal self;    //�Գ�
	private java.math.BigDecimal self_use;    //�Գﵽλ�ʽ�
	private java.math.BigDecimal id;    //id
	private Integer city;  //�������С�������������Id��unit_id��
	private String shudi;  //�������С�������������
	private Integer fid;  //��Ӧ���������Ϣ��id
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Village_prom(){
	}

	
    //�������get/set����
	public java.math.BigDecimal getTotal_vest() {
		return this.total_vest;
	}
	
	public void setTotal_vest(java.math.BigDecimal value) {
		this.total_vest = value;
	}
	
	public java.math.BigDecimal getTotal_use() {
		return this.total_use;
	}
	
	public void setTotal_use(java.math.BigDecimal value) {
		this.total_use = value;
	}
	
	public java.math.BigDecimal getCounty_supple() {
		return this.county_supple;
	}
	
	public void setCounty_supple(java.math.BigDecimal value) {
		this.county_supple = value;
	}
	
	public java.math.BigDecimal getCounty_supple_use() {
		return this.county_supple_use;
	}
	
	public void setCounty_supple_use(java.math.BigDecimal value) {
		this.county_supple_use = value;
	}
	
	public java.math.BigDecimal getProvince_supple() {
		return this.province_supple;
	}
	
	public void setProvince_supple(java.math.BigDecimal value) {
		this.province_supple = value;
	}
	
	public java.math.BigDecimal getProvince_supple_use() {
		return this.province_supple_use;
	}
	
	public void setProvince_supple_use(java.math.BigDecimal value) {
		this.province_supple_use = value;
	}
	
	public java.math.BigDecimal getPlace_supple() {
		return this.place_supple;
	}
	
	public void setPlace_supple(java.math.BigDecimal value) {
		this.place_supple = value;
	}
	
	public java.math.BigDecimal getPlace_supple_use() {
		return this.place_supple_use;
	}
	
	public void setPlace_supple_use(java.math.BigDecimal value) {
		this.place_supple_use = value;
	}
	
	public java.math.BigDecimal getSelf() {
		return this.self;
	}
	
	public void setSelf(java.math.BigDecimal value) {
		this.self = value;
	}
	
	public java.math.BigDecimal getSelf_use() {
		return this.self_use;
	}
	
	public void setSelf_use(java.math.BigDecimal value) {
		this.self_use = value;
	}
	
	public java.math.BigDecimal getId() {
		return this.id;
	}
	
	public void setId(java.math.BigDecimal value) {
		this.id = value;
	}


	public Integer getCity() {
		return city;
	}


	public void setCity(Integer city) {
		this.city = city;
	}


	public String getShudi() {
		return shudi;
	}


	public void setShudi(String shudi) {
		this.shudi = shudi;
	}


	public Integer getFid() {
		return fid;
	}


	public void setFid(Integer fid) {
		this.fid = fid;
	}
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("total_vest",getTotal_vest())
			.append("total_use",getTotal_use())
			.append("county_supple",getCounty_supple())
			.append("county_supple_use",getCounty_supple_use())
			.append("province_supple",getProvince_supple())
			.append("province_supple_use",getProvince_supple_use())
			.append("place_supple",getPlace_supple())
			.append("place_supple_use",getPlace_supple_use())
			.append("self",getSelf())
			.append("self_use",getSelf_use())
			.append("id",getId())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getTotal_vest())
			.append(getTotal_use())
			.append(getCounty_supple())
			.append(getCounty_supple_use())
			.append(getProvince_supple())
			.append(getProvince_supple_use())
			.append(getPlace_supple())
			.append(getPlace_supple_use())
			.append(getSelf())
			.append(getSelf_use())
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Village_prom == false) return false;
		if(this == obj) return true;
		Village_prom other = (Village_prom)obj;
		return new EqualsBuilder()
			.append(getTotal_vest(),other.getTotal_vest())
			.append(getTotal_use(),other.getTotal_use())
			.append(getCounty_supple(),other.getCounty_supple())
			.append(getCounty_supple_use(),other.getCounty_supple_use())
			.append(getProvince_supple(),other.getProvince_supple())
			.append(getProvince_supple_use(),other.getProvince_supple_use())
			.append(getPlace_supple(),other.getPlace_supple())
			.append(getPlace_supple_use(),other.getPlace_supple_use())
			.append(getSelf(),other.getSelf())
			.append(getSelf_use(),other.getSelf_use())
			.append(getId(),other.getId())
			.isEquals();
	}
*/
}
