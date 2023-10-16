<%@ page import="java.util.HashMap, java.util.ArrayList" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
            <script src="/JS/reviewsinput.js"></script>
            <title>Review prediction Form</title>
        </head>

        <body>
            <!-- header -->
            <%@ include file="/WEB-INF/views/project/header.jsp" %>
            <% HashMap params=(HashMap)request.getAttribute("params");
            HashMap result=(HashMap)request.getAttribute("result"); %>
                <div class="container mt-5">
                    <h1>상품 리뷰 작성</h1>
                    <!-- Form -->
                    <form id="predictionForm" class="mt-4">
                        <!-- Texture Mean Input -->
                        <div class="mb-3">
                            <label for="ReviewContent" class="form-label">상품후기</label>
                            <input type="text" class="form-control" id="ReviewContent" name="words" value='<%= params.getOrDefault("words", "") %>'>
                        </div>
                        <!-- Submit Button -->
                        <button type="submit" class="btn btn-primary" id="predict">Predict</button>
                    </form>
                    <!-- Result Display -->
                    <div id="resultDisplay" class="mt-4"></div>
                </div>
                <!-- Footer -->
                <%@ include file="/WEB-INF/views/project/footer.jsp" %>

        </body>

        </html>