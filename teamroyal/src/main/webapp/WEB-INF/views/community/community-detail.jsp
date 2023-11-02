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
</head>

<body>
	<!-- Layout wrapper -->
	<div
		class="layout-wrapper layout-navbar-full layout-horizontal layout-without-menu">
		<div class="layout-container">
			<!-- Navbar -->
			<nav class="navbar navbar-expand-lg bg-navbar-theme">
				<div class="container-fluid">
					<a class="navbar-brand" href="/user/Success">Navbar</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbar-ex-5">
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
							<li class="nav-item"><a class="nav-link"
								href="/user/login/userProfile"><i
									class="tf-icons navbar-icon ti ti-user ti-xs me-1"></i> Profile</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="/logout"><i
									class="tf-icons navbar-icon ti ti-lock-open ti-xs me-1"></i>
									Logout</a></li>
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
									<div
										class="d-flex justify-content-between align-items-center flex-wrap mb-2 gap-1">
										<div class="me-1">
											<h5 class="mb-1">${detailMap.getCommuTitle() }</h5>
										</div>

										<a
											href="/community/list/detail/${detailMap.getCommuNo() }/modify">
											<button>수정</button>
										</a> <a
											href="/community/list/detail/${detailMap.getCommuNo() }/delete">
											<button>삭제</button>
										</a>
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
											<a href="chat.html" class="d-flex mx-2"> <i
												class="ti ti-message ti-sm"></i>
												<p>채팅</p>
											</a> <a href="chat.html" class="d-flex mx-2"> <i
												class="ti ti-mail ti-sm"></i>
												<p>메일</p>
											</a> <a href="chat.html" class="d-flex mx-2"> <i
												class="ti ti-bookmarks ti-sm"></i>
												<p>${detailMap.getCommuCreateNm() }님의게시글더보기></p>
											</a>
										</div>
									</div>
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
											<h5>내용</h5>
											<p class="mb-4">${detailMap.getCommuText() }</p>


											<hr class="mb-4 mt-2" />
											<h5 class="mb-2">댓글</h5>
											<hr class="mb-4 mt-2" />


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
														<table align="center" width="500" border="1">

															<c:forEach items="${replyList }" var="replyList" varStatus="i">
																<tr>
																	<td width="100">${replyList.replyCreateNm }</td>
																	<td>${replyList.replyText }</td>
																	<td>${replyList.replyCreateAt }</td>
																	<td><button type="button">수정</button> <a href="#">삭제</a>
																</tr>

															</c:forEach>
														</table>
													</div>
												</div>
											</div>
											<!-- user info -->




											<div class="border mt-5">
												<form action="/community/list/post/reply" method="post">
													<input type="hidden" name="commuNo" value="${detailMap.getCommuNo() }">
													<div class="d-flex flex-column pl-3">
														<span class="fw-medium fw-bolder">${user.userNick }</span>
													</div>


													<textarea name="replyContents"
														class="form-control border-none" id="replyText"
														rows="2" placeholder="내용을 입력해주세요"></textarea>


													<div class="w-100">
														<div class="ml-auto w-10">
															<button id="btn_reply_regist" type="submit"
																name="rSubmit"
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
		
		<!-- 댓글 조회 -->
		var $tableBody = $('#rtb tbody'); 
		for ( var i in result) {
										var $tr = $("<tr>");
										var $rWriter = $("<td width='100'>").text(
												result[i].replyWirter);
										var $rContent = $("<td>").text(
												result[i].replyContents);
										var $rCreatDate = $("<td width='100'>").text(
												result[i].rCreateDate);
										var $btnArea = $("<td width='80'>").append(
												"<a href='modifyreply(${board.boardNo})'>수정</a>").append(
												"<a href='#'>삭제</a>");

										$tr.append($rWriter);
										$tr.append($rContent);
										$tr.append($rCreatDate);
										$tr.append($btnArea);
										$tableBody.append($tr);

									}
		
		
			function replyList(){
				var commuNo = "${detialMap.commuNo}";
				
				$.ajax({
					url : "/community/list/detail/{commuNo}",
					type : "GET",
					data : {"commuNo" : commuNo},
					dataType : "json",
					success : function(data){
						console.log(data);
						/*
						var $rArea = $("#replyListArea");
						
						if(replyList == ""){
							$rArea.html("<li>등록된 댓글이 없습니다.</li>");
						}else{
							$rArea.html("");
							
							$.each(replyList : function(i){
								var $li = $("<li>");
								var $rWriter = $("<span>").addClass("rWriter").html(replyList[i]).replyCreateNm);
								var $rDate = $("<span>").addClass("wDate").html(replyList[i].replyCreateAt);
								var $rContent = $("<p>").addClass("replyContent").html(replyList[i].replyText)
								var $hr = $("<hr>");
								
								$li.append($rWriter).append($rDate).append("$rContent");
								$rArea.append($li).append($hr);
							});
						}
						*/
						
						var $tableBody = $('#rtb tbody');
						$tableBody.html('');
						$('#rCount').text("댓글 ("+result.length+")")
						if (result != null) {
							console.log(result);
							for ( var i in result) {
								var $tr = $("<tr>");
								var $rWriter = $("<td width='100'>").text(
										result[i].replyWirter);
								var $rContent = $("<td>").text(
										result[i].replyContents);
								var $rCreatDate = $("<td width='100'>").text(
										result[i].rCreateDate);
								var $btnArea = $("<td width='80'>").append(
										"<a href='modifyreply(${detailMap.commuNo})'>수정</a>").append(
										"<a href='#'>삭제</a>");

								$tr.append($replyCreateNm);
								$tr.append($replyText);
								$tr.append($replyCreateAt);
								$tr.append($btnArea);
								$tableBody.append($tr);
					},
					error : function(){
						consol.log("댓글 목록 조회 실패");
					}
				})
			}
			
		<!-- 댓글 등록 -->
		$("#addReply#").on("click", finction(){
			var userNick;
			var commuNo = "${detailMap.commuNo}";
			var replyText = $("#replyText").val();
			
			$.ajax({
				url : "/community/list/detail/{commuNo}",
				type : "post",
				data : {"replyText" : replyText,
					"commuNo" : commuNo,
					"userNick" : userNick},
				success : function(result){
					var msg;
					
					switch(result){
					
					alert("등록성공")
					$("#replyText").val('')
					getReplyList()
					
					case 1 :
						msg = "댓글 등록 성공";
						$("#replyText").val("");
						replyList();
						break;
						
					case 0 : 
						msg = "댓글 등록 실패";
						break;
					case -1 :
						msg = "댓글 등록 오류 발생";
						break;
					}
				}
				}
			})
			
		}

</script>
</body>

</html>