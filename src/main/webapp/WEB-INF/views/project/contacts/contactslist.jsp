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
    <div class="container">
        <div class="container py-4">
            <h1 class="text-center">Contacts List</h1>
            <div>** 관리자만 접근 가능 및 답 할 수 있음..**</div>
            <hr>
            <div class="container">
                <h1>문의 리스트</h1>
                <table class="table">
                    <thead>
                        <tr>
                            <th>문의 제목</th>
                            <th>작성자</th>
                            <th>날짜</th>
                            <th>문의 내용</th>
                            <th>댓글</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>문의 1</td>
                            <td>작성자 1</td>
                            <td>날짜 1</td>
                            <td>내용 1</td>
                            <td>
                                <textarea></textarea>
                                <button class="btn btn-primary">댓글 달기</button>
                            </td>
                        </tr>
                        <tr>
                            <td>문의 2</td>
                            <td>작성자 2</td>
                            <td>날짜 2</td>
                            <td>내용 2</td>
                            <td>
                                <textarea></textarea>
                                <button class="btn btn-primary">댓글 달기</button>
                            </td>
                        </tr>
                        <!-- 추가적인 행들을 필요에 따라 작성 -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    </div>
    <hr>
    <!-- Footer -->
    <%@ include file="/WEB-INF/views/project/footer.jsp" %>

    <!-- <script src="../js/carinforwithfunction.js"></script> -->
    <!-- <script src="../js/carinforwithrest.js"></script> -->
</body>

</html>