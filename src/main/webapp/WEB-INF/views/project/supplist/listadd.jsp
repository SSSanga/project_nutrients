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
                    <label for="effect" class="form-label"> 효과 :</label>
                    <input type="text" id="effect" name="effect" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="components" class="form-label">성분</label>
                    <select id="components" name="componentlist" class="form-select" required multiple onclick="toggleOptionsSize()">
                      <option value="silymarin">실리마린</option>
                      <option value="vitamin_B3">비타민 B3</option>
                      <option value="rosavin">로사빈</option>
                      <option value="vitamin_B1">비타민 B1</option>
                      <option value="vitamin_C">비타민 C</option>
                    </select>
                  </div>

                <div class="mb-3">
                    <label for="dosage" class="form-label">용량:</label>
                    <input type="text" id="dosage" name="dosage" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="frequency" class="form-label">복용 주기:</label>
                    <input type="text" id="frequency" name="frequency" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label for="badlist" class="form-label">부작용:</label>
                    <select id ="badlist" name="sideeffect" class="form-select" multiple>
                        <option value="memory_impairment">기억력 저하</option>
                        <option value="anticoagulant_interaction">항응고제 상호작용</option>
                        <option value="hormone_level_changes">호르몬 수준 변화</option>
                        <option value="weight_gain">체중 증가</option>
                        <option value="bronchospasm">기관지 경련</option>
                        <option value="hepatitis">간염</option>
                      </select>
                      
                </div>


                <button class="btn btn-primary" type="submit" formaction="/supp/insert">저장 이거슨 insert?</button>
            </form>
        </div>
        <hr>

      <!-- Footer -->
      <%@ include file="/WEB-INF/views/project/footer.jsp" %>

</body>

</html>