auction<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg bg-navbar-theme">
        <div class="container-fluid">
          <a class="navbar-brand" href="main.html">Navbar</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-ex-5">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbar-ex-5">
            <div class="navbar-nav me-auto">
              <a class="nav-item nav-link" href="/html/main/index.html">MAIN</a>
                <a class="nav-item nav-link" href="/html/community/community.html">COMMUNITY</a>
                <a class="nav-item nav-link" href="/html/community/chat.html">CHAT</a>
                <a class="nav-item nav-link" href="/html/community/community-mail.html">MAIL</a>
                <a class="nav-item nav-link" href="/html/power/power-plant.html">POWER PLANT</a>
            </div>
            <ul class="navbar-nav ms-lg-auto">
              <li class="nav-item">
                <a class="nav-link" href="../mypage/pages-profile-userprofile.html"><i
                    class="tf-icons navbar-icon ti ti-user ti-xs me-1"></i> Profile</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="javascript:void(0);"><i
                    class="tf-icons navbar-icon ti ti-lock-open ti-xs me-1"></i> Logout</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- / Navbar -->

      <!-- Layout container -->
      <div class="layout-page">
        <!-- Content wrapper -->
        <div class="content-wrapper">
          <!-- Content -->
          <div class="container-xxl flex-grow-1 container-p-y">
            <div class="card g-3 mt-5">
              <div class="card-body row g-3">
                <div class="col-lg-12">
                  <!-- title -->
                  <div class="d-flex justify-content-between align-items-center flex-wrap mb-2 gap-1">
                    <div class="me-1">
                      <h5 class="mb-1">Title Here</h5>
                    </div>
                    <div class="me-1 mr-5">
                      <a href="community-form.html" class="mx-1 btn btn-primary bg-transparent border-none btn-no-boxshadow">수정</a>
                      <a href="community-form.html" class="mx-1 btn btn-primary bg-transparent border-none btn-no-boxshadow">삭제</a>
                    </div>
                  </div><!-- title -->
                  <hr class="my-2" />
                  <!-- user info -->
                  <div class="d-flex justify-content-between align-items-center user-name">
                    <div class="d-flex">
                      <div class="avatar-wrapper">
                        <div class="avatar me-2">
                          <img src="/assets/img/avatars/11.png" alt="Avatar" class="rounded-circle" />
                        </div>
                      </div>
                      <div class="d-flex flex-column">
                        <span class="fw-medium">Devonne Wallbridge</span>
                        <small class="text-muted">2023.10.17<span class="mx-2">17:50</span></small>
                      </div>
                    </div>
                    <div class="d-flex align-items-center">
                      <a href="chat.html" class="d-flex mx-2 btn btn-primary bg-transparent border-none btn-no-boxshadow" >
                        <i class="ti ti-message ti-sm"></i>채팅
                        
                      </a>
                      <a href="chat.html" class="d-flex mx-2 btn btn-primary bg-transparent border-none btn-no-boxshadow">
                        <i class="ti ti-mail ti-sm"></i>메일
                      </a>
                      <a href="chat.html" class="d-flex mx-2 btn btn-primary bg-transparent border-none btn-no-boxshadow">
                        <i class="ti ti-bookmarks ti-sm"></i>${user}님의 게시글더보기 >
                      </a>
                    </div>
                  </div><!-- user info -->
                  <!-- user content-->
                  <div class="card academy-content shadow-none border">
                    <div class="p-2">
                      <div class="cursor-pointer">
                        <video class="w-100"
                          poster="https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-HD.jpg"
                          id="plyr-video-player" playsinline controls>
                          <source src="https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-576p.mp4"
                            type="video/mp4" />
                        </video>
                      </div>
                    </div>
                    <div class="card-body">
                      <h5>내용</h5>
                      <p class="mb-4">
                        The material of this course is also covered in my other course about web design and
                        development with HTML5 & CSS3. Scroll to the bottom of this page to check out that course,
                        too! If you're already taking my other course, you already have all it takes to start
                        designing beautiful websites today!
                      </p>
                      <p class="mb-4">
                        "Best web design course: If you're interested in web design, but want more than just a "how to
                        use WordPress" course,I highly recommend this one." — Florian Giusti
                      </p>
                      <p>
                        "Very helpful to us left-brained people: I am familiar with HTML, CSS, JQuery, and Twitter
                        Bootstrap, but I needed instruction in web design. This course gave me practical, impactful
                        techniques for making websites more beautiful and engaging." — Susan Darlene Cain
                      </p>


                      <hr class="mb-4 mt-2" />
                      <h5 class="mb-2">댓글</h5>
                      <hr class="mb-4 mt-2" />


                      <!-- user info -->
                  <div class="d-flex justify-content-between align-items-center user-name">
                    <div class="d-flex w-100">
                      <div class="avatar-wrapper">
                        <div class="avatar me-2">
                          <img src="/assets/img/avatars/11.png" alt="Avatar" class="rounded-circle" />
                        </div>
                      </div>
                      <div class="d-flex flex-column w-100">
                        <div class="d-flex justify-content-between">
                          <span class="fw-medium">${user}박충희</span>
                          <span class="fw-medium">
                            <button class="btn btn-primary border-none bg-transparent btn-no-boxshadow">수정</button>
                            <button class="btn btn-primary border-none bg-transparent btn-no-boxshadow">삭제</button>
                          </span>
                        </div>
                        <div class="sh-comm-comment w-100">
                          <p class="border-none"> 코드에서 왼쪽 class="border"지우고 "댓글은 이 곳" </p>
                        </div>
                        <small class="text-muted">2023.10.17<span class="mx-2">18:00</span></small>
                      </div>
                    </div>
                  </div><!-- user info -->
                      <div class="border mt-5">
                        <div class="d-flex flex-column pl-3">
                          <span class="fw-medium fw-bolder">박충희</span>
                        </div>
                        <textarea name="collapsible-address" class="form-control border-none" id="collapsible-address" rows="2"
                          placeholder="내용을 입력해주세요"></textarea>
                        <div class="w-100">
                          <div class="ml-auto w-10">
                            <button class="w-100 p-2 btn btn-primary bg-transparent border-none btn-no-boxshadow" style="color: gray;">댓글등록</button>
                          </div>
                        </div>
                      </div>
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