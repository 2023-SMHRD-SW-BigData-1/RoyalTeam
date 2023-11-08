<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
  <script type="text/javascript">
	
  <!-- 댓글 출력 -->
	const mrList = () => {
      const mrCreateNm = document.getElementById("mrCreateNm").value;
      const mrText = document.getElementById("mrText").value;
      console.log("작성자: ", mrCreateNm);
      console.log("내용: ", mrText);
      const marketNo = [adMap.getMarketNo()];
        $.ajax({
         type: "get",
         url: "auction/list/${adMap.getMarketNo() }",
         data: {
             "mrCreateNm": mrCreateNm,
             "mrText": mrText,
             "marketNo": marketNo
         },
         success: function (res) {
             console.log("요청성공", res);
             
         },
         error: function (err) {
             console.log("요청실패", err);
         }
      });

  }
	
	<!-- 댓글 등록 -->
	function mrWrite(marketNo) {
		var mrText = $("#mrText").val();
		var marketNo = "${adMap.getMarketNo()}"
		$.ajax({
			url : "/auction/list/reply",
			data : {
				"mrText" : mrText,
				"marketNo" : marketNo
			},
			type : "POST",
			success : function(result) {
				alert("등록 성공")
				$('#mrContents').val('')
				location.reload();
			},
			error : function() {
				alert("등록 실패")
	
			}
		});
	}

	<!-- 댓글 수정 -->
	function mrModify(mrNo) {
		$.ajax({
			url : "/auction/list/replyModify",
			data : {
				"mrText" : $("#mr"+mrNo).val(),
				"mrNo" : mrNo
			},
			type : "POST",
			success : function(result) {
				alert("댓글 수정 성공")
				location.reload();
			},
			error : function() {
				alert("댓글 수정 성공")
				location.reload();
			}
		});
	}
	
	function modifyView(modiId) {
		$("#"+modiId).css('display','');
	}
	
	function btnView(btnId) {
		$("#"+btnId).css('display','');
	}

	<!-- 댓글 삭제 -->
	function mrDelete(mrNo) {
		$.ajax({
			url : "/auction/list/mrDelete",
			data : {
				"mrNo" : mrNo
			},
			type : "POST",
			success : function(result) {
				alert("댓글 삭제 성공")
				location.reload();
			},
			error : function() {
				alert("댓글 삭제 성공")
				location.reload();
			}
		}); 
	}

	<!-- 게시글 삭제 -->
	function auctionDelete(marketNo){
		var marketNo = "${adMap.getMarketNo()}";
  		$.ajax({
  			
  			url : "/auction/delete",
  			data : {
  				"marketNo" : marketNo
  			},
  			type : "POST",
  			success : function(result) {
  				alert("게시글 삭제 성공")
  				window.location.href = "/auction/main";
  			},
  			error : function(){
  				alert("게시글 삭제 실패")
  			}
  		});
  	}
	

