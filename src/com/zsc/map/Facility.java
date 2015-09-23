/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2011-5-18</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;

import java.math.BigDecimal;

public class Facility{
	

	//数据库相关字段
	private Integer id;    //主键
	private Integer unit_id;    //对应用户主键
	private Integer year;    //年份
	private String zilai;    //有无供水设施
	private String zilai_remark;    //已通自来水备注
	private BigDecimal zl_guimo;    //供水规模（万立方米/日|立方米/日）
	private BigDecimal zl_fuwu;    //服务人口(万人)
	private Integer zl_jiancheng;    //建成年份
	private BigDecimal zl_touzi;    //建设投资（万元）
	private String zl_guan;    //供水管网情况
	private BigDecimal zl_guanchang;    //供水管网长度（公里）
	private BigDecimal zl_mianji;    //服务面积（平方公里）
	private BigDecimal zl_shuijia;    //居民用水水价（元/立方米）
	private BigDecimal zl_jingying;    //经营用水水价（元/立方米）
	private BigDecimal zl_gongye;    //工业用水水价（元/立方米）
	private String ws_qingkuang;    //污水处理设施
	private String ws_remark;    //污水设施备注
	private BigDecimal ws_guimo;    //污水处理规模（万立方米/日）
	private Integer ws_jiancheng;    //建成年份
	private BigDecimal ws_touzi;    //建设投资（万元）
	private String ws_fenliu;    //是否实现雨污分流
	private String ws_guan;    //有无污水管网
	private BigDecimal ws_guanchang;    //污水管网长度
	private BigDecimal ws_fei;    //排污费单价（元/立方米）
	private String lj_qingkuang;    //垃圾处理设施情况
	private String lj_remark;    //垃圾处理设施备注
	private BigDecimal lj_guimo;    //垃圾处理规模
	private BigDecimal lj_nianxian;    //垃圾处理设施使用年限
	private Integer lj_jaincheng;    //建成年份
	private BigDecimal lj_touzi;    //建设投资（万元）
	private Integer lj_zhongzhuan;    //垃圾中转站数量（座）
	private Integer lj_che;    //垃圾清运车数量（辆）
	private String gong_lu;    //是否通公路
	private String jd_qingkuang;    //建成区街道建设情况
	private Integer jd_shu;    //现存数量
	private String jm_qingkuang;    //建成区集贸市场建设情况
	private Integer jm_shu;    //现存数量
	private String remark;    //备注
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Facility(){
	}

	public Facility(Integer id){
		this.id = id;
	}

	
    //相关属性get/set方法
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
	
	public String getZilai() {
		return this.zilai;
	}
	
	public void setZilai(String value) {
		this.zilai = value;
	}
	
	public String getZilai_remark() {
		return this.zilai_remark;
	}
	
	public void setZilai_remark(String value) {
		this.zilai_remark = value;
	}
	
	public BigDecimal getZl_guimo() {
		return this.zl_guimo;
	}
	
	public void setZl_guimo(BigDecimal value) {
		this.zl_guimo = value;
	}
	
	public BigDecimal getZl_fuwu() {
		return this.zl_fuwu;
	}
	
	public void setZl_fuwu(BigDecimal value) {
		this.zl_fuwu = value;
	}
	
	public Integer getZl_jiancheng() {
		return this.zl_jiancheng;
	}
	
	public void setZl_jiancheng(Integer value) {
		this.zl_jiancheng = value;
	}
	
	public BigDecimal getZl_touzi() {
		return this.zl_touzi;
	}
	
	public void setZl_touzi(BigDecimal value) {
		this.zl_touzi = value;
	}
	
	public String getZl_guan() {
		return this.zl_guan;
	}
	
	public void setZl_guan(String value) {
		this.zl_guan = value;
	}
	
	public BigDecimal getZl_guanchang() {
		return this.zl_guanchang;
	}
	
	public void setZl_guanchang(BigDecimal value) {
		this.zl_guanchang = value;
	}
	
	public BigDecimal getZl_mianji() {
		return this.zl_mianji;
	}
	
	public void setZl_mianji(BigDecimal value) {
		this.zl_mianji = value;
	}
	
	public BigDecimal getZl_shuijia() {
		return this.zl_shuijia;
	}
	
	public void setZl_shuijia(BigDecimal value) {
		this.zl_shuijia = value;
	}
	
	public BigDecimal getZl_jingying() {
		return this.zl_jingying;
	}
	
	public void setZl_jingying(BigDecimal value) {
		this.zl_jingying = value;
	}
	
	public BigDecimal getZl_gongye() {
		return this.zl_gongye;
	}
	
