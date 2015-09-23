/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;

import java.sql.Date;

public class Item_fees{
	

	//数据库相关字段
	private Long id;    //主键
	private Long item;    //项目
	private String type;    //类型（1：计划，2：实际）
	private String shiduan;    //收费时段
	private String miaoshu;    //收费描述
	private String biaozhun;    //执行标准批复时间及文号
	private Date input;    //添加时间
	private String remark;    //其他说明
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Item_fees(){
	}

	public Item_fees(Long id){
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
	
	public String getType() {
		return this.type;
	}
	
	public void setType(String value) {
		this.type = value;
	}
	
	public String getShiduan() {
		return this.shiduan;
	}
	
	public void setShiduan(String value) {
		this.shiduan = value;
	}
	
	public String getMiaoshu() {
		return this.miaoshu;
	}
	
	public void setMiaoshu(String value) {
		this.miaoshu = value;
	}
	
	public String getBiaozhun() {
		return this.biaozhun;
	}
	
	public void setBiaozhun(String value) {
		this.biaozhun = value;
	}
	
	public Date getInput() {
		return this.input;
	}
	
	public void setInput(Date value) {
		this.input = value;
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
			.append("type",getType())
			.append("shiduan",getShiduan())
			.append("miaoshu",getMiaoshu())
			.append("biaozhun",getBiaozhun())
			.append("input",getInput())
			.append("remark",getRemark())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getItem())
			.append(getType())
			.append(getShiduan())
			.append(getMiaoshu())
			.append(getBiaozhun())
			.append(getInput())
			.append(getRemark())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Item_fees == false) return false;
		if(this == obj) return true;
		Item_fees other = (Item_fees)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getItem(),other.getItem())
			.append(getType(),other.getType())
			.append(getShiduan(),other.getShiduan())
			.append(getMiaoshu(),other.getMiaoshu())
			.append(getBiaozhun(),other.getBiaozhun())
			.append(getInput(),other.getInput())
			.append(getRemark(),other.getRemark())
			.isEquals();
	}
*/
}
