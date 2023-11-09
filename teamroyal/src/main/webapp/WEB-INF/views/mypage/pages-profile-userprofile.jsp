<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  <!-- Vendor -->

  <!-- Page CSS -->

  <!-- High Chart-->
  <script src="/assets/code/highcharts.js"></script>
  <script src="/assets/code/modules/data.js"></script>
  <script src="/assets/code/modules/exporting.js"></script>
  <script src="/assets/code/modules/export-data.js"></script>
  <script src="/assets/code/modules/accessibility.js"></script>

  <!-- shine-CSS-->
  <link rel="stylesheet" href="/assets/vendor/css/shine/sh-main.css">
  <link rel="stylesheet" href="/assets/vendor/css/shine/sh-highchart-pages-main.css">
  <link rel="stylesheet" href="/assets/vendor/css/shine/sh-pages-myprofile.css">

  <!-- Helpers -->
  <script src="/assets/vendor/js/helpers.js"></script>
  <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
  <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
  <script src="/assets/vendor/js/template-customizer.js"></script>
  <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
  <script src="/assets/js/config.js"></script>
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
          <div class="container-xxl flex-grow-1 container-p-y">
            <!-- Navbar inner -->
            <div class="row">
              <div class="col-md-12">
                <ul class="nav nav-pills flex-column flex-sm-row mb-4">
                  <li class="nav-item">
                    <a class="nav-link active" href="/user/login/userProfile"><i
                        class="ti-xs ti ti-user-check me-1"></i>
                      Profile</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/user/login/userProfile/notification"><i class="ti-xs ti ti-bell me-1"></i>
                      Notification</a>
                    </li>
                    <!-- <li class="nav-item">
                      <a class="nav-link" href="./pages-profile-email.html"><i class="ti-xs ti ti-mail me-1"></i>
                        email</a>
                    </li> -->
                  <!-- <li class="nav-item">
                    <a class="nav-link" href="./pages-profile-teams.html"><i class="ti-xs ti ti-users me-1"></i>
                      Teams</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="./pages-profile-projects.html"><i
                        class="ti-xs ti ti-layout-grid me-1"></i>Projects</a>
                  </li> -->
                  <li class="nav-item">
                    <a class="nav-link" href="/community/list/part/${user.userNick }"><i class="ti-xs ti ti-users me-1"></i>
                      Community</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" href="/auction/list/part/${user.userNick }"><i class="ti-xs ti ti-users me-1"></i>
                      Auction</a>
                    </li>
                  <c:if test="${user.userNick == 'admin' }">
                  <li class="nav-item">
                    <a class="nav-link" href="/user/login/userProfile/manager"><i
                        class="ti-xs ti ti-map-pins me-1"></i>Manager</a>
                  </li>
                  </c:if>
                </ul>
              </div>
            </div><!--/ Navbar pills -->
            <!-- Container box -->
            <div class="row mt-5">
              <!-- Header -->
              <div class="col-12">
                <div class="card mb-4">
                  <div class="user-profile-header d-flex flex-column flex-sm-row text-sm-start text-end mb-4">
                    <div class="flex-shrink-0 mt-n2 mx-sm-0 mx-auto">
                      <img src="/assets/img/profil.png" alt="user image" style="width:100px; height:100px;"
                        class="d-block h-auto ms-0 ms-sm-4 rounded user-profile-img" />
                    </div>
                    <div class="d-flex justify-content-between w-100 mt-sm-5">
                      <div
                        class="w-50 d-flex align-items-md-end align-items-sm-start align-items-center justify-content-md-between justify-content-start flex-md-row flex-column">
                        <div class="user-profile-info mx-4">
                          <h4><sec:authentication property="principal.userNick"/></h4>
                          
                        </div>
                      </div>
                      <div
                        class="d-flex align-items-md-end align-items-sm-start align-items-center justify-content-md-between justify-content-start flex-md-row flex-column">
                        <div class="user-powerplant-info">
                          <ul
                            class="list-inline mb-0 mx-4 d-flex align-items-center flex-wrap justify-content-sm-start justify-content-center gap-2">




                            <li class="list-inline-item d-flex gap-1">


                              <!-- Button trigger modal -->
                              <a href="/user/login/userProfile/modify/${user.userNick }">
                              <button type="button" class="btn btn-primary">
                                <i class="ti ti-link me-1"></i>회원정보수정
                              </button>
                              </a>
                              <!-- Modal -->
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
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </li>
                            <li class="list-inline-item d-flex gap-1">
                              <a href="/power/main" class="btn btn-primary">
                                <i class="ti ti-check me-1"></i>발전소 등록
                              </a>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div><!--/ Header -->


              <!-- Content -->
              <div class="row">
                <!-- left side-->
                <div class="col-xl-4 col-lg-5 col-md-5 ">
                  <!-- About User -->
                  <div class="card mb-4">
                    <div class="card-body">
                      <h4 style="font-weight:bolder;" class="card-text text-uppercase">회원정보</h4>
                      <ul class="list-unstyled mb-4 mt-3">
                        <li class="d-flex align-items-center mb-3">
                          <i class="ti ti-user text-heading"></i><span class="fw-medium mx-2 text-heading">별명:</span>
                          <span>${user.userNick }</span>
                        </li>
                        <li class="d-flex align-items-center mb-3">
                          <i class="ti ti-check text-heading"></i><span class="fw-medium mx-2 text-heading">이름:</span>
                          <span>${user.userNm }</span>
                        </li>
                        <li class="d-flex align-items-center mb-3">
                          <i class="ti ti-mail"></i><span class="fw-medium mx-2 text-heading">Email:</span>
                          <span>${user.userEmail }</span>
                        </li>
                        <li class="d-flex align-items-center mb-3">
                          <i class="ti ti-flag text-heading"></i><span class="fw-medium mx-2 text-heading">주소:</span>
                          <span>${user.userAdd }</span>
                        </li>
                        <li class="d-flex align-items-center mb-3">
                          <i class="ti ti-phone-call"></i><span class="fw-medium mx-2 text-heading">연락처:</span>
                          <span>${user.userPhone }</span>
                        </li>
                      </ul>
                    </div>
                  </div> <!-- Agout User-->
                  <!-- min notification -->
                  <div class="card card-action mb-4">
                    <div class="card-header d-flex justify-content-between align-items-center">
                      <div>
                        <a href="/html/mypage/pages-profile-notifications.html">
                          <h5 style="font-weight:bolder;" class="card-action-title mb-0 sh-profile-card-header">알림</h5>
                        </a>
                      </div>
                      <div class="card-action-element">
                        <div class="dropdown">
                          <button type="button" class="btn dropdown-toggle hide-arrow p-0" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <i class="ti ti-dots-vertical text-muted"></i>
                          </button>
                          <ul class="dropdown-menu dropdown-menu-end">
                            <li><a class="dropdown-item" href="javascript:void(0);">Share timeline</a></li>
                            <li><a class="dropdown-item" href="javascript:void(0);">Suggest edits</a></li>
                            <li>
                              <hr class="dropdown-divider" />
                            </li>
                            <li><a class="dropdown-item" href="javascript:void(0);">Report bug</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <div class="card-body pb-0">
                      <ul class="timeline ms-1 mb-0">
                        <li class="timeline-item timeline-item-transparent">
                          <span class="timeline-point timeline-point-primary"></span>
                          <div class="timeline-event">
                            <div class="timeline-header">
                              <h6 class="mb-0">박예은님이 메시지를 보내셨습니다</h6>
                              <small class="text-muted">Today</small>
                            </div>
                            <p class="mb-2">저기요? 왜 저 신고하셨어요? @10:15am</p>
                          </div>
                        </li>
                        <li class="timeline-item timeline-item-transparent">
                          <span class="timeline-point timeline-point-success"></span>
                          <div class="timeline-event">
                            <div class="timeline-header">
                              <h6 class="mb-0">관리자님이 메시지를 보내셨습니다</h6>
                              <small class="text-muted">2 Day Ago</small>
                            </div>
                            <p class="mb-0">발전소 등록이 완료되었습니다 환영합....</p>
                          </div>
                        </li>
                        <li class="timeline-item timeline-item-transparent">
                          <span class="timeline-point timeline-point-danger"></span>
                          <div class="timeline-event">
                            <div class="timeline-header">
                              <h6 class="mb-0">관리자님이 메시지를 보내셨습니다</h6>
                              <small class="text-muted">6 Day Ago</small>
                            </div>
                            <p class="mb-0">경고: 패널 이상이 감지 되었습니다</p>
                          </div>
                        </li>
                        <li class="timeline-item timeline-item-transparent border-transparent">
                          <span class="timeline-point timeline-point-info"></span>
                          <div class="timeline-event">
                            <div class="timeline-header">
                              <h6 class="mb-0">관리자님이 메시지를 보내셨습니다</h6>
                              <small class="text-muted">10 Day Ago</small>
                            </div>
                            <p class="mb-0">Shine에 오신걸 환영합니다</p>
                          </div>
                        </li>
                        <li class="text-end mb-4">
                          <a href="/html/power/power-plant.html">View More Power Plant</a>
                        </li>
                      </ul>
                    </div>
                  </div> <!--/ min notification -->
                  
                </div> <!-- Left side -->



                <!-- right side-->
                <div class="col-xl-8 col-lg-7 col-md-7 ">
                  
                  <!-- min profit -->
                  <div class="card card-action mb-4 ">
                    <div class="card-header d-flex justify-content-between align-items-center sh-profile-card-header">
                      <div>
                          <a href="/html/power/power-plant.html">
                        <h5 style="font-weight:bolder;" class="card-action-title mb-0 sh-profile-card-header">내 발전량</h5>
                          </a>
                      </div>
                      <div class="card-action-element">
                        <div class="dropdown">
                          <button type="button" class="btn dropdown-toggle hide-arrow p-0" data-bs-toggle="dropdown"
                          aria-expanded="false">
                          <i class="ti ti-dots-vertical text-muted"></i>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end">
                          <li><a class="dropdown-item" href="javascript:void(0);">Share timeline</a></li>
                          <li><a class="dropdown-item" href="javascript:void(0);">Suggest edits</a></li>
                            <li>
                              <hr class="dropdown-divider" />
                            </li>
                            <li><a class="dropdown-item" href="javascript:void(0);">Report bug</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <div class="card-body pb-0">
                      <figure class="highcharts-figure">
                        <div id="sh-symbols-per"></div>
                      </figure>
                      <div class="ld-row">
                        
                      </div>
                      <div class="ld-row">
                        
                      </div>
                      <div class="ld-row">
                        
                      </div>
                      
                    </div>
                   
                  </div> <!--/ min profit -->

                  
                </div> <!--/ right side-->
              </div> <!--/ content-->
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

   <!-- Vendors JS -->
  <script src="/assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
  <script src="/assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
  <script src="/assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>

  <!-- Main JS -->
  <script src="/assets/js/main.js"></script>
  <script src="/assets/js/sh-highchart-liveData.js"></script>


  <!-- Page JS -->
  <script src="/assets/js/pages-auth.js"></script>
  <script type="text/javascript"></script>
  
  <script src="/assets/vendor/js/sh-highchart.js"></script>
	<script type="text/javascript"></script>
</body>

</html>