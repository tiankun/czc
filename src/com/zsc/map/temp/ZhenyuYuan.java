/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-2-18</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map.temp;

import java.math.BigDecimal;

/**
 * 特色小镇镇域信息(远期)
 */
public class ZhenyuYuan{
	

	//数据库相关字段
	private BigDecimal zhen_yuy;    //镇域总人口（	万人）
	private BigDecimal cheng_zheny;    //城镇人口	（万人）
	private BigDecimal chengz_huay;    //城镇化水平（	%）
	private BigDecimal nong_yey;    //农业人口	万人
	private BigDecimal fei_nongy;    //非农业人口	万人
	private BigDecimal zheny_mianjiy;    //镇域总面积	k㎡
	private BigDecimal gengdi_mianjiy;    //耕地面积	k㎡
	private BigDecimal jb_nongtiany;    //基本农田面积	k㎡
	private BigDecimal sl_mianjiy;    //林地面积	k㎡
	private BigDecimal gdpy;    //GDP总量	万元
	private BigDecimal dy_chanyey;    //第一产业总产值	万元
	private BigDecimal de_chanyey;    //第二产业总产值	万元
	private BigDecimal ds_chanyey;    //第三产业总产值	万元
	private BigDecimal zy_fuyuy;    //转移农村富余劳动力	人
	private BigDecimal fn_jiuyey;    //非农产业新增就业岗位	人
	private BigDecimal rj_shouruy;    //人均可支配财政收入水平	元
	private BigDecimal cun_zhuangy;    //村庄数量	个
	private BigDecimal td_cunzhuangy;    //特大村庄	个
	private BigDecimal dx_cunzhuangy;    //大型村庄	个
	private BigDecimal zx_cunzhuangy;    //中型村庄	个
	private BigDecimal xx_cunzhuangy;    //小型村庄	个
	private BigDecimal sl_fugaiy;    //森林覆盖率	%
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public ZhenyuYuan(){
	}

	public BigDecimal getZhen_yuy() {
		return zhen_yuy;
	}

	public void setZhen_yuy(BigDecimal zhenYuy) {
		zhen_yuy = zhenYuy;
	}

	public BigDecimal getCheng_zheny() {
		return cheng_zheny;
	}

	public void setCheng_zheny(BigDecimal chengZheny) {
		cheng_zheny = chengZheny;
	}

	public BigDecimal getChengz_huay() {
		return chengz_huay;
	}

	public void setChengz_huay(BigDecimal chengzHuay) {
		chengz_huay = chengzHuay;
	}

	public BigDecimal getNong_yey() {
		return nong_yey;
	}

	public void setNong_yey(BigDecimal nongYey) {
		nong_yey = nongYey;
	}

	public BigDecimal getFei_nongy() {
		return fei_nongy;
	}

	public void setFei_nongy(BigDecimal feiNongy) {
		fei_nongy = feiNongy;
	}

	public BigDecimal getZheny_mianjiy() {
		return zheny_mianjiy;
	}

	public void setZheny_mianjiy(BigDecimal zhenyMianjiy) {
		zheny_mianjiy = zhenyMianjiy;
	}

	public BigDecimal getGengdi_mianjiy() {
		return gengdi_mianjiy;
	}

	public void setGengdi_mianjiy(BigDecimal gengdiMianjiy) {
		gengdi_mianjiy = gengdiMianjiy;
	}

	public BigDecimal getJb_nongtiany() {
		return jb_nongtiany;
	}

	public void setJb_nongtiany(BigDecimal jbNongtiany) {
		jb_nongtiany = jbNongtiany;
	}

	public BigDecimal getSl_mianjiy() {
		return sl_mianjiy;
	}

	public void setSl_mianjiy(BigDecimal slMianjiy) {
		sl_mianjiy = slMianjiy;
	}

	public BigDecimal getGdpy() {
		return gdpy;
	}

	public void setGdpy(BigDecimal gdpy) {
		this.gdpy = gdpy;
	}

	public BigDecimal getDy_chanyey() {
		return dy_chanyey;
	}

	public void setDy_chanyey(BigDecimal dyChanyey) {
		dy_chanyey = dyChanyey;
	}

	public BigDecimal getDe_chanyey() {
		return de_chanyey;
	}

	public void setDe_chanyey(BigDecimal deChanyey) {
		de_chanyey = deChanyey;
	}

	public BigDecimal getDs_chanyey() {
		return ds_chanyey;
	}

	public void setDs_chanyey(BigDecimal dsChanyey) {
		ds_chanyey = dsChanyey;
	}

	public BigDecimal getZy_fuyuy() {
		return zy_fuyuy;
	}

	public void setZy_fuyuy(BigDecimal zyFuyuy) {
		zy_fuyuy = zyFuyuy;
	}

	public BigDecimal getFn_jiuyey() {
		return fn_jiuyey;
	}

	public void setFn_jiuyey(BigDecimal fnJiuyey) {
		fn_jiuyey = fnJiuyey;
	}

	public BigDecimal getRj_shouruy() {
		return rj_shouruy;
	}

	public void setRj_shouruy(BigDecimal rjShouruy) {
		rj_shouruy = rjShouruy;
	}

	public BigDecimal getCun_zhuangy() {
		return cun_zhuangy;
	}

	public void setCun_zhuangy(BigDecimal cunZhuangy) {
		cun_zhuangy = cunZhuangy;
	}

	public BigDecimal getTd_cunzhuangy() {
		return td_cunzhuangy;
	}

	public void setTd_cunzhuangy(BigDecimal tdCunzhuangy) {
		td_cunzhuangy = tdCunzhuangy;
	}

	public BigDecimal getDx_cunzhuangy() {
		return dx_cunzhuangy;
	}

	public void setDx_cunzhuangy(BigDecimal dxCunzhuangy) {
		dx_cunzhuangy = dxCunzhuangy;
	}

	public BigDecimal getZx_cunzhuangy() {
		return zx_cunzhuangy;
	}

	public void setZx_cunzhuangy(BigDecimal zxCunzhuangy) {
		zx_cunzhuangy = zxCunzhuangy;
	}

	public BigDecimal getXx_cunzhuangy() {
		return xx_cunzhuangy;
	}

	public void setXx_cunzhuangy(BigDecimal xxCunzhuangy) {
		xx_cunzhuangy = xxCunzhuangy;
	}

	public BigDecimal getSl_fugaiy() {
		return sl_fugaiy;
	}

	public void setSl_fugaiy(BigDecimal slFugaiy) {
		sl_fugaiy = slFugaiy;
	}
}
