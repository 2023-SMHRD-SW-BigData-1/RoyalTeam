<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>

<html lang="en" class="light-style layout-menu-fixed layout-compact"
	dir="ltr" data-theme="theme-default" data-assets-path="/assets/"
	data-template="horizontal-menu-template">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>Typography - UI elements | Vuexy - Bootstrap Admin
	Template</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="/assets/img/favicon/favicon.ico" />

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
<link rel="stylesheet" href="/assets/vendor/css/rtl/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet" href="/assets/vendor/css/rtl/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="/assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="/assets/vendor/libs/node-waves/node-waves.css" />
<link rel="stylesheet"
	href="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
<link rel="stylesheet"
	href="/assets/vendor/libs/typeahead-js/typeahead.css" />

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

<script type="text/javascript">


	function replyModify(replyNo) {
		$.ajax({
			url : "/community/list/post/replyModify",
			data : {
				"replyText" : $("#reply"+replyNo).val(),
				"replyNo" : replyNo
			},
			type : "POST",
			success : function(result) {
				alert("댓글 수정 성공")
			},
			error : function() {
				alert("댓글 수정 실패")
			}
		});
	}
	
	function modifyView(modiId) {
		$("#"+modiId).css('display','');
	}

	
	function replyDelete(replyNo) {
		$.ajax({
			url : "/community/list/post/replyDelete",
			data : {
				"replyNo" : replyNo
			},
			type : "POST",
			success : function(result) {
				alert("댓글 삭제 성공")
			},
			error : function() {
				alert("댓글 삭제 실패")
			}
		}); 
	}

	
</script>
</head>

