<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <link href="/css/main.css" rel="stylesheet" />
    <title>mypage form</title>
</head>

<body>
    <!-- header -->
    <%@ include file="/WEB-INF/views/project/header.jsp" %>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header text-center" style="font-size: 1.5em;">회원정보 수정</div>
            <div class="card-body">
                <form action="#">
                    <div class="form-group">
                        <label for="name">이름:</label>
                        <input type="text" id="name" name="name" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="id">아이디:</label>
                        <input type="text" id="id" name="id" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="pwd">비밀번호:</label>
                        <input type="password" id="pwd" name="pwd" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="edit_pwd">비밀번호 수정:</label>
                        <input type="password" id="edit_pwd" name="edit_pwd" class="form-control">
                       
                    </div>
                    <div class="form-group">
                        <label for="phone">핸드폰 번호:</label>
                        <input type="tel" id="phone" name="phone" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="dob">생년월일:</label>
                        <input type="date" id="dob" name="dob" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="address">주소:</label>
                        <input type="text" id="address" name="address" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="medicalHistory">질병력:</label>
                        <select id="medicalHistory" name="medicalHistory" class="form-control">
                            <option value="None">없음</option>
                            <option value="Diabetes">당뇨</option>
                            <option value="Hypertension">고혈압</option>
                            <option value="Cancers">암</option>
                            <!-- Add more options as needed -->
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="allergyHistory">알레르기 반응:</label>
                        <select id="allergyHistory" name="allergyHistory" class="form-control">
                            <option value="None">없음</option>
                            <option value="Peanuts">견과류</option>
                            <option value="Dairy">유제품</option>
                            <option value="Shellfish">갑각류</option>
                            <!-- Add more options as needed -->
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="email">E-mail:</label>
                        <input type="email" id="email" name="email" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="paymentInfo">지불 정보:</label>
                        <input type="text" id="paymentInfo" name="paymentInfo" class="form-control">
                    </div>
                    <input type="submit" value="제출" class="btn btn-success mt-3">

                    <div>비밀번호 수정을 원할 때는 update로 한다.</div>
                </form>
            </div>
        </div>
    </div>

    <hr>
    <!-- Footer -->
             <%@ include file="/WEB-INF/views/project/footer.jsp" %>
</body>

</html>