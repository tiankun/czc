/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2011-5-18</p>
 * <p> @author ������</p>
 */
package com.zsc.map;

import java.math.BigDecimal;
import java.sql.Date;

public class Item{
	

	//���ݿ�����ֶ�
	private Integer id;    //����
	private Integer unit_id;    //��Ӧ�û�����
	private String name;    //��Ŀ����
	private String ye_zhu;    //ҵ��
	private String lian_xi;    //��ϵ��
	private String lianx_dianhua;    //��ϵ�绰
	private String fen_lei;    //��Ŀ����
	private String xiang_zhi;    //��Ŀ��Ӫ����
	private String jie_duan;    //��Ŀ�����׶�
	private String gh_dizhi;    //�⽨��ַ
	private Date gh_shijian;    //�⽨ʱ��
	private String gh_guimo;    //�⽨��ģ
	private String lx_dizhi;    //����ѡַ
	private String lx_pingjia;    //����Ӱ������
	private String lx_hpbainzhi;    //�������Ƶ�λ
	private String lx_hpshenp;    //��������������
	private java.sql.Date lx_hpshijian;    //����������ʱ��
	private String lx_keybao;    //�������о�����
	private String lx_kybian;    //���б��Ƶ�λ
	private String lx_kybaop;    //���б���������
	private java.sql.Date lx_kyshijian;    //���б�����ʱ��
	private BigDecimal lx_touzi;    //Ͷ�ʹ���
	private String lx_shejkai;    //��ƹ�ģ������
	private String lx_shejyuan;    //��ƹ�ģ��Զ��
	private String lx_zijin;    //�ʽ��뷽ʽ
	private String bj_dizhi;    //����ѡַ
	private String bj_lx;    //����Ƥ����ʱ��
	private String bj_kanc;    //��ַ����
	private String bj_kancha;    //���쵥λ
	private String bj_sj;    //�������
	private String bj_sheji;    //������Ƶ�λ
	private String bj_sjbaopi;    //���豨��������
	private Date bj_sjbaotime;    //���豨����ʱ��
	private Date bj_sjpifu;    //��������ʱ��
	private String bj_sj_jin;    //��ƹ�ģ������
	private String bj_sj_yuan;    //��ƹ�ģ��Զ��
	private BigDecimal bj_touzi;    //Ͷ�ʸ���
	private String bj_zijin;    //�ʽ��뷽ʽ
	private String bj_tu;    //ʩ��ͼ���
	private String bj_tusheji;    //ʩ��ͼ��Ƶ�λ
	private String bj_zhaob;    //�б깤��
	private String bj_fabiao;    //�б깫��
	private String bj_zhongbiao;    //�б����ļ�
	private String zj_dizhi;    //�ڽ�ѡַ
	private String zj_shigong;    //ʩ����λ
	private String zj_jianli;    //����λ
	private Date zj_kaishi;    //����ʱ��
	private String zj_gongqi;    //�ƻ�����
	private String jg_dizhi;    //���ɵ�ַ
	private Date jg_shijian;    //��������ʱ��
	private String jg_yanshou;    //�������յ�λ
	private Date tian_jia;    //���ʱ��
	private String remark;    //��ע
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Item(){
	}

	public Item(Integer id){
		this.id = id;
	}

	
    //�������get/set����
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
	
	public String getName() {
		return this.name;
	}
	
	public void setName(String value) {
		this.name = value;
	}
	
	public String getYe_zhu() {
		return this.ye_zhu;
	}
	
	public void setYe_zhu(String value) {
		this.ye_zhu = value;
	}
	
	public String getLian_xi() {
		return this.lian_xi;
	}
	
	public void setLian_xi(String value) {
		this.lian_xi = value;
	}
	
	public String getLianx_dianhua() {
		return this.lianx_dianhua;
	}
	
	public void setLianx_dianhua(String value) {
		this.lianx_dianhua = value;
	}
	
	public String getFen_lei() {
		return this.fen_lei;
	}
	
