<%-- 
    Document   : exrate
    Created on : Mar 14, 2017, 10:16:07 PM
    Author     : datdh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tỉ giá ngoại tệ</title>
        <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/css/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/css/index.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/css/index.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/css/index.css">

        <script src="${pageContext.request.contextPath}/libs/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/libs/js/bootstrap.min.js"></script>

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
                            <li><a href="Catalog?c=anninhhinhsu">An ninh  hình sự</a></li>
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
        <div class="nope"></div>
        <div class="container">
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="row">
                    <div class="col-lg-offset-2 col-lg-8">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Mã NT</th>
                                    <th>Tên ngoại tệ</th>
                                    <th class="text-right">Mua tiền mặt</th>
                                    <th class="text-right">Mua chuyển khoản</th>
                                    <th class="text-right">Bán</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="ex" items="${exrate.exrates}">
                                    <tr>
                                        <td class="text-left">${ex.currencyCode}</td>
                                        <td class="text-left">${ex.currencyName}</td>
                                        <td class="text-right">${ex.buy}</td>
                                        <td class="text-right">${ex.transfer}</td>
                                        <td class="text-right">${ex.sell}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <p>Tỉ giá được cập nhật lúc ${exrate.dateTime}</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="container text-center">
            <hr>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="nav nav-pills nav-justified">
                        <li>© 2017 XML Project.</li>
                        <li>Made by Đào Huy Đạt</li>
                        <li>Teacher Lương Trung Kiên</li>
                    </ul>
                </div>
            </div>
            <hr>
        </div>
    </body>
</html>
