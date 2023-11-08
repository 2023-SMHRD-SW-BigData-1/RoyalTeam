<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>

<html
  lang="en"
  class="light-style layout-menu-fixed layout-compact"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="/assets/"
  data-template="horizontal-menu-template">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Typography - UI elements | Vuexy - Bootstrap Admin Template</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&ampdisplay=swap" rel="stylesheet" />

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

    <!-- Page CSS -->

    <!-- shine-CSS-->
    <link rel="stylesheet" href="/assets/vendor/css/shine/sh-main.css">

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
              <!-- Navbar pills -->
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
            </div>
            <!--/ Navbar pills -->

            <!--content -->
             <div class="card card-action mb-4">
              <!-- Notifications -->
              <div class="card-header align-items-center">
                <h5 class="card-action-title mb-0">알림</h5>
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
                </ul>
              </div>
              
              <div class="card-body">
                <h6>When should we send you notifications?</h6>
                <form action="javascript:void(0);">
                  <div class="row">
                    <div class="col-sm-6">
                      <select id="sendNotification" class="form-select" name="sendNotification">
                        <option selected>Only when I'm online</option>
                        <option>Anytime</option>
                      </select>
                    </div>
                    <div class="mt-3">
                      <button type="submit" class="btn btn-primary me-2">Save changes</button>
                      <button type="reset" class="btn btn-label-secondary">Discard</button>
                    </div>
                  </div>
                </form>
              </div>
              <!-- /Notifications -->
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
                      document.write(new Date().getFullYear());
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
    </div>

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

    <!-- Main JS -->
    <script src="/assets/js/main.js"></script>
    
    <!-- Page JS -->
  </body>
</html>
