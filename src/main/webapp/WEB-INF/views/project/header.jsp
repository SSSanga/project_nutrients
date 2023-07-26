<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@ page import="java.util.HashMap, java.util.ArrayList" %>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
            <!-- Font Awesome -->
            <sec:authentication property="principal" var="userDetailsBean" />
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
            <link href="/css/main.css" rel="stylesheet" />
           
            <nav class="navbar navbar-expand">
                <div class="container m-3">
                    <div class="d-flex">
                    <!-- Brand image -->
                    <div class="navbar-brand">
                        <form class="ms-5" action="" method="">
                            <button id="aboutButton" class="nav-link btn btn-none" formaction="/main/main">
                                <img src="/images/drug_img.png" alt="" width="200" height="200">
                            </button>
                        </form>
                    </div>
                    <!-- Navigation Links -->
                    <!-- <form class="d-flex" method=""> -->



                        
                            <form action="" method="">
                                <ul class="justify-content-center navbar navbar-expand p-5 mt-5">
                                    <li class="nav">
                                        <button id="aboutButton" class="nav-link btn btn-none"
                                            formaction="/supp/about">About</button>
                                    </li>
                                    <li class="nav">
                                        <button id="listButton" class="nav-link btn btn-none"
                                            formaction="/supp/wholelist">List</button>
                                    </li>
                                    <li class="nav">
                                        <button id="reviewButton" class="nav-link btn btn-none"
                                            formaction="/reviews/reviewlist">Reviews</button>
                                    </li>
                                    <sec:authorize access="hasRole('ROLE_ADMIN') or hasRole('ROLE_USER')">
                                    <li class="nav">
                                        <button id="contactsButton" class="nav-link btn btn-none"
                                            formaction="/contacts/contactslist">Contacts</button>
                                    </li>
                                </sec:authorize>
                                </ul>
                            </form>
                        
                    </div>


                        <!-- User management dropdown 여긴 회원관리 -->
                        <div class="align-items-center">
                            <form action="" method="">
                                <div class="dropdown">
                                    <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton"
                                        data-bs-toggle="dropdown" aria-expanded="false" style="font-size: 20px;">
                                        회원관리
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <sec:authorize access="isAuthenticated()">
                                            <li><button id="mypageButton" class="dropdown-item"
                                                method="post" formaction="/members/mypageForm" 
                                                    style="font-size: 20px; font-weight: bold;">마이페이지</button>
                                            </li>
                                        </sec:authorize>
                                        <sec:authorize access="isAnonymous()">
                                            <li><button id="loginButton" class="dropdown-item"
                                                    formaction="/members/loginForm"
                                                    style="font-size: 20px; font-weight: bold;">로그인</button>
                                            </li>
                                            <li><button id="singupButton" class="dropdown-item"
                                                    formaction="/members/signupForm"
                                                    style="font-size: 20px; font-weight: bold;">회원가입</button>
                                            </li>
                                        </sec:authorize>
                                        <sec:authorize access="isAuthenticated()">
                                            <sec:authorize access="hasRole('ROLE_ADMIN')">
                                            <li><button id="singupButton" class="dropdown-item" formaction="/members/memberList"
                                                style="font-size: 20px;">회원 List</button>
                                        </li>
                                        </sec:authorize>
                                            <li><button id="singupButton" class="dropdown-item" method="post" formaction="/logout"
                                                    style="font-size: 20px;">로그아웃</button>
                                            </li>
                                        </sec:authorize>
                                    </ul>
                                </div>
                            </form>
                        </div>
                    
                        
                    
                    <!-- 이건 줌인아웃 -->
                        <!-- Screen adjust buttons -->
                        <div class="align-items-center me-5 font-weight-bold">
                            <span id="zoom-display" class="me-2 text-danger">100%</span>
                            <div><button class="me-1 btn btn-outline-secondary btn-lg" onclick="increaseSize()"
                                    style="font-size: 15px;">크게</button></div>
                            <div><button class="btn btn-outline-secondary btn-lg" onclick="decreaseSize()"
                                    style="font-size: 15px;">작게</button></div>
                            <!-- Screen adjust functions -->
                        </div>
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

                            <script
                                src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
                        
                
                    </div>
            </nav>
        