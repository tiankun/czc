/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2013-2-18</p>
 * <p> @author ������</p>
 */
package com.zsc.map.temp;

import java.math.BigDecimal;

/**
 * ��ɫС����������פ�أ���Ϣ����Զ��
 */
public class ZhenquYuan{
	

	//���ݿ�����ֶ�
	private BigDecimal zq_renkouy;    //��������פ�أ��˿�  ����
	private BigDecimal zz_renkouy;    //��ס�˿�  ����
	private BigDecimal cz_renkouy;    //��ס�˿�  ����
	private BigDecimal nm_anzhiy;    //ũ����ǰ�������  ��
	private BigDecimal zy_laodongy;    //ũ�帻���Ͷ�����ת�ư����˿�  ��
	private BigDecimal gh_mianjiy;    //�滮�����  k�O
	private BigDecimal jc_mianjiy;    //���������  k�O
	private BigDecimal rj_jzyongdiy;    //�˾������õ����  �O/��
	private BigDecimal rj_yongdiy;    //�˾���ס�õ����  �O/��
	private BigDecimal bq_mianjiy;    //�������  k�O
	private BigDecimal sq_mianjiy;    //ɽ�����  k�O
	private BigDecimal gs_guimoy;    //��ˮ��ʩ��ˮ����ģ  ��/��
	private BigDecimal gs_guanwangy;    //��ˮ��ʩ��ˮ�������� ����
	private BigDecimal gs_fwrenkouy;    //��ˮ��ʩ�����˿� ����
	private BigDecimal ws_guimoy;    //��ˮ������ʩ��ˮ�������ģ��/��
	private BigDecimal ws_guanwangy;    //��ˮ������ʩ��ˮ��������   ����
	private String ws_gongyiy;    //��ˮ������ʩ������
	private BigDecimal ws_fwrenkouy;    //��ˮ������ʩ�����˿� ����
	private BigDecimal lj_guimoy;    //������ʩ����������ʩ�����޺�����������  ��/��
	private BigDecimal lj_zhany;    //������ʩ����������ʩ������תվ   ��
	private String lj_gongyiy;    //������ʩ����������ʩ����
	private BigDecimal lj_shoujiy;    //������ʩ����������ʩ�����ռ���
	private BigDecimal lj_wuhaiy;    //������ʩ����������ʩ�����޺���������
	private BigDecimal lj_gongcey;    //������ʩ������������
	private BigDecimal lj_chey;    //������ʩ������������
	private BigDecimal bd_rigongy;    //���վ�չ�����  ǧ��ʱ/��
	private BigDecimal bd_yongdiy;    //���վ�õع�ģ  �O
	private BigDecimal kyz_geshuy;    //����վ����  ��
	private BigDecimal kyz_yongdiy;    //����վ�õع�ģ  �O
	private BigDecimal dxj_geshiy;    //���ž�����  ��
	private BigDecimal dxj_yongdiy;    //���ž��õع�ģ  �O
	private BigDecimal gg_ptlvy;    //����������ʩ���״����  %
	private BigDecimal rj_ggssy;    //�˾�����������ʩ�õ�  �O/��
	private BigDecimal dl_midiy;    //��·���ܶ�  km/k�O
	private BigDecimal rj_gcy;    //�˾��㳡�õ�  �O/��
	private BigDecimal rj_ggtccy;    //�˾�����ͣ�����õ�  �O/��
	private BigDecimal gg_lvdiy;    //�����̵����  k�O
	private BigDecimal ld_lvy;    //�̵���  %
	private BigDecimal rj_ldy;    //�˾������̵�  �O/��
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public ZhenquYuan(){
	}
	
    //�������get/set����

	public BigDecimal getZq_renkouy() {
		return zq_renkouy;
	}

	public void setZq_renkouy(BigDecimal zqRenkouy) {
		zq_renkouy = zqRenkouy;
	}

	public BigDecimal getZz_renkouy() {
		return zz_renkouy;
	}

