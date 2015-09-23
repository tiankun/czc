/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2010-10-14</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;

public class Code{
	

	//数据库相关字段
	private Integer id;    //主键
	private Integer reference_id;    //字典目录
	private String name;    //字典内容
	private Integer shun_xu;    //显示顺序
	private String remark;    //备注
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Code(){
	}

	public Code(Integer id){
		this.id = id;
	}

	
    //相关属性get/set方法
	public void setId(Integer value) {
		this.id = value;
	}
	public Integer getId() {
		return this.id;
	}
	public Integer getReference_id() {
		return this.reference_id;
	}
	
	public void setReference_id(Integer value) {
		this.reference_id = value;
	}
	
	public String getName() {
		return this.name;
	}
	
	public void setName(String value) {
		this.name = value;
	}
	
	public Integer getShun_xu() {
		return this.shun_xu;
	}
	
	public void setShun_xu(Integer value) {
		this.shun_xu = value;
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
			.append("reference_id",getReference_id())
			.append("name",getName())
			.append("shun_xu",getShun_xu())
			.append("remark",getRemark())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getReference_id())
			.append(getName())
			.append(getShun_xu())
			.append(getRemark())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Code == false) return false;
		if(this == obj) return true;
		Code other = (Code)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getReference_id(),other.getReference_id())
			.append(getName(),other.getName())
			.append(getShun_xu(),other.getShun_xu())
			.append(getRemark(),other.getRemark())
			.isEquals();
	}
*/
}
