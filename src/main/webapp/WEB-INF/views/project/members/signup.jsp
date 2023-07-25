<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.css">
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=YOUR_APP_KEY"></script>
    <script src="/jsp/signup.jsp"></script>
    <link href="/css/main.css" rel="stylesheet" />
    <title>signup form</title>
</head>

<body>
<!-- header -->
<%@ include file="/WEB-INF/views/project/header.jsp" %>
    <div class="container">
        <div class="text-center mt-4 mb-4 h1">회 원 가 입</div>
    </div>
    <div class="container">
        <form id="insertForm" action="/members/signupProc" method="">
            <div class="mb-3">
                <label class="form-label" for="commonCodeId">UNIQUE_ID</label>
                <input class="form-control" type="text" id="commonCodeId" name="UNIQUE_ID" placeholder="유니크 아이디 입니다. 손대지 마세요. type을 hidden으로 하고 데이터를 uuid로 받을까 고민중입니다.">
            </div>
            <div class="mb-3">
                <label class="form-label" for="">NAME</label>
                <input class="form-control" type="text" id="name" name="NAME" placeholder="이름을 입력해 주세요.">
                <div id="nameError" class="error-message"></div>
            </div>
            <div class="mb-3">
                <label class="form-label" for="r">ID</label>
                <input class="form-control" id="ID" type="id" name="ID" placeholder="아이디를 입력해 주세요.">
                <div id="idError" class="error-message"></div>
            </div>
            <div class="mb-3">
                <label class="form-label" for="r">PASSWORD</label>
                <input class="form-control" id="password" type="password" name="PASSWORD" placeholder="비밀번호를 입력해 주세요.">
                <div id="passwordError" class="error-message"></div>
            </div>
            <div class="mb-3">
                <label class="form-label" for="">PASSWORD CHECK</label>
                <input class="form-control" id="passwordCheck" type="password" name="" placeholder="비밀번호를 다시 입력해 주세요." >
            </div>
            <div class="mb-3">
                <label class="form-label" for="r">BIRTHDATE</label>
                <input class="form-control" id="BIRTHDATE" type="date" name="BIRTHDATE" placeholder="생년월일을 입력해 주세요.">
                <div id="passwordError" class="error-message"></div>
            </div>
            <div class="mb-3">
                <label class="form-label" for="r">e-mail</label>
                <input class="form-control" id="e-mail" type="email" name="EMAIL" placeholder="ex) 1234@example.com">
                <div id="e-mailError" class="error-message"></div>
            </div>
            <div class="mb-3">
                <label class="form-label" for="systemCodeYn">PONE NUMBER</label>
                <input class="form-control" type="tel" id="tel" name="PHONE" placeholder="휴대폰 번호를 입력해 주세요.">
            </div>
            <div class="mb-3">
                <label class="form-label" for="systemCodeYn">질병 이력</label>
                <input class="form-control" type="text" id="HISTORY_ID" name="HISTORY_ID" placeholder="질병을 입력해 주세요.">
            </div>
            <!-- 수정해야 합니다. -->
            <div class="mb-3">
                <label class="form-label" for="useYn">ADDRESS</label>
                <input type="text" id="addressInput" />
                <button onclick="searchAddress()">주소 검색</button>
                <input class="form-control" type="text" id="addre" name="ADDRESS">
            </div>
            <!-- 여기까지 -->
            <div class="radio-field mt-4 mb-4">
                <input id="gender_man" type="radio" name="SEX", value="남성">
                <label for="gender_man h1">남성</label>
                <input id="gender_woman" type="radio" name="SEX", value="여성">
                <label for="gender_woman h1">여성</label>
                <div id="genderError" class="error-message"></div>
            </div>
            <label for="auth" class="sr-only">Auth</label>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="auth" id="SYSTEM_MANAGER" value="SYSTEM_MANAGER">
                <label class="form-check-label" for="ROLE_MANAGER">SYSTEM MANAGER</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="auth" id="ROLE_ADMIN" value="ROLE_ADMIN">
                <label class="form-check-label" for="ROLE_ADMIN">ADMIN</label>
              </div>
              <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="auth" id="ROLE_USER" value="ROLE_USER">
                <label class="form-check-label" for="USER">USER</label>
              </div>
            <div class="line">
                <hr>
            </div>
            <div class="text-center mb-4">
                <button class="btn btn-primary" type="submit" formaction="/members/signupProc">Submit</button>
            </div>
        </form>
    </div>
    <script>
        function searchAddress() {
          var address = document.getElementById("addressInput").value;
          
          // 카카오 맵 API를 사용하여 주소 검색 로직을 구현합니다.
          // 예시로서, 주소를 검색하고 결과를 콘솔에 출력하는 기능을 수행합니다.
          var geocoder = new kakao.maps.services.Geocoder();
          geocoder.addressSearch(address, function (result, status) {
            if (status === kakao.maps.services.Status.OK) {
              console.log(result);
            } else {
              console.log("검색에 실패했습니다.");
            }
          });
        }
      </script>
          <!-- Footer -->
    <%@ include file="/WEB-INF/views/project/footer.jsp" %>
</body>

</html>