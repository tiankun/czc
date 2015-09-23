/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-10-9</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;

import java.util.Date;

public class Gushu{
	

	//数据库相关字段
	private Long id;    //主键
	private Long unit_id;    //所属乡镇
	private String num;    //编号
	private String diaocha;    //调查年月
	private String mingcheng;    //树种及俗名
	private String didian;    //具体地点
	private String leixing;    //类型
	private String jibie;    //古树级别
	private java.math.BigDecimal shuling;    //树龄（年）
	private java.math.BigDecimal shugao;    //树高（米）
	private java.math.BigDecimal guanfu_dx;    //冠幅（东西米）
	private java.math.BigDecimal guanfu_nb;    //冠幅（南北米）
	private java.math.BigDecimal xongwei;    //胸围（米）
	private String shengzhang;    //生长状况
	private String huanjing;    //四周环境情况
	private String baohu;    //保护现状
	private Long qun;    //所属古树群号
	private String beizhu;    //备注
	private java.sql.Timestamp input;    //添加时间
	private String latin;    //拉丁学名
	private String chn;    //中文学名
	private String ke;    //科
	private String shu;    //属
	private String expert;    //专家名
	private String ept_op;    //审核意见
	private String zj_result;    //审查结果
	private Date zj_date;    //专家审查时间
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Gushu(){
	}

	public Gushu(Long id){
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
	
	public String getNum() {
		return this.num;
	}
	
	public void setNum(String value) {
		this.num = value;
	}
	
	public String getDiaocha() {
		return this.diaocha;
	}
	
	public void setDiaocha(String value) {
		this.diaocha = value;
	}
	
	public String getMingcheng() {
		return this.mingcheng;
	}
	
	public void setMingcheng(String value) {
		this.mingcheng = value;
	}
	
	public String getDidian() {
		return this.didian;
	}
	
	public void setDidian(String value) {
		this.didian = value;
	}
	
	public String getLatin() {
		return latin;
	}

	public void setLatin(String latin) {
		this.latin = latin;
	}

	public String getChn() {
		return chn;
	}

	public void setChn(String chn) {
		this.chn = chn;
	}

	public String getKe() {
		return ke;
	}

	public void setKe(String ke) {
		this.ke = ke;
	}

	public String getShu() {
		return shu;
	}

	public void setShu(String shu) {
		this.shu = shu;
	}

	public String getExpert() {
		return expert;
	}

	public void setExpert(String expert) {
		this.expert = expert;
	}

	public String getEpt_op() {
		return ept_op;
	}

	public void setEpt_op(String ept_op) {
		this.ept_op = ept_op;
	}

	public String getLeixing() {
		return this.leixing;
	}
	
	public void setLeixing(String value) {
		this.leixing = value;
	}
	
	public String getJibie() {
		return this.jibie;
	}
	
	public void setJibie(String value) {
		this.jibie = value;
	}
	
	public java.math.BigDecimal getShuling() {
		return this.shuling;
	}
	
	public void setShuling(java.math.BigDecimal value) {
		this.shuling = value;
	}
	
	public java.math.BigDecimal getShugao() {
		return this.shugao;
	}
	
	public void setShugao(java.math.BigDecimal value) {
		this.shugao = value;
	}
	
	public java.math.BigDecimal getGuanfu_dx() {
		return this.guanfu_dx;
	}
	
	public void setGuanfu_dx(java.math.BigDecimal value) {
		this.guanfu_dx = value;
	}
	
	public java.math.BigDecimal getGuanfu_nb() {
		return this.guanfu_nb;
	}
	
	public void setGuanfu_nb(java.math.BigDecimal value) {
		this.guanfu_nb = value;
	}
	
	public java.math.BigDecimal getXongwei() {
		return this.xongwei;
	}
	
	public void setXongwei(java.math.BigDecimal value) {
		this.xongwei = value;
	}
	
	public String getShengzhang() {
		return this.shengzhang;
	}
	
	public void setShengzhang(String value) {
		this.shengzhang = value;
	}
	
	public String getHuanjing() {
		return this.huanjing;
	}
	
	public void setHuanjing(String value) {
		this.huanjing = value;
	}
	
	public String getBaohu() {
		return this.baohu;
	}
	
	public void setBaohu(String value) {
		this.baohu = value;
	}
	
	public Long getQun() {
		return this.qun;
	}
	
	public void setQun(Long value) {
		this.qun = value;
	}
	
	public String getBeizhu() {
		return this.beizhu;
	}
	
	public void setBeizhu(String value) {
		this.beizhu = value;
	}
	
	public java.sql.Timestamp getInput() {
		return this.input;
	}
	
	public void setInput(java.sql.Timestamp value) {
		this.input = value;
	}

	public String getZj_result() {
		return zj_result;
	}

	public void setZj_result(String zj_result) {
		this.zj_result = zj_result;
	}

	public Date getZj_date() {
		return zj_date;
	}

	public void setZj_date(Date zj_date) {
		this.zj_date = zj_date;
	}

	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("unit_id",getUnit_id())
			.append("num",getNum())
			.append("diaocha",getDiaocha())
			.append("mingcheng",getMingcheng())
			.append("didian",getDidian())
			.append("leixing",getLeixing())
			.append("jibie",getJibie())
			.append("shuling",getShuling())
			.append("shugao",getShugao())
			.append("guanfu_dx",getGuanfu_dx())
			.append("guanfu_nb",getGuanfu_nb())
			.append("xongwei",getXongwei())
			.append("shengzhang",getShengzhang())
			.append("huanjing",getHuanjing())
			.append("baohu",getBaohu())
			.append("qun",getQun())
			.append("beizhu",getBeizhu())
			.append("input",getInput())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUnit_id())
			.append(getNum())
			.append(getDiaocha())
			.append(getMingcheng())
			.append(getDidian())
			.append(getLeixing())
			.append(getJibie())
			.append(getShuling())
			.append(getShugao())
			.append(getGuanfu_dx())
			.append(getGuanfu_nb())
			.append(getXongwei())
			.append(getShengzhang())
			.append(getHuanjing())
			.append(getBaohu())
			.append(getQun())
			.append(getBeizhu())
			.append(getInput())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Gushu == false) return false;
		if(this == obj) return true;
		Gushu other = (Gushu)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getNum(),other.getNum())
			.append(getDiaocha(),other.getDiaocha())
			.append(getMingcheng(),other.getMingcheng())
			.append(getDidian(),other.getDidian())
			.append(getLeixing(),other.getLeixing())
			.append(getJibie(),other.getJibie())
			.append(getShuling(),other.getShuling())
			.append(getShugao(),other.getShugao())
			.append(getGuanfu_dx(),other.getGuanfu_dx())
			.append(getGuanfu_nb(),other.getGuanfu_nb())
			.append(getXongwei(),other.getXongwei())
			.append(getShengzhang(),other.getShengzhang())
			.append(getHuanjing(),other.getHuanjing())
			.append(getBaohu(),other.getBaohu())
			.append(getQun(),other.getQun())
			.append(getBeizhu(),other.getBeizhu())
			.append(getInput(),other.getInput())
			.isEquals();
	}
*/
}
