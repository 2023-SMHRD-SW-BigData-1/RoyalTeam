<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

    <link rel="stylesheet" href="/assets/vendor/css/pages/app-chat.css" />

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
              <div class="app-chat card overflow-hidden">
                <div class="row g-0">
                  <!-- Sidebar Left -->
                  <div class="col app-chat-sidebar-left app-sidebar overflow-hidden" id="app-chat-sidebar-left">
                    <div
                      class="chat-sidebar-left-user sidebar-header d-flex flex-column justify-content-center align-items-center flex-wrap px-4 pt-5">
                      <div class="avatar avatar-xl avatar-online">
                        <img src="/assets/img/avatars/1.png" alt="Avatar" class="rounded-circle" />
                      </div>
                      <h5 class="mt-2 mb-0">John Doe</h5>
                      <span>Admin</span>
                      <i
                        class="ti ti-x ti-sm cursor-pointer close-sidebar"
                        data-bs-toggle="sidebar"
                        data-overlay
                        data-target="#app-chat-sidebar-left"></i>
                    </div>
                    <div class="sidebar-body px-4 pb-4">
                      <div class="my-4">
                        <small class="text-muted text-uppercase">About</small>
                        <textarea
                          id="chat-sidebar-left-user-about"
                          class="form-control chat-sidebar-left-user-about mt-3"
                          rows="4"
                          maxlength="120">
                          Dessert chocolate cake lemon drops jujubes. Biscuit cupcake ice cream bear claw brownie brownie marshmallow.</textarea
                        >
                      </div>
                      <div class="my-4">
                        <small class="text-muted text-uppercase">Status</small>
                        <div class="d-grid gap-2 mt-3">
                          <div class="form-check form-check-success">
                            <input
                              name="chat-user-status"
                              class="form-check-input"
                              type="radio"
                              value="active"
                              id="user-active"
                              checked />
                            <label class="form-check-label" for="user-active">Active</label>
                          </div>
                          <div class="form-check form-check-danger">
                            <input
                              name="chat-user-status"
                              class="form-check-input"
                              type="radio"
                              value="busy"
                              id="user-busy" />
                            <label class="form-check-label" for="user-busy">Busy</label>
                          </div>
                          <div class="form-check form-check-warning">
                            <input
                              name="chat-user-status"
                              class="form-check-input"
                              type="radio"
                              value="away"
                              id="user-away" />
                            <label class="form-check-label" for="user-away">Away</label>
                          </div>
                          <div class="form-check form-check-secondary">
                            <input
                              name="chat-user-status"
                              class="form-check-input"
                              type="radio"
                              value="offline"
                              id="user-offline" />
                            <label class="form-check-label" for="user-offline">Offline</label>
                          </div>
                        </div>
                      </div>
                      <div class="my-4">
                        <small class="text-muted text-uppercase">Settings</small>
                        <ul class="list-unstyled d-grid gap-2 me-3 mt-3">
                          <li class="d-flex justify-content-between align-items-center">
                            <div>
                              <i class="ti ti-message me-1 ti-sm"></i>
                              <span class="align-middle">Two-step Verification</span>
                            </div>
                            <label class="switch switch-primary me-4 switch-sm">
                              <input type="checkbox" class="switch-input" checked="" />
                              <span class="switch-toggle-slider">
                                <span class="switch-on"></span>
                                <span class="switch-off"></span>
                              </span>
                            </label>
                          </li>
                          <li class="d-flex justify-content-between align-items-center">
                            <div>
                              <i class="ti ti-bell me-1 ti-sm"></i>
                              <span class="align-middle">Notification</span>
                            </div>
                            <label class="switch switch-primary me-4 switch-sm">
                              <input type="checkbox" class="switch-input" />
                              <span class="switch-toggle-slider">
                                <span class="switch-on"></span>
                                <span class="switch-off"></span>
                              </span>
                            </label>
                          </li>
                          <li>
                            <i class="ti ti-user-plus me-1 ti-sm"></i>
                            <span class="align-middle">Invite Friends</span>
                          </li>
                          <li>
                            <i class="ti ti-trash me-1 ti-sm"></i>
                            <span class="align-middle">Delete Account</span>
                          </li>
                        </ul>
                      </div>
                      <div class="d-flex mt-4">
                        <button
                          class="btn btn-primary"
                          data-bs-toggle="sidebar"
                          data-overlay
                          data-target="#app-chat-sidebar-left">
                          Logout
                        </button>
                      </div>
                    </div>
                  </div>
                  <!-- /Sidebar Left-->

                  <!-- Chat & Contacts -->
                  <div
                    class="col app-chat-contacts app-sidebar flex-grow-0 overflow-hidden border-end"
                    id="app-chat-contacts">
                    <div class="sidebar-header">
                      <div class="d-flex align-items-center me-3 me-lg-0">
                        <div
                          class="flex-shrink-0 avatar avatar-online me-3"
                          data-bs-toggle="sidebar"
                          data-overlay="app-overlay-ex"
                          data-target="#app-chat-sidebar-left">
                          <img
                            class="user-avatar rounded-circle cursor-pointer"
                            src="/assets/img/avatars/1.png"
                            alt="Avatar" />
                        </div>
                        <div class="flex-grow-1 input-group input-group-merge rounded-pill">
                          <span class="input-group-text" id="basic-addon-search31"><i class="ti ti-search"></i></span>
                          <input
                            type="text"
                            class="form-control chat-search-input"
                            placeholder="Search..."
                            aria-label="Search..."
                            aria-describedby="basic-addon-search31" />
                        </div>
                      </div>
                      <i
                        class="ti ti-x cursor-pointer d-lg-none d-block position-absolute mt-2 me-1 top-0 end-0"
                        data-overlay
                        data-bs-toggle="sidebar"
                        data-target="#app-chat-contacts"></i>
                    </div>
                    <hr class="container-m-nx m-0" />
                    <div class="sidebar-body">
                      <div class="chat-contact-list-item-title">
                        <h5 class="text-primary mb-0 px-4 pt-3 pb-2">Chats</h5>
                      </div>
                      <!-- Chats -->
                      <ul class="list-unstyled chat-contact-list" id="chat-list">
                        <li class="chat-contact-list-item chat-list-item-0 d-none">
                          <h6 class="text-muted mb-0">No Chats Found</h6>
                        </li>
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-online">
                              <img src="/assets/img/avatars/13.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-2">
                              <h6 class="chat-contact-name text-truncate m-0">Waldemar Mannering</h6>
                              <p class="chat-contact-status text-muted text-truncate mb-0">
                                Refer friends. Get rewards.
                              </p>
                            </div>
                            <small class="text-muted mb-auto">5 Minutes</small>
                          </a>
                        </li>
                        <li class="chat-contact-list-item active">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-offline">
                              <img src="/assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-2">
                              <h6 class="chat-contact-name text-truncate m-0">Felecia Rower</h6>
                              <p class="chat-contact-status text-muted text-truncate mb-0">
                                I will purchase it for sure. 👍
                              </p>
                            </div>
                            <small class="text-muted mb-auto">30 Minutes</small>
                          </a>
                        </li>
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-busy">
                              <span class="avatar-initial rounded-circle bg-label-success">CM</span>
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-2">
                              <h6 class="chat-contact-name text-truncate m-0">Calvin Moore</h6>
                              <p class="chat-contact-status text-muted text-truncate mb-0">
                                If it takes long you can mail inbox user
                              </p>
                            </div>
                            <small class="text-muted mb-auto">1 Day</small>
                          </a>
                        </li>
                      </ul>
                      <!-- Contacts -->
                      <ul class="list-unstyled chat-contact-list mb-0" id="contact-list">
                        <li class="chat-contact-list-item chat-contact-list-item-title">
                          <h5 class="text-primary mb-0">Contacts</h5>
                        </li>
                        <li class="chat-contact-list-item contact-list-item-0 d-none">
                          <h6 class="text-muted mb-0">No Contacts Found</h6>
                        </li>
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-offline">
                              <img src="/assets/img/avatars/4.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-2">
                              <h6 class="chat-contact-name text-truncate m-0">Natalie Maxwell</h6>
                              <p class="chat-contact-status text-muted text-truncate mb-0">UI/UX Designer</p>
                            </div>
                          </a>
                        </li>
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-busy">
                              <img src="/assets/img/avatars/5.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-2">
                              <h6 class="chat-contact-name text-truncate m-0">Jess Cook</h6>
                              <p class="chat-contact-status text-muted text-truncate mb-0">Business Analyst</p>
                            </div>
                          </a>
                        </li>
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="avatar d-block flex-shrink-0">
                              <span class="avatar-initial rounded-circle bg-label-primary">LM</span>
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-2">
                              <h6 class="chat-contact-name text-truncate m-0">Louie Mason</h6>
                              <p class="chat-contact-status text-muted text-truncate mb-0">Resource Manager</p>
                            </div>
                          </a>
                        </li>
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-busy">
                              <img src="/assets/img/avatars/7.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-2">
                              <h6 class="chat-contact-name text-truncate m-0">Krystal Norton</h6>
                              <p class="chat-contact-status text-muted text-truncate mb-0">Business Executive</p>
                            </div>
                          </a>
                        </li>
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-offline">
                              <img src="/assets/img/avatars/8.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-2">
                              <h6 class="chat-contact-name text-truncate m-0">Stacy Garrison</h6>
                              <p class="chat-contact-status text-muted text-truncate mb-0">Marketing Ninja</p>
                            </div>
                          </a>
                        </li>
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="avatar d-block flex-shrink-0">
                              <span class="avatar-initial rounded-circle bg-label-success">CM</span>
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-2">
                              <h6 class="chat-contact-name text-truncate m-0">Calvin Moore</h6>
                              <p class="chat-contact-status text-muted text-truncate mb-0">UX Engineer</p>
                            </div>
                          </a>
                        </li>
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-busy">
                              <img src="/assets/img/avatars/10.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-2">
                              <h6 class="chat-contact-name text-truncate m-0">Mary Giles</h6>
                              <p class="chat-contact-status text-muted text-truncate mb-0">Account Department</p>
                            </div>
                          </a>
                        </li>
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-offline">
                              <img src="/assets/img/avatars/13.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-2">
                              <h6 class="chat-contact-name text-truncate m-0">Waldemar Mannering</h6>
                              <p class="chat-contact-status text-muted text-truncate mb-0">AWS Support</p>
                            </div>
                          </a>
                        </li>
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="avatar d-block flex-shrink-0">
                              <span class="avatar-initial rounded-circle bg-label-danger">AJ</span>
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-2">
                              <h6 class="chat-contact-name text-truncate m-0">Amy Johnson</h6>
                              <p class="chat-contact-status text-muted text-truncate mb-0">Frontend Developer</p>
                            </div>
                          </a>
                        </li>
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-offline">
                              <img src="/assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-2">
                              <h6 class="chat-contact-name text-truncate m-0">Felecia Rower</h6>
                              <p class="chat-contact-status text-muted text-truncate mb-0">Cloud Engineer</p>
                            </div>
                          </a>
                        </li>
                        <li class="chat-contact-list-item">
                          <a class="d-flex align-items-center">
                            <div class="flex-shrink-0 avatar avatar-busy">
                              <img src="/assets/img/avatars/11.png" alt="Avatar" class="rounded-circle" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-2">
                              <h6 class="chat-contact-name text-truncate m-0">William Stephens</h6>
                              <p class="chat-contact-status text-muted text-truncate mb-0">Backend Developer</p>
                            </div>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <!-- /Chat contacts -->

                  <!-- Chat History -->
                  <div class="col app-chat-history bg-body">
                    <div class="chat-history-wrapper">
                      <div class="chat-history-header border-bottom">
                        <div class="d-flex justify-content-between align-items-center">
                          <div class="d-flex overflow-hidden align-items-center">
                            <i
                              class="ti ti-menu-2 ti-sm cursor-pointer d-lg-none d-block me-2"
                              data-bs-toggle="sidebar"
                              data-overlay
                              data-target="#app-chat-contacts"></i>
                            <div class="flex-shrink-0 avatar">
                              <img
                                src="/assets/img/avatars/2.png"
                                alt="Avatar"
                                class="rounded-circle"
                                data-bs-toggle="sidebar"
                                data-overlay
                                data-target="#app-chat-sidebar-right" />
                            </div>
                            <div class="chat-contact-info flex-grow-1 ms-2">
                              <h6 class="m-0">Felecia Rower</h6>
                              <small class="user-status text-muted">NextJS developer</small>
                            </div>
                          </div>
                          <div class="d-flex align-items-center">
                            <i class="ti ti-phone-call cursor-pointer d-sm-block d-none me-3"></i>
                            <i class="ti ti-video cursor-pointer d-sm-block d-none me-3"></i>
                            <i class="ti ti-search cursor-pointer d-sm-block d-none me-3"></i>
                            <div class="dropdown d-flex align-self-center">
                              <button
                                class="btn p-0"
                                type="button"
                                id="chat-header-actions"
                                data-bs-toggle="dropdown"
                                aria-haspopup="true"
                                aria-expanded="false">
                                <i class="ti ti-dots-vertical"></i>
                              </button>
                              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="chat-header-actions">
                                <a class="dropdown-item" href="javascript:void(0);">View Contact</a>
                                <a class="dropdown-item" href="javascript:void(0);">Mute Notifications</a>
                                <a class="dropdown-item" href="javascript:void(0);">Block Contact</a>
                                <a class="dropdown-item" href="javascript:void(0);">Clear Chat</a>
                                <a class="dropdown-item" href="javascript:void(0);">Report</a>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="chat-history-body bg-body">
                        <ul class="list-unstyled chat-history">
                          <li class="chat-message chat-message-right">
                            <div class="d-flex overflow-hidden">
                              <div class="chat-message-wrapper flex-grow-1">
                                <div class="chat-message-text">
                                  <p class="mb-0">How can we help? We're here for you! 😄</p>
                                </div>
                                <div class="text-end text-muted mt-1">
                                  <i class="ti ti-checks ti-xs me-1 text-success"></i>
                                  <small>10:00 AM</small>
                                </div>
                              </div>
                              <div class="user-avatar flex-shrink-0 ms-3">
                                <div class="avatar avatar-sm">
                                  <img src="/assets/img/avatars/1.png" alt="Avatar" class="rounded-circle" />
                                </div>
                              </div>
                            </div>
                          </li>
                          <li class="chat-message">
                            <div class="d-flex overflow-hidden">
                              <div class="user-avatar flex-shrink-0 me-3">
                                <div class="avatar avatar-sm">
                                  <img src="/assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />
                                </div>
                              </div>
                              <div class="chat-message-wrapper flex-grow-1">
                                <div class="chat-message-text">
                                  <p class="mb-0">Hey John, I am looking for the best admin template.</p>
                                  <p class="mb-0">Could you please help me to find it out? 🤔</p>
                                </div>
                                <div class="chat-message-text mt-2">
                                  <p class="mb-0">It should be Bootstrap 5 compatible.</p>
                                </div>
                                <div class="text-muted mt-1">
                                  <small>10:02 AM</small>
                                </div>
                              </div>
                            </div>
                          </li>
                          <li class="chat-message chat-message-right">
                            <div class="d-flex overflow-hidden">
                              <div class="chat-message-wrapper flex-grow-1">
                                <div class="chat-message-text">
                                  <p class="mb-0">Vuexy has all the components you'll ever need in a app.</p>
                                </div>
                                <div class="text-end text-muted mt-1">
                                  <i class="ti ti-checks ti-xs me-1 text-success"></i>
                                  <small>10:03 AM</small>
                                </div>
                              </div>
                              <div class="user-avatar flex-shrink-0 ms-3">
                                <div class="avatar avatar-sm">
                                  <img src="/assets/img/avatars/1.png" alt="Avatar" class="rounded-circle" />
                                </div>
                              </div>
                            </div>
                          </li>
                          <li class="chat-message">
                            <div class="d-flex overflow-hidden">
                              <div class="user-avatar flex-shrink-0 me-3">
                                <div class="avatar avatar-sm">
                                  <img src="/assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />
                                </div>
                              </div>
                              <div class="chat-message-wrapper flex-grow-1">
                                <div class="chat-message-text">
                                  <p class="mb-0">Looks clean and fresh UI. 😃</p>
                                </div>
                                <div class="chat-message-text mt-2">
                                  <p class="mb-0">It's perfect for my next project.</p>
                                </div>
                                <div class="chat-message-text mt-2">
                                  <p class="mb-0">How can I purchase it?</p>
                                </div>
                                <div class="text-muted mt-1">
                                  <small>10:05 AM</small>
                                </div>
                              </div>
                            </div>
                          </li>
                          <li class="chat-message chat-message-right">
                            <div class="d-flex overflow-hidden">
                              <div class="chat-message-wrapper flex-grow-1">
                                <div class="chat-message-text">
                                  <p class="mb-0">Thanks, you can purchase it.</p>
                                </div>
                                <div class="text-end text-muted mt-1">
                                  <i class="ti ti-checks ti-xs me-1 text-success"></i>
                                  <small>10:06 AM</small>
                                </div>
                              </div>
                              <div class="user-avatar flex-shrink-0 ms-3">
                                <div class="avatar avatar-sm">
                                  <img src="/assets/img/avatars/1.png" alt="Avatar" class="rounded-circle" />
                                </div>
                              </div>
                            </div>
                          </li>
                          <li class="chat-message">
                            <div class="d-flex overflow-hidden">
                              <div class="user-avatar flex-shrink-0 me-3">
                                <div class="avatar avatar-sm">
                                  <img src="/assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />
                                </div>
                              </div>
                              <div class="chat-message-wrapper flex-grow-1">
                                <div class="chat-message-text">
                                  <p class="mb-0">I will purchase it for sure. 👍</p>
                                </div>
                                <div class="chat-message-text mt-2">
                                  <p class="mb-0">Thanks.</p>
                                </div>
                                <div class="text-muted mt-1">
                                  <small>10:08 AM</small>
                                </div>
                              </div>
                            </div>
                          </li>
                          <li class="chat-message chat-message-right">
                            <div class="d-flex overflow-hidden">
                              <div class="chat-message-wrapper flex-grow-1">
                                <div class="chat-message-text">
                                  <p class="mb-0">Great, Feel free to get in touch.</p>
                                </div>
                                <div class="text-end text-muted mt-1">
                                  <i class="ti ti-checks ti-xs me-1 text-success"></i>
                                  <small>10:10 AM</small>
                                </div>
                              </div>
                              <div class="user-avatar flex-shrink-0 ms-3">
                                <div class="avatar avatar-sm">
                                  <img src="/assets/img/avatars/1.png" alt="Avatar" class="rounded-circle" />
                                </div>
                              </div>
                            </div>
                          </li>
                          <li class="chat-message">
                            <div class="d-flex overflow-hidden">
                              <div class="user-avatar flex-shrink-0 me-3">
                                <div class="avatar avatar-sm">
                                  <img src="/assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />
                                </div>
                              </div>
                              <div class="chat-message-wrapper flex-grow-1">
                                <div class="chat-message-text">
                                  <p class="mb-0">Do you have design files for Vuexy?</p>
                                </div>
                                <div class="text-muted mt-1">
                                  <small>10:15 AM</small>
                                </div>
                              </div>
                            </div>
                          </li>
                          <li class="chat-message chat-message-right">
                            <div class="d-flex overflow-hidden">
                              <div class="chat-message-wrapper flex-grow-1 w-50">
                                <div class="chat-message-text">
                                  <p class="mb-0">
                                    Yes that's correct documentation file, Design files are included with the template.
                                  </p>
                                </div>
                                <div class="text-end text-muted mt-1">
                                  <i class="ti ti-checks ti-xs me-1"></i>
                                  <small>10:15 AM</small>
                                </div>
                              </div>
                              <div class="user-avatar flex-shrink-0 ms-3">
                                <div class="avatar avatar-sm">
                                  <img src="/assets/img/avatars/1.png" alt="Avatar" class="rounded-circle" />
                                </div>
                              </div>
                            </div>
                          </li>
                        </ul>
                      </div>
                      <!-- Chat message form -->
                      <div class="chat-history-footer shadow-sm">
                        <form class="form-send-message d-flex justify-content-between align-items-center">
                          <input
                            class="form-control message-input border-0 me-3 shadow-none"
                            placeholder="Type your message here" />
                          <div class="message-actions d-flex align-items-center">
                            <i class="speech-to-text ti ti-microphone ti-sm cursor-pointer"></i>
                            <label for="attach-doc" class="form-label mb-0">
                              <i class="ti ti-photo ti-sm cursor-pointer mx-3"></i>
                              <input type="file" id="attach-doc" hidden />
                            </label>
                            <button class="btn btn-primary d-flex send-msg-btn">
                              <i class="ti ti-send me-md-1 me-0"></i>
                              <span class="align-middle d-md-inline-block d-none">Send</span>
                            </button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <!-- /Chat History -->

                  <!-- Sidebar Right -->
                  <div class="col app-chat-sidebar-right app-sidebar overflow-hidden" id="app-chat-sidebar-right">
                    <div
                      class="sidebar-header d-flex flex-column justify-content-center align-items-center flex-wrap px-4 pt-5">
                      <div class="avatar avatar-xl avatar-online">
                        <img src="/assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />
                      </div>
                      <h6 class="mt-2 mb-0">Felecia Rower</h6>
                      <span>NextJS Developer</span>
                      <i
                        class="ti ti-x ti-sm cursor-pointer close-sidebar d-block"
                        data-bs-toggle="sidebar"
                        data-overlay
                        data-target="#app-chat-sidebar-right"></i>
                    </div>
                    <div class="sidebar-body px-4 pb-4">
                      <div class="my-4">
                        <small class="text-muted text-uppercase">About</small>
                        <p class="mb-0 mt-3">
                          A Next. js developer is a software developer who uses the Next. js framework alongside ReactJS
                          to build web applications.
                        </p>
                      </div>
                      <div class="my-4">
                        <small class="text-muted text-uppercase">Personal Information</small>
                        <ul class="list-unstyled d-grid gap-2 mt-3">
                          <li class="d-flex align-items-center">
                            <i class="ti ti-mail ti-sm"></i>
                            <span class="align-middle ms-2">josephGreen@email.com</span>
                          </li>
                          <li class="d-flex align-items-center">
                            <i class="ti ti-phone-call ti-sm"></i>
                            <span class="align-middle ms-2">+1(123) 456 - 7890</span>
                          </li>
                          <li class="d-flex align-items-center">
                            <i class="ti ti-clock ti-sm"></i>
                            <span class="align-middle ms-2">Mon - Fri 10AM - 8PM</span>
                          </li>
                        </ul>
                      </div>
                      <div class="mt-4">
                        <small class="text-muted text-uppercase">Options</small>
                        <ul class="list-unstyled d-grid gap-2 mt-3">
                          <li class="cursor-pointer d-flex align-items-center">
                            <i class="ti ti-badge ti-sm"></i>
                            <span class="align-middle ms-2">Add Tag</span>
                          </li>
                          <li class="cursor-pointer d-flex align-items-center">
                            <i class="ti ti-star ti-sm"></i>
                            <span class="align-middle ms-2">Important Contact</span>
                          </li>
                          <li class="cursor-pointer d-flex align-items-center">
                            <i class="ti ti-photo ti-sm"></i>
                            <span class="align-middle ms-2">Shared Media</span>
                          </li>
                          <li class="cursor-pointer d-flex align-items-center">
                            <i class="ti ti-trash ti-sm"></i>
                            <span class="align-middle ms-2">Delete Contact</span>
                          </li>
                          <li class="cursor-pointer d-flex align-items-center">
                            <i class="ti ti-ban ti-sm"></i>
                            <span class="align-middle ms-2">Block Contact</span>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <!-- /Sidebar Right -->

                  <div class="app-overlay"></div>
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
    <script src="/assets/js/app-chat.js"></script>

  </body>
</html>
