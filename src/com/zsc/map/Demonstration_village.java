package com.zsc.map;

import java.sql.Date;

public class Demonstration_village {
	private Integer id; //id
	private String area;//名称
	private String lxr;//联系人
	private String lxdh;//联系电话
	private java.math.BigDecimal cymj;//村域面积（平方公里）
	private java.math.BigDecimal zdmj;//村庄占地面积（亩）
	private Integer hjrk;//户籍人口
	private Integer czrk;//常住人口
	private Integer zhs;//总户数
	private String zymz;//主要民族
	private java.math.BigDecimal jtnsr;//村集体年收入
	private java.math.BigDecimal rjcsr;//村民人均纯收入
	private String zycy;//主要产业（3个左右）
	private Integer jsfw;//村庄建设范围是否具备1:500地形图（1——是，0——否）
	private Integer czwfc;//村庄危房数量C级
	private Integer czwfd;//村庄危房数量D级
	private Integer gztj;//是否具备整村推进危房改造条件（1——是，0——否）
	private Integer yyzh;//其他涉农资金是否重点倾斜易于整合（1——是，0——否）
	private String snxmnr;//涉农资金具体 项目内容
	private String dlwz;//地理位置（1——沿边地区，2——重要交通沿线，3——重点旅游区，4——风景名胜区）
	private Integer ctclch;//（已获称号）中国传统村落（1——是，0——否）
	private Integer whmcch;//（已获称号）历史文化名村（0——否，1——国家级，2——省级）
	private Integer lymcch;//（已获称号）特色景观旅游名村（0——否，1——国家级，2——省级）
	private String qtrd;//其他（请注明名称及哪级认定）
	private String tsqk;//村庄特色情况（从村庄资源优势、产业条件等方面简要说明。）
	private String fwss;//村内公共基础服务设施建设现状（简要说明村庄供水、垃圾和污水处理、村内道路硬化、绿化、美化亮化、文化体育等公共基础服务设施现状。）
	private String xjyj;//县级住房城乡建设部门推荐意见
	private Date xjtjrq;//县级推荐日期
	private String sjyj;//市级住房城乡建设部门推荐意见
	private Date sjtjrq;//市级推荐日期
	private String area_name;//
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getLxr() {
		return lxr;
	}
	public void setLxr(String lxr) {
		this.lxr = lxr;
	}
	public String getLxdh() {
		return lxdh;
	}
	public void setLxdh(String lxdh) {
		this.lxdh = lxdh;
	}
	public java.math.BigDecimal getCymj() {
		return cymj;
	}
	public void setCymj(java.math.BigDecimal cymj) {
		this.cymj = cymj;
	}
	public java.math.BigDecimal getZdmj() {
		return zdmj;
	}
	public void setZdmj(java.math.BigDecimal zdmj) {
		this.zdmj = zdmj;
	}
	public Integer getHjrk() {
		return hjrk;
	}
	public void setHjrk(Integer hjrk) {
		this.hjrk = hjrk;
	}
	public Integer getCzrk() {
		return czrk;
	}
	public void setCzrk(Integer czrk) {
		this.czrk = czrk;
	}
	public Integer getZhs() {
		return zhs;
	}
	public void setZhs(Integer zhs) {
		this.zhs = zhs;
	}
	public String getZymz() {
		return zymz;
	}
	public void setZymz(String zymz) {
		this.zymz = zymz;
	}
	public java.math.BigDecimal getJtnsr() {
		return jtnsr;
	}
	public void setJtnsr(java.math.BigDecimal jtnsr) {
		this.jtnsr = jtnsr;
	}
	public java.math.BigDecimal getRjcsr() {
		return rjcsr;
	}
	public void setRjcsr(java.math.BigDecimal rjcsr) {
		this.rjcsr = rjcsr;
	}
	public String getZycy() {
		return zycy;
	}
	public void setZycy(String zycy) {
		this.zycy = zycy;
	}
	public Integer getJsfw() {
		return jsfw;
	}
	public void setJsfw(Integer jsfw) {
		this.jsfw = jsfw;
	}
	public Integer getCzwfc() {
		return czwfc;
	}
	public void setCzwfc(Integer czwfc) {
		this.czwfc = czwfc;
	}
	public Integer getCzwfd() {
		return czwfd;
	}
	public void setCzwfd(Integer czwfd) {
		this.czwfd = czwfd;
	}
	public Integer getGztj() {
		return gztj;
	}
	public void setGztj(Integer gztj) {
		this.gztj = gztj;
	}
	public Integer getYyzh() {
		return yyzh;
	}
	public void setYyzh(Integer yyzh) {
		this.yyzh = yyzh;
	}
	public String getSnxmnr() {
		return snxmnr;
	}
	public void setSnxmnr(String snxmnr) {
		this.snxmnr = snxmnr;
	}
	public String getDlwz() {
		return dlwz;
	}
	public void setDlwz(String dlwz) {
		this.dlwz = dlwz;
	}
	public Integer getCtclch() {
		return ctclch;
	}
	public void setCtclch(Integer ctclch) {
		this.ctclch = ctclch;
	}
	public Integer getWhmcch() {
		return whmcch;
	}
	public void setWhmcch(Integer whmcch) {
		this.whmcch = whmcch;
	}
	public Integer getLymcch() {
		return lymcch;
	}
	public void setLymcch(Integer lymcch) {
		this.lymcch = lymcch;
	}
	public String getQtrd() {
		return qtrd;
	}
	public void setQtrd(String qtrd) {
		this.qtrd = qtrd;
	}
	public String getTsqk() {
		return tsqk;
	}
	public void setTsqk(String tsqk) {
		this.tsqk = tsqk;
	}
	public String getFwss() {
		return fwss;
	}
	public void setFwss(String fwss) {
		this.fwss = fwss;
	}
	public String getXjyj() {
		return xjyj;
	}
	public void setXjyj(String xjyj) {
		this.xjyj = xjyj;
	}
	public Date getXjtjrq() {
		return xjtjrq;
	}
	public void setXjtjrq(Date xjtjrq) {
		this.xjtjrq = xjtjrq;
	}
	public String getSjyj() {
		return sjyj;
	}
	public void setSjyj(String sjyj) {
		this.sjyj = sjyj;
	}
	public Date getSjtjrq() {
		return sjtjrq;
	}
	public void setSjtjrq(Date sjtjrq) {
		this.sjtjrq = sjtjrq;
	}
	public String getArea_name() {
		return area_name;
	}
	public void setArea_name(String area_name) {
		this.area_name = area_name;
	}
	
	

}
