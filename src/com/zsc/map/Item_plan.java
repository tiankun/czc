/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author ������</p>
 */
package com.zsc.map;

public class Item_plan{
	

	//���ݿ�����ֶ�
	private Long id;    //����
	private Long item;    //��Ŀ
	private String jie_duan;    //�׶�����
	private String kaishi;    //��ʼʱ��
	private String remark;    //˵��
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Item_plan(){
	}

	public Item_plan(Long id){
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
	
	public String getJie_duan() {
		return this.jie_duan;
	}
	
	public void setJie_duan(String value) {
		this.jie_duan = value;
	}
	
	public String getKaishi() {
		return this.kaishi;
	}
	
	public void setKaishi(String value) {
		this.kaishi = value;
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
			.append("jie_duan",getJie_duan())
			.append("kaishi",getKaishi())
			.append("remark",getRemark())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getItem())
			.append(getJie_duan())
			.append(getKaishi())
			.append(getRemark())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Item_plan == false) return false;
		if(this == obj) return true;
		Item_plan other = (Item_plan)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getItem(),other.getItem())
			.append(getJie_duan(),other.getJie_duan())
			.append(getKaishi(),other.getKaishi())
			.append(getRemark(),other.getRemark())
			.isEquals();
	}
*/
}
