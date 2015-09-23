/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2012-11-14</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;
/**
 * 自然村村庄规划验收评分表
 */
public class Zrc_ghys{
	

	//数据库相关字段
	private java.math.BigDecimal id;    //主键
	private Long unit_id;    //对应用户主键
	private Long year;    //年份
	private java.math.BigDecimal yuan_blili;    //比例尺为1:500~1:3000
	private java.math.BigDecimal jz_xianzhuang;    //建筑条件现状
	private java.math.BigDecimal jt_xianzhuang;    //道路条件现状
	private java.math.BigDecimal jc_gg_xz;    //基础设施和公共设施现状
	private java.math.BigDecimal xian_bili;    //比例尺为1:500~1:3000（规划）
	private java.math.BigDecimal yd_jiexian;    //各类用地界限
	private java.math.BigDecimal dl_zuxiang;    //道路走向、红线位置、横断面，停车场位置
	private java.math.BigDecimal ld_weizhi;    //绿地位置和公共活动空间景观设计意向
	private java.math.BigDecimal sz_yongdi;    //各类市政公用设施及管线走向、主要控制点标高
	private java.math.BigDecimal zf_pingmian;    //住房建筑方案图总平面布置（院落布局、户型组合等）
	private java.math.BigDecimal zf_pingli;    //住房建筑方案图各层平立面图
	private java.math.BigDecimal zf_caise;    //住房建筑方案图彩色效果图
	private java.math.BigDecimal shuoming;    //说明书
	private java.math.BigDecimal jing_tong;    //经村民大会或村民代表大会讨论通过
	private java.math.BigDecimal xiang_shen;    //村民委员会审核
	private java.math.BigDecimal xian_shen;    //乡（镇）人民政府审批
	private java.math.BigDecimal yj_zhengji;    //规划成果意见征求
	private java.math.BigDecimal cheng_guo;    //规划成果公示及移交
	private java.math.BigDecimal cg_shangbao;    //规划成果按要求上报主管部门
	private java.math.BigDecimal cg_guidang;    //规划成果实行档案化管理提高分值
	private java.math.BigDecimal zs_buzhu;    //州（市）级补助资金投入
	private java.math.BigDecimal xian_buzhu;    //县（市、区）级补助资金投入
	private java.math.BigDecimal gh_bzshiyong;    //规划编制补助资金使用
	private java.math.BigDecimal jiangli;    //奖励分
	private java.math.BigDecimal zong;    //总得分
	private String ys_ren;    //验收人
	private java.sql.Date ys_shijian;    //验收时间
	private String qz_zhuanjia;    //签名专家
	private java.sql.Date tijiao;    //提交时间
	private String beizhu;    //备注
	private String remark;    //标识是县级（xian）州（zhou）省（sheng）
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Zrc_ghys(){
	}

