/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-2-18</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;

import java.math.BigDecimal;

/**
 * 特色小镇镇区（乡驻地）信息
 */
public class Zhenqu{
	

	//数据库相关字段
	private Long id;    //主键
	private Long unit_id;    //地点
	private Long year;    //年份
	private BigDecimal zq_renkou;    //镇区（乡驻地）人口  万人
	private BigDecimal zz_renkou;    //暂住人口  万人
	private BigDecimal cz_renkou;    //常住人口  万人
	private BigDecimal nm_anzhi;    //农民进城安置数量  人
	private BigDecimal zy_laodong;    //农村富余劳动力等转移安置人口  人
	private BigDecimal gh_mianji;    //规划区面积  k㎡
	private BigDecimal jc_mianji;    //建成区面积  k㎡
	private BigDecimal rj_jzyongdi;    //人均建设用地面积  ㎡/人
	private BigDecimal rj_yongdi;    //人均居住用地面积  ㎡/人
	private BigDecimal bq_mianji;    //坝区面积  k㎡
	private BigDecimal sq_mianji;    //山区面积  k㎡
	private BigDecimal gs_guimo;    //供水设施净水厂规模  吨/日
	private BigDecimal gs_guanwang;    //供水设施供水管网长度 公里
	private BigDecimal gs_fwrenkou;    //供水设施服务人口 万人
	private BigDecimal ws_guimo;    //污水处理设施污水厂处理规模吨/日
	private BigDecimal ws_guanwang;    //污水处理设施污水管网长度   公里
	private String ws_gongyi;    //污水处理设施处理工艺
	private BigDecimal ws_fwrenkou;    //污水处理设施服务人口 万人
	private BigDecimal lj_guimo;    //环卫设施垃圾处理设施垃圾无害化处理能力  吨/日
	private BigDecimal lj_zhan;    //环卫设施垃圾处理设施垃圾中转站   个
	private String lj_gongyi;    //环卫设施垃圾处理设施工艺
	private BigDecimal lj_shouji;    //环卫设施垃圾处理设施垃圾收集率
	private BigDecimal lj_wuhai;    //环卫设施垃圾处理设施垃圾无害化处理率
	private BigDecimal lj_gongce;    //环卫设施其他卫生公厕
	private BigDecimal lj_che;    //环卫设施其他环卫车辆
	private BigDecimal bd_rigong;    //变电站日供电量  千瓦时/日
	private BigDecimal bd_yongdi;    //变电站用地规模  ㎡
	private BigDecimal kyz_geshu;    //客运站数量  个
	private BigDecimal kyz_yongdi;    //客运站用地规模  ㎡
	private BigDecimal dxj_geshi;    //电信局数量  个
	private BigDecimal dxj_yongdi;    //电信局用地规模  ㎡
	private BigDecimal gg_ptlv;    //公共服务设施配套达标率  %
	private BigDecimal rj_ggss;    //人均公共服务设施用地  ㎡/人
	private BigDecimal dl_midi;    //道路网密度  km/k㎡
	private BigDecimal rj_gc;    //人均广场用地  ㎡/人
	private BigDecimal rj_ggtcc;    //人均公共停车场用地  ㎡/人
	private BigDecimal gg_lvdi;    //公共绿地面积  k㎡
	private BigDecimal ld_lv;    //绿地率  %
	private BigDecimal rj_ld;    //人均公共绿地  ㎡/人
	private java.sql.Date input;    //添加时间
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Zhenqu(){
	}

	public Zhenqu(Long id){
		this.id = id;
	}

	
    //相关属性get/set方法
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
	
	public BigDecimal getZq_renkou() {
		return this.zq_renkou;
	}
	
	public void setZq_renkou(BigDecimal value) {
		this.zq_renkou = value;
	}
	
	public BigDecimal getZz_renkou() {
		return this.zz_renkou;
	}
	
	public void setZz_renkou(BigDecimal value) {
		this.zz_renkou = value;
	}
	
	public BigDecimal getCz_renkou() {
		return this.cz_renkou;
	}
	
	public void setCz_renkou(BigDecimal value) {
		this.cz_renkou = value;
	}
	
	public BigDecimal getNm_anzhi() {
		return this.nm_anzhi;
	}
	
	public void setNm_anzhi(BigDecimal value) {
		this.nm_anzhi = value;
	}
	
