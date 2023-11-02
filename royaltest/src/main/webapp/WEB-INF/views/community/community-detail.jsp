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
							<a class="nav-item nav-link " href="/user/Success">MAIN</a> <a
								class="nav-item nav-link active" href="/community/list">COMMUNITY</a>
							<a class="nav-item nav-link" href="/community/chat">CHAT</a> <a
								class="nav-item nav-link" href="/community/email">MAIL</a> <a
								class="nav-item nav-link" href="/auction/auction">AUCTION</a> <a
								class="nav-item nav-link" href="/power">POWER PLANT</a>
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
									</div>
									<div class="me-1 mr-5">
										<a
											class="mx-1 btn btn-primary bg-transparent border-none btn-no-boxshadow"
											href="/community/list/detail/${detailMap.getCommuNo() }/modify">
											<button>수정</button>
										</a> <a
											class="mx-1 btn btn-primary bg-transparent border-none btn-no-boxshadow"
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
											<h5 class="mb-4">댓글</h5>


											<!-- user info -->
											<div
												class="d-flex justify-content-between align-items-center user-name">
												<div class="d-flex w-100">
													<div class="avatar-wrapper">
														<div class="avatar me-2">
															<img src="/assets/img/avatars/11.png" alt="Avatar"
																class="rounded-circle" />
														</div>
													</div>
													<div class="d-flex flex-column w-100">
														<div class="d-flex justify-content-between">
															<span class="fw-medium">${detailMap.getCommuCreateNm() }</span>
															<span class="fw-medium">
																<button
																	class="btn btn-primary border-none bg-transparent btn-no-boxshadow">수정</button>
																<button
																	class="btn btn-primary border-none bg-transparent btn-no-boxshadow">삭제</button>
															</span>
														</div>
														<div class="sh-comm-comment w-100">
															<p class="border-none">코드에서 왼쪽 class="border"지우고 "댓글은
																이 곳"</p>
														</div>
														<small class="text-muted">2023.10.17<span
															class="mx-2">18:00</span></small>
													</div>
												</div>
											</div>
											<!-- user info -->




											<div class="border mt-5">
												<form action="/community/list/post/reply" method="post">

													<div class="d-flex flex-column pl-3">
														<span class="fw-medium fw-bolder"><sec:authentication
																property="principal.userNick" /></span>
													</div>


													<textarea name="replyContents"
														class="form-control border-none" id="replyText" rows="2"
														placeholder="내용을 입력해주세요"></textarea>


													<div class="w-100">
														<div class="ml-auto w-10">


															<button id="btn_reply_regist" type="submit"
																name="replySubmit"
																class="w-100 p-2 btn btn-primary bg-transparent border-none btn-no-boxshadow"
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
										<script>document.write(new Date().getFullYear());</script>
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


		<!-- 댓글 -->
		<script type="text/javascript">
var params={"curPage":1, "rowSizePerPage" : 10
		,"reCategory" : "FREE", "reParentNo": ${freeBoard.boNo} };
	
function fn_reply_list(){
	$.ajax({
		url : "<c:url value='/community/list/post/reply' />"
		,type: "POST"
		,data : params
		,dataType: 'JSON' 
		, success: function(data){
			console.log(data);
			$.each(data.data, function(index, element) {
				var str="";
				 str=str+'<div class="row" data-re-no="'+ replyMap.getReplyNo() +'">'
			        +'<div class="col-sm-2 text-right" >'+replyMap.getReplyCreateNm()+ '</div>'
			        +'<div class="col-sm-6"><pre>'+replyMap.getReplyText()+ '</pre></div>'
			        +'<div class="col-sm-2" >'+replyMap.getReplyCreateAt() +'</div>'
			        +'<div class="col-sm-2">';	
			        if(replyMap.getReplyCreateNm()=="${loginUser.getName()}"){		
			          str=str+   '<button name="btn_reply_edit" type="button" class=" btn btn-sm btn-info" >수정</button>'
			                 +  '<button name="btn_reply_delete" type="button" class="btn btn-sm btn-danger" >삭제</button>';
			        	}
			       str=str+'</div>'
			            +'</div>';
			       $('#id_reply_list_area').append(str);
			});
			       params.curPage+=1;
		}//success
	});	//ajax
}//function fn_reply_list

