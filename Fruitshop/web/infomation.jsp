<%-- 
    Document   : themthongtin
    Created on : Jun 11, 2023, 2:20:26 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="/css/style-welcome.css"/>
        <title>Trang thôn tin</title>
        <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
        <!-- google font -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
        <!-- fontawesome -->
        <link rel="stylesheet" href="assets/css/all.min.css">
        <!-- bootstrap -->
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <!-- owl carousel -->
        <link rel="stylesheet" href="assets/css/owl.carousel.css">
        <!-- magnific popup -->
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <!-- animate css -->
        <link rel="stylesheet" href="assets/css/animate.css">
        <!-- mean menu css -->
        <link rel="stylesheet" href="assets/css/meanmenu.min.css">
        <!-- main style -->
        <link rel="stylesheet" href="assets/css/main.css">
        <!-- responsive -->
        <link rel="stylesheet" href="assets/css/responsive.css">
        <style>
            .top-header-area {
                background-color: #051922;
            }
        </style>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <div class="loader">
                <div class="loader-inner">
                    <div class="circle"></div>
                </div>
            </div>
            <div class="info__background pt-150">
                <div class="info__container">
                    <h1 class="info__title">Thông tin cá nhân</h1>
                    <form action="account" method="post" class="info__form" id="update-form" >
                        <div class="info__data ip-w-60">
                            <label for="name" class="info__data-label">Họ tên</label>
                            <div class="info__data-area">
                                <input type="text" name="fullname" id="txtHoten" value="${ sessionScope.info.fullname}" placeholder="Nhập họ tên">
                            <p class="info__datap" id="upterror"></p>
                            <input type="hidden" name="username" value="${ sessionScope.info.user}">
                        </div>
                        <p class="info__datap" id="upnerror"></p>
                    </div>
                    <div class="info__data">
                        <label for="Email" class="info__data-label">Email</label>
                        <input type="text" name="mail" readonly id="email" value="${ sessionScope.info.mail}">
                    </div>           
                    <div class="info__data">
                        <label for="phone" class="info__data-label">Số điện thoại</label>
                        <input type="text" id="txtPhone" name="phone" value="${ sessionScope.info.phone}" placeholder="Nhập số điện thoại">
                        <p class="info__datap" id="upterror"></p>
                    </div>
                    <div class="info__data">
                        <label for="diachi" class="info__data-label">Địa chỉ</label>
                        <input type="text" id="txtAddress" name="address" value="${ sessionScope.info.address}" placeholder="Nhập địa chỉ">
                        <p class="info__datap" id="upaerror"></p>
                    </div>
                    <div class="info__footer">
                        <div class="info__back">
                            <a href="home">Quay Lại</a> 
                        </div>    
                        <input type="submit" class="login__submit" value="Update" name="action">
                    </div>
                    <%
                        if (request.getAttribute("thongbao") != null) {
                    %>
                    <p style="color: crimson; text-align: center; font-size: 1rem;"><%=request.getAttribute("thongbao")%></p>
                    <%
                        }
                    %>
                </form>
            </div>
        </div>
        <script src="/js/script.js"></script>
    </script>
    <!-- jquery -->
    <script src="assets/js/jquery-1.11.3.min.js"></script>
    <!-- bootstrap -->
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <!-- count down -->
    <script src="assets/js/jquery.countdown.js"></script>
    <!-- isotope -->
    <script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
    <!-- waypoints -->
    <script src="assets/js/waypoints.js"></script>
    <!-- owl carousel -->
    <script src="assets/js/owl.carousel.min.js"></script>
    <!-- magnific popup -->
    <script src="assets/js/jquery.magnific-popup.min.js"></script>
    <!-- mean menu -->
    <script src="assets/js/jquery.meanmenu.min.js"></script>
    <!-- sticker js -->
    <script src="assets/js/sticker.js"></script>
    <!-- main js -->
    <script src="assets/js/main.js"></script>
</body>
</html>