	public void setFen_lei(String value) {
		this.fen_lei = value;
	}
	
	public String getXiang_zhi() {
		return this.xiang_zhi;
	}
	
	public void setXiang_zhi(String value) {
		this.xiang_zhi = value;
	}
	
	public String getJie_duan() {
		return this.jie_duan;
	}
	
	public void setJie_duan(String value) {
		this.jie_duan = value;
	}
	
	public String getGh_dizhi() {
		return this.gh_dizhi;
	}
	
	public void setGh_dizhi(String value) {
		this.gh_dizhi = value;
	}
	
	public Date getGh_shijian() {
		return this.gh_shijian;
	}
	
	public void setGh_shijian(Date value) {
		this.gh_shijian = value;
	}
	
	public String getGh_guimo() {
		return this.gh_guimo;
	}
	
	public void setGh_guimo(String value) {
		this.gh_guimo = value;
	}
	
	public String getLx_dizhi() {
		return this.lx_dizhi;
	}
	
	public void setLx_dizhi(String value) {
		this.lx_dizhi = value;
	}
	
	public String getLx_pingjia() {
		return this.lx_pingjia;
	}
	
	public void setLx_pingjia(String value) {
		this.lx_pingjia = value;
	}
	
	public String getLx_hpbainzhi() {
		return this.lx_hpbainzhi;
	}
	
	public void setLx_hpbainzhi(String value) {
		this.lx_hpbainzhi = value;
	}
	
	public String getLx_hpshenp() {
		return this.lx_hpshenp;
	}
	
	public void setLx_hpshenp(String value) {
		this.lx_hpshenp = value;
	}
	
	public Date getLx_hpshijian() {
		return this.lx_hpshijian;
	}
	
	public void setLx_hpshijian(Date value) {
		this.lx_hpshijian = value;
	}
	
	public String getLx_keybao() {
		return this.lx_keybao;
	}
	
	public void setLx_keybao(String value) {
		this.lx_keybao = value;
	}
	
	public String getLx_kybian() {
		return this.lx_kybian;
	}
	
	public void setLx_kybian(String value) {
		this.lx_kybian = value;
	}
	
	public String getLx_kybaop() {
		return this.lx_kybaop;
	}
	
	public void setLx_kybaop(String value) {
		this.lx_kybaop = value;
	}
	
	public Date getLx_kyshijian() {
		return this.lx_kyshijian;
	}
	
	public void setLx_kyshijian(Date value) {
		this.lx_kyshijian = value;
	}
	
	public BigDecimal getLx_touzi() {
		return this.lx_touzi;
	}
	
	public void setLx_touzi(BigDecimal value) {
		this.lx_touzi = value;
	}
	
	public String getLx_shejkai() {
		return this.lx_shejkai;
	}
	
	public void setLx_shejkai(String value) {
		this.lx_shejkai = value;
	}
	
	public String getLx_shejyuan() {
		return this.lx_shejyuan;
	}
	
	public void setLx_shejyuan(String value) {
		this.lx_shejyuan = value;
	}
	
	public String getLx_zijin() {
		return this.lx_zijin;
	}
	
	public void setLx_zijin(String value) {
		this.lx_zijin = value;
	}
	
	public String getBj_dizhi() {
		return this.bj_dizhi;
	}
	
	public void setBj_dizhi(String value) {
		this.bj_dizhi = value;
	}
	
	public String getBj_lx() {
		return this.bj_lx;
	}
	
	public void setBj_lx(String value) {
		this.bj_lx = value;
	}
	
	public String getBj_kanc() {
		return this.bj_kanc;
	}
	
	public void setBj_kanc(String value) {
		this.bj_kanc = value;
	}
	
	public String getBj_kancha() {
		return this.bj_kancha;
	}
	
	public void setBj_kancha(String value) {
		this.bj_kancha = value;
	}
	
	public String getBj_sj() {
		return this.bj_sj;
	}
	
