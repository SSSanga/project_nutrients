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



    <div class="container">
        <div class="container p-4">
            <form>
                <div class="mb-3">
                    <label for="product" class="form-label">이름:</label>
                    <input type="text" id="product" name="product" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="manufacturer" class="form-label">제조사:</label>
                    <input type="text" id="manufacturer" name="manufacturer" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="keyword" class="form-label">키워드:</label>
                    <select id="keyword" name="keyword" class="form-select" required>
                        <option value="" disabled selected>키워드 선택</option>
                        <option value="eyes">눈</option>
                        <option value="livercare">간</option>
                        <option value="cholesterol">콜레스테롤</option>
                        <option value="recovery">피로회복</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="effect" class="form-label">필요 기대 효과:</label>
                    <input type="text" id="effect" name="effect" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="component1" class="form-label">성분1:</label>
                    <input type="text" id="component" name="component1" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="component2" class="form-label">성분2:</label>
                    <input type="text" id="component2" name="component2" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="dosage" class="form-label">용량:</label>
                    <input type="text" id="dosage" name="dosage" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="type" class="form-label">제형:</label>
                    <input type="text" id="type" name="type" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="frequency" class="form-label">복용 주기:</label>
                    <input type="text" id="frequency" name="frequency" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="sideEffect" class="form-label">부작용:</label>
                    <input type="text" id="sideEffect" name="sideEffect" class="form-control" required>
                </div>

                <button class="btn btn-primary" type="submit" formaction="/supp/insert">저장 이거슨 insert?</button>
            </form>
        </div>
        <hr>

      <!-- Footer -->
      <%@ include file="/WEB-INF/views/project/footer.jsp" %>

</body>

</html>