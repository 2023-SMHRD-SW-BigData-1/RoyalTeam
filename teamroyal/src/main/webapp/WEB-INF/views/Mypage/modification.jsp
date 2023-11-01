<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<nav id="navi">
    <ul id="menu">
        <li class="main"><a href="javascript:modal('modal_menu')">Login</a></li>
    </ul>
</nav>
  <div id="modal_menu">
  <div id="container" class="container">
    <!-- FORM SECTION -->
    <div class="row">
      <!-- SIGN UP -->
      <div class="col align-items-center flex-col sign-up">
        <div class="form-wrapper align-items-center"></div>
      </div>
      <!-- END SIGN UP -->
      <!-- SIGN IN -->
      <div class="col align-items-center flex-col sign-in">
        <div class="form-wrapper align-items-center">
          <div class="form sign-in">
            <div class="input-group">
              <i class='bx bxs-user'></i>
              <input type="text" placeholder="Email">
            </div>
            <div class="input-group">
              <i class='bx bxs-lock-alt'></i>
              <input type="text" placeholder="Name">
            </div>
            <div class="input-group">
              <i class='bx bxs-lock-alt'></i>
              <input type="tel" placeholder="Phone Number">
            </div>
            <div class="input-group">
              <i class='bx bxs-lock-alt'></i>
              <input type="password" placeholder="Password">
            </div>
            <div class=" d-flex justify-content-between Shine-Mody-btn">
                <button class="w-50">Sign in</button>
                <button class="w-50">Cancel</button>
            </div>
            <p>
              <span>
                Already have an Acoount?
              </span>
              <b>
                Sign In here
              </b>
            </p>
          </div>
        </div>
        <div class="form-wrapper">
        </div>
      </div>
      <!-- END SIGN IN -->
    </div>
    <!-- END FORM SECTION -->
    <!-- CONTENT SECTION -->
    <div class="row content-rows">
      <!-- SIGN IN CONTENT -->
      <div class="col align-items-center flex-col">
        <div class="text sign-in">
          <h2>
            Welcome
          </h2>
        </div>
      </div>
      <!-- END SIGN IN CONTENT -->
    </div>
    <!-- END CONTENT SECTION -->
    <button class="menuClose" onClick="modalClose('modal_menu')">&times;</button>
  </div>
</div>
</body>
</html>