package com.young.eun.post;

import java.util.Date;

public class PostVO {
	private int seq;
	private int goalM;
	private int currentM;
	private int priceM;
	private String title;
	private int userid;
	private String content;
	private Date magam;
	private Date regdate;
	private String photo;
	private int cnt;
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public int getGoalM() {
		return goalM;
	}
	public void setGoalM(int goalM) {
		this.goalM = goalM;
	}
	public int getCurrentM() {
		return currentM;
	}
	public void setCurrentM(int currentM) {
		this.currentM = currentM;
	}
	public int getPriceM() {
		return priceM;
	}
	public void setPriceM(int priceM) {
		this.priceM = priceM;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getMagam() {
		return magam;
	}
	public void setMagam(Date magam) {
		this.magam = magam;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
}
