<%@ page import="java.util.HashMap, java.util.ArrayList" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Nutrient Recommendations Home</title>
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cafe24D&display=swap">


        </head>

        <body>
            <!-- header -->
            <%@ include file="/WEB-INF/views/project/header.jsp" %>
                <div class="container">
                <form action="" method="post">
                    <div class="container row m-3">
                        <div class="col-3">
                            <select class="form-select mx-2" name="search" style="font-size: 20px; font-weight: bold;">
                                <option>카테고리 선택</option>
                                <option value="EFFECT">효과</option>
                                <option value="MANUFACTURE">제조사</option>
                            </select>
                        </div>
                        <div class="col-3">
                            <input class="form-control me-2 mt-auto mb-auto" style="font-size: 20px; width:200px;"
                                name="words" type="search" placeholder="Search..." aria-label="Search"
                                id="keydownEnter">
                        </div>
                        <div class="col-6">
                            <button class="btn btn-outline-secondary" type="submit" formaction="/search/selectsupp"
                                id="keydownEnter" style="font-size: 20px; width:200px;">검색</button>
                        </div>
                    </div>
                    </form>
                    <div class="container_img">
                        <div class="container">
                            <!-- Added padding-bottom to create space between the container and the footer -->
                            <div class="row">
                                <div class="col-md-6 ">
                                    <!-- Slide -->
                                    <div class="carousel-container">
                                        <div id="controlsID-first" class="carousel slide" data-bs-ride="carousel">
                                            <div class="carousel-indicators">
                                                <button class="active" data-bs-slide-to="0"
                                                    data-bs-target="#controlsID-first"></button>
                                                <button data-bs-slide-to="1"
                                                    data-bs-target="#controlsID-first"></button>
                                                <button data-bs-slide-to="2"
                                                    data-bs-target="#controlsID-first"></button>
                                                <button data-bs-slide-to="3"
                                                    data-bs-target="#controlsID-first"></button>
                                            </div>
                                            <div class="carousel-inner">
                                                <div class="carousel-item active">
                                                    <img class="img-fluid" src="/images/pill_3.png" alt="">
                                                </div>
                                                <div class="carousel-item">
                                                    <img class="img-fluid" src="/images/pill_4.png" alt="">
                                                </div>
                                                <div class="carousel-item">
                                                    <img class="img-fluid" src="/images/lee_lutein.png" alt="">
                                                </div>
                                                <div class="carousel-item">
                                                    <button type="submit">
                                                        <a href="https://www.consumer.go.kr/user/ftc/consumer/cnsmrBBS/80/selectInfoCmprDetail.do?infoId=A1079150&page=1&row=10&searchCnsmrClId=&searchCnsmrClType=&upperProductClId=&searchGbn=REGIST_DT&cntntsNm=&upperCntntsNm=&rnum=5&infoTyIdList=&cntntsId=00000205&infoRealmIdList=C060000&infoPrdlstIdList=C060500&searchRange=searchRangeAll&searchKeyword=">
                                                        <img class="img-fluid" src="/images/milkthistle_info.png"
                                                            alt=""></a></button>
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


                </div>

                <!-- Footer -->
                <%@ include file="/WEB-INF/views/project/footer.jsp" %>

        </body>


        </html>