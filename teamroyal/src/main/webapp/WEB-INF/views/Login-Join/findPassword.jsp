<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="resources/assets/vendor/css/rtl/Shine-Login-Join.css">
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
				<!-- SIGN IN -->
				<div class="col align-items-center flex-col sign-in ">

					<div class="form-wrapper align-items-center Shine-verification">
						<form action="user/findpw" method="post" class="form sign-in">
							<div class="input-group">
								<i class='bx bxs-user'></i> <input type="email"
									name="user_email" placeholder="Email">
							</div>
							<div class="input-group">
								<i class='bx bxs-lock-alt'></i> <input type="text"
									name="user_name" placeholder="Name">
							</div>

							<input type="submit" value="Verification">
						</form>
					</div>
					<div class="form-wrapper"></div>
				</div>
				<!-- END SIGN IN -->
			</div>
			<!-- END FORM SECTION -->
			<!-- CONTENT SECTION -->
			<div class="row content-row ">
				<!-- SIGN IN CONTENT -->
				<div class="col align-items-center ">
					<div class="text sign-in ">
						<h2>Verification</h2>
					</div>
					<div class="img sign-in"></div>
				</div>
				<!-- END SIGN IN CONTENT -->

				<%
				String user_email = (String) session.getAttribute("user_email");
				String user_name = (String) session.getAttribute("user_name");

				System.out.println(user_email);

				Integer flag = (Integer) session.getAttribute("flag");
				if (flag != null) {
				    out.println(" <script type='text/javascript'> ");
				    if (flag == 1) { // 아이디, 메일 일치
				        out.println(" alert('비밀번호는 입니다.')");
				        out.println(" location.href='./'");
				    } else if (flag == 2) {
				        out.println(" alert('회원정보가 없습니다.'); ");
				        out.println(" history.back(); ");
				    }
				}else{
					System.out.println("flag is null");
				}
				%>

			</div>
			<!-- END CONTENT SECTION -->
			<button class="menuClose" onClick="modalClose('modal_menu')">&times;</button>
		</div>
	</div>
</body>
<script src="resources/assets/vendor/js/Shine-Login-Join.js"></script>
</html>