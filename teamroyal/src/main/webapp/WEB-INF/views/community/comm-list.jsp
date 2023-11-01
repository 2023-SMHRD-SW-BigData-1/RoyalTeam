<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../../../assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&ampdisplay=swap"
        rel="stylesheet" />

    <!-- Icons -->
    <link rel="stylesheet" href="../../../assets/vendor/fonts/fontawesome.css" />
    <link rel="stylesheet" href="../../../assets/vendor/fonts/tabler-icons.css" />
    <link rel="stylesheet" href="../../../assets/vendor/fonts/flag-icons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../../../assets/vendor/css/rtl/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../../../assets/vendor/css/rtl/Shine-Comm.css"/>
    <link rel="stylesheet" href="../../../assets/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../../../assets/css/demo.css" />
    

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../../../assets/vendor/libs/node-waves/node-waves.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/typeahead-js/typeahead.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/apex-charts/apex-charts.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/swiper/swiper.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
    <link rel="stylesheet" href="../../../assets/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css" />
    <title>Document</title>
    <link rel="stylesheet" href="comm-list.css">
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

    <section class="notice" style="width: 1100px; border: 1px solid blue;">
        <div class="page-title">
            <div class="container">
                <h3>��������</h3>
            </div>
        </div>

        <!-- board seach area -->
        <div id="board-search">
            <div class="container">
                <div class="search-window">
                    <form action="">
                        <div class="search-wrap">
                            <label for="search" class="blind">�������� ���� �˻�</label>
                            <input id="search" type="search" name="" placeholder="�˻�� �Է����ּ���." value="">
                            <button type="submit" class="btn btn-dark">�˻�</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- board list area -->
        <div id="board-list">
            <div class="container" style="border: 1px solid red;">
                <table class="board-table">
                    <thead>
                        <tr>
                            <th scope="col" class="th-num" style="border: 1px solid red;">��ȣ</th>
                            <th scope="col" class="th-title" style="border: 1px solid red;">����</th>
                            <th scope="col" class="th-ctt" style="border: 1px solid red;">�۾���</th>
                            <th scope="col" class="th-ctt" style="border: 1px solid red;">ä��</th>
                            <th scope="col" class="th-ctt" style="border: 1px solid red;">�̸���</th>
                            <th scope="col" class="th-ctt" style="border: 1px solid red;">��¥</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>3</td>
                            <th>
                                <a href="#!">�� �������� table �Ѱ���</a>
                                <p>�׽�Ʈ</p>
                            </th>
                            <td>������</td>
                            <td>ä���̸�Ƽ��</td>
                            <td>�̸���</td>
                            <td>2017.06.15</td>
                        </tr>

                        <tr>
                            <td>2</td>
                            <th><a href="#!">for�� �����Ÿ� �Ἥ </a></th>
                            <td>������</td>
                            <td>ä���̸�Ƽ��</td>
                            <td>�̸���</td>
                            <td>2017.06.15</td>
                        </tr>

                        <tr>
                            <td>1</td>
                            <th><a href="#!">�ؾ����� �������� ������ �غ��ϴ�</a></th>
                            <td>������</td>
                            <td>ä���̸�Ƽ��</td>
                            <td>�̸���</td>
                            <td>2017.06.15</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row mx-0 mt-3">
            <div class="col-sm-12 col-md-6 w-75" style="border: 1px solid red;">
                <div class="dataTables_paginate paging_simple_numbers"
                    id="DataTables_Table_0_paginate">
                    <ul class="pagination" style="border: 1px solid blue; margin-left: 45%;">
                        <li class="paginate_button page-item previous disabled" id="DataTables_Table_0_previous"><a
                                aria-controls="DataTables_Table_0" aria-disabled="true" aria-role="link"
                                data-dt-idx="previous" tabindex="0" class="page-link">Previous</a></li>
                        <li class="paginate_button page-item active"><a href="#" aria-controls="DataTables_Table_0"
                                aria-role="link" aria-current="page" data-dt-idx="0" tabindex="0"
                                class="page-link">1</a></li>
                        <li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0"
                                aria-role="link" data-dt-idx="1" tabindex="0" class="page-link">2</a></li>
                        <li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0"
                                aria-role="link" data-dt-idx="2" tabindex="0" class="page-link">3</a></li>
                        <li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0"
                                aria-role="link" data-dt-idx="3" tabindex="0" class="page-link">4</a></li>
                        <li class="paginate_button page-item "><a href="#" aria-controls="DataTables_Table_0"
                                aria-role="link" data-dt-idx="4" tabindex="0" class="page-link">5</a></li>
                        <li class="paginate_button page-item next" id="DataTables_Table_0_next"><a href="#"
                                aria-controls="DataTables_Table_0" aria-role="link" data-dt-idx="next" tabindex="0"
                                class="page-link">Next</a></li>
                    </ul>
                </div>
            </div>
            <div class="w-25" style="border: 1px solid red; ">
                <div class="d-flex justify-content-end" >
                    <button style="height: 30px; border-radius: 4px; background-color: #7367F0; border: none; color: #fff;" class="w-50">�۾���</button>
                </div>
            </div>
        </div>
    </section>

</body>
</html>