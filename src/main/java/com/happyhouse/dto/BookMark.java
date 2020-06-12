package com.happyhouse.dto;

public class BookMark {
	private String id;
	private int no;
	private String dong;
	private String aptName;
	
	public BookMark(String id, int no, String dong, String aptName) {
		super();
		this.id = id;
		this.no = no;
		this.dong = dong;
		this.aptName = aptName;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getDong() {
		return dong;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}

	public String getAptName() {
		return aptName;
	}

	public void setAptName(String aptName) {
		this.aptName = aptName;
	}

	@Override
	public String toString() {
		return "BookMark [id=" + id + ", no=" + no + ", dong=" + dong + ", aptName=" + aptName + "]";
	}
}
