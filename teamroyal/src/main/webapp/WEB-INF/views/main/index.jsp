<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>

<html lang="en" class="light-style layout-menu-fixed layout-compact"
	dir="ltr" data-theme="theme-default" data-assets-path="/assets/"
	data-template="horizontal-menu-template">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>Typography - UI elements | Vuexy - Bootstrap Admin
	Template</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="/assets/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&ampdisplay=swap"
	rel="stylesheet" />

<!-- Icons -->
<link rel="stylesheet" href="/assets/vendor/fonts/fontawesome.css" />
<link rel="stylesheet" href="/assets/vendor/fonts/tabler-icons.css" />
<link rel="stylesheet" href="/assets/vendor/fonts/flag-icons.css" />

<!-- Core CSS -->
<link rel="stylesheet" href="/assets/vendor/css/rtl/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet" href="/assets/vendor/css/rtl/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="/assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="/assets/vendor/libs/node-waves/node-waves.css" />
<link rel="stylesheet"
	href="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
<link rel="stylesheet"
	href="/assets/vendor/libs/typeahead-js/typeahead.css" />

<!-- Sh Main CSS-->
<link rel="stylesheet" href="/assets/vendor/css/shine/sh-main.css">
<link rel="stylesheet" href="/assets/vendor/css/shine/sh-drilldown.css">

<link rel="stylesheet" href="/assets/vendor/css/shine/sh-spline_symbols.css">



<!-- Helpers -->
<script src="/assets/vendor/js/helpers.js"></script>
<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
<script src="/assets/vendor/js/template-customizer.js"></script>
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="/assets/js/config.js"></script>
</head>

