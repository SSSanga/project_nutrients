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

    <div class="container">
        <table class="table table-bordered">
          <tr>
            <th class="text-center">이름</th>
            <th class="text-center">키워드</th>
            <th class="text-center">영양제의 효능/효과</th>
          </tr>
          <tr>
            <td>글루타치온 (Glutathione)</td>
            <td>간 기능 향상</td>
            <td>항산화 작용으로 간 기능 개선에 도움을 줍니다.</td>
          </tr>
          <tr>
            <td>비타민 E (Vitamin E)</td>
            <td>간 기능 향상</td>
            <td>간세포 보호에 도움을 주고 간 기능을 지원합니다.</td>
          </tr>
          <tr>
            <td>비타민 C (Vitamin C)</td>
            <td>간 기능 향상</td>
            <td>항산화 작용으로 간 건강을 유지하는 데 도움을 줍니다.</td>
          </tr>
          <tr>
            <td>오메가-3 지방산 (Omega-3 Fatty Acids)</td>
            <td>간 기능 향상</td>
            <td>염증을 감소시켜 간 기능을 개선하는 데 도움을 줍니다.</td>
          </tr>
          <tr>
            <td>녹차 추출물 (Green Tea Extract)</td>
            <td>간 기능 향상</td>
            <td>항산화 작용으로 간 건강을 지원하고 독소 제거를 도와줍니다.</td>
          </tr>
          <tr>
            <td>루테인 (Lutein)</td>
            <td>눈 기능 개선</td>
            <td>망막 건강을 촉진하여 눈 건강을 개선하는 데 도움을 줍니다.</td>
          </tr>
          <tr>
            <td>제라프라레진 (Zeaxanthin)</td>
            <td>눈 기능 개선</td>
            <td>눈의 황반 부위를 보호하여 시력을 개선하는 데 도움을 줍니다.</td>
          </tr>
          <tr>
            <td>오메가-3 지방산 (Omega-3 Fatty Acids)</td>
            <td>눈 기능 개선</td>
            <td>망막 건강을 유지하고 눈 건강을 지원합니다.</td>
          </tr>
          <tr>
            <td>비타민 C (Vitamin C)</td>
            <td>눈 기능 개선</td>
            <td>항산화 작용으로 눈 건강을 유지하는 데 도움을 줍니다.</td>
          </tr>
          <tr>
            <td>비타민 E (Vitamin E)</td>
            <td>눈 기능 개선</td>
            <td>눈 건강을 보호하고 안구 건강을 개선하는 데 도움을 줍니다.</td>
          </tr>
          <tr>
            <td>오메가-3 지방산 (Omega-3 Fatty Acids)</td>
            <td>혈중 콜레스테롤 개선</td>
            <td>동맥 경화를 예방하고 혈중 콜레스테롤 수치를 개선하는 데 도움을 줍니다.</td>
          </tr>
          <tr>
            <td>레드 이스트 라이스 (Red Yeast Rice)</td>
            <td>혈중 콜레스테롤 개선</td>
            <td>자연스러운 스타틴 성분을 함유하여 혈중 콜레스테롤 수치를 조절하는 데 도움을 줍니다.</td>
          </tr>
          <tr>
            <td>식이 섬유 (Dietary Fiber)</td>
            <td>혈중 콜레스테롤 개선</td>
            <td>콜레스테롤 흡수를 감소시키고 배출을 촉진하여 혈중 콜레스테롤 개선에 도움을 줍니다.</td>
          </tr>
          <tr>
            <td>비타민 B3 (Niacin)</td>
            <td>혈중 콜레스테롤 개선</td>
            <td>고밀도 리포단백질(HDL) 수치를 증가시키고 저밀도 리포단백질(LDL) 수치를 감소시켜 콜레스테롤 개선에 도움을 줍니다.</td>
          </tr>
          <tr>
            <td>녹차 추출물 (Green Tea Extract)</td>
            <td>혈중 콜레스테롤 개선</td>
            <td>항산화 작용으로 혈중 콜레스테롤 수치를 조절하는 데 도움을 줍니다.</td>
          </tr>
          <tr>
            <td>비타민 B12 (Vitamin B12)</td>
            <td>피로 회복</td>
            <td>에너지 생산에 도움을 주어 피로 회복에 도움을 줍니다.</td>
          </tr>
          <tr>
            <td>마그네슘 (Magnesium)</td>
            <td>피로 회복</td>
            <td>근육 이완과 휴식을 촉진하여 피로 회복을 돕습니다.</td>
          </tr>
          <tr>
            <td>코엔자임 Q10 (Coenzyme Q10)</td>
            <td>피로 회복</td>
            <td>체내 에너지 생산을 촉진하여 피로 회복을 돕습니다.</td>
          </tr>
          <tr>
            <td>아이언 (Iron)</td>
            <td>피로 회복</td>
            <td>빈혈 예방과 에너지 생산에 도움을 주어 피로 회복을 돕습니다.</td>
          </tr>
          <tr>
            <td>오메가-3 지방산 (Omega-3 Fatty Acids)</td>
            <td>피로 회복</td>
            <td>염증을 감소시켜 피로 회복과 멘탈 향상에 도움을 줍니다.</td>
          </tr>
        </table>
      </div>
      <hr>

<!-- Footer -->
<%@ include file="/WEB-INF/views/project/footer.jsp" %>
  
</body>
</html>