	public void setZz_renkouy(BigDecimal zzRenkouy) {
		zz_renkouy = zzRenkouy;
	}

	public BigDecimal getCz_renkouy() {
		return cz_renkouy;
	}

	public void setCz_renkouy(BigDecimal czRenkouy) {
		cz_renkouy = czRenkouy;
	}

	public BigDecimal getNm_anzhiy() {
		return nm_anzhiy;
	}

	public void setNm_anzhiy(BigDecimal nmAnzhiy) {
		nm_anzhiy = nmAnzhiy;
	}

	public BigDecimal getZy_laodongy() {
		return zy_laodongy;
	}

	public void setZy_laodongy(BigDecimal zyLaodongy) {
		zy_laodongy = zyLaodongy;
	}

	public BigDecimal getGh_mianjiy() {
		return gh_mianjiy;
	}

	public void setGh_mianjiy(BigDecimal ghMianjiy) {
		gh_mianjiy = ghMianjiy;
	}

	public BigDecimal getJc_mianjiy() {
		return jc_mianjiy;
	}

	public void setJc_mianjiy(BigDecimal jcMianjiy) {
		jc_mianjiy = jcMianjiy;
	}

	public BigDecimal getRj_jzyongdiy() {
		return rj_jzyongdiy;
	}

	public void setRj_jzyongdiy(BigDecimal rjJzyongdiy) {
		rj_jzyongdiy = rjJzyongdiy;
	}

	public BigDecimal getRj_yongdiy() {
		return rj_yongdiy;
	}

	public void setRj_yongdiy(BigDecimal rjYongdiy) {
		rj_yongdiy = rjYongdiy;
	}

	public BigDecimal getBq_mianjiy() {
		return bq_mianjiy;
	}

	public void setBq_mianjiy(BigDecimal bqMianjiy) {
		bq_mianjiy = bqMianjiy;
	}

	public BigDecimal getSq_mianjiy() {
		return sq_mianjiy;
	}

	public void setSq_mianjiy(BigDecimal sqMianjiy) {
		sq_mianjiy = sqMianjiy;
	}

	public BigDecimal getGs_guimoy() {
		return gs_guimoy;
	}

	public void setGs_guimoy(BigDecimal gsGuimoy) {
		gs_guimoy = gsGuimoy;
	}

	public BigDecimal getGs_guanwangy() {
		return gs_guanwangy;
	}

	public void setGs_guanwangy(BigDecimal gsGuanwangy) {
		gs_guanwangy = gsGuanwangy;
	}

	public BigDecimal getGs_fwrenkouy() {
		return gs_fwrenkouy;
	}

	public void setGs_fwrenkouy(BigDecimal gsFwrenkouy) {
		gs_fwrenkouy = gsFwrenkouy;
	}

	public BigDecimal getWs_guimoy() {
		return ws_guimoy;
	}

	public void setWs_guimoy(BigDecimal wsGuimoy) {
		ws_guimoy = wsGuimoy;
	}

	public BigDecimal getWs_guanwangy() {
		return ws_guanwangy;
	}

	public void setWs_guanwangy(BigDecimal wsGuanwangy) {
		ws_guanwangy = wsGuanwangy;
	}

	public String getWs_gongyiy() {
		return ws_gongyiy;
	}

	public void setWs_gongyiy(String wsGongyiy) {
		ws_gongyiy = wsGongyiy;
	}

	public BigDecimal getWs_fwrenkouy() {
		return ws_fwrenkouy;
	}

	public void setWs_fwrenkouy(BigDecimal wsFwrenkouy) {
		ws_fwrenkouy = wsFwrenkouy;
	}

	public BigDecimal getLj_guimoy() {
		return lj_guimoy;
	}

	public void setLj_guimoy(BigDecimal ljGuimoy) {
		lj_guimoy = ljGuimoy;
	}

	public BigDecimal getLj_zhany() {
		return lj_zhany;
	}

	public void setLj_zhany(BigDecimal ljZhany) {
		lj_zhany = ljZhany;
	}