<body>
<c:set var="today" value="<%=new java.util.Date()%>" />
<!-- 현재날짜 -->
<c:set var="date"><fmt:formatDate value="${today}" pattern="yyyy-MM-dd" /></c:set> 
	<!-- Layout wrapper -->
	<div
		class="layout-wrapper layout-navbar-full layout-horizontal layout-without-menu">
		<div class="layout-container">
			<!----------------------------------------- Navbar ----------------------------------------->
			<nav class="navbar navbar-expand-lg bg-navbar-theme">
				<div class="container-fluid">
					<a class="navbar-brand" href="javascript:void(0)">Navbar</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbar-ex-5">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbar-ex-5">
						<div class="navbar-nav me-auto">
							<a href="/user/index" class="d-flex align-items-center w-px-30" style="text-decoration: none;">
							<img alt="" src="/assets/img/branding/logo.png" class="w-100">SHINE</a> 
							<a class="nav-item nav-link ml-6 active" href="/user/index">MAIN</a>
							<a class="nav-item nav-link" href="/community/list">COMMUNITY</a>
							<a class="nav-item nav-link" href="/community/chat">CHAT</a> 
							<a class="nav-item nav-link active" href="/auction/main">AUCTION</a>
							<a class="nav-item nav-link" href="/power/main">POWER PLANT</a>
						</div>
						<ul class="navbar-nav ms-lg-auto">
							<li class="nav-item"><a class="nav-link"
								href="/user/login/userProfile"><i
									class="tf-icons navbar-icon ti ti-user ti-xs me-1"></i> Profile</a>
							</li>
							<!-- <li class="nav-item"><a class="nav-link" href="/login"><i
                           class="tf-icons navbar-icon ti ti-lock-open-off ti-xs me-1"></i>
                           Login</a></li> -->
							<li class="nav-item"><a class="nav-link" href="/logout"><i
									class="tf-icons navbar-icon ti ti-lock-open ti-xs me-1"></i>
									Logout</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- / Navbar -->
			<!----------------------------------------- Navbar ----------------------------------------->

			<!-- Layout container -->
			<div class="layout-page">
				<!-- Content wrapper -->
				<div class="content-wrapper">
					<!-- Content -->
					<div id="windy" class="w-100 vh-95 windy"
						style="position: relative;"></div>
					<div class="card w-25  windy-right-table"
						style="position: absolute; top: 8.5%; right: 3%;">
						<div class="card-header d-flex justify-content-between pb-0">
							<div class="card-title mb-0">
								<h5 class="mb-0"><c:out value="${date}" />
							</div>
							<div class="dropdown" style="margin-top: 20px;">
								<button class="btn p-0" type="button" id="supportTrackerMenu"
									data-bs-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">
									<i class="ti ti-dots-vertical ti-sm text-muted"></i>
								</button>
								<div class="dropdown-menu dropdown-menu-end"
									aria-labelledby="supportTrackerMenu">
									<a class="dropdown-item" href="javascript:void(0);">View
										More</a> <a class="dropdown-item" href="javascript:void(0);">Delete</a>
								</div>
							</div>
						</div>
						<div class="card-body">
							<div class="row ">
								<div class="col-12 ">

									<div class="w-100">
										<ul class="p-0 d-flex">
											<li class="d-flex gap-3 align-items-center mb-lg-3 pt-2 pb-1" >
												<div class="badge rounded bg-label-primary p-1"  style="padding-right:-20px;">
													<i class="ti ti-ticket ti-sm"></i>
												</div>
												<div>
													<h6 class="mb-0 text-nowrap"  style="font-size:0.9rem;">발전소 수</h6>
													<small class="text-muted" id="cs"></small>
												</div>
											</li>
											<li class="d-flex gap-3 align-items-center mb-lg-3 pt-2 pb-1" style="padding-left:15px;">
												<div class="badge rounded bg-label-info p-1" style="padding-right:-20px;">
													<i class="ti ti-circle-check ti-sm"></i>
												</div>
												<div style="padding-left:-20px;">
													<p class="mb-0 text-nowrap" style="font-size:0.9rem;">현재 발전량(Kw)</p>
													<small class="text-muted" id="allgener"></small>
												</div>
											</li>
											<li class="d-flex gap-3 align-items-center mb-lg-3 pt-2 pb-1" style="padding-left:15px;">
												<div class="badge rounded bg-label-warning p-1"  style="padding-right:-20px;">
													<i class="ti ti-clock ti-sm"></i>
												</div>
												<div>
													<h6 class="mb-0 text-nowrap"  style="font-size:0.9rem;">예측 발전량(Kw)</h6>
													<small class="text-muted" id="premodal"></small>
												</div>
											</li>
										</ul>
									</div>


									<div class="col-12 w-100" style="margin-top: -10px;">
										<div id="sh-drilldown" style="width:400px; height:240px"></div>
									</div>
								</div>

							</div>
						</div>
						<div class="card-body" style="margin-top: -20px;">
							<div class="row">
								<div class="rounded">
									<div class="row gap-4 gap-sm-0 d-flex justify-content-center">
										<div class="col-12 col-sm-4 mx-3" style="width:190px;">
											<div class="d-flex gap-2 align-items-center" style="padding-bottom:10px;">
												<div class="badge rounded bg-label-primary">
													<i class="ti ti-brand-paypal ti-sm"></i>
												</div>
												<h6 class="mb-0" id="smp_data"></h6>
											</div>
											
											<div class="progress" style="height: 4px">
												<div class="progress-bar  bg-danger" role="progressbar"
													style="width: 50%" aria-valuenow="65" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
										<div class="col-12 col-sm-4 mx-3" style="width:190px;">
											<div class="d-flex gap-2 align-items-center" style="padding-bottom:10px;">
												<div class="badge rounded bg-label-danger">
													<i class="ti ti-currency-dollar ti-sm"></i>
												</div>
												<h6 class="mb-0" id="rec_data"></h6>
											</div>
											
											<div class="progress" style="height: 4px">
												<div class="progress-bar bg-danger" role="progressbar"
													style="width: 50%;" aria-valuenow="65" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
									</div>
								</div>
								<div class="w-100 col-12 col-md-8 " style="margin-top: 40px;">
									<div id="sh-symbols-kr" style="width:400px; height:280px"></div>
									
									
									
									
									
									
									<div class="d-flex">
										<div class="ld-row d-none">
											<label class="ld-label d-none"> Enable Polling </label> <input
												type="checkbox" checked="checked" id="enablePolling" />
										</div>
										<div class="ld-row d-none">
											<label class="ld-label d-none"> Polling Time
												(Seconds) </label> <input class="ld-time-input" type="number"
												value="2" id="pollingTime" />
										</div>
									</div>
									<div class="ld-row d-none">
										<label class="ld-label d-none"> CSV URL </label> <input
											class="ld-url-input" type="text" id="fetchURL" />
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="card windy-right-table"
						style="position: absolute; top: 30%; left: 3%; width:550px; ">
						<div class="card-header d-flex justify-content-between pb-0">
							<div class="card-title mb-0">
								<h5 class="mb-0" id="generName"></h5>
							</div>
							<div class="dropdown">
								<button class="btn p-0" type="button" id="supportTrackerMenu"
									data-bs-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">
									<i class="ti ti-dots-vertical ti-sm text-muted"></i>
								</button>
								<div class="dropdown-menu dropdown-menu-end"
									aria-labelledby="supportTrackerMenu">
									<a class="dropdown-item" href="javascript:void(0);">View
										More</a> <a class="dropdown-item" href="javascript:void(0);">Delete</a>
								</div>
							</div>
						</div>
						<div class="card-body" >
							<div class="row" >
								<div class="col-12" >

									<div class="w-100" >
										<ul class="p-0 d-flex">
										<div style="">
											<li class="d-flex gap-3 align-items-center mb-lg-3 pt-2 pb-1" style="padding-left:60px;">
												<div class="badge rounded bg-label-primary p-1">
													<i class="ti ti-ticket ti-sm"></i>
												</div>
												<div>
													<h6 class="mb-0 text-nowrap">현재 발전량(Kw)</h6>
													<small class="text-muted" id="nowpower"></small>
												</div>
											</li>
											<li class="d-flex gap-3 align-items-center mb-lg-3 pt-2 pb-1" style="padding-left:60px;">
												<div class="badge rounded bg-label-info p-1">
													<i class="ti ti-circle-check ti-sm"></i>
												</div>
												<div>
													<h6 class="mb-0 text-nowrap">예측 발전량(Kw)</h6>
													<small class="text-muted" id="generperspre"></small>
												</div>
											</li>
											</div>
											<div>
											<li class="d-flex gap-3 align-items-center mb-lg-3 pt-2 pb-1" style="padding-left:30px;">
												<div class="badge rounded bg-label-info p-1">
													<i class="ti ti-circle-check ti-sm"></i>
												</div>
												<div>
													<h6 class="mb-0 text-nowrap">발전시간(hr)</h6>
													<small class="text-muted" id="genertime"></small>
												</div>
											</li>
											<li class="d-flex gap-3 align-items-center mb-lg-3 pt-2 pb-1" style="padding-left:30px;">
												<div class="badge rounded bg-label-warning p-1">
													<i class="ti ti-clock ti-sm"></i>
												</div>
												<div>
													<h6 class="mb-0 text-nowrap">예상 수익금(원)</h6>
													<small class="text-muted" id="pregain"></small>
												</div>
											</li>
											</div>
										</ul>
									</div>


									<div class="col-12 w-100">
										
										<div id="sh-symbols-per" style="width:500px; height:300px;"></div>
									</div>
								</div>
							</div>
						</div>
						
						
						
					</div>
					<!--/ Content -->
					<div class="content-backdrop fade"></div>
				</div>
				<!--/ Content wrapper -->
			</div>
			<!--/ Layout container -->
		</div>
		<!-- Content wrapper -->
	</div>
	<!-- Layout wrapper -->


	<!-- Overlay -->
	<div class="layout-overlay layout-menu-toggle"></div>

	<!-- Drag Target Area To SlideIn Menu On Small Screens -->
	<div class="drag-target"></div>

	<!--/ Layout wrapper -->

	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script src="/assets/vendor/libs/jquery/jquery.js"></script>
	<script src="/assets/vendor/libs/popper/popper.js"></script>
	<script src="/assets/vendor/js/bootstrap.js"></script>
	<script src="/assets/vendor/libs/node-waves/node-waves.js"></script>
	<script
		src="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="/assets/vendor/libs/hammer/hammer.js"></script>
	<script src="/assets/vendor/libs/i18n/i18n.js"></script>
	<script src="/assets/vendor/libs/typeahead-js/typeahead.js"></script>
	<script src="/assets/vendor/js/menu.js"></script>

	<!-- Main JS -->
	<script src="/assets/js/main.js"></script>

	<!-- windy api-->
	<script src="https://unpkg.com/leaflet@1.4.0/dist/leaflet.js"></script>
	<script src="https://api.windy.com/assets/map-forecast/libBoot.js"></script>
	<script src="/assets/js/sh-main-windy.js"></script>

	<!-- high chart -->
	<script src="/assets/code/highcharts.js"></script>
	<script src="/assets/code/modules/exporting.js"></script>
	<script src="/assets/code/modules/export-data.js"></script>
	<script src="/assets/code/modules/accessibility.js"></script>
	<script src="/assets/code/modules/data.js"></script>
	
	<script src="/assets/code/modules/drilldown.js"></script>
	<script src="/assets/code/modules/series-label.js"></script>

	<!-- shine chart js-->
	<script src="/assets/vendor/js/sh-highchart.js"></script>
	<script type="text/javascript"></script>
	
	    <script>
    
  
    // 발전소 수 
   $.ajax({
	    url: "/user/login/api/data",
	    method: "GET",
	    dataType: "json",
	    success: function(data) {
	        var outputElements = document.getElementById("cs");
            outputElements.innerText = data[0].CS;
	    },
	    error: function(error) {
	        console.error(error);
	    }
	});
   // 대한민국 하루 발전 총량
   $.ajax({
	   url: "/user/login/api/allgener",
	   method : "GET",
	   dataType : "json",
	   success: function(allgener){
	     
		   
			  let res_sum = 0;
			   for (var i = 0; i < allgener.length; i++) {
		           var summ = allgener[i].SUMM;
		           res_sum += summ;
			   }
			   
		        var allgenerE = document.getElementById("allgener");
		        allgenerE.innerText = res_sum;
				
	   },
	   error: function(error){
		   console.error(error);
	   }
   });
   
   // 실시간 smp
   
   $.ajax({
	   url: "/user/login/api/smp",
   	   method : "GET",
   	   dataType : "json",
   	   success : function(smp_data){
   		   console.log(smp_data[0].SMP_AVG)
   		   
   		   var smpdata = document.getElementById("smp_data");
   		   smpdata.innerText = '실시간 SMP '+ smp_data[0].SMP_AVG;
   	   }
   })
   
   // 실시간 rec
   $.ajax({
	 url : "/user/login/api/rec",
	 method : "GET",
	 dataType : "json",
	 success : function(rec_data){
		 
		 var recdata = document.getElementById("rec_data");
	recdata.innerText =	'실시간 REC(원) '+ rec_data[0].REC_LANDAVG;
	 }
   })
   
   // 대한민국 전체 예측 발전량
   
   $.ajax({
	   url : "/user/login/api/allpre",
   	   method : "GET",
   	   dataType : "json",
   	   success : function(allpre){
   		   
   		   console.log(allpre);
   		  var premodal = document.getElementById("premodal");
   		 premodal.innerText = allpre[0].TOTAL;
   	   },
   	   error : function(error) {
   		   
   		   console.log(error);
   	   }
   })
	
   var userIppt = "${user.ippt}";
   console.log(userIppt);
   // 개인 발전소 이름
   $.ajax({
		url: '/user/index/api/persgenname', // 서버의 RestController 엔드포인트 경로
		method: 'POST', // 또는 'GET' 등 HTTP 메서드 지정
		anync : false,
		contentType: 'application/x-www-form-urlencoded; charset=UTF-8', // 서버로 전달할 데이터
		data: {
			dataString : userIppt
		},
		success: function(response) {
			// 서버 응답을 처리합니다.

			
			
		const firstItem = response.dataList[0];
		console.log(firstItem.IPPTNM);
			var generNameTag = document.getElementById("generName");
			generNameTag.innerText = firstItem.IPPTNM;
		},
		error : function(error){
			
		}
		})
		
		// 개인 발전소 발전량
		$.ajax({
		url: '/user/index/api/persnow', // 서버의 RestController 엔드포인트 경로
		method: 'POST', // 또는 'GET' 등 HTTP 메서드 지정
		anync : false,
		contentType: 'application/x-www-form-urlencoded; charset=UTF-8', // 서버로 전달할 데이터
		data: {
			dataString : userIppt
		},
		success: function(response) {
			// 서버 응답을 처리합니다.

			
			
		const firstItem = response.dataList[0];
		var nowPower = document.getElementById("nowpower");
		nowPower.innerText = firstItem.QPOWER;
			
		},
		error : function(error){
			
		}
		})
		
		// 개인 발전소 발전 시간
		$.ajax({
			url : '/user/index/api/perstime',
			method : 'POST',
			anync : false,
			contentType: 'application/x-www-form-urlencoded; charset=UTF-8', // 서버로 전달할 데이터
			data: {
				dataString : userIppt
			},
			success : function(response){
				const firstItem = response.dataList[0];
			console.log(firstItem.TIMER);
			
			var generTimeTag = document.getElementById("genertime");
			generTimeTag.innerText = firstItem.TIMER;
			},
			error : function(error){
				console.error(error);
			}
		})
		
		// 개인 발전소 예측 발전량
		$.ajax({
			url : '/user/index/api/perspre',
			method : 'POST',
			anync : false,
			contentType: 'application/x-www-form-urlencoded; charset=UTF-8', // 서버로 전달할 데이터
			data: {
				dataString : userIppt
			},
			success : function(response){
				
				
				const firstItem = response.dataList[0];
				var generPersPre = document.getElementById("generperspre");
				generPersPre.innerText = firstItem.TOTAL;
				

			},
			error : function(error){
				console.error(error);
			}
		})
  
		// 개인 발전소 예측 수익량 
		
				$.ajax({
			url : '/user/index/api/persgain',
			method : 'POST',
			anync : false,
			contentType: 'application/x-www-form-urlencoded; charset=UTF-8', // 서버로 전달할 데이터
			data: {
				dataString : userIppt
			},
			success : function(response){
				
				const firstItem = response.dataList[0];
				var preGain = document.getElementById("pregain");
				preGain.innerText = firstItem.GAIN;

			},
			error : function(error){
				console.error(error);
			}
		})
   
   </script>
</body>
</html>