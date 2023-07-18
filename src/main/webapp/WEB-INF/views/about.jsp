<%@ page import="java.util.HashMap, java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nutrient Recommendations Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <link href="../css/main.css" rel="stylesheet" />
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


        <div class="container p-5 d-flex align-items-center justify-content-center">
        <img src="../images/drug_img.png" alt="" width="350" height="350" >
        </div>

<div class="container p-3 d-flex align-items-center justify-content-center" >
  <!-- 가운데로 위치 변경 원하면 style 지우기 -->
  
    <div class="row justify-content-center p-2">
  
      <div class="col-md-6 col-lg-4">
        <div class="card p-3">
          <div class="card-header text-center">
            <i class="fas fa-star fa-4x mb-3" style="color: #fff;"></i>
            <h2 class="card-title" style="font-size: 1.25rem; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">We care about your health</h2>
          </div>
          <div class="card-body">
            <p class="card-text">건강한 삶 저희와 함께하세요!</p>
            <p class="card-text">우리의 제품은 철저한 연구와 개발을 통해 만들어졌으며, 고객들의 다양한 건강 요구에 부합하는 다양한 종류의 영양제를 보유하고 있습니다.</p>
          </div>
        </div>
      </div>
  
      <div class="col-md-6 col-lg-4">
        <div class="card p-3">
          <div class="card-header text-center">
            <i class="fas fa-heart fa-4x mb-3" style="color: #fff;"></i>
            <h2 class="card-title" style="font-size: 1.25rem; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">Love your body</h2>
          </div>
          <div class="card-body">
            <p class="card-text">각 제품은 식품 및 의약품 관리청(FDA)의 규정을 준수하며, 효과적인 성분과 안전성을 확보하기 위해 엄격한 품질 관리 절차를 따릅니다.</p>
          </div>
        </div>
      </div>
  
      <div class="col-md-6 col-lg-4">
        <div class="card p-3">
          <div class="card-header text-center">
            <i class="far fa-lightbulb fa-4x mb-3" style="color: #fff;"></i>
            <h2 class="card-title" style="font-size: 1.25rem; white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">Innovative products</h2>
          </div>
          <div class="card-body">
            <p class="card-text">우리는 항상 최신 연구 동향을 파악하고 최신 기술을 활용하여 영양제를 개발합니다. 우리의 연구진은 건강과 영양에 대한 깊은 이해를 바탕으로 혁신적인 제품을 개발하고 있습니다.</p>
          </div>
        </div>
      </div>
    </div> <!-- row -->
  </div> container



   <!-- Footer -->
   <div class="my-5"></div>

   <hr>

<!-- Footer -->
      <%@ include file="/WEB-INF/views/project/footer.jsp" %>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</html>

