/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2013-10-16</p>
 * <p> @author ������</p>
 */
package com.zsc.map;

import java.sql.Timestamp;

public class Shiwu{
	

	//���ݿ�����ֶ�
	private Long id;    //����
	private Long unit_id;    //���뵥λ����
	private String status;    //���״̬
	private Long operator_xian;    //�ؼ�����������
	private Long operator_zhou;    //�ݼ�����������
	private String result_xian;    //�ؼ��������ͽ��
	private String result_zhou;    //�ݼ��������ͽ��
	private Timestamp cdate;    //¼��ʱ��
	private Timestamp mdate_xian;    //�ؼ����ʱ��
	private Timestamp mdate_zhou;    //�ݼ����ʱ��
	private String opname_xian;    //�ؼ����������
	private String opname_zhou;    //�ݼ����������
	private String opphone_xian;    //�ؼ�����˵绰
	private String opphone_zhou;    //�ݼ�����˵绰
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Shiwu(){
	}

	public Shiwu(Long id){
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
	
	public String getStatus() {
		return this.status;
	}
	
	public void setStatus(String value) {
		this.status = value;
	}
	
	public Timestamp getCdate() {
		return this.cdate;
	}
	
	public void setCdate(Timestamp value) {
		this.cdate = value;
	}

	public Long getOperator_xian() {
		return operator_xian;
	}

	public void setOperator_xian(Long operator_xian) {
		this.operator_xian = operator_xian;
	}

	public Long getOperator_zhou() {
		return operator_zhou;
	}

	public void setOperator_zhou(Long operator_zhou) {
		this.operator_zhou = operator_zhou;
	}

	public String getResult_xian() {
		return result_xian;
	}

	public void setResult_xian(String result_xian) {
		this.result_xian = result_xian;
	}

	public String getResult_zhou() {
		return result_zhou;
	}

	public void setResult_zhou(String result_zhou) {
		this.result_zhou = result_zhou;
	}

	public Timestamp getMdate_xian() {
		return mdate_xian;
	}

	public void setMdate_xian(Timestamp mdate_xian) {
		this.mdate_xian = mdate_xian;
	}

	public Timestamp getMdate_zhou() {
		return mdate_zhou;
	}

	public void setMdate_zhou(Timestamp mdate_zhou) {
		this.mdate_zhou = mdate_zhou;
	}

	public String getOpname_xian() {
		return opname_xian;
	}

	public void setOpname_xian(String opname_xian) {
		this.opname_xian = opname_xian;
	}

	public String getOpname_zhou() {
		return opname_zhou;
	}

	public void setOpname_zhou(String opname_zhou) {
		this.opname_zhou = opname_zhou;
	}

	public String getOpphone_xian() {
		return opphone_xian;
	}

	public void setOpphone_xian(String opphone_xian) {
		this.opphone_xian = opphone_xian;
	}

	public String getOpphone_zhou() {
		return opphone_zhou;
	}

	public void setOpphone_zhou(String opphone_zhou) {
		this.opphone_zhou = opphone_zhou;
	}
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("unit_id",getUnit_id())
			.append("status",getStatus())
			.append("result",getResult())
			.append("operator_id",getOperator_id())
			.append("operator_type",getOperator_type())
			.append("cdate",getCdate())
			.append("mdate",getMdate())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUnit_id())
			.append(getStatus())
			.append(getResult())
			.append(getOperator_id())
			.append(getOperator_type())
			.append(getCdate())
			.append(getMdate())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Shiwu == false) return false;
		if(this == obj) return true;
		Shiwu other = (Shiwu)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getStatus(),other.getStatus())
			.append(getResult(),other.getResult())
			.append(getOperator_id(),other.getOperator_id())
			.append(getOperator_type(),other.getOperator_type())
			.append(getCdate(),other.getCdate())
			.append(getMdate(),other.getMdate())
			.isEquals();
	}
*/
}
