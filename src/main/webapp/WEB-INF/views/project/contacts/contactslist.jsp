<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Nutrient Recommendations Home</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
        <link href="/css/main.css" rel="stylesheet" />
    </head>

    <body>
        <!-- header -->
        <%@ include file="/WEB-INF/views/project/header.jsp" %>
            <div class="container text-center">
                <h1 class="mb-0">자주하는 질문</h1>
            </div>


            <main class="container mt-4">
                <div class="d-flex justify-content-end align-items-end">
                    <div class="mb-3 me-2">
                        <select id="searchType" class="form-control">
                            <option>제목</option>
                            <option>내용</option>
                        </select>
                    </div>
                    <div class="mb-3 me-2">
                        <label for="search" class="form-label">&nbsp;</label>
                        <input type="text" id="search" class="form-control" placeholder="검색어를 입력하세요">
                    </div>
                    <button type="button" class="btn btn-primary mb-3 me-2">검색</button>
                    <div class="mb-3 me-2">
                        <select class="form-control" id="viewCount">
                            <option>10개씩</option>
                            <option>20개씩</option>
                            <option>30개씩</option>
                        </select>
                    </div>
                    <button type="button" class="btn btn-primary mb-3">보기</button>
                </div>
                <div class="d-flex justify-content-start align-items-end">
                    <div class="mb-3 mt-4">
                        <p>게시글 총수: <span id="postCount">0</span></p>
                    </div>
                </div>
                <table class="table mt-4">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">제목</th>
                            <th scope="col">등록일</th>
                            <th scope="col">관리자 댓글</th>
                        </tr>
                    </thead>
                    <tbody id="postTable">
                        <!-- Here is where the posts will go -->
                        <tr>
                            <td>1</td>
                            <td>Example Title</td>
                            <td>2023-07-20</td>
                            <td>
                                <div class="d-flex flex-column">
                                    <div class="mb-2">기존 댓글: 아주 유익한 정보였습니다. 감사합니다.</div>
                                    <textarea class="form-control" rows="1" placeholder="새로운 댓글을 작성하세요."></textarea>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <nav aria-label="Page navigation example" class="mt-4">
                    <ul class="pagination justify-content-center">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </main>

            <hr>
            <!-- Footer -->
            <%@ include file="/WEB-INF/views/project/footer.jsp" %>

                <!-- <script src="../js/carinforwithfunction.js"></script> -->
                <!-- <script src="../js/carinforwithrest.js"></script> -->
    </body>

    </html>