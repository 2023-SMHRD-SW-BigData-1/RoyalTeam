<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html
  lang="en"
  class="light-style layout-menu-fixed layout-compact"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../../../assets/"
  data-template="horizontal-menu-template">
<head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Dashboard - Analytics | Vuexy - Bootstrap Admin Template</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../../../assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&ampdisplay=swap"
      rel="stylesheet" />

    <!-- Icons -->
    <link rel="stylesheet" href="../../../assets/vendor/fonts/fontawesome.css" />
    <link rel="stylesheet" href="../../../assets/vendor/fonts/tabler-icons.css" />
    <link rel="stylesheet" href="../../../assets/vendor/fonts/flag-icons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../../../assets/vendor/css/rtl/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../../../assets/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../../../assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../../../assets/vendor/libs/node-waves/node-waves.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/typeahead-js/typeahead.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/apex-charts/apex-charts.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/swiper/swiper.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css" />

    <!-- Page CSS -->
    <link rel="stylesheet" href="../../../assets/vendor/css/pages/cards-advance.css" />

    <!-- Helpers -->
    <script src="../../../assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../../../assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../../../assets/js/config.js"></script>
  </head>

  <body>
    <!-- Support Tracker -->
    <div class="col-md-6 mb-4">
      <div class="card h-100" >
        <div class="card-header d-flex justify-content-between pb-0"   >
          <div class="card-title mb-0 w-100 text-xl-center"  >
            <h3 class="mb-0" >2023년 11월 10일</h3>
          </div>
          <div class="dropdown">
            <button
              class="btn p-0"
              type="button"
              id="supportTrackerMenu"
              data-bs-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false">
              <i class="ti ti-dots-vertical ti-sm text-muted"></i>
            </button>
            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="supportTrackerMenu">
              <a class="dropdown-item" href="javascript:void(0);">View More</a>
              <a class="dropdown-item" href="javascript:void(0);">Delete</a>
            </div>
          </div>
        </div>
        <div class="w-100 border-bottom" >
          <h3 class="mx-lg-3">대한민국</h3>
        </div>
        <div class="card-body pt-0">
          <div class="row border-bottom pb-4">
            <div class="col-12 col-sm-4 col-md-12 col-lg-4">
              <div class="mt-lg-4 mt-lg-2 mb-lg-4 mb-2 pt-1" >
                <h1 class="mb-0">164</h1>
                <p class="mb-0">Total Tickets</p>
              </div>
              <ul class="p-0 m-0">
                <li class="d-flex gap-3 align-items-center mb-lg-3 pt-2 pb-1">
                  <div class="badge rounded bg-label-primary p-1"><i class="ti ti-ticket ti-sm"></i></div>
                  <div>
                    <h6 class="mb-0 text-nowrap">발전소 수</h6>
                    <small class="text-muted">32,000개</small>
                  </div>
                </li>
                <li class="d-flex gap-3 align-items-center mb-lg-3 pb-1">
                  <div class="badge rounded bg-label-info p-1">
                    <i class="ti ti-circle-check ti-sm"></i>
                  </div>
                  <div>
                    <h6 class="mb-0 text-nowrap">현재 발전량</h6>
                    <small class="text-muted">10,100kw</small>
                  </div>
                </li>
                <li class="d-flex gap-3 align-items-center pb-1">
                  <div class="badge rounded bg-label-warning p-1"><i class="ti ti-clock ti-sm"></i></div>
                  <div>
                    <h6 class="mb-0 text-nowrap">예측 발전량</h6>
                    <small class="text-muted">15,100kw</small>
                  </div>
                </li>
              </ul>
            </div>
            <div class="col-12 col-sm-8 col-md-12 col-lg-8">
              <div id="weeklyEarningReports" ></div>
            </div>
          </div>
          <!--Profit-->
          <div class="w-100 mt-3 d-flex align-items-baseline" >
            <h3 class="mx-lg-5" style="color: red;">* 확인</h3>
            <h4>패널이상 감지</h4>
          </div>
      </div>
    </div>
      <!--/ Support Tracker -->
    

    <!-- Overlay -->
    <div class="layout-overlay layout-menu-toggle"></div>

    <!-- Drag Target Area To SlideIn Menu On Small Screens -->
    <div class="drag-target"></div>

    <!--/ Layout wrapper -->

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->

    <script src="../../../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../../../assets/vendor/libs/popper/popper.js"></script>
    <script src="../../../assets/vendor/js/bootstrap.js"></script>
    <script src="../../../assets/vendor/libs/node-waves/node-waves.js"></script>
    <script src="../../../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="../../../assets/vendor/libs/hammer/hammer.js"></script>
    <script src="../../../assets/vendor/libs/i18n/i18n.js"></script>
    <script src="../../../assets/vendor/libs/typeahead-js/typeahead.js"></script>
    <script src="../../../assets/vendor/js/menu.js"></script>

    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="../../../assets/vendor/libs/apex-charts/apexcharts.js"></script>
    <script src="../../../assets/vendor/libs/swiper/swiper.js"></script>
    <script src="../../../assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>

    <!-- Main JS -->
    <script src="../../../assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="../../../assets/js/dashboards-analytics.js"></script>
  </body>
</html>
