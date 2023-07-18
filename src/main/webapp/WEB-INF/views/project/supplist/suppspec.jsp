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

    <table class="table table-striped table-sm">
        <thead>
          <tr>
            <th>이름</th>
            <th>제조사</th>
            <th>키워드</th>
            <th>필요 기대 효과</th>
            <th>성분1</th>
            <th>성분2</th>
            <th>용량</th>
            <th>제형</th>
            <th>복용 주기</th>
            <th>부작용</th>
            <th>상세</th>
          </tr>
      </thead>
      <tbody>
        <form>
        <tr>
            <td>SUPP_10</td>
            <td>LIVER_10</td>
            <td>듀오락 간케어</td>
            <td>(주)쎌바이오텍</td>
            <td>간</td>
            <td>간 건강에 도움을 줄 수 있음, 유산균 증식 및 유해균 억제･배변활동 원활･장 건강에 도움을 줄 수 있음</td>
            <td>실리마린</td>
            <td>프로바이오틱스</td>
            <td>1회 1캡슐</td>
            <td>Capsule</td>
            <td><button type="submit" formactin="">1일 1회</button></td>
            
        </tr>
      </form>
        <tr>
            <td>SUPP_11</td>
            <td>RECOVERY_01</td>
            <td>솔브앤고 피로&스트레스 케어</td>
            <td>(주)서울에프엔비 기업도시점</td>
            <td>피로회복</td>
            <td>스트레스로 인한 긴장완화에 도움을 줄 수 있음</td>
            <td>로사빈</td>
            <td>L-테아닌</td>
            <td>1회 1포</td>
            <td>Syrup</td>
            <td>1일 1회</td>
            <td>카페인 함유음료(커피, 홍차, 녹차 등)와의 병용 섭취에 주의. 임산부, 수유부, 어린이 및 수술 전후 환자는 섭취에 주의</td>
        </tr>
        <tr>
            <td>SUPP_20</td>
            <td>RECOVERY_10</td>
            <td>프리미엄 피로개선 홍경천 플러스</td>
            <td>에스케이내추럴팜(주)</td>
            <td>피로회복</td>
            <td>스트레스로 인한 피로 개선에 도움을 줄 수 있음, 항산화 작용, 정상적인 면역기능에 필요</td>
            <td>비타민E</td>
            <td>아연</td>
            <td>1회 2정</td>
            <td>Tablet</td>
            <td>1일 1회</td>
            <td>알레르기 반응</td>
        </tr>
        <tr>
            <td>SUPP_21</td>
            <td>CHOL_01</td>
            <td>지큐랩 콜레스테롤 솔루션 300억</td>
            <td>노바렉스</td>
            <td>콜레스테롤</td>
            <td>혈중 콜레스테롤 개선</td>
            <td>비타민 B12</td>
            <td>"B.breve IDCC 4401 열 처리배양건조물 3.0*10^10cells/450mg"</td>
            <td>1회 1캡슐</td>
            <td>CAPSULE</td>
            <td>1일 1회</td>
            <td>특정 질환(알레르기 체질 등)이 있는 분은 섭취에 주의. 이상사례 발생 시 섭취를 중단하고 전문가와 상담할 것. [비타민 B12] 이상사례 발생 시 섭취를 중단하고 전문가와 상담할 것</td>
        </tr>
        <tr>
            <td>SUPP_32</td>
            <td>EYES_02</td>
            <td>비전케어 맥스</td>
            <td>옵티비전 랩스</td>
            <td>눈</td>
            <td>안구 건강 유지</td>
            <td>비타민 C</td>
            <td>아스타잔틴</td>
            <td>1000mg</td>
            <td>캡슐형</td>
            <td>1정 2회</td>
            <td>소화 불량</td>
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
      <form>
          <button class="btn btn-success"type="subtmit" formaction="/supp/listadd">추가</button>
      </form>
    </div>
  </div>
</div>

</div>

      <!-- Footer -->
      <%@ include file="/WEB-INF/views/project/footer.jsp" %>

  
</body>

</html>