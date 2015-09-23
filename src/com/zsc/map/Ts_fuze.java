/*
 * <p> Company: 官房电子科技有限公司</p>
 * <p> Copyright: Copyright ? 2006 官房电子科技有限公司</p>
 * <p> Created on 2011-5-18</p>
 * <p> @author 邹申昶</p>
 */
package com.zsc.map;
@Deprecated //删除
public class Ts_fuze{
	

	//数据库相关字段
	private Long id;    //主键(直接挂接用户主键)
	private Long unit_id;    //关联地名
	private String fz_ren;    //负责人姓名
	private String fz_danwei;    //负责人单位
	private String fz_zhiwu;    //负责人职务
	private String fz_dianhua;    //负责人电话
	private String zr_ren;    //责任人姓名
	private String zr_danwei;    //责任人单位
	private String zr_zhiwu;    //责任人职务
	private String zr_dianhua;    //责任人电话
	private String remark;    //备注	
    //数据库相关字段 END

    /**
     * 构造函数
     */
	public Ts_fuze(){
	}

	public Ts_fuze(Long id){
		this.id = id;
	}
	//相关属性get/set方法
	
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
