/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-2-18</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map.temp;

import java.math.BigDecimal;

/**
 * 特色小镇镇域信息(近期)
 */
public class ZhenyuJin{
	

	//数据库相关字段
	private BigDecimal zhen_yuj;    //镇域总人口（	万人）
	private BigDecimal cheng_zhenj;    //城镇人口	（万人）
	private BigDecimal chengz_huaj;    //城镇化水平（	%）
	private BigDecimal nong_yej;    //农业人口	万人
	private BigDecimal fei_nongj;    //非农业人口	万人
	private BigDecimal zheny_mianjij;    //镇域总面积	k㎡
	private BigDecimal gengdi_mianjij;    //耕地面积	k㎡
	private BigDecimal jb_nongtianj;    //基本农田面积	k㎡
	private BigDecimal sl_mianjij;    //林地面积	k㎡
	private BigDecimal gdpj;    //GDP总量	万元
	private BigDecimal dy_chanyej;    //第一产业总产值	万元
	private BigDecimal de_chanyej;    //第二产业总产值	万元
	private BigDecimal ds_chanyej;    //第三产业总产值	万元
	private BigDecimal zy_fuyuj;    //转移农村富余劳动力	人
	private BigDecimal fn_jiuyej;    //非农产业新增就业岗位	人
	private BigDecimal rj_shouruj;    //人均可支配财政收入水平	元
	private BigDecimal cun_zhuangj;    //村庄数量	个
	private BigDecimal td_cunzhuangj;    //特大村庄	个
	private BigDecimal dx_cunzhuangj;    //大型村庄	个
	private BigDecimal zx_cunzhuangj;    //中型村庄	个
	private BigDecimal xx_cunzhuangj;    //小型村庄	个
	private BigDecimal sl_fugaij;    //森林覆盖率	%
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public ZhenyuJin(){
	}

	public BigDecimal getZhen_yuj() {
		return zhen_yuj;
	}

	public void setZhen_yuj(BigDecimal zhenYuj) {
		zhen_yuj = zhenYuj;
	}

	public BigDecimal getCheng_zhenj() {
		return cheng_zhenj;
	}

	public void setCheng_zhenj(BigDecimal chengZhenj) {
		cheng_zhenj = chengZhenj;
	}

	public BigDecimal getChengz_huaj() {
		return chengz_huaj;
	}

	public void setChengz_huaj(BigDecimal chengzHuaj) {
		chengz_huaj = chengzHuaj;
	}

	public BigDecimal getNong_yej() {
		return nong_yej;
	}

	public void setNong_yej(BigDecimal nongYej) {
		nong_yej = nongYej;
	}

	public BigDecimal getFei_nongj() {
		return fei_nongj;
	}

	public void setFei_nongj(BigDecimal feiNongj) {
		fei_nongj = feiNongj;
	}

	public BigDecimal getZheny_mianjij() {
		return zheny_mianjij;
	}

	public void setZheny_mianjij(BigDecimal zhenyMianjij) {
		zheny_mianjij = zhenyMianjij;
	}

	public BigDecimal getGengdi_mianjij() {
		return gengdi_mianjij;
	}

	public void setGengdi_mianjij(BigDecimal gengdiMianjij) {
		gengdi_mianjij = gengdiMianjij;
	}

	public BigDecimal getJb_nongtianj() {
		return jb_nongtianj;
	}

	public void setJb_nongtianj(BigDecimal jbNongtianj) {
		jb_nongtianj = jbNongtianj;
	}

	public BigDecimal getSl_mianjij() {
		return sl_mianjij;
	}

	public void setSl_mianjij(BigDecimal slMianjij) {
		sl_mianjij = slMianjij;
	}

	public BigDecimal getGdpj() {
		return gdpj;
	}

	public void setGdpj(BigDecimal gdpj) {
		this.gdpj = gdpj;
	}

	public BigDecimal getDy_chanyej() {
		return dy_chanyej;
	}

	public void setDy_chanyej(BigDecimal dyChanyej) {
		dy_chanyej = dyChanyej;
	}

	public BigDecimal getDe_chanyej() {
		return de_chanyej;
	}

	public void setDe_chanyej(BigDecimal deChanyej) {
		de_chanyej = deChanyej;
	}

	public BigDecimal getDs_chanyej() {
		return ds_chanyej;
	}

	public void setDs_chanyej(BigDecimal dsChanyej) {
		ds_chanyej = dsChanyej;
	}

	public BigDecimal getZy_fuyuj() {
		return zy_fuyuj;
	}

	public void setZy_fuyuj(BigDecimal zyFuyuj) {
		zy_fuyuj = zyFuyuj;
	}

	public BigDecimal getFn_jiuyej() {
		return fn_jiuyej;
	}

	public void setFn_jiuyej(BigDecimal fnJiuyej) {
		fn_jiuyej = fnJiuyej;
	}

	public BigDecimal getRj_shouruj() {
		return rj_shouruj;
	}

	public void setRj_shouruj(BigDecimal rjShouruj) {
		rj_shouruj = rjShouruj;
	}

	public BigDecimal getCun_zhuangj() {
		return cun_zhuangj;
	}

	public void setCun_zhuangj(BigDecimal cunZhuangj) {
		cun_zhuangj = cunZhuangj;
	}

	public BigDecimal getTd_cunzhuangj() {
		return td_cunzhuangj;
	}

	public void setTd_cunzhuangj(BigDecimal tdCunzhuangj) {
		td_cunzhuangj = tdCunzhuangj;
	}

	public BigDecimal getDx_cunzhuangj() {
		return dx_cunzhuangj;
	}

	public void setDx_cunzhuangj(BigDecimal dxCunzhuangj) {
		dx_cunzhuangj = dxCunzhuangj;
	}

	public BigDecimal getZx_cunzhuangj() {
		return zx_cunzhuangj;
	}

	public void setZx_cunzhuangj(BigDecimal zxCunzhuangj) {
		zx_cunzhuangj = zxCunzhuangj;
	}

	public BigDecimal getXx_cunzhuangj() {
		return xx_cunzhuangj;
	}

	public void setXx_cunzhuangj(BigDecimal xxCunzhuangj) {
		xx_cunzhuangj = xxCunzhuangj;
	}

	public BigDecimal getSl_fugaij() {
		return sl_fugaij;
	}

	public void setSl_fugaij(BigDecimal slFugaij) {
		sl_fugaij = slFugaij;
	}
}