	public void setZl_gongye(BigDecimal value) {
		this.zl_gongye = value;
	}
	
	public String getWs_qingkuang() {
		return this.ws_qingkuang;
	}
	
	public void setWs_qingkuang(String value) {
		this.ws_qingkuang = value;
	}
	
	public String getWs_remark() {
		return this.ws_remark;
	}
	
	public void setWs_remark(String value) {
		this.ws_remark = value;
	}
	
	public BigDecimal getWs_guimo() {
		return this.ws_guimo;
	}
	
	public void setWs_guimo(BigDecimal value) {
		this.ws_guimo = value;
	}
	
	public Integer getWs_jiancheng() {
		return this.ws_jiancheng;
	}
	
	public void setWs_jiancheng(Integer value) {
		this.ws_jiancheng = value;
	}
	
	public BigDecimal getWs_touzi() {
		return this.ws_touzi;
	}
	
	public void setWs_touzi(BigDecimal value) {
		this.ws_touzi = value;
	}
	
	public String getWs_fenliu() {
		return this.ws_fenliu;
	}
	
	public void setWs_fenliu(String value) {
		this.ws_fenliu = value;
	}
	
	public String getWs_guan() {
		return this.ws_guan;
	}
	
	public void setWs_guan(String value) {
		this.ws_guan = value;
	}
	
	public BigDecimal getWs_guanchang() {
		return this.ws_guanchang;
	}
	
	public void setWs_guanchang(BigDecimal value) {
		this.ws_guanchang = value;
	}
	
	public BigDecimal getWs_fei() {
		return this.ws_fei;
	}
	
	public void setWs_fei(BigDecimal value) {
		this.ws_fei = value;
	}
	
	public String getLj_qingkuang() {
		return this.lj_qingkuang;
	}
	
	public void setLj_qingkuang(String value) {
		this.lj_qingkuang = value;
	}
	
	public String getLj_remark() {
		return this.lj_remark;
	}
	
	public void setLj_remark(String value) {
		this.lj_remark = value;
	}
	
	public BigDecimal getLj_guimo() {
		return this.lj_guimo;
	}
	
	public void setLj_guimo(BigDecimal value) {
		this.lj_guimo = value;
	}
	
	public BigDecimal getLj_nianxian() {
		return this.lj_nianxian;
	}
	
	public void setLj_nianxian(BigDecimal value) {
		this.lj_nianxian = value;
	}
	
	public Integer getLj_jaincheng() {
		return this.lj_jaincheng;
	}
	
	public void setLj_jaincheng(Integer value) {
		this.lj_jaincheng = value;
	}
	
	public BigDecimal getLj_touzi() {
		return this.lj_touzi;
	}
	
	public void setLj_touzi(BigDecimal value) {
		this.lj_touzi = value;
	}
	
	public Integer getLj_zhongzhuan() {
		return this.lj_zhongzhuan;
	}
	
	public void setLj_zhongzhuan(Integer value) {
		this.lj_zhongzhuan = value;
	}
	
	public Integer getLj_che() {
		return this.lj_che;
	}
	
	public void setLj_che(Integer value) {
		this.lj_che = value;
	}
	
	public String getGong_lu() {
		return this.gong_lu;
	}
	
	public void setGong_lu(String value) {
		this.gong_lu = value;
	}
	
	public String getJd_qingkuang() {
		return this.jd_qingkuang;
	}
	
	public void setJd_qingkuang(String value) {
		this.jd_qingkuang = value;
	}
	
	public Integer getJd_shu() {
		return this.jd_shu;
	}
	
	public void setJd_shu(Integer value) {
		this.jd_shu = value;
	}
	
	public String getJm_qingkuang() {
		return this.jm_qingkuang;
	}
	
	public void setJm_qingkuang(String value) {
		this.jm_qingkuang = value;
	}
	
	public Integer getJm_shu() {
		return this.jm_shu;
	}
	
