<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="java.util.HashMap, java.util.ArrayList, com.project.project_nutrients.utils.Paginations" %>

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
    
    <main class="container mt-4">
        <% HashMap params=(HashMap)request.getAttribute("params"); String
        searchStr=(String)params.getOrDefault("search", "" );
         HashMap
        result=(HashMap)request.getAttribute("result"); %>
                                        
        <table class="table mt-4" >
            <div class="mb-3">
                <input class="form-control" type="hidden" id="REVIEW_ID" name="REVIEW_ID">
            </div>
            <div class="container py-4">
                <h1 class="text-center" style="font-weight: bold;">Contacts</h1>
                <hr style="border-top: 4px solid;">
           

            <tbody>   
                 
                <div class="card mb-2 pt-2" >
                    <div class="card-body">
                        <h5 class="card-title mt-2" style="font-weight: bold;">등록일</h5>
                        <hr>
                        <span class="card-text pb-2"><%= result.get("WRITING_DATE") %></span>
                    </div>
                </div>

                <div class="card mb-2 pt-2">
                  <div class="card-body">
                        <h5 class="card-title mt-2" style="font-weight: bold;">문의내용</h5>
                        <hr>
                        <span class="card-text pb-2"><%= result.get("CONTENT") %></span>
                   </div>
                </div>

                <div class="card mb-2 pt-2">
                   <div class="card-body">
                        <h5 class="card-title mt-2" style="font-weight: bold;">관리자 댓글</h5>
                        <hr>
                       <span class="card-text pb-2"><%= result.get("RESPONSE") %></span>
                        <hr>
                        <h7 class="card-title mt-2" style="font-weight: bold;">관리자 댓글 작성
                        <input type="text" class ="me-4" style="width: 400px;">
                        <button type="submit" class="btn btn-primary">저장</button>
                        </h7>
                   </div>
                </div>


                <button type="submit" class="btn btn-primary"
                formaction="/">돌아가기</button>
            </tbody>
        </table>
        
    </main>
    <!-- Footer -->
    <%@ include file="/WEB-INF/views/project/footer.jsp" %>
</body>
</html>
