/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author ������</p>
 */
package com.zsc.map;

public class Item_sewage{
	

	//���ݿ�����ֶ�
	private Long id;    //����
	private java.math.BigDecimal guimo;    //����滮��ģ����������/�գ�
	private java.math.BigDecimal guanwang;    //���׹����ܳ�(����)
	private java.math.BigDecimal yushui;    //������ˮ�����ܳ������
	private java.math.BigDecimal wushui;    //������ˮ�����ܳ������
	private String paifang;    //�ŷű�׼
	private String ps_qx;    //��ˮȥ������
	private String ps_tz;    //��ˮ����
	private String xiaodu;    //������ʩ
	private java.math.BigDecimal zs_guimo;    //����ˮ��ƹ�ģ����������/�գ�
	private String zs_yongtu;    //����ˮ��Ҫ��;
	private String wsgy_leixing;    //��ˮ����������
	private String wsgy_fangshi;    //��ˮ�����շ�ʽ
	private String wszx_zhibiao;    //��ˮ���߼��ָ��
	private String wj_cod;    //��ˮ�������ˮ��COD��ˮ��mg/L��
	private String wc_cod;    //��ˮ�������ˮ��COD��ˮ��mg/L��
	private String wj_ss;    //��ˮ�������ˮ��SS��ˮ��mg/L��
	private String wc_ss;    //��ˮ�������ˮ��SS��ˮ��mg/L��
	private String wj_tp;    //��ˮ�������ˮ��TP��ˮ��mg/L��
	private String wc_tp;    //��ˮ�������ˮ��TP��ˮ��mg/L��
	private String wj_bod;    //��ˮ�������ˮ��BOD��ˮ��mg/L��
	private String wc_bod;    //��ˮ�������ˮ��BOD��ˮ��mg/L��
	private String wj_ad;    //��ˮ�������ˮ�ʰ�����ˮ��mg/L��
	private String wc_ad;    //��ˮ�������ˮ�ʰ�����ˮ��mg/L��
	private String wj_tn;    //��ˮ�������ˮ��TN��ˮ��mg/L��
	private String wc_tn;    //��ˮ�������ˮ��TN��ˮ��mg/L��
	private String wnns;    //����Ũ��
	private String wnxh;    //��������
	private String wnss;    //������ˮ
	private String wncl_fangshi;    //���ദ�÷�ʽ
	private String remark;    //��ע
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Item_sewage(){
	}

	public Item_sewage(Long id){
		this.id = id;
	}

	
    //�������get/set����
	
	
	public java.math.BigDecimal getGuimo() {
		return this.guimo;
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}


	public void setGuimo(java.math.BigDecimal value) {
		this.guimo = value;
	}
	
	public java.math.BigDecimal getGuanwang() {
		return this.guanwang;
	}
	
	public void setGuanwang(java.math.BigDecimal value) {
		this.guanwang = value;
	}
	
	public java.math.BigDecimal getYushui() {
		return this.yushui;
	}
	
	public void setYushui(java.math.BigDecimal value) {
		this.yushui = value;
	}
	
	public java.math.BigDecimal getWushui() {
		return this.wushui;
	}
	
	public void setWushui(java.math.BigDecimal value) {
		this.wushui = value;
	}
	
	public String getPaifang() {
		return this.paifang;
	}
	
	public void setPaifang(String value) {
		this.paifang = value;
	}
	
	public String getPs_qx() {
		return this.ps_qx;
	}
	
	public void setPs_qx(String value) {
		this.ps_qx = value;
	}
	
	public String getPs_tz() {
		return this.ps_tz;
	}
	
	public void setPs_tz(String value) {
		this.ps_tz = value;
	}
	
	public String getXiaodu() {
		return this.xiaodu;
	}
	
	public void setXiaodu(String value) {
		this.xiaodu = value;
	}
	
	public java.math.BigDecimal getZs_guimo() {
		return this.zs_guimo;
	}
	
	public void setZs_guimo(java.math.BigDecimal value) {
		this.zs_guimo = value;
	}
	
	public String getZs_yongtu() {
		return this.zs_yongtu;
	}
	
	public void setZs_yongtu(String value) {
		this.zs_yongtu = value;
	}
	
	public String getWsgy_leixing() {
		return this.wsgy_leixing;
	}
	
	public void setWsgy_leixing(String value) {
		this.wsgy_leixing = value;
	}
	
	public String getWsgy_fangshi() {
		return this.wsgy_fangshi;
	}
	
	public void setWsgy_fangshi(String value) {
		this.wsgy_fangshi = value;
	}
	
	public String getWszx_zhibiao() {
		return this.wszx_zhibiao;
	}
	
	public void setWszx_zhibiao(String value) {
		this.wszx_zhibiao = value;
	}
	
	public String getWj_cod() {
		return this.wj_cod;
	}
	
	public void setWj_cod(String value) {
		this.wj_cod = value;
	}
	
	public String getWc_cod() {
		return this.wc_cod;
	}
	
	public void setWc_cod(String value) {
		this.wc_cod = value;
	}
	
	public String getWj_ss() {
		return this.wj_ss;
	}
	
	public void setWj_ss(String value) {
		this.wj_ss = value;
	}
	
	public String getWc_ss() {
		return this.wc_ss;
	}
	
	public void setWc_ss(String value) {
		this.wc_ss = value;
	}
	
	public String getWj_tp() {
		return this.wj_tp;
	}
	
	public void setWj_tp(String value) {
		this.wj_tp = value;
	}
	
	public String getWc_tp() {
		return this.wc_tp;
	}
	
	public void setWc_tp(String value) {
		this.wc_tp = value;
	}
	
