/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2013-10-9</p>
 * <p> @author ������</p>
 */
package com.zsc.map;

public class Gs_file{
	

	//���ݿ�����ֶ�
	private Long id;    //����
	private Long type;    //���ͣ�1��������2���Ž�����
	private Long gs_id;    //�������Ž�������
	private String path;    //�ļ����λ��
	private String leixing;    //ͼƬ����
	private String shuoming;    //ͼƬ˵��
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Gs_file(){
	}

	public Gs_file(Long id){
		this.id = id;
	}

	
    //�������get/set����
	public void setId(Long value) {
		this.id = value;
	}
	public Long getId() {
		return this.id;
	}
	public Long getType() {
		return this.type;
	}
	
	public void setType(Long value) {
		this.type = value;
	}
	
	public Long getGs_id() {
		return this.gs_id;
	}
	
	public void setGs_id(Long value) {
		this.gs_id = value;
	}
	
	public String getPath() {
		return this.path;
	}
	
	public void setPath(String value) {
		this.path = value;
	}
	
	public String getLeixing() {
		return this.leixing;
	}
	
	public void setLeixing(String value) {
		this.leixing = value;
	}
	
	public String getShuoming() {
		return this.shuoming;
	}
	
	public void setShuoming(String value) {
		this.shuoming = value;
	}
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("type",getType())
			.append("gs_id",getGs_id())
			.append("path",getPath())
			.append("leixing",getLeixing())
			.append("shuoming",getShuoming())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getType())
			.append(getGs_id())
			.append(getPath())
			.append(getLeixing())
			.append(getShuoming())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Gs_file == false) return false;
		if(this == obj) return true;
		Gs_file other = (Gs_file)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getType(),other.getType())
			.append(getGs_id(),other.getGs_id())
			.append(getPath(),other.getPath())
			.append(getLeixing(),other.getLeixing())
			.append(getShuoming(),other.getShuoming())
			.isEquals();
	}
*/
}