	public BigDecimal getZy_laodong() {
		return this.zy_laodong;
	}
	
	public void setZy_laodong(BigDecimal value) {
		this.zy_laodong = value;
	}
	
	public BigDecimal getGh_mianji() {
		return this.gh_mianji;
	}
	
	public void setGh_mianji(BigDecimal value) {
		this.gh_mianji = value;
	}
	
	public BigDecimal getJc_mianji() {
		return this.jc_mianji;
	}
	
	public void setJc_mianji(BigDecimal value) {
		this.jc_mianji = value;
	}
	
	public BigDecimal getRj_jzyongdi() {
		return this.rj_jzyongdi;
	}
	
	public void setRj_jzyongdi(BigDecimal value) {
		this.rj_jzyongdi = value;
	}
	
	public BigDecimal getRj_yongdi() {
		return this.rj_yongdi;
	}
	
	public void setRj_yongdi(BigDecimal value) {
		this.rj_yongdi = value;
	}
	
	public BigDecimal getBq_mianji() {
		return this.bq_mianji;
	}
	
	public void setBq_mianji(BigDecimal value) {
		this.bq_mianji = value;
	}
	
	public BigDecimal getSq_mianji() {
		return this.sq_mianji;
	}
	
	public void setSq_mianji(BigDecimal value) {
		this.sq_mianji = value;
	}
	
	public BigDecimal getGs_guimo() {
		return this.gs_guimo;
	}
	
	public void setGs_guimo(BigDecimal value) {
		this.gs_guimo = value;
	}
	
	public BigDecimal getGs_guanwang() {
		return this.gs_guanwang;
	}
	
	public void setGs_guanwang(BigDecimal value) {
		this.gs_guanwang = value;
	}
	
	public BigDecimal getGs_fwrenkou() {
		return this.gs_fwrenkou;
	}
	
	public void setGs_fwrenkou(BigDecimal value) {
		this.gs_fwrenkou = value;
	}
	
	public BigDecimal getWs_guimo() {
		return this.ws_guimo;
	}
	
	public void setWs_guimo(BigDecimal value) {
		this.ws_guimo = value;
	}
	
	public BigDecimal getWs_guanwang() {
		return this.ws_guanwang;
	}
	
	public void setWs_guanwang(BigDecimal value) {
		this.ws_guanwang = value;
	}
	
	public String getWs_gongyi() {
		return this.ws_gongyi;
	}
	
	public void setWs_gongyi(String value) {
		this.ws_gongyi = value;
	}
	
	public BigDecimal getWs_fwrenkou() {
		return this.ws_fwrenkou;
	}
	
	public void setWs_fwrenkou(BigDecimal value) {
		this.ws_fwrenkou = value;
	}
	
	public BigDecimal getLj_guimo() {
		return this.lj_guimo;
	}
	
	public void setLj_guimo(BigDecimal value) {
		this.lj_guimo = value;
	}
	
	public BigDecimal getLj_zhan() {
		return this.lj_zhan;
	}
	
	public void setLj_zhan(BigDecimal value) {
		this.lj_zhan = value;
	}
	
	public String getLj_gongyi() {
		return this.lj_gongyi;
	}
	
	public void setLj_gongyi(String value) {
		this.lj_gongyi = value;
	}
	
	public BigDecimal getLj_shouji() {
		return this.lj_shouji;
	}
	
	public void setLj_shouji(BigDecimal value) {
		this.lj_shouji = value;
	}
	
	public BigDecimal getLj_wuhai() {
		return this.lj_wuhai;
	}
	
	public void setLj_wuhai(BigDecimal value) {
		this.lj_wuhai = value;
	}
	
	public BigDecimal getLj_gongce() {
		return this.lj_gongce;
	}
	
	public void setLj_gongce(BigDecimal value) {
		this.lj_gongce = value;
	}
	
	public BigDecimal getLj_che() {
		return this.lj_che;
	}
	
	public void setLj_che(BigDecimal value) {
		this.lj_che = value;
	}
	
	public BigDecimal getBd_rigong() {
		return this.bd_rigong;
	}
	
	public void setBd_rigong(BigDecimal value) {
		this.bd_rigong = value;
	}
	
	public BigDecimal getBd_yongdi() {
		return this.bd_yongdi;
	}
	
