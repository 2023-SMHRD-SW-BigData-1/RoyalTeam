<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="resources/assets/vendor/css/rtl/Shine-Login-Join.css">
  <title>Document</title>
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
        <div class="form-wrapper align-items-center">
          <form action="user/join" method="post" class="form sign-up">
            <div class="input-group">
              <i class='bx bxs-user'></i>
              <input type="text" name="user_nick" placeholder="Nickname">
            </div>
            <div class="input-group">
              <i class='bx bx-mail-send'></i>
              <input type="email" name="user_email" placeholder="Email">
            </div>
            <div class="input-group">
              <i class='bx bxs-lock-alt'></i>
              <input type="password" name="user_pw" placeholder="Password">
            </div>
            <div class="input-group">
              <i class='bx bxs-lock-alt'></i>
              <input type="text" name="user_name" placeholder="Username">
            </div>
            <div class="input-group">
              <i class='bx bxs-lock-alt'></i>
              <input type="text" name="user_add" placeholder="Address">
            </div>
            <div class="input-group">
              <i class='bx bxs-lock-alt'></i>
              <input type="tel" name="user_phone" placeholder="Phone">
            </div>
            <input type="submit" value="Sign up" class="Sh_submit_btn">
            
            <p>
              <span>
                Already have an account?
              </span>
              <b onclick="toggle()" class="pointer">
                Sign in here
              </b>
            </p>
          </form>
        </div>
      
      </div>
      <!-- END SIGN UP -->
      <!-- SIGN IN -->
      <div class="col align-items-center flex-col sign-in">
        <div class="form-wrapper align-items-center">
          <form action="user/login" method="post" class="form sign-in">
            <div class="input-group">
              <i class='bx bxs-user'></i>
              <input type="text" name="user_email" placeholder="Email">
            </div>
            <div class="input-group">
              <i class='bx bxs-lock-alt'></i>
              <input type="password" name="user_pw" placeholder="Password">
            </div>
            <input type="submit" value="Sign in" class="Sh_submit_btn">
            <p>
              <b>
                Forgot password?
              </b>
            </p>
            <p>
              <span>
                Don't have an account?
              </span>
              <b onclick="toggle()" class="pointer">
                Sign up here
              </b>
            </p>
          </form>
        </div>
        <div class="form-wrapper">
    
        </div>
      </div>
      <!-- END SIGN IN -->
    </div>
    <!-- END FORM SECTION -->
    <!-- CONTENT SECTION -->
    <div class="row content-row">
      <!-- SIGN IN CONTENT -->
      <div class="col align-items-center flex-col">
        <div class="text sign-in">
          <h2>
            Welcome
          </h2>
  
        </div>
        <div class="img sign-in">
    
        </div>
      </div>
      <!-- END SIGN IN CONTENT -->
      <!-- SIGN UP CONTENT -->
      <div class="col align-items-center flex-col">
        <div class="img sign-up">
        
        </div>
        <div class="text sign-up">
          <h2>
            Join with us
          </h2>
  
        </div>
      </div>
      <!-- END SIGN UP CONTENT -->
    </div>
    <!-- END CONTENT SECTION -->
    <button class="menuClose" onClick="modalClose('modal_menu')">&times;</button>
  </div>
</div>
</body>
<script src="resources/assets/vendor/js/Shine-Login-Join.js"></script>
</html>