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
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg bg-navbar-theme">
          <div class="container-fluid">
          <a class="navbar-brand" href="/user/Success">Navbar</a>
            <button
              class="navbar-toggler"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#navbar-ex-5">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbar-ex-5">
              <div class="navbar-nav me-auto">
							<a class="nav-item nav-link" href="/user/Success">MAIN</a> <a
								class="nav-item nav-link" href="/community/list">COMMUNITY</a> <a
								class="nav-item nav-link" href="/community/chat">CHAT</a> <a
								class="nav-item nav-link" href="/community/email">MAIL</a> <a
								class="nav-item nav-link" href="/power">POWER PLANT</a>
						</div>
              <ul class="navbar-nav ms-lg-auto">
                <li class="nav-item">
                  <a class="nav-link" href="/user/login/userProfile"
                    ><i class="tf-icons navbar-icon ti ti-user ti-xs me-1"></i> Profile</a
                  >
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/logout"
                    ><i class="tf-icons navbar-icon ti ti-lock-open ti-xs me-1"></i> Logout</a
                  >
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
              <!-- Navbar pills -->
            <div class="row">
              <div class="col-md-12">
                <ul class="nav nav-pills flex-column flex-sm-row mb-4">
                  <li class="nav-item">
                    <a class="nav-link" href="./pages-profile-userprofile.html"><i class="ti-xs ti ti-user-check me-1"></i>
                      Profile</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="./pages-profile-notifications.html"><i
                      class="ti-xs ti ti-bell me-1"></i> notification</a>
                    </li>
                    <!-- <li class="nav-item">
                      <a class="nav-link" href="./pages-profile-email.html"><i
                          class="ti-xs ti ti-mail me-1"></i> email</a>
                    </li> -->
                  <!-- <li class="nav-item">
                    <a class="nav-link" href="./pages-profile-teams.html"><i 
                      class="ti-xs ti ti-users me-1"></i> Teams</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="./pages-profile-projects.html"><i 
                      class="ti-xs ti ti-layout-grid me-1"></i>Projects</a>
                  </li> -->
                  <li class="nav-item">
                    <a class="nav-link active" href="./pages-profile-magnager.html"><i 
                      class="ti-xs ti ti-map-pins me-1"></i>Manager</a>
                  </li>
                </ul>
              </div>
            </div>
            <!--/ Navbar pills -->

            <div class="row g-4 mb-4">
              <div class="col-sm-6 col-xl-3 m-auto mt-4">
                <div class="card m-auto">
                  <div class="card-body">
                    <div class="d-flex align-items-start justify-content-between">
                      <div class="content-left">
                        <span>Session</span>
                        <div class="d-flex align-items-center my-2">
                          <h3 class="mb-0 me-2">21,459</h3>
                          <p class="text-success mb-0">(+29%)</p>
                        </div>
                        <p class="mb-0">Total Users</p>
                      </div>
                      <div class="avatar">
                        <span class="avatar-initial rounded bg-label-primary">
                          <i class="ti ti-user ti-sm"></i>
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Users List Table -->
              <div class="card">
                <div class="card-header border-bottom">
                  <h5 class="card-title mb-3">Search Filter</h5>
                  <div class="d-flex justify-content-between align-items-center row pb-2 gap-3 gap-md-0">
                    <div class="col-md-4 user_role"></div>
                    <div class="col-md-4 user_plan"></div>
                    <div class="col-md-4 user_status"></div>
                  </div>
                </div>
                <div class="card-datatable table-responsive">
                  <table class="datatables-users table">
                    <thead class="border-top">
                      <tr>
                        <th></th>
                        <th>num</th>
                        <th>닉네임</th>
                        <th>이메일</th>
                        <th>이름</th>
                        <th>주소</th>
                        <th>핸드폰번호</th>
                      </tr>
                    </thead>
                  </table>
                </div>
                <!-- Offcanvas to add new user -->
                <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasAddUser"
                  aria-labelledby="offcanvasAddUserLabel">
                  <div class="offcanvas-header">
                    <h5 id="offcanvasAddUserLabel" class="offcanvas-title">Add User</h5>
                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                      aria-label="Close"></button>
                  </div>
                  <div class="offcanvas-body mx-0 flex-grow-0 pt-0 h-100">
                    <form class="add-new-user pt-0" id="addNewUserForm" onsubmit="return false">
                      <div class="mb-3">
                        <label class="form-label" for="add-user-fullname">Full Name</label>
                        <input type="text" class="form-control" id="add-user-fullname" placeholder="John Doe"
                          name="userFullname" aria-label="John Doe" />
                      </div>
                      <div class="mb-3">
                        <label class="form-label" for="add-user-email">Email</label>
                        <input type="text" id="add-user-email" class="form-control" placeholder="john.doe@example.com"
                          aria-label="john.doe@example.com" name="userEmail" />
                      </div>
                      <div class="mb-3">
                        <label class="form-label" for="add-user-contact">Contact</label>
                        <input type="text" id="add-user-contact" class="form-control phone-mask"
                          placeholder="+1 (609) 988-44-11" aria-label="john.doe@example.com" name="userContact" />
                      </div>
                      <div class="mb-3">
                        <label class="form-label" for="add-user-company">Company</label>
                        <input type="text" id="add-user-company" class="form-control" placeholder="Web Developer"
                          aria-label="jdoe1" name="companyName" />
                      </div>
                      <div class="mb-3">
                        <label class="form-label" for="country">Country</label>
                        <select id="country" class="select2 form-select">
                          <option value="">Select</option>
                          <option value="Australia">Australia</option>
                          <option value="Bangladesh">Bangladesh</option>
                          <option value="Belarus">Belarus</option>
                          <option value="Brazil">Brazil</option>
                          <option value="Canada">Canada</option>
                          <option value="China">China</option>
                          <option value="France">France</option>
                          <option value="Germany">Germany</option>
                          <option value="India">India</option>
                          <option value="Indonesia">Indonesia</option>
                          <option value="Israel">Israel</option>
                          <option value="Italy">Italy</option>
                          <option value="Japan">Japan</option>
                          <option value="Korea">Korea, Republic of</option>
                          <option value="Mexico">Mexico</option>
                          <option value="Philippines">Philippines</option>
                          <option value="Russia">Russian Federation</option>
                          <option value="South Africa">South Africa</option>
                          <option value="Thailand">Thailand</option>
                          <option value="Turkey">Turkey</option>
                          <option value="Ukraine">Ukraine</option>
                          <option value="United Arab Emirates">United Arab Emirates</option>
                          <option value="United Kingdom">United Kingdom</option>
                          <option value="United States">United States</option>
                        </select>
                      </div>
                      <div class="mb-3">
                        <label class="form-label" for="user-role">User Role</label>
                        <select id="user-role" class="form-select">
                          <option value="subscriber">Subscriber</option>
                          <option value="editor">Editor</option>
                          <option value="maintainer">Maintainer</option>
                          <option value="author">Author</option>
                          <option value="admin">Admin</option>
                        </select>
                      </div>
                      <div class="mb-4">
                        <label class="form-label" for="user-plan">Select Plan</label>
                        <select id="user-plan" class="form-select">
                          <option value="basic">Basic</option>
                          <option value="enterprise">Enterprise</option>
                          <option value="company">Company</option>
                          <option value="team">Team</option>
                        </select>
                      </div>
                      <button type="submit" class="btn btn-primary me-sm-3 me-1 data-submit">Submit</button>
                      <button type="reset" class="btn btn-label-secondary" data-bs-dismiss="offcanvas">Cancel</button>
                    </form>
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
    <script src="/assets/vendor/libs/moment/moment.js"></script>
      <script src="/assets/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
      <script src="/assets/vendor/libs/select2/select2.js"></script>
      <script src="/assets/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
      <script src="/assets/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
      <script src="/assets/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
      <script src="/assets/vendor/libs/cleavejs/cleave.js"></script>
      <script src="/assets/vendor/libs/cleavejs/cleave-phone.js"></script>

      
    <!-- Main JS -->
    <script src="/assets/js/main.js"></script>
    
    <!-- Page JS -->
    <script src="/assets/js/app-user-list.js"></script>
  </body>
</html>
