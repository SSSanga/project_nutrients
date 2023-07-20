<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap" %>
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
        <h1 class="mb-0">자주하는 질문 상세보기</h1>
    </div>
    <main class="container mt-4">
        <% 
            HashMap record=(HashMap)request.getAttribute("record");
        %>
        <table class="table mt-4">
            <tbody>
                <tr>
                    <td>번호</td>
                    <td><%= record.get("INQUIRY_ID") %></td>
                </tr>
                <tr>
                    <td>제목</td>
                    <td><%= record.get("CONTENT") %></td>
                </tr>
                <tr>
                    <td>등록일</td>
                    <td><%= record.get("WRITING_DATE") %></td>
                </tr>
                <tr>
                    <td>관리자 댓글</td>
                    <td><%= record.get("RESPONSE") %></td>
                </tr>
            </tbody>
        </table>
    </main>
    <!-- Footer -->
    <%@ include file="/WEB-INF/views/project/footer.jsp" %>
</body>
</html>
