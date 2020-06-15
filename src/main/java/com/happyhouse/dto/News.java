package com.happyhouse.dto;

import java.util.Arrays;
import java.util.List;

public class News {
	private String title;
	private String link;
	private String description;
	private String pubDate;
	private String originallink;

	public News() {
		this.title = "";
		this.description = "";
		this.link = "";
		this.originallink = "";
		this.pubDate = "";
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPubDate() {
		return pubDate;
	}

	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}

	public String getOriginallink() {
		return originallink;
	}

	public void setOriginallink(String originallink) {
		this.originallink = originallink;
	}

	@Override
	public String toString() {
		return "News [title=" + title + ", link=" + link + ", description=" + description + ", pubDate=" + pubDate
				+ ", originallink=" + originallink + "]";
	}

}
