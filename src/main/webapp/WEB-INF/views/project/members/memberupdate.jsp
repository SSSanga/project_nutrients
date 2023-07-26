<%@ page import="java.util.HashMap, java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.css">
    <title>Update Form</title>
</head>

<body>
    <% HashMap params=(HashMap)request.getAttribute("params"); String searchStr=(String)params.getOrDefault("search", ""
    ); HashMap result=(HashMap)request.getAttribute("result"); %>
    <div class="container">
        <div class="text-center mt-4 mb-4 h1">회원정보 수정</div>
    </div>
    <div class="container">
        <form id="updateForm" action="/members/updateForm" method="post">
            <div class="mb-3">
                <label class="form-label" for="name">NAME</label>
                <input class="form-control" type="text" id="name" name="NAME" placeholder='<%= result.get("NAME") %>'>
            </div>
            <div class="mb-3">
                <label class="form-label" for="ID">ID</label>
                <input class="form-control" type="text" id="ID" name="ID" placeholder='<%= result.get("ID") %>'>
            </div>
            <div class="mb-3">
                <label class="form-label" for="PASSWORD">PASSWORD</label>
                <input class="form-control" type="text" id="PASSWORD" name="PASSWORD" placeholder='<%= result.get("PASSWORD") %>'>
            </div>
            <div class="mb-3">
                <label class="form-label" for="BIRTHDATE">BIRTHDATE</label>
                <input class="form-control" type="text" id="BIRTHDATE" name="BIRTHDATE" placeholder='<%= result.get("BIRTHDATE") %>'>
            </div>
            <div class="mb-3">
                <label class="form-label" for="SEX">SEX</label>
                <input class="form-control" type="text" id="SEX" name="SEX" placeholder='<%= result.get("SEX") %>'>
            </div>
            <div class="mb-3">
                <label class="form-label" for="ADDRESS">ADDRESS</label>
                <input class="form-control" type="text" id="ADDRESS" name="ADDRESS" placeholder='<%= result.get("ADDRESS") %>'>
            </div>
            <div class="mb-3">
                <label class="form-label" for="PHONE">PHONE</label>
                <input class="form-control" type="text" id="PHONE" name="PHONE" placeholder='<%= result.get("PHONE") %>'>
            </div>
            <div class="mb-3">
                <label class="form-label" for="EMAIL">EMAIL</label>
                <input class="form-control" type="text" id="EMAIL" name="EMAIL" placeholder='<%= result.get("EMAIL") %>'>
            </div>
            <div class="mb-3">
                <label class="form-label" for="HISTORY_ID">HISTORY_ID</label>
                <input class="form-control" type="text" id="HISTORY_ID" name="HISTORY_ID" placeholder='<%= result.get("HISTORY_ID") %>'>
            </div>
            <div class="text-center">
                <button class="btn btn-primary" type="submit" formaction='/members/memberUpdateAndMypage/<%= result.get("UNIQUE_ID") %>'>Submit</button>
                <button class="btn btn-primary" type="submit" formaction="/members/mypageForm">back</button>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>