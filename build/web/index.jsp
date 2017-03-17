<%-- 
    Document   : index
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
        <title>Home</title>
        <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/css/animate.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/css/index.css">

        <script src="${pageContext.request.contextPath}/libs/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/libs/js/bootstrap.min.js"></script>
    </head>
    <body data-spy="scroll" data-target=".navbar" data-offset="50">
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
                            <li><a href="#section1">Bóng đá</a></li>
                            <li><a href="#section2">An ninh</a></li>
                            <li><a href="#section3">Thời trang</a></li>
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
        <!--Start carousel-->
        <div class="container">
            <br>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">

                    <div class="item active">
                        <img src="http://s1.storage.2banh.vn/image/2014/11/ducati-1199-panigale-sieu-motor-thuong-mai-cung-cai-gia-ngat-nguong-5824-1417231370-54793c0aa9355.jpg" alt="Chania" width="460" height="345">
                        <div class="carousel-caption">
                            <h3>Chania</h3>
                            <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="http://s1.storage.2banh.vn/image/2014/11/ducati-1199-panigale-sieu-motor-thuong-mai-cung-cai-gia-ngat-nguong-5824-1417231370-54793c0aa9355.jpg" alt="Chania" width="460" height="345">
                        <div class="carousel-caption">
                            <h3>Chania</h3>
                            <p>The atmosphere in Chania has a touch of Florence and Venice.</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="http://s1.storage.2banh.vn/image/2014/11/ducati-1199-panigale-sieu-motor-thuong-mai-cung-cai-gia-ngat-nguong-5824-1417231370-54793c0aa9355.jpg" alt="Flower" width="460" height="345">
                        <div class="carousel-caption">
                            <h3>Flowers</h3>
                            <p>Beatiful flowers in Kolymbari, Crete.</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="http://s1.storage.2banh.vn/image/2014/11/ducati-1199-panigale-sieu-motor-thuong-mai-cung-cai-gia-ngat-nguong-5824-1417231370-54793c0aa9355.jpg" alt="Flower" width="460" height="345">
                        <div class="carousel-caption">
                            <h3>Flowers</h3>
                            <p>Beatiful flowers in Kolymbari, Crete.</p>
                        </div>
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <!--End carousel-->

        <div class="container">
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="row">
                    <div class="col-lg-8 " >
                        
                        <c:forEach var="catalog" items="${catalogs}" varStatus="loop">
                            <h3 id="section${loop.index + 1}" class="text-center news-header" >${catalog.catalogName}</h3>
                            <div class="news-content">
                                <c:forEach var="item" items="${catalog.items}" begin="0" end="9" varStatus="loop">
                                    <div class="ibox col-lg-6">
                                        <div class="ibox-content">
                                            <a href="${item.link}" class="btn-link">
                                                <h4>${item.title}</h4>
                                            </a>
                                            <div class="small m-b-xs">
                                                <span class="text-muted"><i class="fa fa-clock-o"></i>
                                                    ${item.pubDate}
                                                </span>
                                            </div>
                                            <p>${item.description}</p>
                                        </div>
                                    </div>
                                    <c:if test="${loop.index % 2 == 1}" >
                                        <div class="clearfix"></div>
                                    </c:if>   
                                </c:forEach>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="col-lg-4" >
                        sg a ggag aw g
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">

                    </div>
                    <div class="col-lg-6">

                    </div>
                </div>
            </div>

        </div>
    </body>
</html>