<body>
	<!-- Layout wrapper -->
	<div
		class="layout-wrapper layout-navbar-full layout-horizontal layout-without-menu">
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
							<a class="nav-item nav-link active" href="/user/Success">MAIN</a>
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
						<div class="card g-3 mt-5">
							<div class="card-body row g-3">
								<div class="col-lg-12">
									<!-- title -->
									<div
										class="d-flex justify-content-between align-items-center flex-wrap mb-2 gap-1">

										<div class="me-1">
											<h5 class="mb-1">${detailMap.getCommuTitle() }</h5>
										</div>
										<div class="me-1 mr-5">
											<a
												class="mx-1 btn btn-primary bg-transparent border-none btn-no-boxshadow"
												href="/community/list/detail/${detailMap.getCommuNo() }/modify">수정</a>
											<a
												class="mx-1 btn btn-primary bg-transparent border-none btn-no-boxshadow"
												href="/community/list/detail/${detailMap.getCommuNo() }/delete">삭제</a>
										</div>
									</div>
									<!-- title -->





									<hr class="my-2" />
									<!-- user info -->
									<div
										class="d-flex justify-content-between align-items-center user-name">
										<div class="d-flex">
											<div class="avatar-wrapper">
												<div class="avatar me-2">
													<img src="/assets/img/avatars/11.png" alt="Avatar"
														class="rounded-circle" />
												</div>
											</div>
											<div class="d-flex flex-column">
												<span class="fw-medium">${detailMap.getCommuCreateNm() }</span>
												<small class="text-muted">${detailMap.getCommuCreateAt() }</small>
											</div>
										</div>
										<div class="d-flex align-items-center">
											<a href="chat.html"
												class="mx-1 btn btn-primary bg-transparent border-none btn-no-boxshadow">
												<i class="ti ti-message ti-sm"></i>채팅

											</a> <a href="chat.html"
												class="mx-1 btn btn-primary bg-transparent border-none btn-no-boxshadow">
												<i class="ti ti-mail ti-sm"></i>메일

											</a> <a href="chat.html"
												class="mx-1 btn btn-primary bg-transparent border-none btn-no-boxshadow">
												<i class="ti ti-bookmarks ti-sm"></i>${detailMap.getCommuCreateNm() }님의게시글더보기>

											</a>
										</div>
									</div>
									<br>
									<!-- user info -->
									<!-- user content-->
									<div class="card academy-content shadow-none border">
										<div class="p-2">
											<div class="cursor-pointer">
												<!-- 
												<video class="w-100"
													poster="https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-HD.jpg"
													id="plyr-video-player" playsinline controls>
													<source
														src="https://cdn.plyr.io/static/demo/View_From_A_Blue_Moon_Trailer-576p.mp4"
														type="video/mp4" />
												</video>
												
												 <img alt="" src="data:image/png;base64,${imgMap.getCommuImgNm() }">
												 -->
											</div>
										</div>
										<div class="card-body">
											<p class="mb-4">${detailMap.getCommuText() }</p>


											<hr class="mb-4 mt-2" />
											<h5 class="mb-4">댓글</h5>


											<!-- user info -->
											<div
												class="d-flex justify-content-between align-items-center user-name">
												<div class="d-flex w-100">

													<div class="d-flex flex-column w-100">

														<div id="comment-list" class="d-flex flex-column w-100 ">
															<c:forEach items="${replyMap }" var="replyMap" varStatus="replyBegin">
																<div class="d-flex justify-content-between">
																	<div class="d-flex justify-content-between ml-2 ">
																		<span class="fw-medium">${replyMap.getReplyCreateNm()}</span>
																		<small <c:if test="${replyMap.getReplyCreateNm() != user.userEmail }"> colspan ="2"</c:if>
																		 class="text-muted ml-2">${replyMap.getReplyCreateAt()}</small>
																	</div>
																	<c:if test="${replyMap.getReplyCreateNm() == user.userEmail }">
																		<div class="fw-medium">
																			<button type="button" onclick='modifyView("modify${replyBegin.count}")' id="modify${i.count }" class="btn btn-primary border-none bg-transparent btn-no-boxshadow">수정</button>
																			<button class="btn btn-primary border-none bg-transparent btn-no-boxshadow" onclick='replyDelete("${replyMap.getReplyNo() }")'>삭제</button>
																		</div>
																	</c:if>
																</div>
																<div class="sh-comm-comment w-100">
																	<p class="border-none ml-4 mt-n2">${replyMap.getReplyText()}</p>
																</div>
																
																<div id="modify${replyBegin.count}" class="border" style="display: none; width : 800px; border:2px solid gray !important; border-radius:10px;">
																	<input type="hidden" name="replyNo" value="${replyMap.getReplyNo() }"> 
																	<input type="hidden" name="commuNo" value="${detailMap.getCommuNo() }"> 
																	<input type="hidden" name="replyCreateNm" value="${replyMap.getReplyCreateNm() }">
																	<textarea class="form-control border-none" placeholder="내용을 작성하세요" name="replyText" required="required" id="reply${replyMap.getReplyNo() }">${replyMap.getReplyText() }</textarea>
																		<div class="fw-medium" style="display:flex; justify-content:end;">
																			<button class="btn btn-primary border-none bg-transparent btn-no-boxshadow" onclick='replyModify("${replyMap.getReplyNo() }")'>수정</button>
																			<button class="btn btn-primary border-none bg-transparent btn-no-boxshadow">취소</button>
																		</div>
																</div>
																<br>
															</c:forEach>
														</div>

													</div>
												</div>
											</div>
											<!-- user info -->

											<div class="border mt-5">
												<form action="/community/list/post/reply" method="post">
													<input type="hidden" name="commuNo"
														value="${detailMap.getCommuNo() }">
													<div class="d-flex flex-column pl-3">
														<span class="fw-medium fw-bolder">${user.userNick }</span>
													</div>

													<textarea name="replyContents"
														class="form-control border-none" id="replyText" rows="2"
														placeholder="내용을 입력해주세요"></textarea>


													<div class="w-100">
														<div class="ml-auto w-10">
															<button id="rSubmit" type="button" name="rSubmit"
																class="w-100 p-2 bg-transparent border-none"
																style="color: gray;">댓글등록</button>
														</div>
													</div>
												</form>
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
		<!-- Content wrapper -->
	</div>
	<!-- Layout container -->


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
	<script
		src="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="/assets/vendor/libs/hammer/hammer.js"></script>
	<script src="/assets/vendor/libs/i18n/i18n.js"></script>
	<script src="/assets/vendor/libs/typeahead-js/typeahead.js"></script>
	<script src="/assets/vendor/js/menu.js"></script>

	<!-- endbuild -->

	<!-- Vendors JS -->

	<!-- Main JS -->
	<script src="/assets/js/main.js"></script>

	<!-- Page JS -->



	<script type="text/javascript">

	
	var modifyViews = document.getElementsByClassName('modifyViews')
	for (var i = 0; i < modifyViews.length; i++) {
		modifyViews[i].style.display = 'none'
	}
	function modifyCancle(idI) {
		var modifiId = document.getElementById(idI);
		modifiId.parentElement.parentElement.style.display = '';
		modifiId.parentElement.parentElement.nextElementSibling.style.display = 'none';
	}
		
	<!-- 댓글 등록 -->
	$('#rSubmit').on("click", function() {
		var replyText = $("#replyText").val();
		var commuNo = "${detailMap.commuNo}"
		$.ajax({
			url : "/community/list/post/reply",
			data : {
				"replyText" : replyText,
				"commuNo" : commuNo
			},
			type : "POST",
			success : function(result) {
				alert("등록 성공")
				$('#replyContents').val('')
				getReplyList();
			},
			error : function() {
				alert("등록 실패")

			}
		});
	})
	
	<!-- 댓글 출력 -->
		const comment-list = () => {
	        const replyCreateNm = document.getElementById("replyCreateNm").value;
	        const replyText = document.getElementById("replyText").value;
	        console.log("작성자: ", replyCreateNm);
	        console.log("내용: ", replyText);
	        const commuNo = [[${detailMap.commuNo}]];
	          $.ajax({
	           type: "get",
	           url: "/community/list/detail/${detailMap.commuNo}",
	           data: {
	               "replyCreateNm": replyCreateNm,
	               "replyText": replyText,
	               "commuNo": commuNo
	           },
	           success: function (res) {
	               console.log("요청성공", res);
	               
	           },
	           error: function (err) {
	               console.log("요청실패", err);
	           }
	        });

	    }
		

</script>
</body>

</html>