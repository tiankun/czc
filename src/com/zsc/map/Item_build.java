/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2013-12-31</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;

public class Item_build{
	

	//数据库相关字段
	private Long id;    //主键
	private Long area;    //地区
	private String name;    //项目名称
	private String dizhi;    //建设地点
	private String jiandu;    //质量监督单位
	private String xiangzhi;    //建设性质
	private java.math.BigDecimal yu_touzi;    //项目计划投资（万元）
	private String qita_neirong;    //其他建设内容
	private java.math.BigDecimal chang_touzi;  //自来水厂计划投资,垃圾为“收运系统计划投资”
	private java.math.BigDecimal wang_touzi;   //配套管网计划投资
	private java.math.BigDecimal guo_cai;    //国家财政（万元）
	private java.math.BigDecimal sheng_cai;    //省级财政（万元）
	private java.math.BigDecimal difang_cai;    //地方财政（万元）
	private java.math.BigDecimal qiata_cai;    //其他（万元）
	private String keyan_unit;    //可研编制单位
	private String keyan_hao;    //可研批复单位及文号
	private String chushe_unit;    //初设编制单位
	private String chushe_hao;    //初设批复文号
	private String tu_bianzhi;    //施工图编制单位
	private String tu_shencha;    //施工图审图单位
	private String shigong_unit;    //项目施工单位
	private String jianli_unit;    //工程监理单位

	private java.sql.Date kaishi;    //实际开工时间
	private java.sql.Date jiesu;    //实际竣工时间
	private String shigong_hao;    //施工许可证文号
	private String jungong_hao;    //竣工验收备案文号
	private java.math.BigDecimal js_touzi;    //项目结算投资（万元）
	private String yezhu;    //项目业主单位
	private String yz_faren;    //法定代表人
	private String yz_xingzhi;    //单位性质
	private String yz_dianhua;    //单位联系电话
	private String fuze;    //项目负责人
	private String fuze_zhiwu;    //项目负责人职务
	private String fuze_dianhua;    //项目负责人联系电话
	private Long type;    //项目类型（1：自来水，2：污水，3：垃圾）
	private String chang_mo;    //厂建设运营模式
	private String guan_mo;    //管网(站)建设运营模式
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Item_build(){
	}

	public Item_build(Long id){
		this.id = id;
	}

	
    //相关属性get/set方法
	
	public void setId(Long id) {
		this.id = id;
	}

	
	
	public Long getArea() {
		return area;
	}

	public void setArea(Long area) {
		this.area = area;
	}

	public Long getId() {
		return id;
	}

	public String getName() {
		return this.name;
	}
	
	public void setName(String value) {
		this.name = value;
	}
	
	public String getDizhi() {
		return this.dizhi;
	}
	
	public void setDizhi(String value) {
		this.dizhi = value;
	}
	
	public String getJiandu() {
		return this.jiandu;
	}
	
	public void setJiandu(String value) {
		this.jiandu = value;
	}
	
	public String getXiangzhi() {
		return this.xiangzhi;
	}
	
	public void setXiangzhi(String value) {
		this.xiangzhi = value;
	}
	
	public java.math.BigDecimal getYu_touzi() {
		return this.yu_touzi;
	}
	
	public void setYu_touzi(java.math.BigDecimal value) {
		this.yu_touzi = value;
	}
	
	public java.math.BigDecimal getChang_touzi() {
		return chang_touzi;
	}

	public void setChang_touzi(java.math.BigDecimal changTouzi) {
		chang_touzi = changTouzi;
	}

	public java.math.BigDecimal getWang_touzi() {
		return wang_touzi;
	}

	public void setWang_touzi(java.math.BigDecimal wangTouzi) {
		wang_touzi = wangTouzi;
	}

	public String getQita_neirong() {
		return this.qita_neirong;
	}
	
	public void setQita_neirong(String value) {
		this.qita_neirong = value;
	}
	
	public java.math.BigDecimal getGuo_cai() {
		return this.guo_cai;
	}
	
	public void setGuo_cai(java.math.BigDecimal value) {
		this.guo_cai = value;
	}
	
	public java.math.BigDecimal getSheng_cai() {
		return this.sheng_cai;
	}
	
	public void setSheng_cai(java.math.BigDecimal value) {
		this.sheng_cai = value;
	}
	
	public java.math.BigDecimal getDifang_cai() {
		return this.difang_cai;
	}
	
