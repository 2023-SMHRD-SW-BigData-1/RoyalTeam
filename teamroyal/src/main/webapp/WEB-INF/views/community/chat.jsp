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
    <script src="/assets/vendor/js/template-customizer.js"></script>
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
						<div class="app-chat card overflow-hidden">
							<div class="row g-0">

								<!-- Chat & Contacts -->
								<div class="col app-chat-contacts app-sidebar flex-grow-0 overflow-hidden border-end" id="app-chat-contacts">
									<hr class="container-m-nx m-0" />
									<div class="sidebar-body">
										<!-- Contacts -->
										<ul class="list-unstyled chat-contact-list mb-0" id="contact-list"></ul>
									</div>
								</div>
								<!-- /Chat contacts -->

								<!-- Chat History -->
								<div class="col app-chat-history bg-body">
									<div class="chat-history-wrapper">
										<div class="chat-history-body bg-body">
											<ul class="list-unstyled chat-history" id="chatHist"></ul>
										</div>
										<!-- Chat message form -->
										<div class="chat-history-footer shadow-sm">
											<form class="form-send-message d-flex justify-content-between align-items-center" id="messageForm" name="messageForm">
												<input type="text" id="message" placeholder="Type a message..." autocomplete="off" class="form-control message-input border-0 me-3 shadow-none"/>
												<div class="message-actions d-flex align-items-center">
													<button class="btn btn-primary d-flex send-msg-btn" type="submit">
														<i class="ti ti-send me-md-1 me-0"></i> 
														<span class="align-middle d-md-inline-block d-none">Send</span>
													</button>
												</div>
											</form>
										</div>
									</div>
								</div>
								<!-- /Chat History -->
							</div>
						</div>
					</div>
					<!--/ Content -->

					<!-- Footer -->
					<footer class="content-footer footer bg-footer-theme">
						<div class="container-xxl">
							<div class="footer-container d-flex align-items-center justify-content-between py-2 flex-md-row flex-column">
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

    <!-- Drag Target Area To SlideIn Menu On Small Screens -->
    <div class="drag-target"></div>

    <script src="/assets/vendor/libs/popper/popper.js"></script>
    <script src="/assets/vendor/js/bootstrap.js"></script>
    <script src="/assets/vendor/libs/node-waves/node-waves.js"></script>
    <script src="/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="/assets/vendor/libs/hammer/hammer.js"></script>
    <script src="/assets/vendor/libs/i18n/i18n.js"></script>
    <script src="/assets/vendor/js/menu.js"></script>

    <!-- Main JS -->
    <script src="/assets/js/main.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
    
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
	<script src="/assets/socket.js"></script>
	
	<script type="text/javascript">

	
		var messageForm = document.querySelector('#messageForm');
		var stompClient = null;
		var username = '${userInfo}';
		var jsRoomId = "";
		
		$(function() {
			//초기 이벤트
			fnInit();
		});
	
		
		function fnInit() {
			
			$("#contact-list").empty();
	
	        var headerLiItem = $('<li class="chat-contact-list-item chat-contact-list-item-title">');
	        var headerH5Item = $('<h5 class="text-primary mb-0">ROOM</h5>');
	        headerLiItem.append(headerH5Item);
	        
	        $("#contact-list").append(headerLiItem);
	
	
			$.ajax({
				url : '/chat/room',
				method : 'POST',
				anync : false,
				contentType: 'application/x-www-form-urlencoded; charset=UTF-8', // 서버로 전달할 데이터
				data: {},
				success : function(response){
	
					var dataList = response.dataList;
					
					$.each(dataList, function(k, v) {
			            var newItem = $('<li class="chat-contact-list-item">');
			            var newLink = $('<a class="d-flex align-items-center" href="javascript:void(0);" onclick="chatStartFn(\'' + v.roomId + '\');">');
			            var newAvatar = $('<div class="flex-shrink-0 avatar">');
			            var newAvatarImg = $('<img src="/assets/img/profil.png" alt="Avatar" class="rounded-circle">');
			            var newContactInfo = $('<div class="chat-contact-info flex-grow-1 ms-2">');
			            var newContactName = $('<h6 class="chat-contact-name text-truncate m-0">'+v.roomName+'</h6>');
	
			            newAvatar.append(newAvatarImg);
			            newContactInfo.append(newContactName);
			            newLink.append(newAvatar, newContactInfo);
			            newItem.append(newLink);
	
			            $("#contact-list").append(newItem);
					});
					
	
				},
				error : function(error){
					console.error(error);
				}
			});
	
			
		}
	
	
		function chatStartFn(roomId) {
			event.preventDefault(); 
			disconnect();
			$("#chatHist").empty();
			
			jsRoomId = roomId;
		    var socket = new SockJS('/ws-stomp');
		    stompClient = Stomp.over(socket);
		    stompClient.connect({}, onConnected, onError);
		    stompClient.subscribe('/sub/chat/room/' + jsRoomId, onMessageReceived);
		}
	
		function onConnected() {
	
		    stompClient.subscribe('/sub/chat/room/' + jsRoomId, onMessageReceived);
	
		    stompClient.send("/pub/chat/enterUser", {},
		        JSON.stringify({
		            "roomId": jsRoomId,
		            sender: username,
		            type: 'ENTER'
		        })
		    )
	
		}
	
		function onMessageReceived(payload) {
			console.log("payload 들어오냐? :"+payload);
		    var chat = JSON.parse(payload.body);

		    console.log(chat.sender +"==="+ username);
		    
		    if(chat.type === 'TALK'){
		    	if(chat.sender === username){
		            var liItem = $('<li class="chat-message chat-message-right">');
		            var div1Item = $('<div class="d-flex overflow-hidden">');
		            var div2Item = $('<div class="chat-message-wrapper flex-grow-1">');
		            var div3Item = $('<div class="chat-message-text">');
		            var pItem = $('<p class="mb-0">'+chat.message+'</p>');
		            var div4Item = $('<div class="user-avatar flex-shrink-0 ms-3">');
		            var div5Item = $('<div class="avatar avatar-sm">');
		            var imgItem = $('<img src="/assets/img/profil.png" alt="Avatar" class="rounded-circle">');

					div3Item.append(pItem);
					div2Item.append(div3Item);
					div1Item.append(div2Item);
		            div5Item.append(imgItem);
		            div4Item.append(div5Item);
		            div1Item.append(div4Item);
		            liItem.append(div1Item);
					
		            $("#chatHist").append(liItem);
				}else{
		            var liItem = $('<li class="chat-message">');
		            var div1Item = $('<div class="d-flex overflow-hidden">');
		            var div2Item = $('<div class="user-avatar flex-shrink-0 ms-3">');
		            var div3Item = $('<div class="avatar avatar-sm">');
		            var imgItem = $('<img src="/assets/img/avatars/2.png" alt="Avatar" class="rounded-circle" />');
		            var div4Item = $('<div class="chat-message-wrapper flex-grow-1">');
		            var div5Item = $('<div class="chat-message-text">');
		            var pItem = $('<p class="mb-0">'+chat.message+'</p>');

					div3Item.append(imgItem);
					div2Item.append(div3Item);
					div1Item.append(div2Item);
		            div5Item.append(pItem);
		            div4Item.append(div5Item);
		            div1Item.append(div4Item);
		            liItem.append(div1Item);
					
		            $("#chatHist").append(liItem);
					
				}
			    
			}
		    
		}
	
		function onError(error) {
			console.log(error);
		}
	
		function sendMessage(event) {
		    var messageContent = $("#message").val();
	
		    if (messageContent && stompClient) {
		        var chatMessage = {
		            "roomId": jsRoomId,
		            sender: username,
		            message: messageContent,
		            type: 'TALK'
		        };
	
		        stompClient.send("/pub/chat/sendMessage", {}, JSON.stringify(chatMessage));
		        $("#message").val('');
		    }
		    event.preventDefault();
		}

		function disconnect() {
		    if (stompClient !== null) {
		        stompClient.disconnect(function() {
		            console.log('웹소켓 연결이 종료되었습니다.');
		        });
		    }
		}
		
		messageForm.addEventListener('submit', sendMessage, true);

	</script>

  </body>
</html>