	public void setBd_yongdi(BigDecimal value) {
		this.bd_yongdi = value;
	}
	
	public BigDecimal getKyz_geshu() {
		return this.kyz_geshu;
	}
	
	public void setKyz_geshu(BigDecimal value) {
		this.kyz_geshu = value;
	}
	
	public BigDecimal getKyz_yongdi() {
		return this.kyz_yongdi;
	}
	
	public void setKyz_yongdi(BigDecimal value) {
		this.kyz_yongdi = value;
	}
	
	public BigDecimal getDxj_geshi() {
		return this.dxj_geshi;
	}
	
	public void setDxj_geshi(BigDecimal value) {
		this.dxj_geshi = value;
	}
	
	public BigDecimal getDxj_yongdi() {
		return this.dxj_yongdi;
	}
	
	public void setDxj_yongdi(BigDecimal value) {
		this.dxj_yongdi = value;
	}
	
	public BigDecimal getGg_ptlv() {
		return this.gg_ptlv;
	}
	
	public void setGg_ptlv(BigDecimal value) {
		this.gg_ptlv = value;
	}
	
	public BigDecimal getRj_ggss() {
		return this.rj_ggss;
	}
	
	public void setRj_ggss(BigDecimal value) {
		this.rj_ggss = value;
	}
	
	public BigDecimal getDl_midi() {
		return this.dl_midi;
	}
	
	public void setDl_midi(BigDecimal value) {
		this.dl_midi = value;
	}
	
	public BigDecimal getRj_gc() {
		return this.rj_gc;
	}
	
	public void setRj_gc(BigDecimal value) {
		this.rj_gc = value;
	}
	
	public BigDecimal getRj_ggtcc() {
		return this.rj_ggtcc;
	}
	
	public void setRj_ggtcc(BigDecimal value) {
		this.rj_ggtcc = value;
	}
	
	public BigDecimal getGg_lvdi() {
		return this.gg_lvdi;
	}
	
	public void setGg_lvdi(BigDecimal value) {
		this.gg_lvdi = value;
	}
	
	public BigDecimal getLd_lv() {
		return this.ld_lv;
	}
	
	public void setLd_lv(BigDecimal value) {
		this.ld_lv = value;
	}
	
	public BigDecimal getRj_ld() {
		return this.rj_ld;
	}
	