	public void setJm_shu(Integer value) {
		this.jm_shu = value;
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
			.append("zilai",getZilai())
			.append("zilai_remark",getZilai_remark())
			.append("zl_guimo",getZl_guimo())
			.append("zl_fuwu",getZl_fuwu())
			.append("zl_jiancheng",getZl_jiancheng())
			.append("zl_touzi",getZl_touzi())
			.append("zl_guan",getZl_guan())
			.append("zl_guanchang",getZl_guanchang())
			.append("zl_mianji",getZl_mianji())
			.append("zl_shuijia",getZl_shuijia())
			.append("zl_jingying",getZl_jingying())
			.append("zl_gongye",getZl_gongye())
			.append("ws_qingkuang",getWs_qingkuang())
			.append("ws_remark",getWs_remark())
			.append("ws_guimo",getWs_guimo())
			.append("ws_jiancheng",getWs_jiancheng())
			.append("ws_touzi",getWs_touzi())
			.append("ws_fenliu",getWs_fenliu())
			.append("ws_guan",getWs_guan())
			.append("ws_guanchang",getWs_guanchang())
			.append("ws_fei",getWs_fei())
			.append("lj_qingkuang",getLj_qingkuang())
			.append("lj_remark",getLj_remark())
			.append("lj_guimo",getLj_guimo())
			.append("lj_nianxian",getLj_nianxian())
			.append("lj_jaincheng",getLj_jaincheng())
			.append("lj_touzi",getLj_touzi())
			.append("lj_zhongzhuan",getLj_zhongzhuan())
			.append("lj_che",getLj_che())
			.append("gong_lu",getGong_lu())
			.append("jd_qingkuang",getJd_qingkuang())
			.append("jd_shu",getJd_shu())
			.append("jm_qingkuang",getJm_qingkuang())
			.append("jm_shu",getJm_shu())
			.append("remark",getRemark())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUnit_id())
			.append(getYear())
			.append(getZilai())
			.append(getZilai_remark())
			.append(getZl_guimo())
			.append(getZl_fuwu())
			.append(getZl_jiancheng())
			.append(getZl_touzi())
			.append(getZl_guan())
			.append(getZl_guanchang())
			.append(getZl_mianji())
			.append(getZl_shuijia())
			.append(getZl_jingying())
			.append(getZl_gongye())
			.append(getWs_qingkuang())
			.append(getWs_remark())
			.append(getWs_guimo())
			.append(getWs_jiancheng())
			.append(getWs_touzi())
			.append(getWs_fenliu())
			.append(getWs_guan())
			.append(getWs_guanchang())
			.append(getWs_fei())
			.append(getLj_qingkuang())
			.append(getLj_remark())
			.append(getLj_guimo())
			.append(getLj_nianxian())
			.append(getLj_jaincheng())
			.append(getLj_touzi())
			.append(getLj_zhongzhuan())
			.append(getLj_che())
			.append(getGong_lu())
			.append(getJd_qingkuang())
			.append(getJd_shu())
			.append(getJm_qingkuang())
			.append(getJm_shu())
			.append(getRemark())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Facility == false) return false;
		if(this == obj) return true;
		Facility other = (Facility)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getYear(),other.getYear())
			.append(getZilai(),other.getZilai())
			.append(getZilai_remark(),other.getZilai_remark())
			.append(getZl_guimo(),other.getZl_guimo())
			.append(getZl_fuwu(),other.getZl_fuwu())
			.append(getZl_jiancheng(),other.getZl_jiancheng())
			.append(getZl_touzi(),other.getZl_touzi())
			.append(getZl_guan(),other.getZl_guan())
			.append(getZl_guanchang(),other.getZl_guanchang())
			.append(getZl_mianji(),other.getZl_mianji())
			.append(getZl_shuijia(),other.getZl_shuijia())
			.append(getZl_jingying(),other.getZl_jingying())
			.append(getZl_gongye(),other.getZl_gongye())
			.append(getWs_qingkuang(),other.getWs_qingkuang())
			.append(getWs_remark(),other.getWs_remark())
			.append(getWs_guimo(),other.getWs_guimo())
			.append(getWs_jiancheng(),other.getWs_jiancheng())
			.append(getWs_touzi(),other.getWs_touzi())
			.append(getWs_fenliu(),other.getWs_fenliu())
			.append(getWs_guan(),other.getWs_guan())
			.append(getWs_guanchang(),other.getWs_guanchang())
			.append(getWs_fei(),other.getWs_fei())
			.append(getLj_qingkuang(),other.getLj_qingkuang())
			.append(getLj_remark(),other.getLj_remark())
			.append(getLj_guimo(),other.getLj_guimo())
			.append(getLj_nianxian(),other.getLj_nianxian())
			.append(getLj_jaincheng(),other.getLj_jaincheng())
			.append(getLj_touzi(),other.getLj_touzi())
			.append(getLj_zhongzhuan(),other.getLj_zhongzhuan())
			.append(getLj_che(),other.getLj_che())
			.append(getGong_lu(),other.getGong_lu())
			.append(getJd_qingkuang(),other.getJd_qingkuang())
			.append(getJd_shu(),other.getJd_shu())
			.append(getJm_qingkuang(),other.getJm_qingkuang())
			.append(getJm_shu(),other.getJm_shu())
			.append(getRemark(),other.getRemark())
			.isEquals();
	}
*/
}
