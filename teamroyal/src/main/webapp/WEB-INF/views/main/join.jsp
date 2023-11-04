<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html
  lang="en"
  class="light-style layout-wide customizer-hide"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="/assets/"
  data-template="horizontal-menu-template">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Register Cover - Pages | Vuexy - Bootstrap Admin Template</title>

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
    <link rel="stylesheet" href="/assets/vendor/libs/@form-validation/umd/styles/index.min.css" />

    <!-- Page CSS -->
    <!-- Page -->
    <link rel="stylesheet" href="/assets/vendor/css/pages/page-auth.css" />

    <!-- Helpers -->
    <script src="/assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="/assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="/assets/js/config.js"></script>
    
    <script type="text/javascript">
    function join(userNick) {
		var userNick = $("#userNick").val();
		var userEmail = $("#userEmail").val();
		var userPw = $("#userPw").val();
		var userNm = $("#userNm").val();
		var userAdd = $("#userAdd").val();
		var userPhone = $("#userPhone").val();
		$.ajax({
			url : "/user/login/join",
			data : {
				"userNick" : userNick,
				"userEmail" : userEmail,
				"userPw" : userPw,
				"userNm" : userNm,
				"userAdd" : userAdd,
				"userPhone" : userPhone
			},
			type : "POST",
			success : function(result) {
				alert("회원가입 성공")
				window.location.href = "/";
			},
			error : function() {
				alert("회원가입 실패")
	
			}
		});
	}

    </script>
  </head>

  <body>
    <!-- Content -->

    <div class="authentication-wrapper authentication-cover authentication-bg">
      <div class="authentication-inner row">
        <!-- Left Side -->
        <div class="d-flex col-12 col-lg-5 align-items-center p-sm-5 p-4">
          <div class="w-px-400 mx-auto">
            <!-- Logo -->
            <div class="app-brand mb-4">
              <a href="index.html" class="app-brand-link gap-2">
                <span class="app-brand-logo demo" style="width: 60px; height: 60px;">
                  <img src="/assets/img/branding/shinelogosm.png" class="w-100" alt="">
                </span>
              </a>
            </div>
            <!-- /Logo -->
            <h3 class="mb-1">회원가입 🚀</h3>
            <p class="mb-4">SHINE에 멤버가 되시는걸 환영합니다!</p>

              <div class="mb-3">
                <label for="username" class="form-label">닉네임</label>
                <input
                  type="text"
                  class="form-control"
                  id="userNick"
                  name="userNick"
                  placeholder="닉네임를 입력하세요"
                  autofocus />
              </div>

              <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="text" class="form-control" id="userEmail" name="userEmail" placeholder="Enter your email" />
              </div>


              <div class="mb-3 form-password-toggle">
                <label class="form-label" for="password">Password</label>
                <div class="input-group input-group-merge">
                  <input
                    type="password"
                    id="userPw"
                    class="form-control"
                    name="userPw"
                    placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                    aria-describedby="password" />
                  <span class="input-group-text cursor-pointer"><i class="ti ti-eye-off"></i></span>
                </div>
              </div>

              <div class="mb-3">
                <label for="username" class="form-label">이름</label>
                <input
                  type="text"
                  class="form-control"
                  id="userNm"
                  name="userNm"
                  placeholder="이름을 입력하세요"
                  autofocus />
              </div>

              <div class="mb-3">
                <label for="username" class="form-label">주소</label>
                <input
                  type="text"
                  class="form-control"
                  id="userAdd"
                  name="userAdd"
                  placeholder="주소를 입력하세요"
                  autofocus />
              </div>

              <div class="mb-3">
                <label for="username" class="form-label">핸드폰번호</label>
                <input
                  type="text"
                  class="form-control"
                  id="userPhone"
                  name="userPhone"
                  placeholder="핸드폰번호를 입력하세요"
                  autofocus />
              </div>
              <button onclick='join("${uer.userNick }")' class="btn btn-primary d-grid w-100">회원가입</button>

            <p class="text-center">
              <span>회원정보가 있으십니까?</span>
              <a href="/user/login/main">
                <span>로그인화면</span>
              </a>
            </p>

          </div>
        </div><!-- /Left side -->
        <!-- right side-->
        <div class="d-none d-lg-flex col-lg-7 p-0">
          <div class="auth-cover-bg auth-cover-bg-color d-flex justify-content-center align-items-center">
            <img
              src="/assets/img/illustrations/auth-register-illustration-light.png"
              alt="auth-register-cover"
              class="img-fluid my-5 auth-illustration"
              data-app-light-img="illustrations/auth-register-illustration-light.png"
              data-app-dark-img="illustrations/auth-register-illustration-dark.png" />

            <img
              src="/assets/img/illustrations/bg-shape-image-light.png"
              alt="auth-register-cover"
              class="platform-bg"
              data-app-light-img="illustrations/bg-shape-image-light.png"
              data-app-dark-img="illustrations/bg-shape-image-dark.png" />
          </div>
        </div><!-- right side-->


      </div>
    </div>

    <!-- / Content -->

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

    <!-- Page JS -->
    <script src="/assets/js/pages-auth.js"></script>
  </body>
</html>
