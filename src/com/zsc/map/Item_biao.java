/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;

import java.math.BigDecimal;
import java.sql.Date;

public class Item_biao{
	

	//数据库相关字段
	private Long id;    //主键
	private Long item;    //项目
	private String biao_duan;    //标段
	private String zb_unit;    //招标公司
	private Date baoming;    //报名日期
	private Date zishen;    //资审日期
	private Date fashou;    //发售日期
	private Date kaobiao;    //开标日期
	private Date beian;    //备案日期
	private BigDecimal biaojia;    //标段金额（万元）
	private String zhaobiao;    //招标文号
	private String zb_gongshi;    //中标公示文号
	private String zb_jianli;    //中标监理单位
	private String zb_danwei;    //中标单位
	private String bd_miaoshu;    //标段内容描述
	private String remark;    //备注
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Item_biao(){
	}

	public Item_biao(Long id){
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
	
	public String getBiao_duan() {
		return this.biao_duan;
	}
	
	public void setBiao_duan(String value) {
		this.biao_duan = value;
	}
	
	public String getZb_unit() {
		return zb_unit;
	}

	public void setZb_unit(String zbUnit) {
		zb_unit = zbUnit;
	}

	public Date getBaoming() {
		return this.baoming;
	}
	
	public void setBaoming(Date value) {
		this.baoming = value;
	}
	
	public Date getZishen() {
		return this.zishen;
	}
	
	public void setZishen(Date value) {
		this.zishen = value;
	}
	
	public Date getFashou() {
		return this.fashou;
	}
	
	public void setFashou(Date value) {
		this.fashou = value;
	}
	
	public Date getKaobiao() {
		return this.kaobiao;
	}
	
	public void setKaobiao(Date value) {
		this.kaobiao = value;
	}
	
	public Date getBeian() {
		return this.beian;
	}
	
	public void setBeian(Date value) {
		this.beian = value;
	}
	
	public BigDecimal getBiaojia() {
		return this.biaojia;
	}
	
	public void setBiaojia(BigDecimal value) {
		this.biaojia = value;
	}
	
	public String getZhaobiao() {
		return this.zhaobiao;
	}
	
	public void setZhaobiao(String value) {
		this.zhaobiao = value;
	}
	
	public String getZb_gongshi() {
		return this.zb_gongshi;
	}
	
	public void setZb_gongshi(String value) {
		this.zb_gongshi = value;
	}
	
	public String getZb_jianli() {
		return this.zb_jianli;
	}
	
	public void setZb_jianli(String value) {
		this.zb_jianli = value;
	}
	
	public String getZb_danwei() {
		return this.zb_danwei;
	}
	
	public void setZb_danwei(String value) {
		this.zb_danwei = value;
	}
	
	public String getBd_miaoshu() {
		return this.bd_miaoshu;
	}
	
	public void setBd_miaoshu(String value) {
		this.bd_miaoshu = value;
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
			.append("biao_duan",getBiao_duan())
			.append("baoming",getBaoming())
			.append("zishen",getZishen())
			.append("fashou",getFashou())
			.append("kaobiao",getKaobiao())
			.append("beian",getBeian())
			.append("biaojia",getBiaojia())
			.append("zhaobiao",getZhaobiao())
			.append("zb_gongshi",getZb_gongshi())
			.append("zb_jianli",getZb_jianli())
			.append("zb_danwei",getZb_danwei())
			.append("bd_miaoshu",getBd_miaoshu())
			.append("remark",getRemark())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getItem())
			.append(getBiao_duan())
			.append(getBaoming())
			.append(getZishen())
			.append(getFashou())
			.append(getKaobiao())
			.append(getBeian())
			.append(getBiaojia())
			.append(getZhaobiao())
			.append(getZb_gongshi())
			.append(getZb_jianli())
			.append(getZb_danwei())
			.append(getBd_miaoshu())
			.append(getRemark())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Item_biao == false) return false;
		if(this == obj) return true;
		Item_biao other = (Item_biao)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getItem(),other.getItem())
			.append(getBiao_duan(),other.getBiao_duan())
			.append(getBaoming(),other.getBaoming())
			.append(getZishen(),other.getZishen())
			.append(getFashou(),other.getFashou())
			.append(getKaobiao(),other.getKaobiao())
			.append(getBeian(),other.getBeian())
			.append(getBiaojia(),other.getBiaojia())
			.append(getZhaobiao(),other.getZhaobiao())
			.append(getZb_gongshi(),other.getZb_gongshi())
			.append(getZb_jianli(),other.getZb_jianli())
			.append(getZb_danwei(),other.getZb_danwei())
			.append(getBd_miaoshu(),other.getBd_miaoshu())
			.append(getRemark(),other.getRemark())
			.isEquals();
	}
*/
}
