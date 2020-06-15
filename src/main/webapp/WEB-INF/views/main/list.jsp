<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>

	<!-- Head -->
	<%@ include file="/WEB-INF/views/head.jsp"%>

<body>
	<!-- Navigation -->
	<%@ include file="/WEB-INF/views/nav.jsp"%>
	<!-- Page Header -->
	<%@ include file="/WEB-INF/views/pageHeader.jsp"%>
	
	<script>
		$(document).ready(function(){
			if(${loginChk==false}){
				alert("아이디 혹은 비밀번호를 확인해주세요!!!");
			}
		});
	</script>
	
	<form name="pageform" id="pageform" method="GET" action="">
		<input type="hidden" name="no" id="no" value="">
	</form>
	<br>
	<!--  side bar -->
	<div id="side">
	<aside>
		<h3>거래 정보</h3> <br>
		<div class="sidebar" id="result">
		
		</div>
	</aside>
	</div>
	<!-- side bar end -->
	<div class="container">
		<!-- select menu start -->
		<div class="form-inline" align="center">
			<select id="sido" class="form-control" class="col-sm-3">
				<option value="0">도/광역</option>
			</select>
			<select id="gugun" class="form-control" class="col-sm-3">
				<option value="0">시/군/구</option>
			</select>
			<select id="dong" class="form-control" class="col-sm-3">
				<option value="0">동</option>
			</select>
		</div>
		<br>

		<div id="map" style="width: 90%; height: 500px; margin: auto;"></div>
	</div>

	<!--  map start  -->
	<script>
		let colorArr = ['table-primary', 'table-success', 'table-danger'];
		$(document).ready(function () {
			$.get("${root}/list"
				, { condition: "sido" }
				, function (data, status) {
					//$("#sido").empty();
					$.each(data, function (index, map) {
						
						$("#sido").append("<option value='" + map.sido_code + "'>" + map.sido_name + "</option>");
					});//each
				}//function
				, "json"
			);//get
		});//ready
		$(document).ready(function () {
			$("#sido").change(function () {
				$.get("${root}/list"
					, { condition: "gugun", sido: $("#sido").val() }
					, function (data, status) {
						$("#gugun").empty();
						$("#gugun").append('<option value="0">시/군/구</option>');
						$.each(data, function (index, vo) {
							$("#gugun").append("<option value='" + vo.gugun_code + "'>" + vo.gugun_name + "</option>");
						});//each
					}//function
					, "json"
				);//get
			});//change
			$("#gugun").change(function () {
				$.get("${root}/list"
					, { condition: "dong", gugun: $("#gugun").val() }
					, function (data, status) {
						$("#dong").empty();
						$("#dong").append('<option value="0">동</option>');
						$.each(data, function (index, vo) {
							$("#dong").append("<option value='" + vo.dong + "'>" + vo.dong + "</option>");
						});//each
					}//function
					, "json"
				);//get
			});//change
			$("#dong").change(function () {
				$.get("${root}/list"
					, { condition: "apt", dong: $("#dong").val() }
					, function (data, status) {
						$("#result").empty();
						$("#searchResult").empty();
						$.each(data, function (index, vo) {
							let str = "<h4>" + "<a href='${root}/" + vo.no + "'>" + vo.aptName + "</a></h4>" + "<br>"
								+ "<h6>" + "동이름    : " + vo.dong + "</h6>" + "<br>" 
								+ "<h6>" + "건축연도 : " + vo.buildYear + "</h6>" + "<br>"
								+ "<h6>" + "지번       : " + vo.jibun + "</h6>" + "<br><hr><br>";
							$("#result").append(str);
							$("#searchResult").append(vo.dong + " " + vo.AptName + " " + vo.jibun + "<br>");
						});//each
						console.log(data);
						geocode(data);
					}//function
					, "json"
				);//get
			});//change
		});//ready
		function geocode(jsonData) {
			initMap();
			let idx = 0;
			console.log(jsonData);
			$.each(jsonData, function (index, vo) {
				console.log(vo.aptName);
				let tmpLat;
				let tmpLng;
				let address = vo.dong + "+" + vo.aptName + "+" + vo.jibun;
				let key = 'AIzaSyBz53kMLEDhvfaYo9r-4GuSn5zy4Lju4rM';
				let url = "https://maps.googleapis.com/maps/api/geocode/json?address="+address+"&key="+key;
				console.log(url);
				$.get("https://maps.googleapis.com/maps/api/geocode/json?address="+address+"&key="+key
					, function (data) {
						console.log(data.results[0]);
						tmpLat = data.results[0].geometry.location.lat;
						tmpLng = data.results[0].geometry.location.lng;
						$("#lat_" + index).text(tmpLat);
						$("#lng_" + index).text(tmpLng);
						addMarker(tmpLat, tmpLng, vo.aptName, vo.no);
					}
					, "json"
				);//get
			});//each
		}
	</script>

	<script src="https://unpkg.com/@google/markerclustererplus@4.0.1/dist/markerclustererplus.min.js"></script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBz53kMLEDhvfaYo9r-4GuSn5zy4Lju4rM&callback=initMap"></script>
	<script>
		var multi = { lat: 37.5665734, lng: 126.978179 };
		var map;
		function initMap() {
			map = new google.maps.Map(document.getElementById('map'), {
				center: multi,
				zoom: 12
			});
			//var marker = new google.maps.Marker({ position: multi, map: map });
		}
		function addMarker(tmpLat, tmpLng, aptName, no) {
			var marker = new google.maps.Marker({
				position: new google.maps.LatLng(parseFloat(tmpLat), parseFloat(tmpLng)),
				label: aptName,
				title: aptName
			});
			marker.addListener('click', function () {
				map.setZoom(20);
				map.setCenter(marker.getPosition());
				callHouseDealInfo(no);
			});
			marker.setMap(map);
		}
		function callHouseDealInfo(no) {
			document.getElementById("pageform").action = "${root}/"+no;
			document.getElementById("pageform").submit();
		}
	</script>
	<!-- map end -->
	
	<!-- Footer -->
	<%@ include file="/WEB-INF/views/footer.jsp"%>

	<!-- JavaScript -->
  	<%@ include file="/WEB-INF/views/script.jsp"%>
</body>

</html>