	public void setDifang_cai(java.math.BigDecimal value) {
		this.difang_cai = value;
	}
	
	public java.math.BigDecimal getQiata_cai() {
		return this.qiata_cai;
	}
	
	public void setQiata_cai(java.math.BigDecimal value) {
		this.qiata_cai = value;
	}
	
	public String getKeyan_unit() {
		return this.keyan_unit;
	}
	
	public void setKeyan_unit(String value) {
		this.keyan_unit = value;
	}
	
	public String getKeyan_hao() {
		return this.keyan_hao;
	}
	
	public void setKeyan_hao(String value) {
		this.keyan_hao = value;
	}
	
	public String getChushe_unit() {
		return this.chushe_unit;
	}
	
	public void setChushe_unit(String value) {
		this.chushe_unit = value;
	}
	
	public String getChushe_hao() {
		return this.chushe_hao;
	}
	
	public void setChushe_hao(String value) {
		this.chushe_hao = value;
	}
	
	public String getTu_bianzhi() {
		return this.tu_bianzhi;
	}
	
	public void setTu_bianzhi(String value) {
		this.tu_bianzhi = value;
	}
	
	public String getTu_shencha() {
		return this.tu_shencha;
	}
	
	public void setTu_shencha(String value) {
		this.tu_shencha = value;
	}
	
	public String getShigong_unit() {
		return this.shigong_unit;
	}
	
	public void setShigong_unit(String value) {
		this.shigong_unit = value;
	}
	
	public String getJianli_unit() {
		return this.jianli_unit;
	}
	
	public void setJianli_unit(String value) {
		this.jianli_unit = value;
	}
	
	public java.sql.Date getKaishi() {
		return this.kaishi;
	}
	
	public void setKaishi(java.sql.Date value) {
		this.kaishi = value;
	}
	
	public java.sql.Date getJiesu() {
		return this.jiesu;
	}
	
	public void setJiesu(java.sql.Date value) {
		this.jiesu = value;
	}
	
	public String getShigong_hao() {
		return this.shigong_hao;
	}
	
	public void setShigong_hao(String value) {
		this.shigong_hao = value;
	}
	
	public String getJungong_hao() {
		return this.jungong_hao;
	}
	
	public void setJungong_hao(String value) {
		this.jungong_hao = value;
	}
	
	public java.math.BigDecimal getJs_touzi() {
		return this.js_touzi;
	}
	
	public void setJs_touzi(java.math.BigDecimal value) {
		this.js_touzi = value;
	}
	
	public String getYezhu() {
		return this.yezhu;
	}
	
	public void setYezhu(String value) {
		this.yezhu = value;
	}
	
	public String getYz_faren() {
		return this.yz_faren;
	}
	
	public void setYz_faren(String value) {
		this.yz_faren = value;
	}
	
	public String getYz_xingzhi() {
		return this.yz_xingzhi;
	}
	
	public void setYz_xingzhi(String value) {
		this.yz_xingzhi = value;
	}
	
	public String getYz_dianhua() {
		return this.yz_dianhua;
	}
	
	public void setYz_dianhua(String value) {
		this.yz_dianhua = value;
	}
	
	public String getFuze() {
		return this.fuze;
	}
	
	public void setFuze(String value) {
		this.fuze = value;
	}
	
	public String getFuze_zhiwu() {
		return this.fuze_zhiwu;
	}
	
	public void setFuze_zhiwu(String value) {
		this.fuze_zhiwu = value;
	}
	
	public String getFuze_dianhua() {
		return this.fuze_dianhua;
	}
	
	public void setFuze_dianhua(String value) {
		this.fuze_dianhua = value;
	}
	
	public Long getType() {
		return type;
	}

	public void setType(Long type) {
		this.type = type;
	}

	public String getChang_mo() {
		return this.chang_mo;
	}
	
	public void setChang_mo(String value) {
		this.chang_mo = value;
	}
	
	public String getGuan_mo() {
		return this.guan_mo;
	}
	
