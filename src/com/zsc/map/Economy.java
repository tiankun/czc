/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2011-5-18</p>
 * <p> @author ������</p>
 */
package com.zsc.map;

import java.math.BigDecimal;

public class Economy{
	

	//���ݿ�����ֶ�
	private Integer id;    //����
	private Integer unit_id;    //��Ӧ�û�����
	private Integer year;    //���
	private BigDecimal zong_ren;    //���˿ڣ����ˣ�
	private BigDecimal nong;    //ũҵ�˿ڣ����ˣ�
	private BigDecimal nong_hu;    //ũ�������򻧣�
	private BigDecimal lao_dong;    //ũ���Ͷ��������ˣ�
	private BigDecimal zong_mianj;    //���������ƽ�����
	private BigDecimal geng_di;    //�����������ƽ�����
	private BigDecimal zong_shengc;    //ȫ��������ֵ����Ԫ��
	private BigDecimal jingj_zong;    //ũ�徭�������루��Ԫ��
	private BigDecimal nongm_jun;    //ũ���˾������루Ԫ��
	private BigDecimal yi;    //��һ��ҵ��ֵ����Ԫ��
	private BigDecimal er;    //�ڶ���ҵ��ֵ����Ԫ��
	private BigDecimal san;    //������ҵ��ֵ����Ԫ��
	private BigDecimal zhu_ren;    //��������פ�ؽ��������˿ڣ����ˣ�
	private BigDecimal zhu_mian;    //��������פ�ؽ��������������ƽ�����
	private BigDecimal zhu_xin;    //��������פ�ؽ����������˿ڣ����ˣ�
	private BigDecimal zhu_zhuan;    //����ת�Ƶ������ط��˿ڣ����ˣ�
	private String zhi_neng;    //ְ������
	private String tese;    //�Ƿ�����210����ɫС��
	private String tese_zhineng;    //��ɫС��ְ������
	private String di_xing;    //����ռ�λ�õ���
	private String te_shu;    //����ռ�λ���������򣨿ɶ�ѡ��
	private String kong_jian;    //����ռ��ϵ
	private String remark;    //��ע
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Economy(){
	}

