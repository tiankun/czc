/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2014-2-18</p>
 * <p> @author ������</p>
 */
package com.zsc.map;

public class Nitem_yue{
	

	//���ݿ�����ֶ�
	private Long id;    //����ID
	private Long item_id;    //T_NITEM_WATER\T_NITEM_SEWAGA\T_NITEM_RUBBISH   ��ID
	private Long type;    //��ˮ����ˮ�������ֱ�Ϊ1��2��3
	private java.sql.Date create_date;    //�����
	private String jindu;    //��Ŀ�������
	private java.math.BigDecimal dao_zijin;    //������ʵ�ʵ�λ�ʽ�
	private java.math.BigDecimal zhong_zijin;    //�����ʽ���
	private java.sql.Date zhong_date;    //�����ʽ���-��λʱ��
	private java.math.BigDecimal sheng_zijin;    //ʡ���ʽ���
	private java.sql.Date sheng_date;    //ʡ���ʽ���-��λʱ��
	private java.math.BigDecimal shi_zijin;    //�����ʽ���
	private java.sql.Date shi_date;    //�����ʽ���-��λʱ��
	private java.math.BigDecimal xian_zijin;    //�ؼ��ʽ���
	private java.sql.Date xian_date;    //�ؼ��ʽ���-��λʱ��
	private java.math.BigDecimal zi_zijin;    //�Գ��ʽ�
	private java.sql.Date zi_date;    //�Գ��ʽ�-��λʱ��
	private java.math.BigDecimal zeng_guan;    //���¶ȹ������ӳ���
	private String wenti;    //������Ҫ����
	private String yijian;    //�������
	private String plan;    //���½���ƻ�
	private Long year;    //�±����
	private Long month;    //�±��·�
	private String statu;    //���״̬(1:���ڣ�2��δ����)
	private java.sql.Date pz_date;    //���ʱ��
	private String pz_yijian;    //������
	private Long operater;    //�����
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Nitem_yue(){
	}

	public Nitem_yue(Long id){
		this.id = id;
	}

	
    //�������get/set����
	public java.sql.Date getCreate_date() {
		return this.create_date;
	}
	
	public void setCreate_date(java.sql.Date value) {
		this.create_date = value;
	}
	
	public String getJindu() {
		return this.jindu;
	}
	
	public java.sql.Date getPz_date() {
		return pz_date;
	}

	public void setPz_date(java.sql.Date pzDate) {
		pz_date = pzDate;
	}

	public String getPz_yijian() {
		return pz_yijian;
	}

	public void setPz_yijian(String pzYijian) {
		pz_yijian = pzYijian;
	}

	public void setJindu(String value) {
		this.jindu = value;
	}
	
	public java.sql.Date getZhong_date() {
		return zhong_date;
	}

	public void setZhong_date(java.sql.Date zhongDate) {
		zhong_date = zhongDate;
	}

	public java.sql.Date getSheng_date() {
		return sheng_date;
	}

	public void setSheng_date(java.sql.Date shengDate) {
		sheng_date = shengDate;
	}

	public java.sql.Date getShi_date() {
		return shi_date;
	}

	public void setShi_date(java.sql.Date shiDate) {
		shi_date = shiDate;
	}

	public java.sql.Date getXian_date() {
		return xian_date;
	}

	public void setXian_date(java.sql.Date xianDate) {
		xian_date = xianDate;
	}

	public java.sql.Date getZi_date() {
		return zi_date;
	}

	public void setZi_date(java.sql.Date ziDate) {
		zi_date = ziDate;
	}

	public java.math.BigDecimal getDao_zijin() {
		return this.dao_zijin;
	}
	
	public void setDao_zijin(java.math.BigDecimal value) {
		this.dao_zijin = value;
	}
	
	public java.math.BigDecimal getZhong_zijin() {
		return this.zhong_zijin;
	}
	
	public void setZhong_zijin(java.math.BigDecimal value) {
		this.zhong_zijin = value;
	}
	
	public java.math.BigDecimal getSheng_zijin() {
		return this.sheng_zijin;
	}
	
	public void setSheng_zijin(java.math.BigDecimal value) {
		this.sheng_zijin = value;
	}
	