	public void setRj_ld(BigDecimal value) {
		this.rj_ld = value;
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
			.append("zq_renkou",getZq_renkou())
			.append("zz_renkou",getZz_renkou())
			.append("cz_renkou",getCz_renkou())
			.append("nm_anzhi",getNm_anzhi())
			.append("zy_laodong",getZy_laodong())
			.append("gh_mianji",getGh_mianji())
			.append("jc_mianji",getJc_mianji())
			.append("rj_jzyongdi",getRj_jzyongdi())
			.append("rj_yongdi",getRj_yongdi())
			.append("bq_mianji",getBq_mianji())
			.append("sq_mianji",getSq_mianji())
			.append("gs_guimo",getGs_guimo())
			.append("gs_guanwang",getGs_guanwang())
			.append("gs_fwrenkou",getGs_fwrenkou())
			.append("ws_guimo",getWs_guimo())
			.append("ws_guanwang",getWs_guanwang())
			.append("ws_gongyi",getWs_gongyi())
			.append("ws_fwrenkou",getWs_fwrenkou())
			.append("lj_guimo",getLj_guimo())
			.append("lj_zhan",getLj_zhan())
			.append("lj_gongyi",getLj_gongyi())
			.append("lj_shouji",getLj_shouji())
			.append("lj_wuhai",getLj_wuhai())
			.append("lj_gongce",getLj_gongce())
			.append("lj_che",getLj_che())
			.append("bd_rigong",getBd_rigong())
			.append("bd_yongdi",getBd_yongdi())
			.append("kyz_geshu",getKyz_geshu())
			.append("kyz_yongdi",getKyz_yongdi())
			.append("dxj_geshi",getDxj_geshi())
			.append("dxj_yongdi",getDxj_yongdi())
			.append("gg_ptlv",getGg_ptlv())
			.append("rj_ggss",getRj_ggss())
			.append("dl_midi",getDl_midi())
			.append("rj_gc",getRj_gc())
			.append("rj_ggtcc",getRj_ggtcc())
			.append("gg_lvdi",getGg_lvdi())
			.append("ld_lv",getLd_lv())
			.append("rj_ld",getRj_ld())
			.append("input",getInput())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUnit_id())
			.append(getYear())
			.append(getZq_renkou())
			.append(getZz_renkou())
			.append(getCz_renkou())
			.append(getNm_anzhi())
			.append(getZy_laodong())
			.append(getGh_mianji())
			.append(getJc_mianji())
			.append(getRj_jzyongdi())
			.append(getRj_yongdi())
			.append(getBq_mianji())
			.append(getSq_mianji())
			.append(getGs_guimo())
			.append(getGs_guanwang())
			.append(getGs_fwrenkou())
			.append(getWs_guimo())
			.append(getWs_guanwang())
			.append(getWs_gongyi())
			.append(getWs_fwrenkou())
			.append(getLj_guimo())
			.append(getLj_zhan())
			.append(getLj_gongyi())
			.append(getLj_shouji())
			.append(getLj_wuhai())
			.append(getLj_gongce())
			.append(getLj_che())
			.append(getBd_rigong())
			.append(getBd_yongdi())
			.append(getKyz_geshu())
			.append(getKyz_yongdi())
			.append(getDxj_geshi())
			.append(getDxj_yongdi())
			.append(getGg_ptlv())
			.append(getRj_ggss())
			.append(getDl_midi())
			.append(getRj_gc())
			.append(getRj_ggtcc())
			.append(getGg_lvdi())
			.append(getLd_lv())
			.append(getRj_ld())
			.append(getInput())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Zhenqu == false) return false;
		if(this == obj) return true;
		Zhenqu other = (Zhenqu)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getYear(),other.getYear())
			.append(getZq_renkou(),other.getZq_renkou())
			.append(getZz_renkou(),other.getZz_renkou())
			.append(getCz_renkou(),other.getCz_renkou())
			.append(getNm_anzhi(),other.getNm_anzhi())
			.append(getZy_laodong(),other.getZy_laodong())
			.append(getGh_mianji(),other.getGh_mianji())
			.append(getJc_mianji(),other.getJc_mianji())
			.append(getRj_jzyongdi(),other.getRj_jzyongdi())
			.append(getRj_yongdi(),other.getRj_yongdi())
			.append(getBq_mianji(),other.getBq_mianji())
			.append(getSq_mianji(),other.getSq_mianji())
			.append(getGs_guimo(),other.getGs_guimo())
			.append(getGs_guanwang(),other.getGs_guanwang())
			.append(getGs_fwrenkou(),other.getGs_fwrenkou())
			.append(getWs_guimo(),other.getWs_guimo())
			.append(getWs_guanwang(),other.getWs_guanwang())
			.append(getWs_gongyi(),other.getWs_gongyi())
			.append(getWs_fwrenkou(),other.getWs_fwrenkou())
			.append(getLj_guimo(),other.getLj_guimo())
			.append(getLj_zhan(),other.getLj_zhan())
			.append(getLj_gongyi(),other.getLj_gongyi())
			.append(getLj_shouji(),other.getLj_shouji())
			.append(getLj_wuhai(),other.getLj_wuhai())
			.append(getLj_gongce(),other.getLj_gongce())
			.append(getLj_che(),other.getLj_che())
			.append(getBd_rigong(),other.getBd_rigong())
			.append(getBd_yongdi(),other.getBd_yongdi())
			.append(getKyz_geshu(),other.getKyz_geshu())
			.append(getKyz_yongdi(),other.getKyz_yongdi())
			.append(getDxj_geshi(),other.getDxj_geshi())
			.append(getDxj_yongdi(),other.getDxj_yongdi())
			.append(getGg_ptlv(),other.getGg_ptlv())
			.append(getRj_ggss(),other.getRj_ggss())
			.append(getDl_midi(),other.getDl_midi())
			.append(getRj_gc(),other.getRj_gc())
			.append(getRj_ggtcc(),other.getRj_ggtcc())
			.append(getGg_lvdi(),other.getGg_lvdi())
			.append(getLd_lv(),other.getLd_lv())
			.append(getRj_ld(),other.getRj_ld())
			.append(getInput(),other.getInput())
			.isEquals();
	}
*/
}
