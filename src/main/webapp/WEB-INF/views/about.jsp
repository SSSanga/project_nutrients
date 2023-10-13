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
        <div class="container d-flex align-items-center justify-content-center mb-3">
          <img src="../images/drug_img.png" alt="" style=" width:300; height:300;">
        </div>

        <div class="container p-3 d-flex align-items-center justify-content-center">
          <div class="row">
            <div class="col-md-4 col-lg-4">
              <div class="card p-4" style="height: 550px;">
                <div class=" card-title text-center" style=" max-width: 100%; max-height: 100%;">
                  <img src='/images/about_1.png' alt='' style="width: 100%; height: 100%; object-fit: contain;">
                </div>

                <div class="card-header text-center text-align: center;" style="font-weight: bold;">
                  <i class="fas fa-star" style="color: #fff;"></i>
                  <h2 class="card-title" style="font-size: 1.25rem;  padding-bottom: 10px;">
                    Your health our mission
                    <p class="card-text p-2"
                      style="color: #555;  font-family: 'Roboto', sans-serif; font-size: 16px; padding-bottom: 10px; word-wrap: break-word;">
                      TAB이 추천하는 영양제는 식품의약품안전처의 인증받은 제품만을 추천하고 있습니다.
                    </p>
                  </h2>
                </div>
              </div>
            </div>

            <div class="col-md-4 col-lg-4">
              <div class="card p-4" style="height: 550px;">
                <div class=" card-title text-center" style=" max-width: 100%; max-height: 100%;">
                  <img src='/images/about_2.png' alt='' style="width: 100%; height: 100%; object-fit: contain;">
                </div>

                <div class="card-header text-center text-align: center;" style="font-weight: bold;">
                  <i class="fas fa-heart" style="color: #fff;"></i>
                  <h2 class="card-title" style="font-size: 1.25rem;  padding-bottom: 10px;">
                    Love your body
                    <p class="card-text  p-2"
                      style="color: #555;  font-family: 'Roboto', sans-serif; font-size: 16px; padding-bottom: 10px; word-wrap: break-word;">
                      영양 불균형 해소와 올바른 섭취 습관을
                      위한 건강 솔루션 서비스를 제공합니다.
                    </p>
                  </h2>
                </div>
              </div>
            </div>

            <div class="col-md-4 col-lg-4">
              <div class="card p-4" style="height: 550px;">
                <div class=" card-title text-center" style=" max-width: 100%; max-height: 100%;">
                  <img src='/images/about_3.png' alt='' style="width: 100%; height: 100%; object-fit: contain;">
                </div>
                <div class="card-header text-center text-align: center;" style="font-weight: bold;">
                  <i class="far fa-lightbulb " style="color: #fff;"></i>
                  <h2 class="card-title" style="font-size: 1.25rem;  padding-bottom: 10px;">Innovative
                    products
                    <p class="card-text  p-2"
                      style="color: #555;  font-family: 'Roboto', sans-serif; font-size: 16px; padding-bottom: 10px; word-wrap: break-word;">
                       자신을 돌보는 것이 자연스러운 일상이 되도록 돕는게 우리의 일입니다.
                    </p>
                  </h2>
                </div>
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

    </html>