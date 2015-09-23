package com.zsc.map;

public class PlanPro {
	private  Long id; //id
	private  String xmmc; //名称
	private  String jtjsnr;//具体建设内容
	private  String tzgs;//投资估算
	private  Long fid;//对应T_DEMONSTRATION_VILLAGE表的id
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getXmmc() {
		return xmmc;
	}
	public void setXmmc(String xmmc) {
		this.xmmc = xmmc;
	}
	public String getJtjsnr() {
		return jtjsnr;
	}
	public void setJtjsnr(String jtjsnr) {
		this.jtjsnr = jtjsnr;
	}
	public String getTzgs() {
		return tzgs;
	}
	public void setTzgs(String tzgs) {
		this.tzgs = tzgs;
	}
	public Long getFid() {
		return fid;
	}
	public void setFid(Long fid) {
		this.fid = fid;
	}
	
}
