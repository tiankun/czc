/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2008-11-19</p>
 * <p> @author ������</p>
 */
package com.zsc.map;

public class Popedom{
	

	//���ݿ�����ֶ�
	private java.math.BigDecimal id;    //����
	private java.lang.String name;    //Ȩ����
	private java.lang.String path;    //����·��
	private java.math.BigDecimal father;    //���ڵ�
	private java.lang.String target;    //Ŀ��
	private java.math.BigDecimal type;    //Ȩ������
	private java.lang.String check_up;    //�Ƿ���Ҫ��֤
	private java.math.BigDecimal view_group;    //�����ʾ
	private java.lang.String remark;    //��ע
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Popedom(){
	}

	public Popedom(java.math.BigDecimal id){
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
	
	public java.lang.String getPath() {
		return this.path;
	}
	
	public void setPath(java.lang.String value) {
		this.path = value;
	}
	
	public java.math.BigDecimal getFather() {
		return this.father;
	}
	
	public void setFather(java.math.BigDecimal value) {
		this.father = value;
	}
	
	public java.lang.String getTarget() {
		return this.target;
	}
	
	public void setTarget(java.lang.String value) {
		this.target = value;
	}
	
	public java.math.BigDecimal getType() {
		return this.type;
	}
	
	public void setType(java.math.BigDecimal value) {
		this.type = value;
	}
	
	public java.lang.String getCheck_up() {
		return this.check_up;
	}
	
	public void setCheck_up(java.lang.String value) {
		this.check_up = value;
	}
	
	public java.math.BigDecimal getView_group() {
		return this.view_group;
	}
	
	public void setView_group(java.math.BigDecimal value) {
		this.view_group = value;
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
			.append("path",getPath())
			.append("father",getFather())
			.append("target",getTarget())
			.append("type",getType())
			.append("check_up",getCheck_up())
			.append("view_group",getView_group())
			.append("remark",getRemark())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getName())
			.append(getPath())
			.append(getFather())
			.append(getTarget())
			.append(getType())
			.append(getCheck_up())
			.append(getView_group())
			.append(getRemark())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Popedom == false) return false;
		if(this == obj) return true;
		Popedom other = (Popedom)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getName(),other.getName())
			.append(getPath(),other.getPath())
			.append(getFather(),other.getFather())
			.append(getTarget(),other.getTarget())
			.append(getType(),other.getType())
			.append(getCheck_up(),other.getCheck_up())
			.append(getView_group(),other.getView_group())
			.append(getRemark(),other.getRemark())
			.isEquals();
	}
*/
}
