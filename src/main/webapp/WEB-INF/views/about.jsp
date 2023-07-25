<%@ page import="java.util.HashMap, java.util.ArrayList" %>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Nutrient Recommendations Home</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    </head>


    <body>

      <!-- header -->
      <%@ include file="/WEB-INF/views/project/header.jsp" %>
        <!-- Screen adjust functions -->
        <script>
          var zoom = 1;

          function increaseSize() {
            zoom += 0.1;
            document.getElementById('zoom-display').innerText = Math.round(zoom * 100) + '%';
            document.body.style.zoom = zoom;
          }

          function decreaseSize() {
            zoom -= 0.1;
            document.getElementById('zoom-display').innerText = Math.round(zoom * 100) + '%';
            document.body.style.zoom = zoom;
          }
        </script>


        <div class="container p-2 d-flex align-items-center justify-content-center">
          <img src="../images/drug_img.png" alt="" width="400" height="400">
        </div>

        <div class="container-fluid p-3 d-flex align-items-center justify-content-center">
          <div class="row justify-content-center">
            <img class="col-4 mb-4" src='../images/about_1.png' alt='' width="300" height="300">
            <img class="col-4 mb-4" src='../images/about_2.png' alt='' width="300" height="300">
            <img class="col-4 mb-4" src='../images/about_3.png' alt='' width="300" height="300">
          </div>
        </div>

        <div class="container  p-3 d-flex align-items-center justify-content-center p-2">
          <div class="row">
          <div class="col-md-6 col-lg-4">
            <div class="card p-3">
              <div class="card-header text-center">
                <i class="fas fa-star fa-4x mb-3" style="color: #fff;"></i>
                <h2 class="card-title"
                  style="font-size: 1.25rem; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">We care
                  about your health</h2>
              </div>

              <div class="card-body">
                <p class="card-text">건강한 삶 TAB과 함께하세요!</p>
                <p class="card-text"></p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="card p-3">
              <div class="card-header text-center">
                <i class="fas fa-heart fa-4x mb-3" style="color: #fff;"></i>
                <h2 class="card-title"
                  style="font-size: 1.25rem; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">Love your
                  body</h2>
              </div>
              <div class="card-body">
                <p class="card-text"> TAB은 사용자들의 편의성을 위해 직관적인 인터페이스와 쉬운 사용법을 제공합니다.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4">
            <div class="card p-3">
              <div class="card-header text-center">
                <i class="far fa-lightbulb fa-4x mb-3" style="color: #fff;"></i>
                <h2 class="card-title"
                  style="font-size: 1.25rem; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">Innovative
                  products</h2>
              </div>
              <div class="card-body">
                <p class="card-text"> TAB이 추천하는 영양제는 식품의약품안전처의 인증 마크를 받은 안전한 제품만을 출시하고 있습니다.</p>
              </div>
            </div>
          </div>
        </div>
        </div> <!-- row -->
        </div>



        <!-- Footer -->
        <div class="my-5"></div>

        <hr>

        <!-- Footer -->
        <%@ include file="/WEB-INF/views/project/footer.jsp" %>

    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>

    </html>