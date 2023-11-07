<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>

<html lang="en" class="light-style layout-menu-fixed layout-compact" dir="ltr" data-theme="theme-default"
  data-assets-path="/assets/" data-template="horizontal-menu-template">

<head>
  <meta charset="utf-8" />
  <meta name="viewport"
    content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

  <title>Typography - UI elements | Vuexy - Bootstrap Admin Template</title>

  <meta name="description" content="" />

  <!-- Favicon -->
  <link rel="icon" type="image/x-icon" href="/assets/img/favicon/favicon.ico" />

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
  <link rel="stylesheet" href="/assets/vendor/css/rtl/core.css" class="template-customizer-core-css" />
  <link rel="stylesheet" href="/assets/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />
  <link rel="stylesheet" href="/assets/css/demo.css" />

  <!-- Vendors CSS -->
  <link rel="stylesheet" href="/assets/vendor/libs/node-waves/node-waves.css" />
  <link rel="stylesheet" href="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
  <link rel="stylesheet" href="/assets/vendor/libs/typeahead-js/typeahead.css" />

  <!-- Sh Main CSS-->
  <link rel="stylesheet" href="/assets/vendor/css/shine/sh-main.css">
  <link rel="stylesheet" href="/assets/vendor/css/shine/sh-drilldown.css">
  <!-- for highchart drilldown -->
  <style>
    .highcharts-title,
    .highcharts-subtitle,
    .highcharts-caption {
      display: none;
    }
  </style>
    <!--Shine CSS-->
    <link rel="stylesheet" href="/assets/vendor/css/shine/sh-main.css">
    
  <!-- Helpers -->
  <script src="/assets/vendor/js/helpers.js"></script>
  <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
  <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
  <script src="/assets/vendor/js/template-customizer.js"></script>
  <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
  <script src="/assets/js/config.js"></script>
  
  <script type="text/javascript">
  function ppBtn() {
		var ppAdd = $("#ppAdd").val();
		var ppNum = $("#ppNum").val();
		$.ajax({
			url : "/power/submit",
			data : {
				"ppAdd" : ppAdd,
				"ppNum" : ppNum
			},
			type : "POST",
			success : function(result) {
				alert("발전소 등록 성공")
				location.reload();
			},
			error : function() {
				alert("발전소 등록 실패")
	
			}
		});
	}
  </script>
</head>

