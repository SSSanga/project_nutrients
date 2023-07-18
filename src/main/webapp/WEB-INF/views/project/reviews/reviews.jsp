<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nutrient Recommendations Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <link href="./../css/main.css" rel="stylesheet" />
</head>

<body>
<!-- header -->
<%@ include file="/WEB-INF/views/project/header.jsp" %>
<form class="d-flex" action="" method="">
    <div class="container">
        <div class="container py-4">
            <h1 class="text-center" style="font-weight: bold;">Reviews</h1>
            <hr style="border-top: 4px solid;">
                        <div class="row">
                            <button formaction="/reviews/review" class="col-md-6 mx-auto btn btn-none">
                                <div class="card mb-4">
                                    <div class="card-body">
                                        <h5 class="card-title" style="font-weight: bold;">비타민B복합체 먹었는데 피로 회복 드라마틱해요!!!</h5>
                                        <hr>
                                        <p class="card-text">저는 평소에 피로가 항상 쌓여있는 기분이였어요..</p>
                                        <small class="text-muted">작성일: 2023-07-11</small>
                                    </div>
                            </div>
                        </button>
                        <button formaction="/reviews/review2" class="col-md-6 mx-auto btn btn-none">
                            <div class="card mb-4">
                                <div class="card-body">
                                    <h5 class="card-title" style="font-weight: bold;">코큐텐 한달복용 후기</h5>
                                    <hr>
                                    <p class="card-text">30대 이후로 점점 체력이 약해지고 노화가 빨리 진행되는게 피부로 느껴져 </p>
                                    <small class="text-muted">작성일: 2023-07-19</small>
                                </div>
                        </div>
                        <button formaction="../loginlist/review1.html" class="col-md-6 mx-auto btn btn-none">
                            <div class="card mb-4">
                                <div class="card-body">
                                    <h5 class="card-title" style="font-weight: bold;">비타민B복합체 먹었는데 피로 회복 드라마틱해요!!!</h5>
                                    <hr>
                                    <p class="card-text">리뷰 3 내용...</p>
                                    <small class="text-muted">작성일: 2023-07-10</small>
                                </div>
                        </div>
                    </button>
                    <button formaction="../loginlist/review1.html" class="col-md-6 mx-auto btn btn-none">
                        <div class="card mb-4">
                            <div class="card-body">
                                <h5 class="card-title" style="font-weight: bold;">비타민B복합체 먹었는데 피로 회복 드라마틱해요!!!</h5>
                                <hr>
                                <p class="card-text">리뷰 4 내용...</p>
                                <small class="text-muted">작성일: 2023-07-11</small>
                            </div>
                    </div>
                </button>
                <button formaction="../loginlist/review1.html" class="col-md-6 mx-auto btn btn-none">
                    <div class="card mb-4">
                        <div class="card-body">
                            <h5 class="card-title" style="font-weight: bold;">비타민B복합체 먹었는데 피로 회복 드라마틱해요!!!</h5>
                            <hr>
                            <p class="card-text">리뷰 4 내용...</p>
                            <small class="text-muted">작성일: 2023-07-11</small>
                        </div>
                </div>
            </button>
            <button formaction="../loginlist/review1.html" class="col-md-6 mx-auto btn btn-none">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title" style="font-weight: bold;">비타민B복합체 먹었는데 피로 회복 드라마틱해요!!!</h5>
                        <hr>
                        <p class="card-text">리뷰 4 내용...</p>
                        <small class="text-muted">작성일: 2023-07-11</small>
                    </div>
            </div>
        </button>
        <button formaction="../loginlist/review1.html" class="col-md-6 mx-auto btn btn-none">
            <div class="card mb-4">
                <div class="card-body">
                    <h5 class="card-title" style="font-weight: bold;">비타민B복합체 먹었는데 피로 회복 드라마틱해요!!!</h5>
                    <hr>
                    <p class="card-text">리뷰 4 내용...</p>
                    <small class="text-muted">작성일: 2023-07-11</small>
                </div>
        </div>
    </button>
    <button formaction="../loginlist/review1.html" class="col-md-6 mx-auto btn btn-none">
        <div class="card mb-4">
            <div class="card-body">
                <h5 class="card-title" style="font-weight: bold;">비타민B복합체 먹었는데 피로 회복 드라마틱해요!!!</h5>
                <hr>
                <p class="card-text">리뷰 4 내용...</p>
                <small class="text-muted">작성일: 2023-07-11</small>
            </div>
    </div>
</button>
                <div class="p-3 justify-content-end">
                        <button type="submit" class="btn btn-primary" formaction="/reviews/reviewwrite">후기 작성 GO!</button>
                </div>
            </div>
        </div>

    </form>

    <!-- <script src="../js/carinforwithfunction.js"></script> -->
    <!-- <script src="../js/carinforwithrest.js"></script> -->
</body>
    <!-- Footer -->
    <%@ include file="/WEB-INF/views/project/footer.jsp" %>

</html>