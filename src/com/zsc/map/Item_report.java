/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;

import java.math.BigDecimal;
import java.sql.Date;

public class Item_report{
	

	//数据库相关字段
	private Long id;    //主键
	private Long item;    //项目
	private String yuefen;    //上报月份
	private String jieduan;    //所处阶段
	private BigDecimal jh_daowei;    //本月计划到位资金（万元）
	private BigDecimal sj_daowei;    //本月实际到位资金（万元）
	private BigDecimal sj_shiyong;    //本月实际使用资金（万元）
	private BigDecimal lj_daowei;    //当前累计到位资金（万元）
	private BigDecimal lj_shiyong;    //当前累计使用资金（万元）
	private String jinzhan;    //建设进展情况
	private String wenti;    //目前存在问题
	private String tf_jh;    //土石方总方量计划工作量
	private String tf_sj;    //土石方总方量已完成量
	private String jz_jh;    //建筑物计划工作量
	private String jz_sj;    //建筑物已完成量
	private String sb_jh;    //设备工程安装计划工作量
	private String sb_sj;    //设备工程安装已完成量
	private String sg_jh;    //水工构件物计划工作量
	private String sg_sj;    //水工构件物已完成量
	private String gw_jh;    //管网改造计划工作量
	private String gw_sj;    //管网改造已完成量
	private String qt_jh;    //其他计划工作量
	private String qt_sj;    //其他已完成量
	private String zlaq;    //质量、安全情况
	private String qita;    //其他方面情况
	private String remark;    //备注
	private Date input;    //添加时间
	private Date pizhun;    //批准时间
	private String pz_zhuangtai;    //批准状态(1:按期；2：未按期)
	private String pz_yijian;    //批准意见
	private String type;    //类型（1：月报，2：季报）
	private BigDecimal zengjia;    //本月增加管网（公里）
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Item_report(){
	}

	public Item_report(Long id){
		this.id = id;
	}

	
    //相关属性get/set方法
	public void setId(Long value) {
		this.id = value;
	}
	public Long getId() {
		return this.id;
	}
	public Long getItem() {
		return this.item;
	}
	
	public void setItem(Long value) {
		this.item = value;
	}
	
	public String getYuefen() {
		return this.yuefen;
	}
	
	public void setYuefen(String value) {
		this.yuefen = value;
	}
	
	public String getJieduan() {
		return this.jieduan;
	}
	
	public void setJieduan(String value) {
		this.jieduan = value;
	}
	
	public BigDecimal getJh_daowei() {
		return this.jh_daowei;
	}
	
	public void setJh_daowei(BigDecimal value) {
		this.jh_daowei = value;
	}
	
	public BigDecimal getSj_daowei() {
		return this.sj_daowei;
	}
	
	public void setSj_daowei(BigDecimal value) {
		this.sj_daowei = value;
	}
	
	public BigDecimal getSj_shiyong() {
		return this.sj_shiyong;
	}
	
	public void setSj_shiyong(BigDecimal value) {
		this.sj_shiyong = value;
	}
	
	public BigDecimal getLj_daowei() {
		return this.lj_daowei;
	}
	
	public void setLj_daowei(BigDecimal value) {
		this.lj_daowei = value;
	}
	
	public BigDecimal getLj_shiyong() {
		return this.lj_shiyong;
	}
	
	public void setLj_shiyong(BigDecimal value) {
		this.lj_shiyong = value;
	}
	
	public String getJinzhan() {
		return this.jinzhan;
	}
	
	public void setJinzhan(String value) {
		this.jinzhan = value;
	}
	
	public String getWenti() {
		return this.wenti;
	}
	
	public void setWenti(String value) {
		this.wenti = value;
	}
	
	public String getTf_jh() {
		return this.tf_jh;
	}
	
	public void setTf_jh(String value) {
		this.tf_jh = value;
	}
	
	public String getTf_sj() {
		return this.tf_sj;
	}
	
	public void setTf_sj(String value) {
		this.tf_sj = value;
	}
	
	public String getJz_jh() {
		return this.jz_jh;
	}
	
	public void setJz_jh(String value) {
		this.jz_jh = value;
	}
	
	public String getJz_sj() {
		return this.jz_sj;
	}
	
	public void setJz_sj(String value) {
		this.jz_sj = value;
	}
	
	public String getSb_jh() {
		return this.sb_jh;
	}
	
	public void setSb_jh(String value) {
		this.sb_jh = value;
	}
	
	public String getSb_sj() {
		return this.sb_sj;
	}
	
	public void setSb_sj(String value) {
		this.sb_sj = value;
	}
	
	public String getSg_jh() {
		return this.sg_jh;
	}
	
	public void setSg_jh(String value) {
		this.sg_jh = value;
	}
	
	public String getSg_sj() {
		return this.sg_sj;
	}
	
	public void setSg_sj(String value) {
		this.sg_sj = value;
	}
	
	public String getGw_jh() {
		return this.gw_jh;
	}
	
	public void setGw_jh(String value) {
		this.gw_jh = value;
	}
	
	public String getGw_sj() {
		return this.gw_sj;
	}
	
	public void setGw_sj(String value) {
		this.gw_sj = value;
	}
	
	public String getQt_jh() {
		return this.qt_jh;
	}
	
	public void setQt_jh(String value) {
		this.qt_jh = value;
	}
	
	public String getQt_sj() {
		return this.qt_sj;
	}
	
	public void setQt_sj(String value) {
		this.qt_sj = value;
	}
	
