/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2012-11-21</p>
 * <p> @author ������</p>
 */
package com.zsc.map;
/**
 * �˿����õ����
 */
public class Ren_di{
	

	//���ݿ�����ֶ�
	private java.math.BigDecimal id;    //����
	private Long unit_id;    //��Ӧ�û�����
	private Long year;    //���
	private java.math.BigDecimal cz_zhandi;    //��ׯռ�������Ķ��
	private java.math.BigDecimal cz_guihua;    //��ׯ�滮����Χ��Ķ��
	private java.math.BigDecimal js_yongdi;    //�����õأ�Ķ��
	private java.math.BigDecimal gd_mianji;    //���������Ķ��
	private java.math.BigDecimal nongtian;    //����ũ�������Ķ��
	private java.math.BigDecimal gy_tudi;    //�������������Ķ��
	private java.math.BigDecimal jt_tudi;    //�������������Ķ��
	private java.math.BigDecimal bq_bili;    //������ռ������%��
	private java.math.BigDecimal sq_bili;    //ɽ����ռ������%��
	private java.math.BigDecimal gh_xzdi;    //�滮���������õأ�Ķ��
	private java.math.BigDecimal gh_xzhu;    //�滮��������������
	private String dimao;    //��ò����
	private java.math.BigDecimal renkou;    //ũ�����˿ڣ��ˣ�
	private java.math.BigDecimal hushu;    //ũ���ܻ���������
	private java.math.BigDecimal huji;    //�����˿ڣ��ˣ�
	private java.math.BigDecimal changzhu;    //��ס�˿ڣ��ˣ�
	private java.math.BigDecimal ny_renkou;    //ũҵ�˿ڣ��ˣ�
	private java.math.BigDecimal fny_renkou;    //��ũҵ�˿ڣ��ˣ�
	private java.math.BigDecimal nm_renkou;    //��ĩ�Ͷ����������ˣ�
	private String zy_minzu;    //��Ҫ����
	private java.math.BigDecimal ssmz_bili;    //��������ռ���˿ڱ�����%��
	private String tese;    //��ɫ��λ
	private java.sql.Date tijiao;    //�ύʱ��
	private String beizhu;    //��ע
	private java.math.BigDecimal cy_mianji;    //���������(ƽ������)
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Ren_di(){
	}

	public Ren_di(java.math.BigDecimal id){
		this.id = id;
	}

	
    //�������get/set����
	public void setId(java.math.BigDecimal value) {
		this.id = value;
	}
	public java.math.BigDecimal getId() {
		return this.id;
	}
	public Long getUnit_id() {
		return this.unit_id;
	}
	
	public void setUnit_id(Long value) {
		this.unit_id = value;
	}
	
	public Long getYear() {
		return this.year;
	}
	
	public void setYear(Long value) {
		this.year = value;
	}
	
	public java.math.BigDecimal getCz_zhandi() {
		return this.cz_zhandi;
	}
	
	public void setCz_zhandi(java.math.BigDecimal value) {
		this.cz_zhandi = value;
	}
	
	public java.math.BigDecimal getCz_guihua() {
		return this.cz_guihua;
	}
	
	public void setCz_guihua(java.math.BigDecimal value) {
		this.cz_guihua = value;
	}
	
	public java.math.BigDecimal getJs_yongdi() {
		return this.js_yongdi;
	}
	
	public void setJs_yongdi(java.math.BigDecimal value) {
		this.js_yongdi = value;
	}
	
	public java.math.BigDecimal getGd_mianji() {
		return this.gd_mianji;
	}
	
	public void setGd_mianji(java.math.BigDecimal value) {
		this.gd_mianji = value;
	}
	
	public java.math.BigDecimal getNongtian() {
		return this.nongtian;
	}
	
	public void setNongtian(java.math.BigDecimal value) {
		this.nongtian = value;
	}
	
	public java.math.BigDecimal getGy_tudi() {
		return this.gy_tudi;
	}
	
	public void setGy_tudi(java.math.BigDecimal value) {
		this.gy_tudi = value;
	}
	
	public java.math.BigDecimal getJt_tudi() {
		return this.jt_tudi;
	}
	
	public void setJt_tudi(java.math.BigDecimal value) {
		this.jt_tudi = value;
	}
	
	public java.math.BigDecimal getBq_bili() {
		return this.bq_bili;
	}
	
	public void setBq_bili(java.math.BigDecimal value) {
		this.bq_bili = value;
	}
	
	public java.math.BigDecimal getSq_bili() {
		return this.sq_bili;
	}
	
	public void setSq_bili(java.math.BigDecimal value) {
		this.sq_bili = value;
	}
	
	public java.math.BigDecimal getGh_xzdi() {
		return this.gh_xzdi;
	}
	
	public void setGh_xzdi(java.math.BigDecimal value) {
		this.gh_xzdi = value;
	}
	
	public java.math.BigDecimal getGh_xzhu() {
		return this.gh_xzhu;
	}
	
	public void setGh_xzhu(java.math.BigDecimal value) {
		this.gh_xzhu = value;
	}
	
	public String getDimao() {
		return this.dimao;
	}
	
	public void setDimao(String value) {
		this.dimao = value;
	}
	
	public java.math.BigDecimal getRenkou() {
		return this.renkou;
	}
	
	public void setRenkou(java.math.BigDecimal value) {
		this.renkou = value;
	}
	
	public java.math.BigDecimal getHushu() {
		return this.hushu;
	}
	
	public void setHushu(java.math.BigDecimal value) {
		this.hushu = value;
	}
	
