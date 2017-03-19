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
                            <li><a href="#section1">Bóng đá</a></li>
                            <li><a href="#section2">An ninh hình sự</a></li>
                            <li><a href="#section3">Thời trang high-tech</a></li>
                            <li><a href="#section4">Ô tô - xe máy</a></li>
                            <li><a href="#section5">Ẩm thực</a></li>
                            <li><a href="#section6">Làm đẹp</a></li>
                            <li><a href="ExchangeRate">Tỉ giá</a></li>
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
                    <li data-target="#myCarousel" data-slide-to="4"></li>
                    <li data-target="#myCarousel" data-slide-to="5"></li>
                    <li data-target="#myCarousel" data-slide-to="6"></li>
                    <li data-target="#myCarousel" data-slide-to="7"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="img/amthuc.jpg" alt="Chania" width="800" height="400">
                        <div class="carousel-caption">
                            <h3>Ẩm thực</h3>
                            <p>Những món ăn ngon.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/anninh.jpg" alt="Chania" width="800" height="400">
                        <div class="carousel-caption">
                            <h3>An ninh hình sự</h3>
                            <p>Những vấn đề nóng bỏng về trật tự xã hội.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/bongda.jpg" alt="Chania" width="800" height="400">
                        <div class="carousel-caption">
                            <h3>Bóng đá</h3>
                            <p>Những tin tức về môn thể thao vua.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/giavang.jpg" alt="Chania" width="800" height="400">
                        <div class="carousel-caption">
                            <h3>Giá vàng</h3>
                            <p>Cập nhật giá vàng nhanh chóng - chính xác.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/hightech.jpg" alt="Chania" width="800" height="400">
                        <div class="carousel-caption">
                            <h3>Thời trang high tech</h3>
                            <p>Nơi công nghệ lên ngôi.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/lamdep.jpg" alt="Chania" width="800" height="400">
                        <div class="carousel-caption">
                            <h3>Làm đẹp</h3>
                            <p>Bí quyết làm đẹp cho mọi người.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/oto.jpg" alt="Chania" width="800" height="400">
                        <div class="carousel-caption">
                            <h3>Oto - xe máy</h3>
                            <p>Những chiếc xe mà bạn không thể bỏ qua.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/thoitiet.png" alt="Chania" width="800" height="400">
                        <div class="carousel-caption">
                            <h3>Thông tin thời tiết</h3>
                            <p>Cập nhật thông tin thời tiết mới nhất.</p>
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

                        <c:forEach var="catalog" items="${catalogs}" begin="0" end="3" varStatus="loop">
                            <a href="Catalog?c=${catalog.catalogId}"> <h3 id="section${loop.index + 1}" class="text-center news-header" >
                                    ${catalog.catalogName}</h3></a>
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
                                            <p class="description">${item.description}</p>
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
                        <h3 class="text-center news-header" >Thời tiết hiện tại</h3>
                        <div news-content>
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>Tỉnh thành</th>
                                        <th>Nhiệt độ (&#x2103;)</th>
                                        <th>Độ ẩm (%)</th>
                                    </tr>
                                </thead>
                                <tbody id="weather">

                                </tbody>
                            </table>

                        </div>

                        <h3 class="text-center news-header" >Giá vàng - Tỉ giá ngoại tệ</h3>
                        <iframe id="fr51" style="border: none;" src="//www.tygia.com/api.php?column=1&amp;title=0&amp;chart=0&amp;gold=1&amp;rate=1&amp;expand=0&amp;color=eeeeee&amp;titlecolor=111111&amp;bgcolor=ffffff&amp;upcolor=00aa00&amp;downcolor=bb0000&amp;textcolor=333333&amp;nganhang=VIETCOM&amp;fontsize=80&amp;ngoaite=usd,jpy,chf,eur,gbp,aud&amp;change=1&amp;column=2&amp;css=%23SJC_N_ng{display:%20table-row%20!important;}" width="100%" height="350"></iframe>

                        <!---->
                        <c:forEach var="catalog" items="${catalogs}" begin="4" end="5" varStatus="loop">
                            <a href="Catalog?c=${catalog.catalogId}"> <h3 id="section${loop.index + 1}" class="text-center news-header" >
                                    ${catalog.catalogName}</h3></a>
                            <div class="news-content">
                                <c:forEach var="item" items="${catalog.items}" begin="0" end="8" >
                                    <div class="ibox col-lg-12">
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
                                </c:forEach>
                            </div>
                        </c:forEach>
                        <!---->
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
        <script src="${pageContext.request.contextPath}/libs/js/weather.js"></script>
    </body>
</html>