</script>
  
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
                      <h5 class="mb-1" style="font-weight:bolder; font-size:2rem;">${adMap.getMarketTitle() }</h5>
                      <br>
                      <h3 class="mb-1 ml-3" style="font-weight:bolder; font-size:1.2rem;">${adMap.getMarketPrice() } 원</h3>
                    </div>
                    
                    <c:if test="${adMap.getMarketCreateNm() == user.userNick }">
											<div class="me-1 mr-5">
											<button
												class="mx-1 btn btn-primary bg-transparent border-none btn-no-boxshadow"
												onclick='auctionDelete("${adMap.getMarketNo() }")'>삭제</button>
											</div>
										</c:if>
                  </div><!-- title -->
                  <hr class="my-2" />
                  <!-- user info -->
                  <div class="d-flex justify-content-between align-items-center user-name">
                    <div class="d-flex">
                      <div class="avatar-wrapper">
                        <div class="avatar me-2">
                          <img src="/assets/img/profil.png" alt="Avatar" style="width:50px; height:50px;" class="rounded-circle" />
                        </div>
                      </div>
                      <div class="d-flex flex-column ml-3">
                        <span class="fw-medium">${adMap.getMarketCreateNm() }</span>
                        <small class="text-muted">${adMap.getMarketCreateAt() }</small>
                      </div>
                    </div>
                    <div class="d-flex align-items-center">
                      <a href="chat.html" class="d-flex mx-2 btn btn-primary bg-transparent border-none btn-no-boxshadow" >
                        <i class="ti ti-message ti-sm"></i>채팅
                        
                      </a>
                      <a href="/auction/list/part/${adMap.getMarketCreateNm()}" class="d-flex mx-2 btn btn-primary bg-transparent border-none btn-no-boxshadow">
                        <i class="ti ti-bookmarks ti-sm"></i>${adMap.getMarketCreateNm()}님의 게시글더보기 >
                      </a>
                    </div>
                  </div><br><!-- user info -->
                    <div>
                    
                  </div>
                  <!-- user content-->
                  <div class="card academy-content shadow-none border">
                    <div class="p-2">
                      <div class="cursor-pointer">
                      <div style="width:300px;">
                        <img class="w-100" alt="" src="${adMap.getMarketImgPath()}">
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <p class="mb-4">${adMap.getMarketText() }</p>


                      <hr class="mb-4 mt-2" />
                      <h5 class="mb-2">댓글</h5>
                      <hr class="mb-4 mt-2" />


                      <!-- user info -->
                  <div
												class="d-flex justify-content-between align-items-center user-name">
												<div class="d-flex w-100">

													<div class="d-flex flex-column w-100">

														<div id="comment-list" class="d-flex flex-column w-100 ">
															<c:forEach items="${arMap }" var="arMap" varStatus="replyBegin">
																<div class="d-flex justify-content-between">
																	<div class="d-flex justify-content-between ml-2 ">
																		<span class="fw-medium" >${arMap.getMrCreateNm()}</span>
																		<small <c:if test="${arMap.getMrCreateNm() != user.userNick }"> colspan ="2"</c:if>
																		 class="text-muted ml-2">${arMap.getMrCreateAt()}</small>
																	</div>
																	<c:if test="${arMap.getMrCreateNm() == user.userNick }">
																		<div class="dropdown mt-3">
																		<button class="btn p-0" type="button"
																			id="supportTrackerMenu" data-bs-toggle="dropdown"
																			aria-haspopup="true" aria-expanded="false">
																			<i class="ti ti-dots-vertical ti-sm text-muted"></i>
																		</button>
																		<div class="dropdown-menu dropdown-menu-end"
																			aria-labelledby="supportTrackerMenu">
																			<button type="button" onclick='modifyView("modify${replyBegin.count}")' id="modify${i.count }" class="dropdown-item">수정</button>
																			<button type="button" class="dropdown-item" onclick='mrDelete("${arMap.getMrNo() }")'>삭제</button>
																		</div>
																	</div>
																	</c:if>
																</div>
																<div class="sh-comm-comment w-100">
																	<p class="border-none ml-4 mt-n2">${arMap.getMrText()}</p>
																</div>
																
																<div id="modify${replyBegin.count}" class="border" style="display: none; width : 800px; border:2px solid gray !important; border-radius:10px;">
																	<input type="hidden" name="mrNo" value="${arMap.getMrNo() }"> 
																	<input type="hidden" name="marketNo" value="${adMap.getMarketNo() }"> 
																	<input type="hidden" name="mrCreateNm" value="${arMap.getMrCreateNm() }">
																	<textarea class="form-control border-none" placeholder="내용을 작성하세요" name="mrText" required="required" id="mr${arMap.getMrNo() }">${arMap.getMrText() }</textarea>
																		<div class="fw-medium" style="display:flex; justify-content:end;">
																			<button class="btn btn-primary border-none bg-transparent btn-no-boxshadow" onclick='mrModify("${arMap.getMrNo() }")'>수정</button>
																			<button class="btn btn-primary border-none bg-transparent btn-no-boxshadow" onclick="mrModifyCancel">취소</button>
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
												<form action="/auction/list/reply" method="post">
													<input type="hidden" name="marketNo"
														value="${adMap.getMarketNo() }">
													<div class="d-flex flex-column pl-3">
														<span class="fw-medium fw-bolder">${user.userNick }</span>
													</div>

													<textarea name="mrContents"
														class="form-control border-none" id="mrText" rows="2"
														placeholder="내용을 입력해주세요"></textarea>


													<div class="w-100">
														<div class="ml-auto w-10">
															<button onclick='mrWrite("${adMap.getMarketNo() }")' id="rSubmit" type="button" name="rSubmit"
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