	public Zrc_ghys(java.math.BigDecimal id){
		this.id = id;
	}

	
    //相关属性get/set方法
	public void setId(java.math.BigDecimal value) {
		this.id = value;
	}
	public java.math.BigDecimal getId() {
		return this.id;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
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
	
	public java.math.BigDecimal getYuan_blili() {
		return this.yuan_blili;
	}
	
	public void setYuan_blili(java.math.BigDecimal value) {
		this.yuan_blili = value;
	}
	
	public java.math.BigDecimal getJz_xianzhuang() {
		return this.jz_xianzhuang;
	}
	
	public void setJz_xianzhuang(java.math.BigDecimal value) {
		this.jz_xianzhuang = value;
	}
	
	public java.math.BigDecimal getJt_xianzhuang() {
		return this.jt_xianzhuang;
	}
	
	public void setJt_xianzhuang(java.math.BigDecimal value) {
		this.jt_xianzhuang = value;
	}
	
	public java.math.BigDecimal getJc_gg_xz() {
		return this.jc_gg_xz;
	}
	
	public void setJc_gg_xz(java.math.BigDecimal value) {
		this.jc_gg_xz = value;
	}
	
	public java.math.BigDecimal getXian_bili() {
		return this.xian_bili;
	}
	
	public void setXian_bili(java.math.BigDecimal value) {
		this.xian_bili = value;
	}
	
	public java.math.BigDecimal getYd_jiexian() {
		return this.yd_jiexian;
	}
	
	public void setYd_jiexian(java.math.BigDecimal value) {
		this.yd_jiexian = value;
	}
	
	public java.math.BigDecimal getDl_zuxiang() {
		return this.dl_zuxiang;
	}
	
	public void setDl_zuxiang(java.math.BigDecimal value) {
		this.dl_zuxiang = value;
	}
	
	public java.math.BigDecimal getLd_weizhi() {
		return this.ld_weizhi;
	}
	
	public void setLd_weizhi(java.math.BigDecimal value) {
		this.ld_weizhi = value;
	}
	
	public java.math.BigDecimal getSz_yongdi() {
		return this.sz_yongdi;
	}
	
	public void setSz_yongdi(java.math.BigDecimal value) {
		this.sz_yongdi = value;
	}
	
	public java.math.BigDecimal getZf_pingmian() {
		return this.zf_pingmian;
	}
	
	public void setZf_pingmian(java.math.BigDecimal value) {
		this.zf_pingmian = value;
	}
	
	public java.math.BigDecimal getZf_pingli() {
		return this.zf_pingli;
	}
	
	public void setZf_pingli(java.math.BigDecimal value) {
		this.zf_pingli = value;
	}
	
	public java.math.BigDecimal getZf_caise() {
		return this.zf_caise;
	}
	
	public void setZf_caise(java.math.BigDecimal value) {
		this.zf_caise = value;
	}
	
	public java.math.BigDecimal getShuoming() {
		return this.shuoming;
	}
	
	public void setShuoming(java.math.BigDecimal value) {
		this.shuoming = value;
	}
	
	public java.math.BigDecimal getJing_tong() {
		return this.jing_tong;
	}
	
	public void setJing_tong(java.math.BigDecimal value) {
		this.jing_tong = value;
	}
	
	public java.math.BigDecimal getXiang_shen() {
		return this.xiang_shen;
	}
	
	public void setXiang_shen(java.math.BigDecimal value) {
		this.xiang_shen = value;
	}
	
	public java.math.BigDecimal getXian_shen() {
		return this.xian_shen;
	}
	
	public void setXian_shen(java.math.BigDecimal value) {
		this.xian_shen = value;
	}
	
	public java.math.BigDecimal getYj_zhengji() {
		return this.yj_zhengji;
	}
	
	public void setYj_zhengji(java.math.BigDecimal value) {
		this.yj_zhengji = value;
	}
	
	public java.math.BigDecimal getCheng_guo() {
		return this.cheng_guo;
	}
	
	public void setCheng_guo(java.math.BigDecimal value) {
		this.cheng_guo = value;
	}
	
	public java.math.BigDecimal getCg_shangbao() {
		return this.cg_shangbao;
	}
	
	public void setCg_shangbao(java.math.BigDecimal value) {
		this.cg_shangbao = value;
	}
	
	public java.math.BigDecimal getCg_guidang() {
		return this.cg_guidang;
	}
	
	public void setCg_guidang(java.math.BigDecimal value) {
		this.cg_guidang = value;
	}
	
	public java.math.BigDecimal getZs_buzhu() {
		return this.zs_buzhu;
	}
	
	public void setZs_buzhu(java.math.BigDecimal value) {
		this.zs_buzhu = value;
	}
	
	public java.math.BigDecimal getXian_buzhu() {
		return this.xian_buzhu;
	}
	
	public void setXian_buzhu(java.math.BigDecimal value) {
		this.xian_buzhu = value;
	}
	
	public java.math.BigDecimal getGh_bzshiyong() {
		return this.gh_bzshiyong;
	}
	
	public void setGh_bzshiyong(java.math.BigDecimal value) {
		this.gh_bzshiyong = value;
	}
	
	public java.math.BigDecimal getJiangli() {
		return this.jiangli;
	}
	
	public void setJiangli(java.math.BigDecimal value) {
		this.jiangli = value;
	}
	
	public java.math.BigDecimal getZong() {
		return this.zong;
	}
	
	public void setZong(java.math.BigDecimal value) {
		this.zong = value;
	}
	
	public String getYs_ren() {
		return this.ys_ren;
	}
	
	public void setYs_ren(String value) {
		this.ys_ren = value;
	}
	
	public java.sql.Date getYs_shijian() {
		return this.ys_shijian;
	}
	
	public void setYs_shijian(java.sql.Date value) {
		this.ys_shijian = value;
	}
	
	public String getQz_zhuanjia() {
		return this.qz_zhuanjia;
	}
	
	public void setQz_zhuanjia(String value) {
		this.qz_zhuanjia = value;
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
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("unit_id",getUnit_id())
			.append("year",getYear())
			.append("yuan_blili",getYuan_blili())
			.append("jz_xianzhuang",getJz_xianzhuang())
			.append("jt_xianzhuang",getJt_xianzhuang())
			.append("jc_gg_xz",getJc_gg_xz())
			.append("xian_bili",getXian_bili())
			.append("yd_jiexian",getYd_jiexian())
			.append("dl_zuxiang",getDl_zuxiang())
			.append("ld_weizhi",getLd_weizhi())
			.append("sz_yongdi",getSz_yongdi())
			.append("zf_pingmian",getZf_pingmian())
			.append("zf_pingli",getZf_pingli())
			.append("zf_caise",getZf_caise())
			.append("shuoming",getShuoming())
			.append("jing_tong",getJing_tong())
			.append("xiang_shen",getXiang_shen())
			.append("xian_shen",getXian_shen())
			.append("yj_zhengji",getYj_zhengji())
			.append("cheng_guo",getCheng_guo())
			.append("cg_shangbao",getCg_shangbao())
			.append("cg_guidang",getCg_guidang())
			.append("zs_buzhu",getZs_buzhu())
			.append("xian_buzhu",getXian_buzhu())
			.append("gh_bzshiyong",getGh_bzshiyong())
			.append("jiangli",getJiangli())
			.append("zong",getZong())
			.append("ys_ren",getYs_ren())
			.append("ys_shijian",getYs_shijian())
			.append("qz_zhuanjia",getQz_zhuanjia())
			.append("tijiao",getTijiao())
			.append("beizhu",getBeizhu())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUnit_id())
			.append(getYear())
			.append(getYuan_blili())
			.append(getJz_xianzhuang())
			.append(getJt_xianzhuang())
			.append(getJc_gg_xz())
			.append(getXian_bili())
			.append(getYd_jiexian())
			.append(getDl_zuxiang())
			.append(getLd_weizhi())
			.append(getSz_yongdi())
			.append(getZf_pingmian())
			.append(getZf_pingli())
			.append(getZf_caise())
			.append(getShuoming())
			.append(getJing_tong())
			.append(getXiang_shen())
			.append(getXian_shen())
			.append(getYj_zhengji())
			.append(getCheng_guo())
			.append(getCg_shangbao())
			.append(getCg_guidang())
			.append(getZs_buzhu())
			.append(getXian_buzhu())
			.append(getGh_bzshiyong())
			.append(getJiangli())
			.append(getZong())
			.append(getYs_ren())
			.append(getYs_shijian())
			.append(getQz_zhuanjia())
			.append(getTijiao())
			.append(getBeizhu())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Zrc_ghys == false) return false;
		if(this == obj) return true;
		Zrc_ghys other = (Zrc_ghys)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getYear(),other.getYear())
			.append(getYuan_blili(),other.getYuan_blili())
			.append(getJz_xianzhuang(),other.getJz_xianzhuang())
			.append(getJt_xianzhuang(),other.getJt_xianzhuang())
			.append(getJc_gg_xz(),other.getJc_gg_xz())
			.append(getXian_bili(),other.getXian_bili())
			.append(getYd_jiexian(),other.getYd_jiexian())
			.append(getDl_zuxiang(),other.getDl_zuxiang())
			.append(getLd_weizhi(),other.getLd_weizhi())
			.append(getSz_yongdi(),other.getSz_yongdi())
			.append(getZf_pingmian(),other.getZf_pingmian())
			.append(getZf_pingli(),other.getZf_pingli())
			.append(getZf_caise(),other.getZf_caise())
			.append(getShuoming(),other.getShuoming())
			.append(getJing_tong(),other.getJing_tong())
			.append(getXiang_shen(),other.getXiang_shen())
			.append(getXian_shen(),other.getXian_shen())
			.append(getYj_zhengji(),other.getYj_zhengji())
			.append(getCheng_guo(),other.getCheng_guo())
			.append(getCg_shangbao(),other.getCg_shangbao())
			.append(getCg_guidang(),other.getCg_guidang())
			.append(getZs_buzhu(),other.getZs_buzhu())
			.append(getXian_buzhu(),other.getXian_buzhu())
			.append(getGh_bzshiyong(),other.getGh_bzshiyong())
			.append(getJiangli(),other.getJiangli())
			.append(getZong(),other.getZong())
			.append(getYs_ren(),other.getYs_ren())
			.append(getYs_shijian(),other.getYs_shijian())
			.append(getQz_zhuanjia(),other.getQz_zhuanjia())
			.append(getTijiao(),other.getTijiao())
			.append(getBeizhu(),other.getBeizhu())
			.isEquals();
	}
*/
}
