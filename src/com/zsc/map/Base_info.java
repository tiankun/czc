/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2011-5-18</p>
 * <p> @author ������</p>
 */
package com.zsc.map;

public class Base_info{
	

	//���ݿ�����ֶ�
	private Integer id;    //����(ֱ�ӹҽ��û�����)
	@com.zsc.util.Type(value ="CLOB")
	private String jie_shao;    //���
	private String lei_xing;    //����
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Base_info(){
	}

	public Base_info(Integer id){
		this.id = id;
	}

	
    //�������get/set����
	public void setId(Integer value) {
		this.id = value;
	}
	public Integer getId() {
		return this.id;
	}
	public String getJie_shao() {
		return this.jie_shao;
	}
	
	public void setJie_shao(String value) {
		this.jie_shao = value;
	}
	
	public String getLei_xing() {
		return this.lei_xing;
	}
	
	public void setLei_xing(String value) {
		this.lei_xing = value;
	}
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("jie_shao",getJie_shao())
			.append("lei_xing",getLei_xing())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getJie_shao())
			.append(getLei_xing())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Base_info == false) return false;
		if(this == obj) return true;
		Base_info other = (Base_info)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getJie_shao(),other.getJie_shao())
			.append(getLei_xing(),other.getLei_xing())
			.isEquals();
	}
*/
}
