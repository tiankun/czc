/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-2-18</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map.temp;

import java.math.BigDecimal;

/**
 * 特色小镇镇区（乡驻地）信息--近期
 */
public class ZhenquJin{
	

	//数据库相关字段
	private BigDecimal zq_renkouj;    //镇区（乡驻地）人口  万人
	private BigDecimal zz_renkouj;    //暂住人口  万人
	private BigDecimal cz_renkouj;    //常住人口  万人
	private BigDecimal nm_anzhij;    //农民进城安置数量  人
	private BigDecimal zy_laodongj;    //农村富余劳动力等转移安置人口  人
	private BigDecimal gh_mianjij;    //规划区面积  k㎡
	private BigDecimal jc_mianjij;    //建成区面积  k㎡
	private BigDecimal rj_jzyongdij;    //人均建设用地面积  ㎡/人
	private BigDecimal rj_yongdij;    //人均居住用地面积  ㎡/人
	private BigDecimal bq_mianjij;    //坝区面积  k㎡
	private BigDecimal sq_mianjij;    //山区面积  k㎡
	private BigDecimal gs_guimoj;    //供水设施净水厂规模  吨/日
	private BigDecimal gs_guanwangj;    //供水设施供水管网长度 公里
	private BigDecimal gs_fwrenkouj;    //供水设施服务人口 万人
	private BigDecimal ws_guimoj;    //污水处理设施污水厂处理规模吨/日
	private BigDecimal ws_guanwangj;    //污水处理设施污水管网长度   公里
	private String ws_gongyij;    //污水处理设施处理工艺
	private BigDecimal ws_fwrenkouj;    //污水处理设施服务人口 万人
	private BigDecimal lj_guimoj;    //环卫设施垃圾处理设施垃圾无害化处理能力  吨/日
	private BigDecimal lj_zhanj;    //环卫设施垃圾处理设施垃圾中转站   个
	private String lj_gongyij;    //环卫设施垃圾处理设施工艺
	private BigDecimal lj_shoujij;    //环卫设施垃圾处理设施垃圾收集率
	private BigDecimal lj_wuhaij;    //环卫设施垃圾处理设施垃圾无害化处理率
	private BigDecimal lj_gongcej;    //环卫设施其他卫生公厕
	private BigDecimal lj_chej;    //环卫设施其他环卫车辆
	private BigDecimal bd_rigongj;    //变电站日供电量  千瓦时/日
	private BigDecimal bd_yongdij;    //变电站用地规模  ㎡
	private BigDecimal kyz_geshuj;    //客运站数量  个
	private BigDecimal kyz_yongdij;    //客运站用地规模  ㎡
	private BigDecimal dxj_geshij;    //电信局数量  个
	private BigDecimal dxj_yongdij;    //电信局用地规模  ㎡
	private BigDecimal gg_ptlvj;    //公共服务设施配套达标率  %
	private BigDecimal rj_ggssj;    //人均公共服务设施用地  ㎡/人
	private BigDecimal dl_midij;    //道路网密度  km/k㎡
	private BigDecimal rj_gcj;    //人均广场用地  ㎡/人
	private BigDecimal rj_ggtccj;    //人均公共停车场用地  ㎡/人
	private BigDecimal gg_lvdij;    //公共绿地面积  k㎡
	private BigDecimal ld_lvj;    //绿地率  %
	private BigDecimal rj_ldj;    //人均公共绿地  ㎡/人
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public ZhenquJin(){
	}

	public BigDecimal getZq_renkouj() {
		return zq_renkouj;
	}

	public void setZq_renkouj(BigDecimal zqRenkouj) {
		zq_renkouj = zqRenkouj;
	}

	public BigDecimal getZz_renkouj() {
		return zz_renkouj;
	}

	public void setZz_renkouj(BigDecimal zzRenkouj) {
		zz_renkouj = zzRenkouj;
	}

	public BigDecimal getCz_renkouj() {
		return cz_renkouj;
	}

	public void setCz_renkouj(BigDecimal czRenkouj) {
		cz_renkouj = czRenkouj;
	}

	public BigDecimal getNm_anzhij() {
		return nm_anzhij;
	}

	public void setNm_anzhij(BigDecimal nmAnzhij) {
		nm_anzhij = nmAnzhij;
	}

	public BigDecimal getZy_laodongj() {
		return zy_laodongj;
	}

	public void setZy_laodongj(BigDecimal zyLaodongj) {
		zy_laodongj = zyLaodongj;
	}

	public BigDecimal getGh_mianjij() {
		return gh_mianjij;
	}

	public void setGh_mianjij(BigDecimal ghMianjij) {
		gh_mianjij = ghMianjij;
	}

	public BigDecimal getJc_mianjij() {
		return jc_mianjij;
	}

	public void setJc_mianjij(BigDecimal jcMianjij) {
		jc_mianjij = jcMianjij;
	}

	public BigDecimal getRj_jzyongdij() {
		return rj_jzyongdij;
	}

	public void setRj_jzyongdij(BigDecimal rjJzyongdij) {
		rj_jzyongdij = rjJzyongdij;
	}

	public BigDecimal getRj_yongdij() {
		return rj_yongdij;
	}

	public void setRj_yongdij(BigDecimal rjYongdij) {
		rj_yongdij = rjYongdij;
	}

	public BigDecimal getBq_mianjij() {
		return bq_mianjij;
	}

	public void setBq_mianjij(BigDecimal bqMianjij) {
		bq_mianjij = bqMianjij;
	}

	public BigDecimal getSq_mianjij() {
		return sq_mianjij;
	}

	public void setSq_mianjij(BigDecimal sqMianjij) {
		sq_mianjij = sqMianjij;
	}

