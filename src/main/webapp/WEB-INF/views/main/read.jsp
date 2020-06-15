<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
	<!-- header -->
	<%@ include file="/WEB-INF/views/head.jsp"%>
	
	<body>
	<!-- Navigation -->
	<%@ include file="/WEB-INF/views/nav.jsp"%>

	<!-- Page Header -->
	<%@ include file="/WEB-INF/views/pageHeader.jsp"%>

	<div align="center" class="container">
		<h1>아파트 거래 정보</h1>
		<table class="table">
			<tr>
				<th rowspan="10"><img src="resources/apt_img/${img}"
					width="300" height="300" /></th>
				<th></th>
				<th></th>
			</tr>
			<tr>
				<td><strong>주택명</strong></td>
				<td>${ house.aptName }</td>
			</tr>
			<tr>
				<td><strong>거래금액</strong></td>
				<td>${ house.dealAmount }</td>
			</tr>
			<tr>
				<td><strong>건축연도</strong></td>
				<td>${ house.buildYear }</td>
			</tr>
			<tr>
				<td><strong>전용면적</strong></td>
				<td>${ house.area }</td>
			</tr>
			<tr>
				<td><strong>거래일</strong></td>
				<td>${ house.dealDay }</td>
			</tr>
			<tr>
				<td><strong>법정동</strong></td>
				<td>${ house.dong }</td>
			</tr>
			<tr>
				<td><strong>지번</strong></td>
				<td>${ house.jibun }</td>
			</tr>
		</table>
		<div>
			<button onclick="window.history.go(-1)" class="btn btn-primary">돌아가기</button>
		</div>
		<div>
			<c:if test="${!empty id}">
				<input type="button" class="btn btn-primary" value="내 북마크 보기"
						onclick="window.open('/happyhouse/popup', 'My Bookmark', 'width=1100px;, height=600px;')">
				<c:if test="${marked == true}">
					<input type="hidden" name="id" value="${id}" readonly />
					<input type="hidden" name="no" value="${no}" readonly />
					<a type="button" href="/happyhouse/bookmark/delete/${id}/${no}"
						onclick="arlert('${no} 삭제');" class="btn btn-danger">북마크에서 삭제</a>
				</c:if>
				<c:if test="${marked == false}">
					<form method="post" action="/happyhouse/bookmark">
						<input type="hidden" name="id" value="${id}" readonly /> <input
							type="hidden" name="no" value="${no}" readonly /> <input
							type="hidden" name="dong" value="${house.dong}" readonly /> <input
							type="hidden" name="aptName" value="${house.aptName}" readonly />
						<button id="addBtn" type="submit" class="btn btn-warning">북마크에
							추가하기</button>
					</form>
				</c:if>
			</c:if>
		</div>
		<hr>

		<!-- 주변 상권정보 검색 -->
		<select name="options" id="options">
			<option value="shopname">가게이름</option>
			<option value="codename3">업종명</option>
		</select> <input type="text" id="word"></input>
		<button id="submit">검색</button>
		<div id="map" style="width: 100%; height: 500px; margin: auto;"></div>
	</div>

	<script>
	console.log("<c:out value='${img}'/>");
		$("#submit").click(function() {
			var condition = $("#options").val();
			var no = "<c:out value='${no}'/>";
			var word = $("#word").val();
			console.log(condition);
			var data = {
				condition : condition,
				no : no,
				word : word
			};
			console.log(data);
			var url = "/commercial";
			console.log(url);
			$.get(
				"${root}/commercial",
				{condition: condition, no:no, word:word},
				function(data, status) {
					geocode(data);
				},
				"json",
			);
		});
		function geocode(jsonData) {
			initMap();
			let idx = 0;
			console.log(jsonData);
			$.each(jsonData, function (index, vo) {
				console.log(vo.aptName);
				let tmpLat;
				let tmpLng;
				let address = vo.dong + "+" + vo.shopname;
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
						addMarker(tmpLat, tmpLng, vo.shopname);
					}
					, "json"
				);//get
			});
		};
	</script>



	<script
		src="https://unpkg.com/@google/markerclustererplus@4.0.1/dist/markerclustererplus.min.js"></script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBz53kMLEDhvfaYo9r-4GuSn5zy4Lju4rM&callback=initMap"></script>
	<script>
		var lat = "<c:out value='${lat}'/>";
		var lng = "<c:out value='${lng}'/>";
		console.log(lat);
		console.log(lng);
		var map;
		function initMap() {
			var prop = {
				center : new google.maps.LatLng(lat, lng),
				zoom:15
			};
			map = new google.maps.Map(document.getElementById('map'), prop);
			//var marker = new google.maps.Marker({ position: multi, map: map });
		}
		function addMarker(tmpLat, tmpLng, aptName, no) {
			var marker = new google.maps.Marker({
				position : new google.maps.LatLng(parseFloat(tmpLat),
						parseFloat(tmpLng)),
				label : aptName,
				title : aptName
			});
			marker.setMap(map);
		}
	</script>


	<hr>
	<!-- Footer -->
	<%@ include file="/WEB-INF/views/footer.jsp"%>

	<!-- JavaScript -->
	<%@ include file="/WEB-INF/views/script.jsp"%>

</body>
</html>