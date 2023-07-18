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

    <div class="container">
        <div class="container py-4">
            <h1 class="text-center" style="font-weight: bold;">Reviews</h1>
            <hr style="border-top: 4px solid;">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <form>
                        <div class="mb-3">
                            <label for="title" class="form-label">제목</label>
                            <input type="text" class="form-control" id="title">
                        </div>
                        <div class="mb-3">
                            <label for="content" class="form-label">내용</label>
                            <input class="form-control" id="content" rows="5" style="height: 300px;"></input>
                        </div>
                        <div class="mb-3">
                            <label for="image" class="form-label">이미지 첨부</label>
                            <input class="form-control" type="file" id="image">
                        </div>
                        <button type="submit" class="btn btn-primary" formaction="/reviews/reviewlist">저장하기</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->
    <%@ include file="/WEB-INF/views/project/footer.jsp" %>
</body>
</html>