<body>
  <!-- Layout wrapper -->
  <div class="layout-wrapper layout-navbar-full layout-horizontal layout-without-menu">
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
							<a href="#" class="d-flex align-items-center w-px-30"
								style="text-decoration: none;"> <img alt=""
								src="/assets/img/branding/logo.png" class="w-100">SHINE
							</a> <a class="nav-item nav-link ml-6 active" href="/user/index">MAIN</a>
							<a class="nav-item nav-link" href="/community/list">COMMUNITY</a>
							<a class="nav-item nav-link" href="/community/chat">CHAT</a> <a
								class="nav-item nav-link" href="/community/email">MAIL</a> <a
								class="nav-item nav-link active" href="/auction/main">AUCTION</a>
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
            
            <!-- Container box -->
            <div class="row">
              <!-- Header -->
              <div class="col-12 ">
                <div class="card mb-4 m-auto p-3">
                  <button 
                    type="button" 
                    class="btn btn-primary w-10" 
                    data-bs-toggle="modal"
                    data-bs-target="#modalCenter">
                    <i class="ti ti-check me-1" style="font-size: .7rem;"></i>발전소 등록
                  </button>
                  <div class="modal fade" id="modalCenter" tabindex="-1" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                        </div>
                        <div class="container-xxl">
                          <div class="authentication-wrapper authentication-basic container-p-y">
                            <div class="authentication-inner py-4">
                              <!-- Forgot Password -->
                              <div class="card">
                                <div class="card-body">
                                    <div class="mb-3">
                                      <label for="username" class="form-label">발전소 주소</label>
                                      <input
                                        type="text"
                                        class="form-control"
                                        id="ppAdd"
                                        name="username"
                                        placeholder="발전소 주소를 입력하세요"
                                        autofocus />
                                    </div>
                                    <div class="mb-3">
                                      <label for="username" class="form-label">발전소 고유번호</label>
                                      <input
                                        type="text"
                                        class="form-control"
                                        id="ppNum"
                                        name="username"
                                        placeholder="발전소 고유번호를 입력하세요"
                                        autofocus />
                                    </div>
                                    <button id="ppBtn" class="btn btn-primary d-grid w-100">발전소등록</button>
                                </div>
                              </div>
                              <!-- /Forgot Password -->
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="user-profile-header d-flex justify-content-between w-100">
                    <div class="p-3 w-50">
                      <h4 class="text-left">대한민국</h4>
                      <ul class="list-unstyled d-flex justify-content-between">
                        <li class="d-flex align-items-center ">
                          <div class="badge rounded bg-label-info p-1">
                            <i class="ti ti-circle-check ti-sm"></i>
                          </div>
                          <div>
                            <h6 class="mb-0 mx-2 text-nowrap">현재 발전량(Kw)</h6>
                            <small class="text-muted mx-2">28,200</small>
                          </div>
                        </li>
                        <li class="d-flex align-items-center ">
                          <div class="badge rounded bg-label-warning p-1"><i class="ti ti-clock ti-sm"></i></div>
                          <div>
                            <h6 class="mb-0 mx-2 text-nowrap">예측 발전량(Kw)</h6>
                            <small class="text-muted mx-2">30,200</small>
                          </div>
                        </li>
                        <li class="d-flex  align-items-center ">
                          <div class="badge rounded bg-label-warning p-1">
                            <i class="ti ti-currency-dollar ti-sm"></i>
                          </div>
                          <div>
                            <h6 class="mb-0 mx-2 text-nowrap">실시간 SMP</h6>
                            <small class="text-muted mx-2">302,68</small>
                          </div>
                        </li>
                        <li>
                        <li class="d-flex  align-items-center ">
                          <div class="badge rounded bg-label-danger p-1">
                            <i class="ti ti-brand-paypal ti-sm"></i>
                          </div>
                          <div>
                            <h6 class="mb-0 mx-2 text-nowrap">실시간 REC(Kw)</h6>
                            <small class="text-muted mx-2">30,200</small>
                          </div>
                        </li>
                        </li>
                      </ul>
                    </div>
                    <div class="card-body pb-0">
                      <ul class="timeline ms-1 mb-0">
                        <li class="timeline-item timeline-item-transparent">
                          <span class="timeline-point timeline-point-danger"></span>
                          <div class="timeline-event">
                            <div class="timeline-header">
                              <h6 class="mb-0">관리자님이 메시지를 보내셨습니다</h6>
                              <small class="text-muted">Today</small>
                            </div>
                            <p class="mb-2">경고: 패널 성능이 84.7% 효과만 발휘됩니다 @10:15am</p>
                          </div>
                        </li>
                        <li class="timeline-item timeline-item-transparent border-transparent">
                          <span class="timeline-point timeline-point-primary"></span>
                          <div class="timeline-event">
                            <div class="timeline-header">
                              <h6 class="mb-0">관리자님이 메시지를 보내셨습니다</h6>
                              <small class="text-muted">6 Day Ago</small>
                            </div>
                            <p class="mb-0">경고: 패널 이상이 감지 되었습니다</p>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div><!--/ Header -->
              <!-- Content -->
              <!-- left side-->
              
              <div class="col-12">
                <!-- About User -->
                <div class="card">
                  <div class="card-body ">
                    <div class="d-flex">
                      <h4 class="card-text text-uppercase w-25">${user.userNick }</h4>
                      <h4 class="card-text text-uppercase w-20">데이터</h4>
                      <h4 class="card-text text-uppercase w-50">차트</h4>
                    </div>
                    <div class="d-flex">
                      <ul class="list-unstyled mb-4 mt-3 w-25 d-flex flex-column">
                        <li class="d-flex align-items-center mb-3">
                          <i class="ti ti-user text-heading"></i><span class="fw-medium mx-2 text-heading">닉네임:
                          </span><span>${user.userNick }</span>
                        </li>
                        <li class="d-flex align-items-center mb-3">
                          <i class="ti ti-mail"></i><span class="fw-medium mx-2 text-heading">Email:</span>
                          <span>${user.userEmail }</span>
                        </li>
                        <li class="d-flex align-items-center mb-3">
                          <i class="ti ti-flag text-heading"></i><span class="fw-medium mx-2 text-heading">발전소
                            주소:</span>
                          <span>광주광역시</span>
                        </li>
                        <li class="d-flex align-items-center mb-3">
                          <i class="ti ti-phone-call"></i>
                          <span class="fw-medium mx-2 text-heading">발전소 고유번호:</span>
                          <span>110-153-2518554</span>
                        </li>
                      </ul>

                      <ul class="list-unstyled mb-4 mt-3 w-20">
                        <li class="d-flex align-items-center mb-3 w-100 ">
                          <div class="badge rounded bg-label-info">
                            <i class="ti ti-circle-check ti-sm"></i>
                          </div>
                          <div>
                            <h6 class="mb-0 mx-2 text-nowrap">현재 발전량(Kw)</h6>
                            <small class="text-muted mx-2">28,200</small>
                          </div>
                        </li>
                        <li class="d-flex align-items-center mb-3 w-100">
                          <div class="badge rounded bg-label-warning">
                            <i class="ti ti-clock ti-sm"></i>
                          </div>
                          <div>
                            <h6 class="mb-0 mx-2 text-nowrap">예측 발전량(Kw)</h6>
                            <small class="text-muted mx-2">30,200</small>
                          </div>
                        </li>
                        <li class="d-flex  align-items-center mb-3 w-100">
                          <div class="badge rounded bg-label-warning">
                            <i class="ti ti-currency-dollar ti-sm"></i>
                          </div>
                          <div>
                            <h6 class="mb-0 mx-2 text-nowrap">실시간 SMP</h6>
                            <small class="text-muted mx-2">302,68</small>
                          </div>
                        </li>
                        <li class="d-flex  align-items-center w-100">
                          <div class="badge rounded bg-label-danger">
                            <i class="ti ti-brand-paypal ti-sm"></i>
                          </div>
                          <div>
                            <h6 class="mb-0 mx-2 text-nowrap">실시간 REC(Kw)</h6>
                            <small class="text-muted mx-2">30,200</small>
                          </div>
                        </li>
                      </ul>
                      <ul class="list-unstyled mb-4 mt-3 w-50 ">
                        <li class="d-flex align-items-center mb-3">
                          <div id="sh-drilldown" class="w-100"></div>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div> <!-- Agout User-->
              </div> <!-- Left side -->
            </div> <!--/ container box-->
            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl">
                <div
                  class="footer-container d-flex align-items-center justify-content-between py-2 flex-md-row flex-column">
                  <div>
                    ©
                    <script>
                      document.write(new Date().getFullYear());
                    </script>
                    , made with ❤️ by Royal
                  </div>
                </div>
              </div>
            </footer>
            <!-- / Footer -->
            <div class="content-backdrop fade"></div>
          </div><!--/ Content -->
        </div><!--/ Content wrapper -->
      </div><!--/ Layout container -->
    </div><!--/ Layout container -->
  </div><!--/ Layout Warpper -->
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
  <script src="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
  <script src="/assets/vendor/libs/hammer/hammer.js"></script>
  <script src="/assets/vendor/libs/i18n/i18n.js"></script>
  <script src="/assets/vendor/libs/typeahead-js/typeahead.js"></script>
  <script src="/assets/vendor/js/menu.js"></script>

  <!-- endbuild -->


  <!-- Main JS -->
  <script src="/assets/js/main.js"></script>

  <!-- high chart -->
  <script src="/assets/code/highcharts.js"></script>
  <script src="/assets/code/modules/data.js"></script>
  <script src="/assets/code/modules/exporting.js"></script>
  <script src="/assets/code/modules/export-data.js"></script>
  <script src="/assets/code/modules/accessibility.js"></script>
  <script src="/assets/code/modules/drilldown.js"></script>

  <!-- shine chart js-->
  <script src="/assets/vendor/js/sh-highchart.js"></script>
  <script type="text/javascript"></script>
</body>

</html>