	public Economy(Integer id){
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
	
	public BigDecimal getZong_ren() {
		return this.zong_ren;
	}
	
	public void setZong_ren(BigDecimal value) {
		this.zong_ren = value;
	}
	
	public BigDecimal getNong() {
		return this.nong;
	}
	
	public void setNong(BigDecimal value) {
		this.nong = value;
	}
	
	public BigDecimal getNong_hu() {
		return this.nong_hu;
	}
	
	public void setNong_hu(BigDecimal value) {
		this.nong_hu = value;
	}
	
	public BigDecimal getLao_dong() {
		return this.lao_dong;
	}
	
	public void setLao_dong(BigDecimal value) {
		this.lao_dong = value;
	}
	
	public BigDecimal getZong_mianj() {
		return this.zong_mianj;
	}
	
	public void setZong_mianj(BigDecimal value) {
		this.zong_mianj = value;
	}
	
	public BigDecimal getGeng_di() {
		return this.geng_di;
	}
	
	public void setGeng_di(BigDecimal value) {
		this.geng_di = value;
	}
	
	public BigDecimal getZong_shengc() {
		return this.zong_shengc;
	}
	
	public void setZong_shengc(BigDecimal value) {
		this.zong_shengc = value;
	}
	
	public BigDecimal getJingj_zong() {
		return this.jingj_zong;
	}
	
	public void setJingj_zong(BigDecimal value) {
		this.jingj_zong = value;
	}
	
	public BigDecimal getNongm_jun() {
		return this.nongm_jun;
	}
	
	public void setNongm_jun(BigDecimal value) {
		this.nongm_jun = value;
	}
	
	public BigDecimal getYi() {
		return this.yi;
	}
	
	public void setYi(BigDecimal value) {
		this.yi = value;
	}
	
	public BigDecimal getEr() {
		return this.er;
	}
	
	public void setEr(BigDecimal value) {
		this.er = value;
	}
	
	public BigDecimal getSan() {
		return this.san;
	}
	
	public void setSan(BigDecimal value) {
		this.san = value;
	}
	
	public BigDecimal getZhu_ren() {
		return this.zhu_ren;
	}
	
	public void setZhu_ren(BigDecimal value) {
		this.zhu_ren = value;
	}
	
	public BigDecimal getZhu_mian() {
		return this.zhu_mian;
	}
	
	public void setZhu_mian(BigDecimal value) {
		this.zhu_mian = value;
	}
	
	public BigDecimal getZhu_xin() {
		return this.zhu_xin;
	}
	
	public void setZhu_xin(BigDecimal value) {
		this.zhu_xin = value;
	}
	
	public BigDecimal getZhu_zhuan() {
		return this.zhu_zhuan;
	}
	
	public void setZhu_zhuan(BigDecimal value) {
		this.zhu_zhuan = value;
	}
	
	public String getZhi_neng() {
		return this.zhi_neng;
	}
	
	public void setZhi_neng(String value) {
		this.zhi_neng = value;
	}
	
	public String getTese() {
		return this.tese;
	}
	
	public void setTese(String value) {
		this.tese = value;
	}
	
	public String getTese_zhineng() {
		return this.tese_zhineng;
	}
	
	public void setTese_zhineng(String value) {
		this.tese_zhineng = value;
	}
	
	public String getDi_xing() {
		return this.di_xing;
	}
	
	public void setDi_xing(String value) {
		this.di_xing = value;
	}
	
	public String getTe_shu() {
		return this.te_shu;
	}
	
	public void setTe_shu(String value) {
		this.te_shu = value;
	}
	
	public String getKong_jian() {
		return this.kong_jian;
	}
	
	public void setKong_jian(String value) {
		this.kong_jian = value;
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
			.append("zong_ren",getZong_ren())
			.append("nong",getNong())
			.append("nong_hu",getNong_hu())
			.append("lao_dong",getLao_dong())
			.append("zong_mianj",getZong_mianj())
			.append("geng_di",getGeng_di())
			.append("zong_shengc",getZong_shengc())
			.append("jingj_zong",getJingj_zong())
			.append("nongm_jun",getNongm_jun())
			.append("yi",getYi())
			.append("er",getEr())
			.append("san",getSan())
			.append("zhu_ren",getZhu_ren())
			.append("zhu_mian",getZhu_mian())
			.append("zhu_xin",getZhu_xin())
			.append("zhu_zhuan",getZhu_zhuan())
			.append("zhi_neng",getZhi_neng())
			.append("tese",getTese())
			.append("tese_zhineng",getTese_zhineng())
			.append("di_xing",getDi_xing())
			.append("te_shu",getTe_shu())
			.append("kong_jian",getKong_jian())
			.append("remark",getRemark())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUnit_id())
			.append(getYear())
			.append(getZong_ren())
			.append(getNong())
			.append(getNong_hu())
			.append(getLao_dong())
			.append(getZong_mianj())
			.append(getGeng_di())
			.append(getZong_shengc())
			.append(getJingj_zong())
			.append(getNongm_jun())
			.append(getYi())
			.append(getEr())
			.append(getSan())
			.append(getZhu_ren())
			.append(getZhu_mian())
			.append(getZhu_xin())
			.append(getZhu_zhuan())
			.append(getZhi_neng())
			.append(getTese())
			.append(getTese_zhineng())
			.append(getDi_xing())
			.append(getTe_shu())
			.append(getKong_jian())
			.append(getRemark())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Economy == false) return false;
		if(this == obj) return true;
		Economy other = (Economy)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getYear(),other.getYear())
			.append(getZong_ren(),other.getZong_ren())
			.append(getNong(),other.getNong())
			.append(getNong_hu(),other.getNong_hu())
			.append(getLao_dong(),other.getLao_dong())
			.append(getZong_mianj(),other.getZong_mianj())
			.append(getGeng_di(),other.getGeng_di())
			.append(getZong_shengc(),other.getZong_shengc())
			.append(getJingj_zong(),other.getJingj_zong())
			.append(getNongm_jun(),other.getNongm_jun())
			.append(getYi(),other.getYi())
			.append(getEr(),other.getEr())
			.append(getSan(),other.getSan())
			.append(getZhu_ren(),other.getZhu_ren())
			.append(getZhu_mian(),other.getZhu_mian())
			.append(getZhu_xin(),other.getZhu_xin())
			.append(getZhu_zhuan(),other.getZhu_zhuan())
			.append(getZhi_neng(),other.getZhi_neng())
			.append(getTese(),other.getTese())
			.append(getTese_zhineng(),other.getTese_zhineng())
			.append(getDi_xing(),other.getDi_xing())
			.append(getTe_shu(),other.getTe_shu())
			.append(getKong_jian(),other.getKong_jian())
			.append(getRemark(),other.getRemark())
			.isEquals();
	}
*/
}
