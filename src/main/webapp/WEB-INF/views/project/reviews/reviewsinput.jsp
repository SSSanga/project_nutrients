<%@ page import="java.util.HashMap, java.util.ArrayList" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
            <title>Review prediction Form</title>
        </head>

        <body>
            <!-- header -->
            <%@ include file="/WEB-INF/views/project/header.jsp" %>
                <div class="container mt-5">
                    <h1>상품 리뷰 작성</h1>
                    <!-- Form -->
                    <form id="predictionForm" class="mt-4">
                        <!-- Texture Mean Input -->
                        <div class="mb-3">
                            <label for="ReviewContent" class="form-label">상품후기</label>
                            <input type="text" class="form-control" id="ReviewContent" name="review_content" required>
                        </div>
                        <!-- Submit Button -->
                        <button type="submit" class="btn btn-primary" id="predict">Predict</button>
                    </form>
                    <!-- Result Display -->
                    <div id="resultDisplay" class="mt-4"></div>
                </div>
                <script>
                    // id : #, class :. , tag : 그대로 사용
                 let predictObject = document.querySelector('#predict')
                 predictObject.addEventListener('click', (event)=>{
                    event.preventDefault();  // submit 정지
                    let review_content = document.querySelector('#ReviewContent').value;
                
                    let request_dict = {"review_content":review_content};
                
                    // console.log(`request_dict : ${request_dict}`);
                    // request backend and then return dict
                    fetch('http://127.0.0.1:8000/review_prediction', {
                     method: 'POST',
                     headers: {
                       'Content-Type': 'application/json'
                     },
                     body: JSON.stringify(request_dict)
                   })
                   .then(response => response.json())
                   .then(data => {
                     console.log(data)
                     // Display the result in the resultDisplay div
                     document.querySelector('#resultDisplay').innerHTML = `review_reponse : ${data.review_reponse}`;
                   })
                   .catch(error => console.error(error));
                
                 });
                </script>
                <!-- Footer -->
                <%@ include file="/WEB-INF/views/project/footer.jsp" %>

        </body>


        </html>