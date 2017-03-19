<%-- 
    Document   : newsdetails
    Created on : Mar 14, 2017, 9:00:43 PM
    Author     : datdh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>News details</title>
        <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/css/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/css/index.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/css/index.css">

        <script src="${pageContext.request.contextPath}/libs/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/libs/js/bootstrap.min.js"></script>
        <style>

            iframe {
                margin-top: 50px;
                width: 100%;
                height: 610px;
            }
        </style>
    </head>
    <body>
        <!--Start nav bar-->
        <nav class="navbar navbar-inverse navbar-fixed-top navbar-custom">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="Index">24h NEWS</a>
                </div>
                <div>
                    <div class="collapse navbar-right navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li><a href="Catalog?c=bongda">Bóng đá</a></li>
                            <li><a href="Catalog?c=anninhhinhsu">An ninh hình sự</a></li>
                            <li><a href="Catalog?c=thoitranghitech">Thời trang high-tech</a></li>
                            <li><a href="Catalog?c=otoxemay">Ô tô - xe máy</a></li>
                            <li><a href="Catalog?c=amthuc">Ẩm thực</a></li>
                            <li><a href="Catalog?c=lamdep">Làm đẹp</a></li>
                            <li><a href="ExchangeRate">Tỉ giá</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>    
        <!--End nav bar-->
        <div class="x">
            <iframe src="${url}">
                <p>Your browser does not support iframes.</p>
            </iframe></div>
    </body>
</html>
