<%@ page import="java.util.HashMap, java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nutrient Recommendations Home</title>
    <link href="/css/main.css" rel="stylesheet">
</head>

<body>
        <!-- header -->
        <%@ include file="/WEB-INF/views/project/header.jsp" %>

    <style>
        .h3,
        .btn-outline {
            color: black !important;
        }

        .btn-outline {
            border-color: black !important;
        }

        .btn-outline:active {
            color: white !important;
            background-color: green !important;
            border-color: green !important;
        }
    </style>

    <!-- Menu -->
    <div class="d-flex justify-content-center">
        <div class="container m-3">

            <form action="">
                <div class="h3 text-center">영양제 추천</div>
                <div class="row p-2">
                    <div class="col-md-3">
                        <button type="submit" class="w-100 btn btn-lg btn-outline"
                            formaction="/recommendation/effectflag">간 기능개선</button>
                    </div>
                    <div class="col-md-3">
                        <button type="submit" class="w-100 btn btn-lg btn-outline"
                            formaction="/recommendation/effectflag">피로회복</button>
                    </div>
                    <div class="col-md-3">
                        <button type="submit" class="w-100 btn btn-lg btn-outline"
                            formaction="/recommendation/effectflag">눈 기능
                            향상</button>
                    </div>
                    <div class="col-md-3">
                        <button type="submit" class="w-100 btn btn-lg btn-outline"
                            formaction="/recommendation/effectflag">콜레스테롤 개선</button>
                    </div>
                    <div class="col-md-3">
                        <button type="submit" class="w-100 btn btn-lg btn-outline"
                            formaction="/reviews/reviewdeleteAndSelectSearch">관리자 테스트</button>
                    </div>
                </div>
            </form>

        </div>
    </div>


    <style>
 


    </style>
    <div class="container_img">
        <div class="container"> <!-- Added padding-bottom to create space between the container and the footer -->
            <div class="row">
                <div class="col-md-6 ">
                    <!-- Slide -->
                    <div class="carousel-container">
                        <div id="controlsID-first" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button class="active" data-bs-slide-to="0" data-bs-target="#controlsID-first"></button>
                                <button data-bs-slide-to="1" data-bs-target="#controlsID-first"></button>
                                <button data-bs-slide-to="2" data-bs-target="#controlsID-first"></button>
                                <button data-bs-slide-to="3" data-bs-target="#controlsID-first"></button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="img-fluid" src="/images/pill_3.png" alt="">
                                </div>
                                <div class="carousel-item">
                                    <img class="img-fluid" src="/images/pill_4.png" alt="">
                                </div>
                                <div class="carousel-item">
                                    <img  class="img-fluid" src="/images/lee_lutein.png" alt="">
                                </div>
                                <div class="carousel-item">
                                    <img class="img-fluid" src="/images/lemona.png" alt="">
                                </div>
                            </div>
                            <button data-bs-slide="prev" data-bs-target="#controlsID-first"
                                class="carousel-control-prev">
                                <span class="carousel-control-prev-icon"></span>
                            </button>
                            <button data-bs-slide="next" data-bs-target="#controlsID-first"
                                class="carousel-control-next">
                                <span class="carousel-control-next-icon"></span>
                            </button>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <!-- Image -->
                    <div class="image-container">
                        <img src="/images/ad_img.png" alt="AD_Image" class="img-fluid">
                    </div>
                </div>
            </div>
        </div>
    </div>


    <hr>

   <!-- Footer -->
   <%@ include file="/WEB-INF/views/project/footer.jsp" %>
   
</body>

</html>