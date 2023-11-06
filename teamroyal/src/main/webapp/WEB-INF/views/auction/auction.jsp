<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<!-- Page CSS -->

<!-- Helpers -->
<script src="/assets/vendor/js/helpers.js"></script>
<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
<script src="/assets/vendor/js/template-customizer.js"></script>
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="/assets/js/config.js"></script>

<script type="text/javascript">
var marketNo = ${adlMap.getMarketNo()}; // 이 값은 애플리케이션 로직에 따라 동적으로 설정되어야 합니다.

$.ajax({
    url: "/main/" + marketNo,
    type: "GET",
    success: function(response) {
        // 성공 처리
    },
    error: function(xhr, status, error) {
        // 오류 처리
    }
});
</script>
</head>

<body>
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
							<a class="nav-item nav-link active" href="/user/index">MAIN</a>
							<a class="nav-item nav-link" href="/community/list">COMMUNITY</a>
							<a class="nav-item nav-link" href="/community/chat">CHAT</a> 
							<a class="nav-item nav-link" href="/community/email">MAIL</a>
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
					<div class="container-xxl flex-grow-1 container-p-y">
						<div class="row">
							<div class="col-12">
								<div class="card mb-4">
									<div class="col-lg-10 mx-auto">
										<a href="/auction/write" class="btn btn-primary">물건등록</a>
										<ul class="row list-unstyled">
											<style>
.sh-test {
	transition: all 1s ease;
}

.sh-test:hover {
	transform: translate(-1%, -1%);
}

.sh-test2 {
	transition: all .3s ease;
}

.sh-test2:hover {
	transform: scale(1.02)
}
</style>
										<c:forEach items="${auctionMap }" var="auctionMap" >
											<li class="col-md-2-5 mb-md-0 mb-4 mt-3 sh-test"><a
												href="/auction/list/${auctionMap.getMarketNo() }">
													<div class="card border shadow-none">
														<div class="card-body text-start p-0">
															<div class="w-100">
															
																<img src="${auctionMap.getMarketImgPath() }" class="w-100 " alt="">
															</div>
															<div class="mx-2">
																<h5 class="my-2">${auctionMap.getMarketTitle() }</h5>
																<p>${auctionMap.getMarketText() }</p>
															</div>
														</div>
													</div>
											</a></li>
										</c:forEach>

										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--/ Content -->

					<!-- Footer -->
					<footer class="content-footer footer bg-footer-theme">
						<div class="container-xxl">
							<div
								class="footer-container d-flex align-items-center justify-content-between py-2 flex-md-row flex-column">
								<div>
									©
									<script>
										document
												.write(new Date().getFullYear());
									</script>
									, made with ❤️ by Royal
								</div>
							</div>
						</div>
					</footer>
					<!-- / Footer -->
					<div class="content-backdrop fade"></div>
				</div>
				<!--/ Content wrapper -->
			</div>
			<!--/ Layout container -->
		</div>
		<!-- Content wrapper -->
	</div>
	<!-- Layout container -->


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

	<!-- endbuild -->

	<!-- Vendors JS -->

	<!-- Main JS -->
	<script src="/assets/js/main.js"></script>

	<!-- Page JS -->
</body>
</html>
