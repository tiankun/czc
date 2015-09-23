/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;

public class Item_sewage{
	

	//数据库相关字段
	private Long id;    //主键
	private java.math.BigDecimal guimo;    //建设规划规模（万立方米/日）
	private java.math.BigDecimal guanwang;    //配套管网总长(公里)
	private java.math.BigDecimal yushui;    //其中雨水管网总长（公里）
	private java.math.BigDecimal wushui;    //其中污水管网总长（公里）
	private String paifang;    //排放标准
	private String ps_qx;    //排水去向类型
	private String ps_tz;    //排水体制
	private String xiaodu;    //消毒措施
	private java.math.BigDecimal zs_guimo;    //再生水设计规模（万立方米/日）
	private String zs_yongtu;    //再生水主要用途
	private String wsgy_leixing;    //污水处理工艺类型
	private String wsgy_fangshi;    //污水处理工艺方式
	private String wszx_zhibiao;    //污水在线监测指标
	private String wj_cod;    //污水处理厂设计水质COD进水（mg/L）
	private String wc_cod;    //污水处理厂设计水质COD出水（mg/L）
	private String wj_ss;    //污水处理厂设计水质SS进水（mg/L）
	private String wc_ss;    //污水处理厂设计水质SS出水（mg/L）
	private String wj_tp;    //污水处理厂设计水质TP进水（mg/L）
	private String wc_tp;    //污水处理厂设计水质TP出水（mg/L）
	private String wj_bod;    //污水处理厂设计水质BOD进水（mg/L）
	private String wc_bod;    //污水处理厂设计水质BOD出水（mg/L）
	private String wj_ad;    //污水处理厂设计水质氨氮进水（mg/L）
	private String wc_ad;    //污水处理厂设计水质氨氮出水（mg/L）
	private String wj_tn;    //污水处理厂设计水质TN进水（mg/L）
	private String wc_tn;    //污水处理厂设计水质TN出水（mg/L）
	private String wnns;    //污泥浓缩
	private String wnxh;    //污泥消化
	private String wnss;    //污泥脱水
	private String wncl_fangshi;    //污泥处置方式
	private String remark;    //备注
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Item_sewage(){
	}

	public Item_sewage(Long id){
		this.id = id;
	}

	
    //相关属性get/set方法
	
	
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
