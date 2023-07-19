<%@ page import="java.util.HashMap, java.util.ArrayList" %>
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
<body>
 

  <div class="container p-3">
    <form>
    <table class="table table-striped table-sm">
        <thead>
          <tr>
            <th>이름</th>
            <th>제조사</th>
            <th>필요 기대 효과</th>
            <th><button class="btn btn-success" type="submit" formaction="/supp/spec">상세</button></th>
          </tr>
      </thead>
      <tbody>

        <tr>
            <td>듀오락 간케어</td>
            <td>간</td>
            <td>간 건강에 도움을 줄 수 있음, 유산균 증식 및 유해균 억제･배변활동 원활･장 건강에 도움을 줄 수 있음</td>
            <td><button class="btn btn-success" type="submit" formaction="/supp/spec">상세</button></td>
        </tr>
     
        <tr>
            <td>SUPP_11</td>
            <td>RECOVERY_01</td>
            <td>솔브앤고 피로&스트레스 케어</td>
            <td><button class="btn btn-success" type="submit" formaction="/supp/spec">상세</button></td>
        </tr>
    </tbody>
</table>


<nav aria-label="Page navigation">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
</ul>
<div class="container-fluid">
  <div class="row justify-content-start align-items-center">
    <div class="col-3">
      <button class="btn btn-success"type="subtmit" formaction="/supp/listadd">추가</button>
    </div>
  </div>
</div>
</form>

</div>

      <!-- Footer -->
      <%@ include file="/WEB-INF/views/project/footer.jsp" %>

  
</body>

</html>