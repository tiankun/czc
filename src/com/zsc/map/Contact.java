/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2011-5-18</p>
 * <p> @author ������</p>
 */
package com.zsc.map;

public class Contact{
	

	//���ݿ�����ֶ�
	private Integer id;    //����
	private Integer unit_id;    //��Ӧ�û�����
	private Integer year;    //���
	private String name;    //��ص�λ����
	private String ling_dao;    //�쵼
	private String lian_xi;    //��ϵ��
	private String lianx_dianhua;    //��ϵ�绰
	private String fax;    //����
	private String di_zhi;    //��ϵ��ַ
	private Integer you_bian;    //�ʱ�
	private String email;    //�ʼ���ַ
	private String remark;    //��ע
	private String lx_type;    //��ϵ������
    //���ݿ�����ֶ� END

    /**
	 * @return the lx_type
	 */
	public String getLx_type() {
		return lx_type;
	}

	/**
	 * @param lx_type the lx_type to set
	 */
	public void setLx_type(String lx_type) {
		this.lx_type = lx_type;
	}

	/**
     * ���캯��
     */
	public Contact(){
	}

	public Contact(Integer id){
		this.id = id;
	}

	
    //�������get/set����
	public void setId(Integer value) {
		this.id = value;
	}
	public Integer getId() {
		return this.id;
	}
	public Integer getUnit_id() {
		return this.unit_id;
	}
	
	public void setUnit_id(Integer value) {
		this.unit_id = value;
	}
	
	public Integer getYear() {
		return this.year;
	}
	
	public void setYear(Integer value) {
		this.year = value;
	}
	
	public String getName() {
		return this.name;
	}
	
	public void setName(String value) {
		this.name = value;
	}
	
	public String getLing_dao() {
		return this.ling_dao;
	}
	
	public void setLing_dao(String value) {
		this.ling_dao = value;
	}
	
	public String getLian_xi() {
		return this.lian_xi;
	}
	
	public void setLian_xi(String value) {
		this.lian_xi = value;
	}
	
	public String getLianx_dianhua() {
		return this.lianx_dianhua;
	}
	
	public void setLianx_dianhua(String value) {
		this.lianx_dianhua = value;
	}
	
	public String getFax() {
		return this.fax;
	}
	
	public void setFax(String value) {
		this.fax = value;
	}
	
	public String getDi_zhi() {
		return this.di_zhi;
	}
	
	public void setDi_zhi(String value) {
		this.di_zhi = value;
	}
	
	public Integer getYou_bian() {
		return this.you_bian;
	}
	
	public void setYou_bian(Integer value) {
		this.you_bian = value;
	}
	
	public String getEmail() {
		return this.email;
	}
	
	public void setEmail(String value) {
		this.email = value;
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
			.append("unit_id",getUnit_id())
			.append("year",getYear())
			.append("name",getName())
			.append("ling_dao",getLing_dao())
			.append("lian_xi",getLian_xi())
			.append("lianx_dianhua",getLianx_dianhua())
			.append("fax",getFax())
			.append("di_zhi",getDi_zhi())
			.append("you_bian",getYou_bian())
			.append("email",getEmail())
			.append("remark",getRemark())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUnit_id())
			.append(getYear())
			.append(getName())
			.append(getLing_dao())
			.append(getLian_xi())
			.append(getLianx_dianhua())
			.append(getFax())
			.append(getDi_zhi())
			.append(getYou_bian())
			.append(getEmail())
			.append(getRemark())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Contact == false) return false;
		if(this == obj) return true;
		Contact other = (Contact)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getYear(),other.getYear())
			.append(getName(),other.getName())
			.append(getLing_dao(),other.getLing_dao())
			.append(getLian_xi(),other.getLian_xi())
			.append(getLianx_dianhua(),other.getLianx_dianhua())
			.append(getFax(),other.getFax())
			.append(getDi_zhi(),other.getDi_zhi())
			.append(getYou_bian(),other.getYou_bian())
			.append(getEmail(),other.getEmail())
			.append(getRemark(),other.getRemark())
			.isEquals();
	}
*/
}
