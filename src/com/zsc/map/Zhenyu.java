/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2013-2-18</p>
 * <p> @author ������</p>
 */
package com.zsc.map;

import java.math.BigDecimal;

/**
 * ��ɫС��������Ϣ
 */
public class Zhenyu{
	

	//���ݿ�����ֶ�
	private Long id;    //����
	private Long unit_id;    //�ص�
	private Long year;    //���
	private BigDecimal zhen_yu;    //�������˿ڣ�	���ˣ�
	private BigDecimal cheng_zhen;    //�����˿�	�����ˣ�
	private BigDecimal chengz_hua;    //����ˮƽ��	%��
	private BigDecimal nong_ye;    //ũҵ�˿�	����
	private BigDecimal fei_nong;    //��ũҵ�˿�	����
	private BigDecimal zheny_mianji;    //���������	k�O
	private BigDecimal gengdi_mianji;    //�������	k�O
	private BigDecimal jb_nongtian;    //����ũ�����	k�O
	private BigDecimal sl_mianji;    //�ֵ����	k�O
	private BigDecimal gdp;    //GDP����	��Ԫ
	private BigDecimal dy_chanye;    //��һ��ҵ�ܲ�ֵ	��Ԫ
	private BigDecimal de_chanye;    //�ڶ���ҵ�ܲ�ֵ	��Ԫ
	private BigDecimal ds_chanye;    //������ҵ�ܲ�ֵ	��Ԫ
	private BigDecimal zy_fuyu;    //ת��ũ�帻���Ͷ���	��
	private BigDecimal fn_jiuye;    //��ũ��ҵ������ҵ��λ	��
	private BigDecimal rj_shouru;    //�˾���֧���������ˮƽ	Ԫ
	private BigDecimal cun_zhuang;    //��ׯ����	��
	private BigDecimal td_cunzhuang;    //�ش��ׯ	��
	private BigDecimal dx_cunzhuang;    //���ʹ�ׯ	��
	private BigDecimal zx_cunzhuang;    //���ʹ�ׯ	��
	private BigDecimal xx_cunzhuang;    //С�ʹ�ׯ	��
	private BigDecimal sl_fugai;    //ɭ�ָ�����	%
	private java.sql.Date input;    //�ʱ��
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Zhenyu(){
	}

