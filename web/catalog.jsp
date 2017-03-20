<%-- 
    Document   : catalog
    Created on : Mar 13, 2017, 4:54:56 PM
    Author     : datdh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Catalog</title>
        <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/css/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/css/index.css">

        <script src="${pageContext.request.contextPath}/libs/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/libs/js/bootstrap.min.js"></script>
    </head>
    <body data-spy="scroll" data-target=".navbar" data-offset="50">
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
        <div class="nope"></div>

        <div class="container">
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="row">
                    <c:forEach var="item" items="${items}" varStatus="loop">
                        <div class="ibox col-lg-4 col-md-6">
                            <div class="ibox-content">
                                <a href="${item.link}" class="btn-link">
                                    <h4>${item.title}</h4>
                                </a>
                                <div class="small m-b-xs">
                                    <span class="text-muted"><i class="fa fa-clock-o"></i>
                                        ${item.pubDate}
                                    </span>
                                </div>
                                <p class="description">${item.description}</p>
                            </div>
                        </div>
                        <c:if test="${loop.index % 3 == 2}" >
                            <div class="clearfix"></div>
                        </c:if> 
                    </c:forEach>

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
