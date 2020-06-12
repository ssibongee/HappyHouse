package com.happyhouse.dto;

public class Commercial {
	private String shopname; 	// 가게 이름
	private String address; 	// 주소
	private String dong; 		// 동
	private String codename3; 	// 카테고리
	private String lat; 		// 위도
	private String lng; 		// 경도

	public String getShopname() {
		return shopname;
	}

	public void setShopname(String shopname) {
		this.shopname = shopname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDong() {
		return dong;
	}

	public void setDong(String dong) {
		this.dong = dong;
	}

	public String getCodename3() {
		return codename3;
	}

	public void setCodename3(String codename3) {
		this.codename3 = codename3;
	}

	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

	public String getLng() {
		return lng;
	}

	public void setLng(String lng) {
		this.lng = lng;
	}

	@Override
	public String toString() {
		return "Commercial [shopname=" + shopname + ", address=" + address + ", dong=" + dong + ", codename3="
				+ codename3 + ", lat=" + lat + ", lng=" + lng + "]";
	}

}