$(document).ready(function(){ //documnet가 준비될 때 
	fn_reply_list();  //freeView처음에 댓글 10개 보여주기
	// 등록버튼,     수정,삭제버튼,  모달의 등록버튼
	//더보기 버튼
	$("#id_reply_list_more").on("click",function(e){
		e.preventDefault();
		fn_reply_list();
	});
	
	//등록버튼
	$("#btn_reply_regist").on("click",function(e){
		e.preventDefault();
		$form=$(this).closest("form[name='frm_reply']");
		$.ajax({
			url:"<c:url value='/reply/replyRegist.wow'/>"
			,type : "POST"
			,dataType :"JSON"
			,data : $form.serialize()
			,success: function(data){
				console.log(data);
				$form.find("textarea[name='reContent']").val('');
				$("#id_reply_list_area").html('');
				params.curPage=1;
				fn_reply_list();
			}
			,error : function(req,st,err){
				if(req.status==401){
					location.href="<c:url value='/login/login.wow'  />";				
				}
			}
		});//ajax 
	});//등록버튼
	
	//수정버튼  function(){}은 동적으로 생긴 태그에도 적용이 되는거같아.. 
	//$().on("click") 동적으로생긴 태그에 적용됨
	$("#id_reply_list_area").on("click", 'button[name="btn_reply_edit"]'
			,function(e){
		//modal 아이디=id_reply_edit_modal
		//현재 버튼의  상위 div(하나의 댓글 전체)를 찾으세요
		// 그 div에서 현재 댓글의 내용 =modal에 있는 textarea에 복사 
		// 그 div태그의 data-re-no에 있는 값   $().data('re-no')
		//=modal에 있는  < input name=reNo>태그에 값으로 복사  
		//2개 복사했으면   $('#id_reply_edit_modal').modal('show')
		$btn=$(this);  //수정버튼
		$div=$btn.closest('div.row');   //버튼의 댓글 div
		$modal=$('#id_reply_edit_modal'); //modal div 
		$pre=$div.find('pre'); 
		 var content=$pre.html(); 
		 $textarea=$modal.find('textarea'); 
		
		 $textarea.val(content);  
		 var reNo=$div.data('re-no');	
		 $modal.find('input[name=reNo]').val(reNo);
		 $modal.modal('show');
	});//수정버튼
	

	//모달창 저장 버튼
	$("#btn_reply_modify").on("click", function(e){
		e.preventDefault(); 
		$form= $(this).closest('form[name="frm_reply_edit"]');
		$.ajax({
			url : "<c:url value='/reply/replyModify.wow' />"
			,type : "POST"
			,data : $form.serialize()
			,dataType : "JSON"
			,success: function(){
				$modal=$('#id_reply_edit_modal'); 
				$modal.modal('hide');
				
				var reNo=$modal.find('input[name=reNo]').val();
				var reContent=$modal.find('textarea').val();
				$("#id_reply_list_area").find("div[data-re-no='"+reNo+"']").find("pre").html(reContent);
			}
		});//ajax
	});//모달창 저장버튼
	
	
	//삭제버튼
	$("#id_reply_list_area").on("click", 'button[name="btn_reply_delete"]'
			,function(e){
		e.preventDefault();
		$div=$(this).closest('.row');
		reNo=$div.data('re-no');
		reMemId="${USER_INFO.userId}";
		$.ajax({
			url : "<c:url value='/reply/replyDelete.wow' />"
			,type : "POST"
			,data : {"reNo" : reNo, "reMemId" : reMemId}
			,dataType : 'JSON'
			,success : function(){
				$div.remove();
			}
		});//ajax
	}); //삭제버튼
	
	
});

</script>
</body>

</html>