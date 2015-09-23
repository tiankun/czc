/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;

import java.sql.Date;

public class Item_file{
	

	//数据库相关字段
	private Long id;    //主键
	private Long item;    //项目
	private String name;    //名称
	private String shuoming;    //说明
	private Date shangchuan;    //上传时间
	private String path;    //路径
	private String leibie;    //类别（1:文件/2:图片）
	private String fenlei;    //分类
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Item_file(){
	}

	public Item_file(Long id){
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
	
	public String getName() {
		return this.name;
	}
	
	public void setName(String value) {
		this.name = value;
	}
	
	public String getShuoming() {
		return this.shuoming;
	}
	
	public void setShuoming(String value) {
		this.shuoming = value;
	}
	
	public Date getShangchuan() {
		return this.shangchuan;
	}
	
	public void setShangchuan(Date value) {
		this.shangchuan = value;
	}
	
	public String getPath() {
		return this.path;
	}
	
	public void setPath(String value) {
		this.path = value;
	}
	
	public String getLeibie() {
		return this.leibie;
	}
	
	public void setLeibie(String value) {
		this.leibie = value;
	}
	
	public String getFenlei() {
		return this.fenlei;
	}
	
	public void setFenlei(String value) {
		this.fenlei = value;
	}
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("item",getItem())
			.append("name",getName())
			.append("shuoming",getShuoming())
			.append("shangchuan",getShangchuan())
			.append("path",getPath())
			.append("leibie",getLeibie())
			.append("fenlei",getFenlei())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getItem())
			.append(getName())
			.append(getShuoming())
			.append(getShangchuan())
			.append(getPath())
			.append(getLeibie())
			.append(getFenlei())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Item_file == false) return false;
		if(this == obj) return true;
		Item_file other = (Item_file)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getItem(),other.getItem())
			.append(getName(),other.getName())
			.append(getShuoming(),other.getShuoming())
			.append(getShangchuan(),other.getShangchuan())
			.append(getPath(),other.getPath())
			.append(getLeibie(),other.getLeibie())
			.append(getFenlei(),other.getFenlei())
			.isEquals();
	}
*/
}
