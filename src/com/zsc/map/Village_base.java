/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2015-3-12</p>
 * <p> @author ������</p>
 */
package com.zsc.map;

public class Village_base{
	

	//���ݿ�����ֶ�
	private String pro_id;    //��Ŀ���
	private String pro_name;    //��Ŀ����
	private String pro_content;    //��Ŀ����
	private String pro_scope;    //��Ŀ��ģ
	private java.math.BigDecimal pro_progress;    //��Ŀ����
	private java.sql.Date stime;    //���̿���ʱ��
	private java.sql.Date ftime;    //��������
	private String constructionperiod;    //��������
	private Integer id;    //id
	private String flag;    //�Ƿ񿢹�
	private Integer city;  //�������С�������������Id��unit_id��
	private String shudi;  //�������С�������������
	private Integer fid;  //��Ӧ���������Ϣ��id
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Village_base(){
	}

	
    //�������get/set����
	public String getPro_id() {
		return this.pro_id;
	}
	
	public void setPro_id(String value) {
		this.pro_id = value;
	}
	
	public String getPro_name() {
		return this.pro_name;
	}
	
	public void setPro_name(String value) {
		this.pro_name = value;
	}
	
	public String getPro_content() {
		return this.pro_content;
	}
	
	public void setPro_content(String value) {
		this.pro_content = value;
	}
	
	public String getPro_scope() {
		return this.pro_scope;
	}
	
	public void setPro_scope(String value) {
		this.pro_scope = value;
	}
	
	public java.math.BigDecimal getPro_progress() {
		return this.pro_progress;
	}
	
	public void setPro_progress(java.math.BigDecimal value) {
		this.pro_progress = value;
	}
	
	public java.sql.Date getStime() {
		return this.stime;
	}
	
	public void setStime(java.sql.Date value) {
		this.stime = value;
	}
	
	public java.sql.Date getFtime() {
		return this.ftime;
	}
	
	public void setFtime(java.sql.Date value) {
		this.ftime = value;
	}
	
	public String getConstructionperiod() {
		return this.constructionperiod;
	}
	
	public void setConstructionperiod(String value) {
		this.constructionperiod = value;
	}
	
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer value) {
		this.id = value;
	}


	public String getFlag() {
		return flag;
	}


	public void setFlag(String flag) {
		this.flag = flag;
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
			.append("pro_id",getPro_id())
			.append("pro_name",getPro_name())
			.append("pro_content",getPro_content())
			.append("pro_scope",getPro_scope())
			.append("pro_progress",getPro_progress())
			.append("stime",getStime())
			.append("ftime",getFtime())
			.append("constructionperiod",getConstructionperiod())
			.append("id",getId())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getPro_id())
			.append(getPro_name())
			.append(getPro_content())
			.append(getPro_scope())
			.append(getPro_progress())
			.append(getStime())
			.append(getFtime())
			.append(getConstructionperiod())
			.append(getId())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Village_base == false) return false;
		if(this == obj) return true;
		Village_base other = (Village_base)obj;
		return new EqualsBuilder()
			.append(getPro_id(),other.getPro_id())
			.append(getPro_name(),other.getPro_name())
			.append(getPro_content(),other.getPro_content())
			.append(getPro_scope(),other.getPro_scope())
			.append(getPro_progress(),other.getPro_progress())
			.append(getStime(),other.getStime())
			.append(getFtime(),other.getFtime())
			.append(getConstructionperiod(),other.getConstructionperiod())
			.append(getId(),other.getId())
			.isEquals();
	}
*/
}