	public String getWj_bod() {
		return this.wj_bod;
	}
	
	public void setWj_bod(String value) {
		this.wj_bod = value;
	}
	
	public String getWc_bod() {
		return this.wc_bod;
	}
	
	public void setWc_bod(String value) {
		this.wc_bod = value;
	}
	
	public String getWj_ad() {
		return this.wj_ad;
	}
	
	public void setWj_ad(String value) {
		this.wj_ad = value;
	}
	
	public String getWc_ad() {
		return this.wc_ad;
	}
	
	public void setWc_ad(String value) {
		this.wc_ad = value;
	}
	
	public String getWj_tn() {
		return this.wj_tn;
	}
	
	public void setWj_tn(String value) {
		this.wj_tn = value;
	}
	
	public String getWc_tn() {
		return this.wc_tn;
	}
	
	public void setWc_tn(String value) {
		this.wc_tn = value;
	}
	
	public String getWnns() {
		return this.wnns;
	}
	
	public void setWnns(String value) {
		this.wnns = value;
	}
	
	public String getWnxh() {
		return this.wnxh;
	}
	
	public void setWnxh(String value) {
		this.wnxh = value;
	}
	
	public String getWnss() {
		return this.wnss;
	}
	
	public void setWnss(String value) {
		this.wnss = value;
	}
	
	public String getWncl_fangshi() {
		return this.wncl_fangshi;
	}
	
	public void setWncl_fangshi(String value) {
		this.wncl_fangshi = value;
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
			.append("guimo",getGuimo())
			.append("guanwang",getGuanwang())
			.append("yushui",getYushui())
			.append("wushui",getWushui())
			.append("paifang",getPaifang())
			.append("ps_qx",getPs_qx())
			.append("ps_tz",getPs_tz())
			.append("xiaodu",getXiaodu())
			.append("zs_guimo",getZs_guimo())
			.append("zs_yongtu",getZs_yongtu())
			.append("wsgy_leixing",getWsgy_leixing())
			.append("wsgy_fangshi",getWsgy_fangshi())
			.append("wszx_zhibiao",getWszx_zhibiao())
			.append("wj_cod",getWj_cod())
			.append("wc_cod",getWc_cod())
			.append("wj_ss",getWj_ss())
			.append("wc_ss",getWc_ss())
			.append("wj_tp",getWj_tp())
			.append("wc_tp",getWc_tp())
			.append("wj_bod",getWj_bod())
			.append("wc_bod",getWc_bod())
			.append("wj_ad",getWj_ad())
			.append("wc_ad",getWc_ad())
			.append("wj_tn",getWj_tn())
			.append("wc_tn",getWc_tn())
			.append("wnns",getWnns())
			.append("wnxh",getWnxh())
			.append("wnss",getWnss())
			.append("wncl_fangshi",getWncl_fangshi())
			.append("remark",getRemark())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getItem())
			.append(getGuimo())
			.append(getGuanwang())
			.append(getYushui())
			.append(getWushui())
			.append(getPaifang())
			.append(getPs_qx())
			.append(getPs_tz())
			.append(getXiaodu())
			.append(getZs_guimo())
			.append(getZs_yongtu())
			.append(getWsgy_leixing())
			.append(getWsgy_fangshi())
			.append(getWszx_zhibiao())
			.append(getWj_cod())
			.append(getWc_cod())
			.append(getWj_ss())
			.append(getWc_ss())
			.append(getWj_tp())
			.append(getWc_tp())
			.append(getWj_bod())
			.append(getWc_bod())
			.append(getWj_ad())
			.append(getWc_ad())
			.append(getWj_tn())
			.append(getWc_tn())
			.append(getWnns())
			.append(getWnxh())
			.append(getWnss())
			.append(getWncl_fangshi())
			.append(getRemark())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Item_sewage == false) return false;
		if(this == obj) return true;
		Item_sewage other = (Item_sewage)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getItem(),other.getItem())
			.append(getGuimo(),other.getGuimo())
			.append(getGuanwang(),other.getGuanwang())
			.append(getYushui(),other.getYushui())
			.append(getWushui(),other.getWushui())
			.append(getPaifang(),other.getPaifang())
			.append(getPs_qx(),other.getPs_qx())
			.append(getPs_tz(),other.getPs_tz())
			.append(getXiaodu(),other.getXiaodu())
			.append(getZs_guimo(),other.getZs_guimo())
			.append(getZs_yongtu(),other.getZs_yongtu())
			.append(getWsgy_leixing(),other.getWsgy_leixing())
			.append(getWsgy_fangshi(),other.getWsgy_fangshi())
			.append(getWszx_zhibiao(),other.getWszx_zhibiao())
			.append(getWj_cod(),other.getWj_cod())
			.append(getWc_cod(),other.getWc_cod())
			.append(getWj_ss(),other.getWj_ss())
			.append(getWc_ss(),other.getWc_ss())
			.append(getWj_tp(),other.getWj_tp())
			.append(getWc_tp(),other.getWc_tp())
			.append(getWj_bod(),other.getWj_bod())
			.append(getWc_bod(),other.getWc_bod())
			.append(getWj_ad(),other.getWj_ad())
			.append(getWc_ad(),other.getWc_ad())
			.append(getWj_tn(),other.getWj_tn())
			.append(getWc_tn(),other.getWc_tn())
			.append(getWnns(),other.getWnns())
			.append(getWnxh(),other.getWnxh())
			.append(getWnss(),other.getWnss())
			.append(getWncl_fangshi(),other.getWncl_fangshi())
			.append(getRemark(),other.getRemark())
			.isEquals();
	}
*/
}