	public java.math.BigDecimal getShi_zijin() {
		return this.shi_zijin;
	}
	
	public void setShi_zijin(java.math.BigDecimal value) {
		this.shi_zijin = value;
	}
	
	public java.math.BigDecimal getXian_zijin() {
		return this.xian_zijin;
	}
	
	public void setXian_zijin(java.math.BigDecimal value) {
		this.xian_zijin = value;
	}
	
	public java.math.BigDecimal getZi_zijin() {
		return this.zi_zijin;
	}
	
	public void setZi_zijin(java.math.BigDecimal value) {
		this.zi_zijin = value;
	}
	
	public java.math.BigDecimal getZeng_guan() {
		return this.zeng_guan;
	}
	
	public void setZeng_guan(java.math.BigDecimal value) {
		this.zeng_guan = value;
	}
	
	public String getWenti() {
		return this.wenti;
	}
	
	public void setWenti(String value) {
		this.wenti = value;
	}
	
	public String getYijian() {
		return this.yijian;
	}
	
	public void setYijian(String value) {
		this.yijian = value;
	}
	
	public String getPlan() {
		return this.plan;
	}
	
	public void setPlan(String value) {
		this.plan = value;
	}
	
	
	public String getStatu() {
		return this.statu;
	}
	
	public void setStatu(String value) {
		this.statu = value;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getItem_id() {
		return item_id;
	}

	public void setItem_id(Long itemId) {
		item_id = itemId;
	}

	public Long getType() {
		return type;
	}

	public void setType(Long type) {
		this.type = type;
	}

	public Long getYear() {
		return year;
	}

	public void setYear(Long year) {
		this.year = year;
	}

	public Long getMonth() {
		return month;
	}

	public void setMonth(Long month) {
		this.month = month;
	}

	public Long getOperater() {
		return operater;
	}

	public void setOperater(Long operater) {
		this.operater = operater;
	}
	
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("item_id",getItem_id())
			.append("type",getType())
			.append("create_date",getCreate_date())
			.append("jindu",getJindu())
			.append("dao_zijin",getDao_zijin())
			.append("zhong_zijin",getZhong_zijin())
			.append("sheng_zijin",getSheng_zijin())
			.append("shi_zijin",getShi_zijin())
			.append("xian_zijin",getXian_zijin())
			.append("zi_zijin",getZi_zijin())
			.append("zeng_guan",getZeng_guan())
			.append("wenti",getWenti())
			.append("yijian",getYijian())
			.append("plan",getPlan())
			.append("year",getYear())
			.append("month",getMonth())
			.append("statu",getStatu())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getItem_id())
			.append(getType())
			.append(getCreate_date())
			.append(getJindu())
			.append(getDao_zijin())
			.append(getZhong_zijin())
			.append(getSheng_zijin())
			.append(getShi_zijin())
			.append(getXian_zijin())
			.append(getZi_zijin())
			.append(getZeng_guan())
			.append(getWenti())
			.append(getYijian())
			.append(getPlan())
			.append(getYear())
			.append(getMonth())
			.append(getStatu())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Nitem_yue == false) return false;
		if(this == obj) return true;
		Nitem_yue other = (Nitem_yue)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getItem_id(),other.getItem_id())
			.append(getType(),other.getType())
			.append(getCreate_date(),other.getCreate_date())
			.append(getJindu(),other.getJindu())
			.append(getDao_zijin(),other.getDao_zijin())
			.append(getZhong_zijin(),other.getZhong_zijin())
			.append(getSheng_zijin(),other.getSheng_zijin())
			.append(getShi_zijin(),other.getShi_zijin())
			.append(getXian_zijin(),other.getXian_zijin())
			.append(getZi_zijin(),other.getZi_zijin())
			.append(getZeng_guan(),other.getZeng_guan())
			.append(getWenti(),other.getWenti())
			.append(getYijian(),other.getYijian())
			.append(getPlan(),other.getPlan())
			.append(getYear(),other.getYear())
			.append(getMonth(),other.getMonth())
			.append(getStatu(),other.getStatu())
			.isEquals();
	}
*/
}