	public void setBj_sj(String value) {
		this.bj_sj = value;
	}
	
	public String getBj_sheji() {
		return this.bj_sheji;
	}
	
	public void setBj_sheji(String value) {
		this.bj_sheji = value;
	}
	
	public String getBj_sjbaopi() {
		return this.bj_sjbaopi;
	}
	
	public void setBj_sjbaopi(String value) {
		this.bj_sjbaopi = value;
	}
	
	public Date getBj_sjbaotime() {
		return this.bj_sjbaotime;
	}
	
	public void setBj_sjbaotime(Date value) {
		this.bj_sjbaotime = value;
	}
	
	public Date getBj_sjpifu() {
		return this.bj_sjpifu;
	}
	
	public void setBj_sjpifu(Date value) {
		this.bj_sjpifu = value;
	}
	
	public String getBj_sj_jin() {
		return this.bj_sj_jin;
	}
	
	public void setBj_sj_jin(String value) {
		this.bj_sj_jin = value;
	}
	
	public String getBj_sj_yuan() {
		return this.bj_sj_yuan;
	}
	
	public void setBj_sj_yuan(String value) {
		this.bj_sj_yuan = value;
	}
	
	public BigDecimal getBj_touzi() {
		return this.bj_touzi;
	}
	
	public void setBj_touzi(BigDecimal value) {
		this.bj_touzi = value;
	}
	
	public String getBj_zijin() {
		return this.bj_zijin;
	}
	
	public void setBj_zijin(String value) {
		this.bj_zijin = value;
	}
	
	public String getBj_tu() {
		return this.bj_tu;
	}
	
	public void setBj_tu(String value) {
		this.bj_tu = value;
	}
	
	public String getBj_tusheji() {
		return this.bj_tusheji;
	}
	
	public void setBj_tusheji(String value) {
		this.bj_tusheji = value;
	}
	
	public String getBj_zhaob() {
		return this.bj_zhaob;
	}
	
	public void setBj_zhaob(String value) {
		this.bj_zhaob = value;
	}
	
	public String getBj_fabiao() {
		return this.bj_fabiao;
	}
	
	public void setBj_fabiao(String value) {
		this.bj_fabiao = value;
	}
	
	public String getBj_zhongbiao() {
		return this.bj_zhongbiao;
	}
	
	public void setBj_zhongbiao(String value) {
		this.bj_zhongbiao = value;
	}
	
	public String getZj_dizhi() {
		return this.zj_dizhi;
	}
	
	public void setZj_dizhi(String value) {
		this.zj_dizhi = value;
	}
	
	public String getZj_shigong() {
		return this.zj_shigong;
	}
	
	public void setZj_shigong(String value) {
		this.zj_shigong = value;
	}
	
	public String getZj_jianli() {
		return this.zj_jianli;
	}
	
	public void setZj_jianli(String value) {
		this.zj_jianli = value;
	}
	
	public Date getZj_kaishi() {
		return this.zj_kaishi;
	}
	
	public void setZj_kaishi(Date value) {
		this.zj_kaishi = value;
	}
	
	public String getZj_gongqi() {
		return this.zj_gongqi;
	}
	
	public void setZj_gongqi(String value) {
		this.zj_gongqi = value;
	}
	
	public String getJg_dizhi() {
		return this.jg_dizhi;
	}
	
	public void setJg_dizhi(String value) {
		this.jg_dizhi = value;
	}
	
	public Date getJg_shijian() {
		return this.jg_shijian;
	}
	
	public void setJg_shijian(Date value) {
		this.jg_shijian = value;
	}
	
	public String getJg_yanshou() {
		return this.jg_yanshou;
	}
	
	public void setJg_yanshou(String value) {
		this.jg_yanshou = value;
	}
	
	public Date getTian_jia() {
		return this.tian_jia;
	}
	
