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

    <div class="container content-center p-5">
      <div class="h2">혈중 콜레스테롤 개선 영양제 LIST</div>
      <br>
      <table class="table table-striped table-sm">
          <tr>
            <th></th>
            <th class="text-center">이름</th>
            <th class="text-center">키워드</th>
            <th class="text-center">영양제의 효능/효과</th>
            <th>링크</th>
          </tr>
          <tr>
            <td><img src="/images/omega3.png" alt="omega3" class="square-image" width="100px" height="100%"></td>
            <td>오메가-3 지방산 (Omega-3 Fatty Acids)</td>
            <td>혈중 콜레스테롤 개선</td>
            <td>동맥 경화를 예방하고 혈중 콜레스테롤 수치를 개선하는 데 도움을 줍니다.</td>
            <td><a href="#"></a>링크</td>
          </tr>
          <tr>
            <td><img src="/images/redyeastrice.png" alt="redyeastrice" class="square-image" width="100px" height="100%"></td>
            <td>레드 이스트 라이스 (Red Yeast Rice)</td>
            <td>혈중 콜레스테롤 개선</td>
            <td>자연스러운 스타틴 성분을 함유하여 혈중 콜레스테롤 수치를 조절하는 데 도움을 줍니다.</td>
            <td><a href="#"></a>링크</td>
          </tr>
          <tr>
            <td><img src="/images/vegetable.png" alt="cholesterol" class="square-image" width="100px" height="100%"></td>
            <td>식이 섬유 (Dietary Fiber)</td>
            <td>혈중 콜레스테롤 개선</td>
            <td>콜레스테롤 흡수를 감소시키고 배출을 촉진하여 혈중 콜레스테롤 개선에 도움을 줍니다.</td>
            <td><a href="#"></a>링크</td>
          </tr>
          <tr>
            <td><img src="/images/vitaminB3.png" alt="niacin" class="square-image" width="100px" height="100%"></td>
            <td>비타민 B3 (Niacin)</td>
            <td>혈중 콜레스테롤 개선</td>
            <td>고밀도 리포단백질(HDL) 수치를 증가시키고 저밀도 리포단백질(LDL) 수치를 감소시켜 콜레스테롤 개선에 도움을 줍니다.</td>
            <td><a href="#"></a>링크</td>
          </tr>
          <tr>
            <td><img src="/images/greenteaextract.png" alt="greenteaextract" class="square-image" width="100px" height="100%"></td>
            <td>녹차 추출물 (Green Tea Extract)</td>
            <td>혈중 콜레스테롤 개선</td>
            <td>항산화 작용으로 혈중 콜레스테롤 수치를 조절하는 데 도움을 줍니다.</td>
            <td><a href="#"></a>링크</td>
          </tr>
        </table>
      </div>
      <hr>

      <!-- Footer -->
      <%@ include file="/WEB-INF/views/project/footer.jsp" %>
  
</body>
</html>