	public void setGuan_mo(String value) {
		this.guan_mo = value;
	}
	
/**
	public String toString() {
		return new ToStringBuilder(this)
			.append("id",getId())
			.append("area",getArea())
			.append("name",getName())
			.append("dizhi",getDizhi())
			.append("jiandu",getJiandu())
			.append("xiangzhi",getXiangzhi())
			.append("yu_touzi",getYu_touzi())
			.append("qita_neirong",getQita_neirong())
			.append("guo_cai",getGuo_cai())
			.append("sheng_cai",getSheng_cai())
			.append("difang_cai",getDifang_cai())
			.append("qiata_cai",getQiata_cai())
			.append("keyan_unit",getKeyan_unit())
			.append("keyan_hao",getKeyan_hao())
			.append("chushe_unit",getChushe_unit())
			.append("chushe_hao",getChushe_hao())
			.append("tu_bianzhi",getTu_bianzhi())
			.append("tu_shencha",getTu_shencha())
			.append("shigong_unit",getShigong_unit())
			.append("jianli_unit",getJianli_unit())
			.append("kaishi",getKaishi())
			.append("jiesu",getJiesu())
			.append("shigong_hao",getShigong_hao())
			.append("jungong_hao",getJungong_hao())
			.append("js_touzi",getJs_touzi())
			.append("yezhu",getYezhu())
			.append("yz_faren",getYz_faren())
			.append("yz_xingzhi",getYz_xingzhi())
			.append("yz_dianhua",getYz_dianhua())
			.append("fuze",getFuze())
			.append("fuze_zhiwu",getFuze_zhiwu())
			.append("fuze_dianhua",getFuze_dianhua())
			.append("type",getType())
			.append("chang_mo",getChang_mo())
			.append("guan_mo",getGuan_mo())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getArea())
			.append(getName())
			.append(getDizhi())
			.append(getJiandu())
			.append(getXiangzhi())
			.append(getYu_touzi())
			.append(getQita_neirong())
			.append(getGuo_cai())
			.append(getSheng_cai())
			.append(getDifang_cai())
			.append(getQiata_cai())
			.append(getKeyan_unit())
			.append(getKeyan_hao())
			.append(getChushe_unit())
			.append(getChushe_hao())
			.append(getTu_bianzhi())
			.append(getTu_shencha())
			.append(getShigong_unit())
			.append(getJianli_unit())
			.append(getKaishi())
			.append(getJiesu())
			.append(getShigong_hao())
			.append(getJungong_hao())
			.append(getJs_touzi())
			.append(getYezhu())
			.append(getYz_faren())
			.append(getYz_xingzhi())
			.append(getYz_dianhua())
			.append(getFuze())
			.append(getFuze_zhiwu())
			.append(getFuze_dianhua())
			.append(getType())
			.append(getChang_mo())
			.append(getGuan_mo())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Item_build == false) return false;
		if(this == obj) return true;
		Item_build other = (Item_build)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getArea(),other.getArea())
			.append(getName(),other.getName())
			.append(getDizhi(),other.getDizhi())
			.append(getJiandu(),other.getJiandu())
			.append(getXiangzhi(),other.getXiangzhi())
			.append(getYu_touzi(),other.getYu_touzi())
			.append(getQita_neirong(),other.getQita_neirong())
			.append(getGuo_cai(),other.getGuo_cai())
			.append(getSheng_cai(),other.getSheng_cai())
			.append(getDifang_cai(),other.getDifang_cai())
			.append(getQiata_cai(),other.getQiata_cai())
			.append(getKeyan_unit(),other.getKeyan_unit())
			.append(getKeyan_hao(),other.getKeyan_hao())
			.append(getChushe_unit(),other.getChushe_unit())
			.append(getChushe_hao(),other.getChushe_hao())
			.append(getTu_bianzhi(),other.getTu_bianzhi())
			.append(getTu_shencha(),other.getTu_shencha())
			.append(getShigong_unit(),other.getShigong_unit())
			.append(getJianli_unit(),other.getJianli_unit())
			.append(getKaishi(),other.getKaishi())
			.append(getJiesu(),other.getJiesu())
			.append(getShigong_hao(),other.getShigong_hao())
			.append(getJungong_hao(),other.getJungong_hao())
			.append(getJs_touzi(),other.getJs_touzi())
			.append(getYezhu(),other.getYezhu())
			.append(getYz_faren(),other.getYz_faren())
			.append(getYz_xingzhi(),other.getYz_xingzhi())
			.append(getYz_dianhua(),other.getYz_dianhua())
			.append(getFuze(),other.getFuze())
			.append(getFuze_zhiwu(),other.getFuze_zhiwu())
			.append(getFuze_dianhua(),other.getFuze_dianhua())
			.append(getType(),other.getType())
			.append(getChang_mo(),other.getChang_mo())
			.append(getGuan_mo(),other.getGuan_mo())
			.isEquals();
	}
*/
}