	public BigDecimal getGs_guimoj() {
		return gs_guimoj;
	}

	public void setGs_guimoj(BigDecimal gsGuimoj) {
		gs_guimoj = gsGuimoj;
	}

	public BigDecimal getGs_guanwangj() {
		return gs_guanwangj;
	}

	public void setGs_guanwangj(BigDecimal gsGuanwangj) {
		gs_guanwangj = gsGuanwangj;
	}

	public BigDecimal getGs_fwrenkouj() {
		return gs_fwrenkouj;
	}

	public void setGs_fwrenkouj(BigDecimal gsFwrenkouj) {
		gs_fwrenkouj = gsFwrenkouj;
	}

	public BigDecimal getWs_guimoj() {
		return ws_guimoj;
	}

	public void setWs_guimoj(BigDecimal wsGuimoj) {
		ws_guimoj = wsGuimoj;
	}

	public BigDecimal getWs_guanwangj() {
		return ws_guanwangj;
	}

	public void setWs_guanwangj(BigDecimal wsGuanwangj) {
		ws_guanwangj = wsGuanwangj;
	}

	public String getWs_gongyij() {
		return ws_gongyij;
	}

	public void setWs_gongyij(String wsGongyij) {
		ws_gongyij = wsGongyij;
	}

	public BigDecimal getWs_fwrenkouj() {
		return ws_fwrenkouj;
	}

	public void setWs_fwrenkouj(BigDecimal wsFwrenkouj) {
		ws_fwrenkouj = wsFwrenkouj;
	}

	public BigDecimal getLj_guimoj() {
		return lj_guimoj;
	}

	public void setLj_guimoj(BigDecimal ljGuimoj) {
		lj_guimoj = ljGuimoj;
	}

	public BigDecimal getLj_zhanj() {
		return lj_zhanj;
	}

	public void setLj_zhanj(BigDecimal ljZhanj) {
		lj_zhanj = ljZhanj;
	}

	public String getLj_gongyij() {
		return lj_gongyij;
	}

	public void setLj_gongyij(String ljGongyij) {
		lj_gongyij = ljGongyij;
	}

	public BigDecimal getLj_shoujij() {
		return lj_shoujij;
	}

	public void setLj_shoujij(BigDecimal ljShoujij) {
		lj_shoujij = ljShoujij;
	}

	public BigDecimal getLj_wuhaij() {
		return lj_wuhaij;
	}

	public void setLj_wuhaij(BigDecimal ljWuhaij) {
		lj_wuhaij = ljWuhaij;
	}

	public BigDecimal getLj_gongcej() {
		return lj_gongcej;
	}

	public void setLj_gongcej(BigDecimal ljGongcej) {
		lj_gongcej = ljGongcej;
	}

	public BigDecimal getLj_chej() {
		return lj_chej;
	}

	public void setLj_chej(BigDecimal ljChej) {
		lj_chej = ljChej;
	}

	public BigDecimal getBd_rigongj() {
		return bd_rigongj;
	}

	public void setBd_rigongj(BigDecimal bdRigongj) {
		bd_rigongj = bdRigongj;
	}

	public BigDecimal getBd_yongdij() {
		return bd_yongdij;
	}

	public void setBd_yongdij(BigDecimal bdYongdij) {
		bd_yongdij = bdYongdij;
	}

	public BigDecimal getKyz_geshuj() {
		return kyz_geshuj;
	}

	public void setKyz_geshuj(BigDecimal kyzGeshuj) {
		kyz_geshuj = kyzGeshuj;
	}

	public BigDecimal getKyz_yongdij() {
		return kyz_yongdij;
	}

	public void setKyz_yongdij(BigDecimal kyzYongdij) {
		kyz_yongdij = kyzYongdij;
	}

	public BigDecimal getDxj_geshij() {
		return dxj_geshij;
	}

	public void setDxj_geshij(BigDecimal dxjGeshij) {
		dxj_geshij = dxjGeshij;
	}

	public BigDecimal getDxj_yongdij() {
		return dxj_yongdij;
	}

	public void setDxj_yongdij(BigDecimal dxjYongdij) {
		dxj_yongdij = dxjYongdij;
	}

	public BigDecimal getGg_ptlvj() {
		return gg_ptlvj;
	}

	public void setGg_ptlvj(BigDecimal ggPtlvj) {
		gg_ptlvj = ggPtlvj;
	}

	public BigDecimal getRj_ggssj() {
		return rj_ggssj;
	}

	public void setRj_ggssj(BigDecimal rjGgssj) {
		rj_ggssj = rjGgssj;
	}

	public BigDecimal getDl_midij() {
		return dl_midij;
	}

	public void setDl_midij(BigDecimal dlMidij) {
		dl_midij = dlMidij;
	}

	public BigDecimal getRj_gcj() {
		return rj_gcj;
	}

	public void setRj_gcj(BigDecimal rjGcj) {
		rj_gcj = rjGcj;
	}

	public BigDecimal getRj_ggtccj() {
		return rj_ggtccj;
	}

	public void setRj_ggtccj(BigDecimal rjGgtccj) {
		rj_ggtccj = rjGgtccj;
	}

	public BigDecimal getGg_lvdij() {
		return gg_lvdij;
	}

	public void setGg_lvdij(BigDecimal ggLvdij) {
		gg_lvdij = ggLvdij;
	}

	public BigDecimal getLd_lvj() {
		return ld_lvj;
	}

	public void setLd_lvj(BigDecimal ldLvj) {
		ld_lvj = ldLvj;
	}

	public BigDecimal getRj_ldj() {
		return rj_ldj;
	}

	public void setRj_ldj(BigDecimal rjLdj) {
		rj_ldj = rjLdj;
	}

}
