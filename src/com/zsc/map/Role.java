/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2008-11-19</p>
 * <p> @author ������</p>
 */
package com.zsc.map;

public class Role{
	

	//���ݿ�����ֶ�
	private java.math.BigDecimal id;    //����
	private java.lang.String name;    //��ɫ����
	private java.lang.String remark;    //��ע
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Role(){
	}

	public Role(java.math.BigDecimal id){
		this.id = id;
	}

	
    //�������get/set����
	public void setId(java.math.BigDecimal value) {
		this.id = value;
	}
	public java.math.BigDecimal getId() {
		return this.id;
	}
	public java.lang.String getName() {
		return this.name;
	}
	
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getRemark() {
		return this.remark;
	}
	
	public void setRemark(java.lang.String value) {
		this.remark = value;
	}
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("name",getName())
			.append("remark",getRemark())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getName())
			.append(getRemark())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Role == false) return false;
		if(this == obj) return true;
		Role other = (Role)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getName(),other.getName())
			.append(getRemark(),other.getRemark())
			.isEquals();
	}
*/
}
