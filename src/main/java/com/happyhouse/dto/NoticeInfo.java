package com.happyhouse.dto;

public class NoticeInfo {
	private String num;
	private String title;
	private String content;
	private String regtime;
	private String count;
	
	public NoticeInfo(String num, String title, String content, String regtime, String count) {
		this.num = num;
		this.title = title;
		this.content = content;
		this.regtime = regtime;
		this.count = count;
	}
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegtime() {
		return regtime;
	}
	public void setRegtime(String regtime) {
		this.regtime = regtime;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "NoticeInfo [num=" + num + ", title=" + title + ", content=" + content + ", regtime=" + regtime
				+ ", count=" + count + "]";
	}
	
}
