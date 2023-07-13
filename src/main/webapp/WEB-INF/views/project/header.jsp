<%@ page import="java.util.HashMap, java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <link href="/css/main.css" rel="stylesheet" />

    <style>
        .nav-link {
            color: white !important;
            font-size: 1.33em;
        }

        #dropdownMenuButton {
            background-color: green;
            color: white;
        }

        .btn-outline-secondary {
            color: white;
            border-color: white;
        }
    </style>

    <nav class="navbar navbar-expand justify-content-between">
        <!-- Brand image -->
        <div class="navbar-brand justify-content-center">
            <a href="/project/mainpage.jsp">
                <img src="/images/drug_img.jpg" alt="" width="200" height="150">
            </a>
        </div>

        <!-- Search bar -->
        <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search..." aria-label="Search"
                style="font-size: 20px;">
            <button class="btn btn-outline-success" type="submit" formaction="/nutrientlist/searchresult.html"
                style="font-size: 20px; background-color: white;"><i class="fas fa-search"></i></button>
        </form>

        <!-- Navigation Links -->
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/administrator/about.html">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/administrator/wholelist.html">List</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/loginlist/reviews.html">Reviews</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/loginlist/contacts.html">Contacts</a>
                </li>
            </ul>
        </div>

        <!-- User management dropdown -->
        <form action="" method="">
        <div class="d-flex align-items-center">
            <div class="dropdown">
                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown"
                    aria-expanded="false" style="font-size: 20px;">
                    회원관리
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <li><a class="dropdown-item" href="/update.jsp" style="font-size: 20px;">마이페이지</a></li>
                    <li><a class="dropdown-item" href="/example.jsp" style="font-size: 20px;">로그인</a></li>
                    <li><button id="insertButton" class="dropdown-item" formaction="/main/insertForm" style="font-size: 20px;">회원가입</button></li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li><a class="dropdown-item" href="/example.jsp" style="font-size: 20px;">로그아웃</a></li>
                </ul>
            </div>

            <!-- Screen adjust buttons -->
            <span id="zoom-display" class="mx-2">100%</span>
            <button class="btn btn-outline-secondary mx-2" onclick="increaseSize()" style="font-size: 20px;">+</button>
            <button class="btn btn-outline-secondary" onclick="decreaseSize()" style="font-size: 20px;">-</button>
        </div>
    </nav>
</form>
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
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>