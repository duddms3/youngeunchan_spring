package com.young.eun.login;

public class loginVO {
	private int seq;
	private String userid;
	private String pwd;
	private String bank;  //은행 이름
	private int bankNum; //은행 계좌 번호
	private String list; //후원한 리스트 정보
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	public int getBankNum() {
		return bankNum;
	}
	public void setBankNum(int bankNum) {
		this.bankNum = bankNum;
	}
	public String getList() {
		return list;
	}
	public void setList(String list) {
		this.list = list;
	}
}