	public Zhenyu(Long id){
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
	
	public Long getYear() {
		return this.year;
	}
	
	public void setYear(Long value) {
		this.year = value;
	}
	
	public BigDecimal getZhen_yu() {
		return this.zhen_yu;
	}
	
	public void setZhen_yu(BigDecimal value) {
		this.zhen_yu = value;
	}
	
	public BigDecimal getCheng_zhen() {
		return this.cheng_zhen;
	}
	
	public void setCheng_zhen(BigDecimal value) {
		this.cheng_zhen = value;
	}
	
	public BigDecimal getChengz_hua() {
		return this.chengz_hua;
	}
	
	public void setChengz_hua(BigDecimal value) {
		this.chengz_hua = value;
	}
	
	public BigDecimal getNong_ye() {
		return this.nong_ye;
	}
	
	public void setNong_ye(BigDecimal value) {
		this.nong_ye = value;
	}
	
	public BigDecimal getFei_nong() {
		return this.fei_nong;
	}
	
	public void setFei_nong(BigDecimal value) {
		this.fei_nong = value;
	}
	
	public BigDecimal getZheny_mianji() {
		return this.zheny_mianji;
	}
	
	public void setZheny_mianji(BigDecimal value) {
		this.zheny_mianji = value;
	}
	
	public BigDecimal getGengdi_mianji() {
		return this.gengdi_mianji;
	}
	
	public void setGengdi_mianji(BigDecimal value) {
		this.gengdi_mianji = value;
	}
	
	public BigDecimal getJb_nongtian() {
		return this.jb_nongtian;
	}
	
	public void setJb_nongtian(BigDecimal value) {
		this.jb_nongtian = value;
	}
	
	public BigDecimal getSl_mianji() {
		return this.sl_mianji;
	}
	
	public void setSl_mianji(BigDecimal value) {
		this.sl_mianji = value;
	}
	
	public BigDecimal getGdp() {
		return this.gdp;
	}
	
	public void setGdp(BigDecimal value) {
		this.gdp = value;
	}
	
	public BigDecimal getDy_chanye() {
		return this.dy_chanye;
	}
	
	public void setDy_chanye(BigDecimal value) {
		this.dy_chanye = value;
	}
	
	public BigDecimal getDe_chanye() {
		return this.de_chanye;
	}
	
	public void setDe_chanye(BigDecimal value) {
		this.de_chanye = value;
	}
	
	public BigDecimal getDs_chanye() {
		return this.ds_chanye;
	}
	
	public void setDs_chanye(BigDecimal value) {
		this.ds_chanye = value;
	}
	
	public BigDecimal getZy_fuyu() {
		return this.zy_fuyu;
	}
	
	public void setZy_fuyu(BigDecimal value) {
		this.zy_fuyu = value;
	}
	
	public BigDecimal getFn_jiuye() {
		return this.fn_jiuye;
	}
	
	public void setFn_jiuye(BigDecimal value) {
		this.fn_jiuye = value;
	}
	
	public BigDecimal getRj_shouru() {
		return this.rj_shouru;
	}
	
	public void setRj_shouru(BigDecimal value) {
		this.rj_shouru = value;
	}
	
	public BigDecimal getCun_zhuang() {
		return this.cun_zhuang;
	}
	
	public void setCun_zhuang(BigDecimal value) {
		this.cun_zhuang = value;
	}
	
	public BigDecimal getTd_cunzhuang() {
		return this.td_cunzhuang;
	}
	
	public void setTd_cunzhuang(BigDecimal value) {
		this.td_cunzhuang = value;
	}
	
	public BigDecimal getDx_cunzhuang() {
		return this.dx_cunzhuang;
	}
	
	public void setDx_cunzhuang(BigDecimal value) {
		this.dx_cunzhuang = value;
	}
	
	public BigDecimal getZx_cunzhuang() {
		return this.zx_cunzhuang;
	}
	
	public void setZx_cunzhuang(BigDecimal value) {
		this.zx_cunzhuang = value;
	}
	
	public BigDecimal getXx_cunzhuang() {
		return this.xx_cunzhuang;
	}
	
	public void setXx_cunzhuang(BigDecimal value) {
		this.xx_cunzhuang = value;
	}
	
	public BigDecimal getSl_fugai() {
		return this.sl_fugai;
	}
	
	public void setSl_fugai(BigDecimal value) {
		this.sl_fugai = value;
	}
	
	public java.sql.Date getInput() {
		return this.input;
	}
	
	public void setInput(java.sql.Date value) {
		this.input = value;
	}
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("unit_id",getUnit_id())
			.append("year",getYear())
			.append("zhen_yu",getZhen_yu())
			.append("cheng_zhen",getCheng_zhen())
			.append("chengz_hua",getChengz_hua())
			.append("nong_ye",getNong_ye())
			.append("fei_nong",getFei_nong())
			.append("zheny_mianji",getZheny_mianji())
			.append("gengdi_mianji",getGengdi_mianji())
			.append("jb_nongtian",getJb_nongtian())
			.append("sl_mianji",getSl_mianji())
			.append("gdp",getGdp())
			.append("dy_chanye",getDy_chanye())
			.append("de_chanye",getDe_chanye())
			.append("ds_chanye",getDs_chanye())
			.append("zy_fuyu",getZy_fuyu())
			.append("fn_jiuye",getFn_jiuye())
			.append("rj_shouru",getRj_shouru())
			.append("cun_zhuang",getCun_zhuang())
			.append("td_cunzhuang",getTd_cunzhuang())
			.append("dx_cunzhuang",getDx_cunzhuang())
			.append("zx_cunzhuang",getZx_cunzhuang())
			.append("xx_cunzhuang",getXx_cunzhuang())
			.append("sl_fugai",getSl_fugai())
			.append("input",getInput())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUnit_id())
			.append(getYear())
			.append(getZhen_yu())
			.append(getCheng_zhen())
			.append(getChengz_hua())
			.append(getNong_ye())
			.append(getFei_nong())
			.append(getZheny_mianji())
			.append(getGengdi_mianji())
			.append(getJb_nongtian())
			.append(getSl_mianji())
			.append(getGdp())
			.append(getDy_chanye())
			.append(getDe_chanye())
			.append(getDs_chanye())
			.append(getZy_fuyu())
			.append(getFn_jiuye())
			.append(getRj_shouru())
			.append(getCun_zhuang())
			.append(getTd_cunzhuang())
			.append(getDx_cunzhuang())
			.append(getZx_cunzhuang())
			.append(getXx_cunzhuang())
			.append(getSl_fugai())
			.append(getInput())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Zhenyu == false) return false;
		if(this == obj) return true;
		Zhenyu other = (Zhenyu)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getYear(),other.getYear())
			.append(getZhen_yu(),other.getZhen_yu())
			.append(getCheng_zhen(),other.getCheng_zhen())
			.append(getChengz_hua(),other.getChengz_hua())
			.append(getNong_ye(),other.getNong_ye())
			.append(getFei_nong(),other.getFei_nong())
			.append(getZheny_mianji(),other.getZheny_mianji())
			.append(getGengdi_mianji(),other.getGengdi_mianji())
			.append(getJb_nongtian(),other.getJb_nongtian())
			.append(getSl_mianji(),other.getSl_mianji())
			.append(getGdp(),other.getGdp())
			.append(getDy_chanye(),other.getDy_chanye())
			.append(getDe_chanye(),other.getDe_chanye())
			.append(getDs_chanye(),other.getDs_chanye())
			.append(getZy_fuyu(),other.getZy_fuyu())
			.append(getFn_jiuye(),other.getFn_jiuye())
			.append(getRj_shouru(),other.getRj_shouru())
			.append(getCun_zhuang(),other.getCun_zhuang())
			.append(getTd_cunzhuang(),other.getTd_cunzhuang())
			.append(getDx_cunzhuang(),other.getDx_cunzhuang())
			.append(getZx_cunzhuang(),other.getZx_cunzhuang())
			.append(getXx_cunzhuang(),other.getXx_cunzhuang())
			.append(getSl_fugai(),other.getSl_fugai())
			.append(getInput(),other.getInput())
			.isEquals();
	}
*/
}