	public java.math.BigDecimal getHuji() {
		return this.huji;
	}
	
	public void setHuji(java.math.BigDecimal value) {
		this.huji = value;
	}
	
	public java.math.BigDecimal getChangzhu() {
		return this.changzhu;
	}
	
	public void setChangzhu(java.math.BigDecimal value) {
		this.changzhu = value;
	}
	
	public java.math.BigDecimal getNy_renkou() {
		return this.ny_renkou;
	}
	
	public void setNy_renkou(java.math.BigDecimal value) {
		this.ny_renkou = value;
	}
	
	public java.math.BigDecimal getFny_renkou() {
		return this.fny_renkou;
	}
	
	public void setFny_renkou(java.math.BigDecimal value) {
		this.fny_renkou = value;
	}
	
	public java.math.BigDecimal getNm_renkou() {
		return this.nm_renkou;
	}
	
	public void setNm_renkou(java.math.BigDecimal value) {
		this.nm_renkou = value;
	}
	
	public String getZy_minzu() {
		return this.zy_minzu;
	}
	
	public void setZy_minzu(String value) {
		this.zy_minzu = value;
	}
	
	public java.math.BigDecimal getSsmz_bili() {
		return this.ssmz_bili;
	}
	
	public void setSsmz_bili(java.math.BigDecimal value) {
		this.ssmz_bili = value;
	}
	
	public String getTese() {
		return this.tese;
	}
	
	public void setTese(String value) {
		this.tese = value;
	}
	
	public java.sql.Date getTijiao() {
		return this.tijiao;
	}
	
	public void setTijiao(java.sql.Date value) {
		this.tijiao = value;
	}
	
	public String getBeizhu() {
		return this.beizhu;
	}
	
	public void setBeizhu(String value) {
		this.beizhu = value;
	}
	
	public java.math.BigDecimal getCy_mianji() {
		return this.cy_mianji;
	}
	
	public void setCy_mianji(java.math.BigDecimal value) {
		this.cy_mianji = value;
	}
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("unit_id",getUnit_id())
			.append("year",getYear())
			.append("cz_zhandi",getCz_zhandi())
			.append("cz_guihua",getCz_guihua())
			.append("js_yongdi",getJs_yongdi())
			.append("gd_mianji",getGd_mianji())
			.append("nongtian",getNongtian())
			.append("gy_tudi",getGy_tudi())
			.append("jt_tudi",getJt_tudi())
			.append("bq_bili",getBq_bili())
			.append("sq_bili",getSq_bili())
			.append("gh_xzdi",getGh_xzdi())
			.append("gh_xzhu",getGh_xzhu())
			.append("dimao",getDimao())
			.append("renkou",getRenkou())
			.append("hushu",getHushu())
			.append("huji",getHuji())
			.append("changzhu",getChangzhu())
			.append("ny_renkou",getNy_renkou())
			.append("fny_renkou",getFny_renkou())
			.append("nm_renkou",getNm_renkou())
			.append("zy_minzu",getZy_minzu())
			.append("ssmz_bili",getSsmz_bili())
			.append("tese",getTese())
			.append("tijiao",getTijiao())
			.append("beizhu",getBeizhu())
			.append("cy_mianji",getCy_mianji())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUnit_id())
			.append(getYear())
			.append(getCz_zhandi())
			.append(getCz_guihua())
			.append(getJs_yongdi())
			.append(getGd_mianji())
			.append(getNongtian())
			.append(getGy_tudi())
			.append(getJt_tudi())
			.append(getBq_bili())
			.append(getSq_bili())
			.append(getGh_xzdi())
			.append(getGh_xzhu())
			.append(getDimao())
			.append(getRenkou())
			.append(getHushu())
			.append(getHuji())
			.append(getChangzhu())
			.append(getNy_renkou())
			.append(getFny_renkou())
			.append(getNm_renkou())
			.append(getZy_minzu())
			.append(getSsmz_bili())
			.append(getTese())
			.append(getTijiao())
			.append(getBeizhu())
			.append(getCy_mianji())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Ren_di == false) return false;
		if(this == obj) return true;
		Ren_di other = (Ren_di)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getYear(),other.getYear())
			.append(getCz_zhandi(),other.getCz_zhandi())
			.append(getCz_guihua(),other.getCz_guihua())
			.append(getJs_yongdi(),other.getJs_yongdi())
			.append(getGd_mianji(),other.getGd_mianji())
			.append(getNongtian(),other.getNongtian())
			.append(getGy_tudi(),other.getGy_tudi())
			.append(getJt_tudi(),other.getJt_tudi())
			.append(getBq_bili(),other.getBq_bili())
			.append(getSq_bili(),other.getSq_bili())
			.append(getGh_xzdi(),other.getGh_xzdi())
			.append(getGh_xzhu(),other.getGh_xzhu())
			.append(getDimao(),other.getDimao())
			.append(getRenkou(),other.getRenkou())
			.append(getHushu(),other.getHushu())
			.append(getHuji(),other.getHuji())
			.append(getChangzhu(),other.getChangzhu())
			.append(getNy_renkou(),other.getNy_renkou())
			.append(getFny_renkou(),other.getFny_renkou())
			.append(getNm_renkou(),other.getNm_renkou())
			.append(getZy_minzu(),other.getZy_minzu())
			.append(getSsmz_bili(),other.getSsmz_bili())
			.append(getTese(),other.getTese())
			.append(getTijiao(),other.getTijiao())
			.append(getBeizhu(),other.getBeizhu())
			.append(getCy_mianji(),other.getCy_mianji())
			.isEquals();
	}
*/
}
