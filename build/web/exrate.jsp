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

        <script src="${pageContext.request.contextPath}/libs/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/libs/js/bootstrap.min.js"></script>
        <style>
            .nope {
                margin-top: 50px;
            }
        </style>
    </head>
    <body>
        <!--Start nav bar-->
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="Index">24h NEWS</a>
                </div>
                <div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li><a href="#section1">Section 1</a></li>
                            <li><a href="#section2">Section 2</a></li>
                            <li><a href="#section3">Section 3</a></li>
                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Section 4 <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#section41">Section 4-1</a></li>
                                    <li><a href="#section42">Section 4-2</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>    
        <!--End nav bar-->
        <div class="nope"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6">

                </div>
                <div class="col-lg-6">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Mã NT</th>
                                <th>Tên ngoại tệ</th>
                                <th>Mua tiền mặt</th>
                                <th>Mua chuyển khoản</th>
                                <th>Bán</th>
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
    </body>
</html>
