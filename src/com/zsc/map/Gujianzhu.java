/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-10-9</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;

import java.util.Date;

public class Gujianzhu{
	

	//数据库相关字段
	private Long id;    //主键
	private Long unit_id;    //所属乡镇
	private String num;    //编号
	private String diaocha;    //调查日期
	private String mingcheng;    //项目名称
	private String didian;    //具体地点
	private String jianzao_type;    //建筑年代类型
	private java.math.BigDecimal jianzao_nian;    //建筑年代
	private String jianzao_chao;    //建筑年代朝代
	private String jiegou;    //结构形式
	private java.math.BigDecimal cengshu;    //建筑层数（层）
	private java.math.BigDecimal gaodu;    //建筑高度（米）
	private java.math.BigDecimal mianji;    //建筑面积（平方米）
	private String xianzhuang;    //建筑现状及初步评价
	private String beizhu;    //备注
	private java.sql.Timestamp input;    //添加时间
	private String expert;    //专家名
	private String ept_op;    //审核意见
	private String zj_result;    //审查结果
	private Date zj_date;    //专家审查时间
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Gujianzhu(){
	}

	public Gujianzhu(Long id){
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
	
	public String getJianzao_type() {
		return this.jianzao_type;
	}
	
	public void setJianzao_type(String value) {
		this.jianzao_type = value;
	}
	
	public java.math.BigDecimal getJianzao_nian() {
		return this.jianzao_nian;
	}
	
	public void setJianzao_nian(java.math.BigDecimal value) {
		this.jianzao_nian = value;
	}
	
	public String getJianzao_chao() {
		return this.jianzao_chao;
	}
	
	public void setJianzao_chao(String value) {
		this.jianzao_chao = value;
	}
	
	public String getJiegou() {
		return this.jiegou;
	}
	
	public void setJiegou(String value) {
		this.jiegou = value;
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

	public java.math.BigDecimal getCengshu() {
		return this.cengshu;
	}
	
	public void setCengshu(java.math.BigDecimal value) {
		this.cengshu = value;
	}
	
	public java.math.BigDecimal getGaodu() {
		return this.gaodu;
	}
	
	public void setGaodu(java.math.BigDecimal value) {
		this.gaodu = value;
	}
	
	public java.math.BigDecimal getMianji() {
		return this.mianji;
	}
	
	public void setMianji(java.math.BigDecimal value) {
		this.mianji = value;
	}
	
	public String getXianzhuang() {
		return this.xianzhuang;
	}
	
	public void setXianzhuang(String value) {
		this.xianzhuang = value;
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
			.append("jianzao_type",getJianzao_type())
			.append("jianzao_nian",getJianzao_nian())
			.append("jianzao_chao",getJianzao_chao())
			.append("jiegou",getJiegou())
			.append("cengshu",getCengshu())
			.append("gaodu",getGaodu())
			.append("mianji",getMianji())
			.append("xianzhuang",getXianzhuang())
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
			.append(getJianzao_type())
			.append(getJianzao_nian())
			.append(getJianzao_chao())
			.append(getJiegou())
			.append(getCengshu())
			.append(getGaodu())
			.append(getMianji())
			.append(getXianzhuang())
			.append(getBeizhu())
			.append(getInput())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Gujianzhu == false) return false;
		if(this == obj) return true;
		Gujianzhu other = (Gujianzhu)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getNum(),other.getNum())
			.append(getDiaocha(),other.getDiaocha())
			.append(getMingcheng(),other.getMingcheng())
			.append(getDidian(),other.getDidian())
			.append(getJianzao_type(),other.getJianzao_type())
			.append(getJianzao_nian(),other.getJianzao_nian())
			.append(getJianzao_chao(),other.getJianzao_chao())
			.append(getJiegou(),other.getJiegou())
			.append(getCengshu(),other.getCengshu())
			.append(getGaodu(),other.getGaodu())
			.append(getMianji(),other.getMianji())
			.append(getXianzhuang(),other.getXianzhuang())
			.append(getBeizhu(),other.getBeizhu())
			.append(getInput(),other.getInput())
			.isEquals();
	}
*/
}
