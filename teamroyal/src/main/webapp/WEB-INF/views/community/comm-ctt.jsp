<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="../../../assets/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&ampdisplay=swap"
	rel="stylesheet" />

<!-- Icons -->
<link rel="stylesheet"
	href="../../../assets/vendor/fonts/fontawesome.css" />
<link rel="stylesheet"
	href="../../../assets/vendor/fonts/tabler-icons.css" />
<link rel="stylesheet"
	href="../../../assets/vendor/fonts/flag-icons.css" />

<!-- Core CSS -->
<link rel="stylesheet" href="../../../assets/vendor/css/rtl/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href="../../../assets/vendor/css/rtl/Shine-Comm.css" />
<link rel="stylesheet"
	href="../../../assets/vendor/css/rtl/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="../../../assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="../../../assets/vendor/libs/node-waves/node-waves.css" />
<link rel="stylesheet"
	href="../../../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
<link rel="stylesheet"
	href="../../../assets/vendor/libs/typeahead-js/typeahead.css" />
<link rel="stylesheet"
	href="../../../assets/vendor/libs/apex-charts/apex-charts.css" />
<link rel="stylesheet"
	href="../../../assets/vendor/libs/swiper/swiper.css" />
<link rel="stylesheet"
	href="../../../assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
<link rel="stylesheet"
	href="../../../assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
<link rel="stylesheet"
	href="../../../assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css" />
<title>Document</title>
<link rel="stylesheet" href="comm-list.css">

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<section class="notice Sh-notice">
		<div class="page-title">
			<div class="container">
				<h3>Content</h3>
			</div>
		</div>

		<div id="board-list">
            <div class="container">
                <table class="board-table">
                    <thead>
                        <tr>
                            <th scope="col" class="th-num">1</th>
                            <th scope="col" class="th-title Sh-title">제목</th>

                        </tr>
                    </thead>
                </table>
            </div>
        </div>
		<!-- board list area -->
		<div id="board-list">
            <div class="container">
                <ul class="Sh-comm-head w-100 mt-3 d-flex justify-content-between">
                    <li class="w-0 d-flex justify-content-between mx-5 Sh-comm-head-ctt1">
                        <div class="d-flex justify-content-between"><i class="mx-2 fa-solid fa-user Sh-fa-user"></i>
                            <h4>글쓴이</h4>
                        </div>
                        <div class="d-flex justify-content-between"><i class="mx-2 fa-solid fa-clock Sh-fa-clock"></i>
                            <h4>글쓴이</h4>
                        </div>
                    </li>
                    <li class="d-flex justify-content-between mx-5 Sh-comm-head-ctt2">
                        <div class="d-flex justify-content-end"><i class="mx-2 fa-solid fa-user Sh-fa-user"></i>
                            <h4>채팅</h4>
                        </div>
                        <div class="d-flex justify-content-end"><i class="mx-2 fa-solid fa-clock Sh-fa-clock"></i>
                            <h4>이메일</h4>
                        </div>
                        <div class="d-flex justify-content-end"><i class="mx-2 fa-solid fa-clock Sh-fa-clock"></i>
                            <h4>글목록확인</h4>
                        </div>
                    </li>
                </ul>
                <div class="w-100 p-2 Sh-comm-body">
                    <table class="ctttt">
                        <tbody class="ctttr">
                            <tr>
                                <th>
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis explicabo rerum
                                        voluptatem. Nihil ut minus, suscipit iste voluptates earum saepe eos neque sed,
                                        fuga beatae numquam nobis consectetur ipsum cupiditate!
                                        Non voluptas eveniet numquam libero! Eligendi necessitatibus esse accusamus ipsa
                                        assumenda, molestiae quos culpa voluptatibus ut tempore quas, reprehenderit quis
                                        quaerat iusto porro libero odio. Labore rem ea nobis voluptatibus!
                                        Ab, dolores vitae voluptate minus commodi sit. Provident sint rem, sapiente
                                        dolor ut architecto est beatae velit quod atque laboriosam, excepturi quis.
                                        Vitae modi vel quod voluptas, eius id laborum?
                                        Reprehenderit ipsum officiis itaque sit, voluptatibus corporis distinctio error
                                        ab saepe debitis? Totam praesentium soluta tenetur maxime voluptates doloremque
                                        vitae architecto. Laborum fuga non inventore, id error nostrum suscipit sint!
                                        Recusandae ipsa numquam at sint quae? Fugiat qui voluptatibus ex repudiandae
                                        temporibus molestiae itaque nihil possimus quaerat earum quasi delectus suscipit
                                        quidem corporis, deserunt soluta officia modi. Accusamus, blanditiis id.</p>
                                </th>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- board list area -->
        </div>
        </div>
		
		<div class="row mx-0 mt-3">
			<div class="col-sm-12 col-md-6 w-75" style="border: 1px solid red;">
				<div class="dataTables_paginate paging_simple_numbers"
					id="DataTables_Table_0_paginate">
					<ul class="pagination"
						style="border: 1px solid blue; margin-left: 45%;">
						<li class="paginate_button page-item previous disabled"
							id="DataTables_Table_0_previous"><a
							aria-controls="DataTables_Table_0" aria-disabled="true"
							aria-role="link" data-dt-idx="previous" tabindex="0"
							class="page-link">Previous</a></li>
						<li class="paginate_button page-item active"><a href="#"
							aria-controls="DataTables_Table_0" aria-role="link"
							aria-current="page" data-dt-idx="0" tabindex="0"
							class="page-link">1</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="DataTables_Table_0" aria-role="link"
							data-dt-idx="1" tabindex="0" class="page-link">2</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="DataTables_Table_0" aria-role="link"
							data-dt-idx="2" tabindex="0" class="page-link">3</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="DataTables_Table_0" aria-role="link"
							data-dt-idx="3" tabindex="0" class="page-link">4</a></li>
						<li class="paginate_button page-item "><a href="#"
							aria-controls="DataTables_Table_0" aria-role="link"
							data-dt-idx="4" tabindex="0" class="page-link">5</a></li>
						<li class="paginate_button page-item next"
							id="DataTables_Table_0_next"><a href="#"
							aria-controls="DataTables_Table_0" aria-role="link"
							data-dt-idx="next" tabindex="0" class="page-link">Next</a></li>
					</ul>
				</div>
			</div>
			<div class="w-25">
				<div class="d-flex justify-content-end">
					<button
						style="height: 30px; border-radius: 4px; background-color: #7367F0; border: none; color: #fff;"
						class="w-50">글쓰기</button>
				</div>
			</div>
		</div>
	</section>
</body>
</html>