	public void setTian_jia(Date value) {
		this.tian_jia = value;
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
			.append("name",getName())
			.append("ye_zhu",getYe_zhu())
			.append("lian_xi",getLian_xi())
			.append("lianx_dianhua",getLianx_dianhua())
			.append("fen_lei",getFen_lei())
			.append("xiang_zhi",getXiang_zhi())
			.append("jie_duan",getJie_duan())
			.append("gh_dizhi",getGh_dizhi())
			.append("gh_shijian",getGh_shijian())
			.append("gh_guimo",getGh_guimo())
			.append("lx_dizhi",getLx_dizhi())
			.append("lx_pingjia",getLx_pingjia())
			.append("lx_hpbainzhi",getLx_hpbainzhi())
			.append("lx_hpshenp",getLx_hpshenp())
			.append("lx_hpshijian",getLx_hpshijian())
			.append("lx_keybao",getLx_keybao())
			.append("lx_kybian",getLx_kybian())
			.append("lx_kybaop",getLx_kybaop())
			.append("lx_kyshijian",getLx_kyshijian())
			.append("lx_touzi",getLx_touzi())
			.append("lx_shejkai",getLx_shejkai())
			.append("lx_shejyuan",getLx_shejyuan())
			.append("lx_zijin",getLx_zijin())
			.append("bj_dizhi",getBj_dizhi())
			.append("bj_lx",getBj_lx())
			.append("bj_kanc",getBj_kanc())
			.append("bj_kancha",getBj_kancha())
			.append("bj_sj",getBj_sj())
			.append("bj_sheji",getBj_sheji())
			.append("bj_sjbaopi",getBj_sjbaopi())
			.append("bj_sjbaotime",getBj_sjbaotime())
			.append("bj_sjpifu",getBj_sjpifu())
			.append("bj_sj_jin",getBj_sj_jin())
			.append("bj_sj_yuan",getBj_sj_yuan())
			.append("bj_touzi",getBj_touzi())
			.append("bj_zijin",getBj_zijin())
			.append("bj_tu",getBj_tu())
			.append("bj_tusheji",getBj_tusheji())
			.append("bj_zhaob",getBj_zhaob())
			.append("bj_fabiao",getBj_fabiao())
			.append("bj_zhongbiao",getBj_zhongbiao())
			.append("zj_dizhi",getZj_dizhi())
			.append("zj_shigong",getZj_shigong())
			.append("zj_jianli",getZj_jianli())
			.append("zj_kaishi",getZj_kaishi())
			.append("zj_gongqi",getZj_gongqi())
			.append("jg_dizhi",getJg_dizhi())
			.append("jg_shijian",getJg_shijian())
			.append("jg_yanshou",getJg_yanshou())
			.append("tian_jia",getTian_jia())
			.append("remark",getRemark())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getId())
			.append(getUnit_id())
			.append(getName())
			.append(getYe_zhu())
			.append(getLian_xi())
			.append(getLianx_dianhua())
			.append(getFen_lei())
			.append(getXiang_zhi())
			.append(getJie_duan())
			.append(getGh_dizhi())
			.append(getGh_shijian())
			.append(getGh_guimo())
			.append(getLx_dizhi())
			.append(getLx_pingjia())
			.append(getLx_hpbainzhi())
			.append(getLx_hpshenp())
			.append(getLx_hpshijian())
			.append(getLx_keybao())
			.append(getLx_kybian())
			.append(getLx_kybaop())
			.append(getLx_kyshijian())
			.append(getLx_touzi())
			.append(getLx_shejkai())
			.append(getLx_shejyuan())
			.append(getLx_zijin())
			.append(getBj_dizhi())
			.append(getBj_lx())
			.append(getBj_kanc())
			.append(getBj_kancha())
			.append(getBj_sj())
			.append(getBj_sheji())
			.append(getBj_sjbaopi())
			.append(getBj_sjbaotime())
			.append(getBj_sjpifu())
			.append(getBj_sj_jin())
			.append(getBj_sj_yuan())
			.append(getBj_touzi())
			.append(getBj_zijin())
			.append(getBj_tu())
			.append(getBj_tusheji())
			.append(getBj_zhaob())
			.append(getBj_fabiao())
			.append(getBj_zhongbiao())
			.append(getZj_dizhi())
			.append(getZj_shigong())
			.append(getZj_jianli())
			.append(getZj_kaishi())
			.append(getZj_gongqi())
			.append(getJg_dizhi())
			.append(getJg_shijian())
			.append(getJg_yanshou())
			.append(getTian_jia())
			.append(getRemark())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Item == false) return false;
		if(this == obj) return true;
		Item other = (Item)obj;
		return new EqualsBuilder()
			.append(getId(),other.getId())
			.append(getUnit_id(),other.getUnit_id())
			.append(getName(),other.getName())
			.append(getYe_zhu(),other.getYe_zhu())
			.append(getLian_xi(),other.getLian_xi())
			.append(getLianx_dianhua(),other.getLianx_dianhua())
			.append(getFen_lei(),other.getFen_lei())
			.append(getXiang_zhi(),other.getXiang_zhi())
			.append(getJie_duan(),other.getJie_duan())
			.append(getGh_dizhi(),other.getGh_dizhi())
			.append(getGh_shijian(),other.getGh_shijian())
			.append(getGh_guimo(),other.getGh_guimo())
			.append(getLx_dizhi(),other.getLx_dizhi())
			.append(getLx_pingjia(),other.getLx_pingjia())
			.append(getLx_hpbainzhi(),other.getLx_hpbainzhi())
			.append(getLx_hpshenp(),other.getLx_hpshenp())
			.append(getLx_hpshijian(),other.getLx_hpshijian())
			.append(getLx_keybao(),other.getLx_keybao())
			.append(getLx_kybian(),other.getLx_kybian())
			.append(getLx_kybaop(),other.getLx_kybaop())
			.append(getLx_kyshijian(),other.getLx_kyshijian())
			.append(getLx_touzi(),other.getLx_touzi())
			.append(getLx_shejkai(),other.getLx_shejkai())
			.append(getLx_shejyuan(),other.getLx_shejyuan())
			.append(getLx_zijin(),other.getLx_zijin())
			.append(getBj_dizhi(),other.getBj_dizhi())
			.append(getBj_lx(),other.getBj_lx())
			.append(getBj_kanc(),other.getBj_kanc())
			.append(getBj_kancha(),other.getBj_kancha())
			.append(getBj_sj(),other.getBj_sj())
			.append(getBj_sheji(),other.getBj_sheji())
			.append(getBj_sjbaopi(),other.getBj_sjbaopi())
			.append(getBj_sjbaotime(),other.getBj_sjbaotime())
			.append(getBj_sjpifu(),other.getBj_sjpifu())
			.append(getBj_sj_jin(),other.getBj_sj_jin())
			.append(getBj_sj_yuan(),other.getBj_sj_yuan())
			.append(getBj_touzi(),other.getBj_touzi())
			.append(getBj_zijin(),other.getBj_zijin())
			.append(getBj_tu(),other.getBj_tu())
			.append(getBj_tusheji(),other.getBj_tusheji())
			.append(getBj_zhaob(),other.getBj_zhaob())
			.append(getBj_fabiao(),other.getBj_fabiao())
			.append(getBj_zhongbiao(),other.getBj_zhongbiao())
			.append(getZj_dizhi(),other.getZj_dizhi())
			.append(getZj_shigong(),other.getZj_shigong())
			.append(getZj_jianli(),other.getZj_jianli())
			.append(getZj_kaishi(),other.getZj_kaishi())
			.append(getZj_gongqi(),other.getZj_gongqi())
			.append(getJg_dizhi(),other.getJg_dizhi())
			.append(getJg_shijian(),other.getJg_shijian())
			.append(getJg_yanshou(),other.getJg_yanshou())
			.append(getTian_jia(),other.getTian_jia())
			.append(getRemark(),other.getRemark())
			.isEquals();
	}
*/
}