	public String getLj_gongyiy() {
		return lj_gongyiy;
	}

	public void setLj_gongyiy(String ljGongyiy) {
		lj_gongyiy = ljGongyiy;
	}

	public BigDecimal getLj_shoujiy() {
		return lj_shoujiy;
	}

	public void setLj_shoujiy(BigDecimal ljShoujiy) {
		lj_shoujiy = ljShoujiy;
	}

	public BigDecimal getLj_wuhaiy() {
		return lj_wuhaiy;
	}

	public void setLj_wuhaiy(BigDecimal ljWuhaiy) {
		lj_wuhaiy = ljWuhaiy;
	}

	public BigDecimal getLj_gongcey() {
		return lj_gongcey;
	}

	public void setLj_gongcey(BigDecimal ljGongcey) {
		lj_gongcey = ljGongcey;
	}

	public BigDecimal getLj_chey() {
		return lj_chey;
	}

	public void setLj_chey(BigDecimal ljChey) {
		lj_chey = ljChey;
	}

	public BigDecimal getBd_rigongy() {
		return bd_rigongy;
	}

	public void setBd_rigongy(BigDecimal bdRigongy) {
		bd_rigongy = bdRigongy;
	}

	public BigDecimal getBd_yongdiy() {
		return bd_yongdiy;
	}

	public void setBd_yongdiy(BigDecimal bdYongdiy) {
		bd_yongdiy = bdYongdiy;
	}

	public BigDecimal getKyz_geshuy() {
		return kyz_geshuy;
	}

	public void setKyz_geshuy(BigDecimal kyzGeshuy) {
		kyz_geshuy = kyzGeshuy;
	}

	public BigDecimal getKyz_yongdiy() {
		return kyz_yongdiy;
	}

	public void setKyz_yongdiy(BigDecimal kyzYongdiy) {
		kyz_yongdiy = kyzYongdiy;
	}

	public BigDecimal getDxj_geshiy() {
		return dxj_geshiy;
	}

	public void setDxj_geshiy(BigDecimal dxjGeshiy) {
		dxj_geshiy = dxjGeshiy;
	}

	public BigDecimal getDxj_yongdiy() {
		return dxj_yongdiy;
	}

	public void setDxj_yongdiy(BigDecimal dxjYongdiy) {
		dxj_yongdiy = dxjYongdiy;
	}

	public BigDecimal getGg_ptlvy() {
		return gg_ptlvy;
	}

	public void setGg_ptlvy(BigDecimal ggPtlvy) {
		gg_ptlvy = ggPtlvy;
	}

	public BigDecimal getRj_ggssy() {
		return rj_ggssy;
	}

	public void setRj_ggssy(BigDecimal rjGgssy) {
		rj_ggssy = rjGgssy;
	}

	public BigDecimal getDl_midiy() {
		return dl_midiy;
	}

	public void setDl_midiy(BigDecimal dlMidiy) {
		dl_midiy = dlMidiy;
	}

	public BigDecimal getRj_gcy() {
		return rj_gcy;
	}

	public void setRj_gcy(BigDecimal rjGcy) {
		rj_gcy = rjGcy;
	}

	public BigDecimal getRj_ggtccy() {
		return rj_ggtccy;
	}

	public void setRj_ggtccy(BigDecimal rjGgtccy) {
		rj_ggtccy = rjGgtccy;
	}

	public BigDecimal getGg_lvdiy() {
		return gg_lvdiy;
	}

	public void setGg_lvdiy(BigDecimal ggLvdiy) {
		gg_lvdiy = ggLvdiy;
	}

	public BigDecimal getLd_lvy() {
		return ld_lvy;
	}

	public void setLd_lvy(BigDecimal ldLvy) {
		ld_lvy = ldLvy;
	}

	public BigDecimal getRj_ldy() {
		return rj_ldy;
	}

	public void setRj_ldy(BigDecimal rjLdy) {
		rj_ldy = rjLdy;
	}

}
