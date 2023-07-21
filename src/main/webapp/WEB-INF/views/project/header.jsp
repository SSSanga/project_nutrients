<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="java.util.HashMap, java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!-- Font Awesome -->
        <sec:authentication property="principal" var="userDetailsBean" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">

        <style>
            .nav-link {
              color: white !important;
              font-size: 1.33em;
            }
          
            #dropdownMenuButton {
              background-color: white;
              color: green;
            }
          
            .btn-outline-secondary {
              color: white;
              border-color: white;
            }
          
            /* 추가된 스타일 */
            body {
              border-top: 4px solid green;
              border-bottom: 4px solid green;
            }
          
            .navbar {
              border-bottom: 4px solid green;
            }
          </style>
        
            <nav class="navbar navbar-expand justify-content-between">
                <form class="d-flex" action="" method="">
                <!-- Brand image -->
                <div class="navbar-brand justify-content-center ms-4">
                    <button id="aboutButton" class="nav-link btn btn-none" formaction="/main/main">
                        <img src="/images/drug_img.png" alt="" width="200" height="150">
                    </button>
                </div>
                <!-- Navigation Links -->
                <!-- <form class="d-flex" method=""> -->
                <div class="d-flex">
                    <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <button id="aboutButton" class="nav-link btn btn-none"
                                    formaction="/supp/about">About</button>
                            </li>
                            <li class="nav-item">
                                <button id="listButton" class="nav-link btn btn-none"
                                    formaction="/supp/wholelist">List</button>
                            </li>
                            <li class="nav-item">
                                <button id="reviewButton" class="nav-link btn btn-none"
                                    formaction="/reviews/reviewlist">Reviews</button>
                            </li>
                            <li class="nav-item">
                                <button id="contactsButton" class="nav-link btn btn-none"
                                    formaction="/contacts/contactslist">Contacts</button>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- Search bar -->

                <input class="form-control me-2 mt-auto mb-auto" type="search" placeholder="Search..." aria-label="Search"
                    style="font-size: 10px; width:400px; height: 50px;">
                <button class="btn btn-outline-success mt-auto mb-auto" type="submit" formaction="/search"
                    style="font-size: 10px; background-color: white; height: 50px;"><i class="fas fa-search"></i>검색</button>

                <!-- User management dropdown -->
                <div class="d-flex me-2 align-items-center">
                    <div class="dropdown">
                        <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown"
                            aria-expanded="false" style="font-size: 20px;">
                            회원관리
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <sec:authorize access="isAuthenticated()">
                            <li><button id="mypageButton" class="dropdown-item" formaction="/members/mypageForm"
                                style="font-size: 20px;">마이페이지</button></li>
                            </sec:authorize>
                                <sec:authorize access="isAnonymous()">
                            <li><button id="loginButton" class="dropdown-item" formaction="/members/loginForm"
                                style="font-size: 20px;">로그인</button></li>
                            <li><button id="singupButton" class="dropdown-item" formaction="/members/signupForm"
                                style="font-size: 20px;">회원가입</button></li>
                            </sec:authorize>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <sec:authorize access="isAuthenticated()">
                            <li><button id="singupButton" class="dropdown-item" formaction="/main/main" style="font-size: 20px;">로그아웃</button>
                            </li>
                        </sec:authorize>
                        </ul>
                        </button>
                    </div>

                    <!-- Screen adjust buttons -->
                    <span id="zoom-display" class="mx-2">100%</span>
                    <button class="btn btn-outline-secondary mx-2" onclick="increaseSize()"
                        style="font-size: 20px;">+</button>
                    <button class="btn btn-outline-secondary me-4" onclick="decreaseSize()"
                        style="font-size: 20px;">-</button>
                </div>
            
        </form>
    </nav>

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