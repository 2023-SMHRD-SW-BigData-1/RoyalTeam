<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" href="/assets/vendor/DataTables/datatables.min.css">

    <!-- Page CSS -->

    <!-- Shin-CSS -->
    <link rel="stylesheet" href="/assets/vendor/css/shine/sh-main.css">
    <link rel="stylesheet" href="/assets/vendor/css/shine/sh-comm.css">
    <!-- Helpers -->
    <script src="/assets/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="/assets/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="/assets/js/config.js"></script>
    
    <script type="text/javascript">
    function userDelete(userNick){
		var userNick = $("#userNick").text();
  		$.ajax({
  			
  			url : "/user/delete",
  			data : {
  				"userNick" : userNick
  			},
  			type : "POST",
  			success : function(result) {
  				alert("회원 삭제 성공")
  				window.location.href = "/user/login/userProfile/manager";
  			},
  			error : function(){
  				alert("회원 삭제 실패")
  			}
  		});
  	}
    </script>
    <style type="text/css">
    	@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}

.delayed-fade-in {
  opacity: 0; /* 초기 상태는 투명하게 */
  animation-name: fadeIn; /* 애니메이션 이름 지정 */
  animation-duration: 1s; /* 애니메이션 지속 시간 */
  animation-fill-mode: forwards; /* 애니메이션 종료 후 상태 유지 */
  animation-delay: 0.5s; /* 애니메이션 시작 전 지연 시간 */
}
    </style>
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
        <div class="layout-page delayed-fade-in">
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

        <!-- Layout container -->
        <div class="layout-page">
          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->
            <div class="container-xxl flex-grow-1 container-p-y">
                <!-- Invoice List Table -->
                <div class="card w-100 vh-100">
                    <div class="card-datatable table-responsives p-3">
                        <table id="example" class="display w-100 sh-comm-table" >
                        <a href="/user/join" class="btn btn-primary mb-3 waves-effect waves-light sh-comm-wright">회원등록</a>
                    <thead>
                        <tr >
                            <th class="t-a-c">닉네임</th>
                            <th>이메일</th>
                            <th>주소</th>
                            <th>번호</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach items="${userMap }" var="userMap">
							<tr class="bdr">
								<td class="t-a-c" style="height: 50px;"><a style="color:#444;" id="userNick" name="userNick" href="/user/login/userProfile/modify/${userMap.getUserNick() }">${userMap.getUserNick() }</a></td>
								<td style="height: 50px;"><a style="color:#444;" href="/user/login/userProfile/modify/${userMap.getUserNick() }">${userMap.getUserEmail() }</a></td>
								<td style="height: 50px;"><a style="color:#444;" href="/user/login/userProfile/modify/${userMap.getUserNick() }">${userMap.getUserAdd() }</a></td>
								<td style="height: 50px;"><a style="color:#444;" href="/user/login/userProfile/modify/${userMap.getUserNick() }">${userMap.getUserPhone() }</a></td>							
								<td style="height: 50px;"><button onclick="userDelete()" class="btn btn-primary mb-3 waves-effect waves-light sh-comm-wright">삭제</button>
							</tr>			
						</c:forEach>
                    </tbody>
                </table>
                
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
          </div><!--/ Content wrapper -->
        </div><!--/ Layout container -->
      </div><!-- Content wrapper -->
    </div><!-- Layout container -->

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
    <script src="/assets/vendor/DataTables/datatables.min.js"></script>
    
    <!-- Main JS -->
    <script src="/assets/js/main.js"></script>

    <!-- Page JS -->
    <script>
      
      $(document).ready(function() {
          var table = $('#example').DataTable();

          $('#example tbody').on('click', 'td:first-child', function() {
              var cellData = table.cell(this).data();
          });
      });
    </script>
  </body>
</html>
