/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Copyright: Copyright ? 2006 �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2011-5-18</p>
 * <p> @author ������</p>
 */
package com.zsc.map;
@Deprecated //ɾ��
public class Ts_fuze{
	

	//���ݿ�����ֶ�
	private Long id;    //����(ֱ�ӹҽ��û�����)
	private Long unit_id;    //��������
	private String fz_ren;    //����������
	private String fz_danwei;    //�����˵�λ
	private String fz_zhiwu;    //������ְ��
	private String fz_dianhua;    //�����˵绰
	private String zr_ren;    //����������
	private String zr_danwei;    //�����˵�λ
	private String zr_zhiwu;    //������ְ��
	private String zr_dianhua;    //�����˵绰
	private String remark;    //��ע	
    //���ݿ�����ֶ� END

    /**
     * ���캯��
     */
	public Ts_fuze(){
	}

	public Ts_fuze(Long id){
		this.id = id;
	}
	//�������get/set����
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getUnit_id() {
		return unit_id;
	}

	public void setUnit_id(Long unitId) {
		unit_id = unitId;
	}

	public String getFz_ren() {
		return fz_ren;
	}

	public void setFz_ren(String fzRen) {
		fz_ren = fzRen;
	}

	public String getFz_danwei() {
		return fz_danwei;
	}

	public void setFz_danwei(String fzDanwei) {
		fz_danwei = fzDanwei;
	}

	public String getFz_zhiwu() {
		return fz_zhiwu;
	}

	public void setFz_zhiwu(String fzZhiwu) {
		fz_zhiwu = fzZhiwu;
	}

	public String getFz_dianhua() {
		return fz_dianhua;
	}

	public void setFz_dianhua(String fzDianhua) {
		fz_dianhua = fzDianhua;
	}

	public String getZr_ren() {
		return zr_ren;
	}

	public void setZr_ren(String zrRen) {
		zr_ren = zrRen;
	}

	public String getZr_danwei() {
		return zr_danwei;
	}

	public void setZr_danwei(String zrDanwei) {
		zr_danwei = zrDanwei;
	}

	public String getZr_zhiwu() {
		return zr_zhiwu;
	}

	public void setZr_zhiwu(String zrZhiwu) {
		zr_zhiwu = zrZhiwu;
	}

	public String getZr_dianhua() {
		return zr_dianhua;
	}

	public void setZr_dianhua(String zrDianhua) {
		zr_dianhua = zrDianhua;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}
