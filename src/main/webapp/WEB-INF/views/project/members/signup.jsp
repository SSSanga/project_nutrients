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
                <input class="form-control" type="hidden" id="commonCodeId" name="UNIQUE_ID">
            </div>
            <div class="mb-3">
                <label class="form-label" for=""><strong>NAME</strong></label>
                <input class="form-control" type="text" id="name" name="NAME" placeholder="이름을 입력해 주세요.">
                <div id="nameError" class="error-message"></div>
            </div>
            <div class="mb-3">
                <label class="form-label" for="r"><strong>ID</strong></label>
                <input class="form-control" id="ID" type="id" name="ID" placeholder="아이디를 입력해 주세요.">
                <div id="idError" class="error-message"></div>
            </div>
            <div class="mb-3">
                <label class="form-label" for="r"><strong>PASSWORD</strong></label>
                <input class="form-control" id="password" type="password" name="PASSWORD" placeholder="비밀번호를 입력해 주세요.">
                <div id="passwordError" class="error-message"></div>
            </div>
            <div class="mb-3">
                <label class="form-label" for=""><strong>PASSWORD CHECK</strong></label>
                <input class="form-control" id="passwordCheck" type="password" name="" placeholder="비밀번호를 다시 입력해 주세요." >
            </div>
            <div class="mb-3">
                <label class="form-label" for="r"><strong>BIRTHDATE</strong></label>
                <input class="form-control" id="BIRTHDATE" type="date" name="BIRTHDATE" placeholder="생년월일을 입력해 주세요.">
                <div id="passwordError" class="error-message"></div>
            </div>
            <div class="mb-3">
                <label class="form-label" for="r"><strong>e-mail</strong></label>
                <input class="form-control" id="e-mail" type="email" name="EMAIL" placeholder="ex) 1234@example.com">
                <div id="e-mailError" class="error-message"></div>
            </div>
            <div class="mb-3">
                <label class="form-label" for="systemCodeYn"><strong>PONE NUMBER</strong></label>
                <input class="form-control" type="tel" id="tel" name="PHONE" placeholder="휴대폰 번호를 입력해 주세요.">
            </div>
            <div class="mb-3">
                <label class="form-label" for="systemCodeYn"><strong>질병 이력</strong></label>
                <div class="radio-field mb-4">
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_01">
                    <label for="gender_woman h1 " class="me-4">고혈압</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_02">
                    <label for="gender_woman h1" class="me-4">심장병</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_03">
                    <label for="gender_woman h1" class="me-4">당뇨</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_04">
                    <label for="gender_woman h1" class="me-4">계란알레르기</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_05">
                    <label for="gender_woman h1" class="me-4">해산물알레르기</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_06">
                    <label for="gender_woman h1" class="me-4">갑각류알레르기</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_07">
                    <label for="gender_woman h1" class="me-4">견과류알레르기</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_08">
                    <label for="gender_woman h1" class="me-4">천식</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_09">
                    <label for="gender_woman h1" class="me-4">신장질환</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_10">
                    <label for="gender_woman h1" class="me-4">간질환</label>
                    <div class="mt-3">
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_11">
                    <label for="gender_woman h1" class="me-4">혈관질환</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_12">
                    <label for="gender_woman h1" class="me-4">비염</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_13">
                    <label for="gender_woman h1" class="me-4">꽃가루알레르기</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_14">
                    <label for="gender_woman h1" class="me-4">등푸른생선알레르기</label>
                    <input id="gender_woman" type="radio" name="HISTORY_ID", value="history_15">
                    <label for="gender_woman h1" class="me-4">과일알레르기</label>
                </div>
            </div>
            </div>
            <!-- 수정해야 합니다. -->
            <div class="mb-3">
                <label class="form-label" for="useYn"><strong>ADDRESS</strong></label>
                <input class="form-control" type="text" id="addre" name="ADDRESS">
            </div>
            <!-- 여기까지 -->
            <label class="form-label" for="systemCodeYn"><strong>성별 선택</strong></label>
            <div class="radio-field mb-4">
                <input id="gender_man" type="radio" name="SEX", value="남성">
                <label for="gender_man h1">남성</label>
                <input id="gender_woman" type="radio" name="SEX", value="여성">
                <label for="gender_woman h1">여성</label>
                <div id="genderError" class="error-message"></div>
            </div>
            <label for="auth" class="sr-only"><strong>Auth</strong></label>
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
          <!-- Footer -->
    <%@ include file="/WEB-INF/views/project/footer.jsp" %>
</body>

</html>