	public String getZlaq() {
		return this.zlaq;
	}
	
	public void setZlaq(String value) {
		this.zlaq = value;
	}
	
	public String getQita() {
		return this.qita;
	}
	
	public void setQita(String value) {
		this.qita = value;
	}
	
	public String getRemark() {
		return this.remark;
	}
	
	public void setRemark(String value) {
		this.remark = value;
	}
	
	public Date getInput() {
		return this.input;
	}
	
	public void setInput(Date value) {
		this.input = value;
	}
	
	public Date getPizhun() {
		return this.pizhun;
	}
	
	public void setPizhun(Date value) {
		this.pizhun = value;
	}
	
	public String getPz_zhuangtai() {
		return this.pz_zhuangtai;
	}
	
	public void setPz_zhuangtai(String value) {
		this.pz_zhuangtai = value;
	}
	
	public String getPz_yijian() {
		return this.pz_yijian;
	}
	
	public void setPz_yijian(String value) {
		this.pz_yijian = value;
	}
	
	public String getType() {
		return this.type;
	}
	
	public void setType(String value) {
		this.type = value;
	}
	
	public BigDecimal getZengjia() {
		return this.zengjia;
	}
	
	public void setZengjia(BigDecimal value) {
		this.zengjia = value;
	}
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("item",getItem())
			.append("yuefen",getYuefen())
			.append("jieduan",getJieduan())
			.append("jh_daowei",getJh_daowei())
			.append("sj_daowei",getSj_daowei())
			.append("sj_shiyong",getSj_shiyong())
			.append("lj_daowei",getLj_daowei())
			.append("lj_shiyong",getLj_shiyong())
			.append("cz_jinzhan",getCz_jinzhan())
			.append("gw_jinzhan",getGw_jinzhan())
			.append("wenti",getWenti())
			.append("tf_jh",getTf_jh())
			.append("tf_sj",getTf_sj())
			.append("jz_jh",getJz_jh())
			.append("jz_sj",getJz_sj())
			.append("sb_jh",getSb_jh())
			.append("sb_sj",getSb_sj())
			.append("sg_jh",getSg_jh())
			.append("sg_sj",getSg_sj())
			.append("gw_jh",getGw_jh())
			.append("gw_sj",getGw_sj())
			.append("qt_jh",getQt_jh())
			.append("qt_sj",getQt_sj())
			.append("zlaq",getZlaq())
			.append("qita",getQita())
			.append("remark",getRemark())
			.append("input",getInput())
			.append("pizhun",getPizhun())
			.append("pz_zhuangtai",getPz_zhuangtai())
			.append("pz_yijian",getPz_yijian())
			.append("type",getType())
			.append("zengjia",getZengjia())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getItem())
			.append(getYuefen())
			.append(getJieduan())
			.append(getJh_daowei())
			.append(getSj_daowei())
			.append(getSj_shiyong())
			.append(getLj_daowei())
			.append(getLj_shiyong())
			.append(getCz_jinzhan())
			.append(getGw_jinzhan())
			.append(getWenti())
			.append(getTf_jh())
			.append(getTf_sj())
			.append(getJz_jh())
			.append(getJz_sj())
			.append(getSb_jh())
			.append(getSb_sj())
			.append(getSg_jh())
			.append(getSg_sj())
			.append(getGw_jh())
			.append(getGw_sj())
			.append(getQt_jh())
			.append(getQt_sj())
			.append(getZlaq())
			.append(getQita())
			.append(getRemark())
			.append(getInput())
			.append(getPizhun())
			.append(getPz_zhuangtai())
			.append(getPz_yijian())
			.append(getType())
			.append(getZengjia())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Item_report == false) return false;
		if(this == obj) return true;
		Item_report other = (Item_report)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getItem(),other.getItem())
			.append(getYuefen(),other.getYuefen())
			.append(getJieduan(),other.getJieduan())
			.append(getJh_daowei(),other.getJh_daowei())
			.append(getSj_daowei(),other.getSj_daowei())
			.append(getSj_shiyong(),other.getSj_shiyong())
			.append(getLj_daowei(),other.getLj_daowei())
			.append(getLj_shiyong(),other.getLj_shiyong())
			.append(getCz_jinzhan(),other.getCz_jinzhan())
			.append(getGw_jinzhan(),other.getGw_jinzhan())
			.append(getWenti(),other.getWenti())
			.append(getTf_jh(),other.getTf_jh())
			.append(getTf_sj(),other.getTf_sj())
			.append(getJz_jh(),other.getJz_jh())
			.append(getJz_sj(),other.getJz_sj())
			.append(getSb_jh(),other.getSb_jh())
			.append(getSb_sj(),other.getSb_sj())
			.append(getSg_jh(),other.getSg_jh())
			.append(getSg_sj(),other.getSg_sj())
			.append(getGw_jh(),other.getGw_jh())
			.append(getGw_sj(),other.getGw_sj())
			.append(getQt_jh(),other.getQt_jh())
			.append(getQt_sj(),other.getQt_sj())
			.append(getZlaq(),other.getZlaq())
			.append(getQita(),other.getQita())
			.append(getRemark(),other.getRemark())
			.append(getInput(),other.getInput())
			.append(getPizhun(),other.getPizhun())
			.append(getPz_zhuangtai(),other.getPz_zhuangtai())
			.append(getPz_yijian(),other.getPz_yijian())
			.append(getType(),other.getType())
			.append(getZengjia(),other.getZengjia())
			.isEquals();
	}
*/
}
