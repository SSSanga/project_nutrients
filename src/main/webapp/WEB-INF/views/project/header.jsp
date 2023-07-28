<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@ page import="java.util.HashMap, java.util.ArrayList" %>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

            <sec:authentication property="principal" var="userDetailsBean" />
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
            <link href="/css/main.css" rel="stylesheet" />

            <div class="container">
            <nav class="navbar navbar-expand">
<div class="container-fluid">
                    <form action="" method="">
                        <div class="d-flex m-3">
                            <!-- Brand image -->
                            <div class="d-flex ms-3">
                            <div class="navbar-brand">
                                <button id="aboutButton" class="nav-link btn btn-none" formaction="/">
                                    <img src="/images/drug_img.png" alt="" width="200" height="200">
                                </button>
                            </div>
                        </div>
                            <!-- Navigation Links -->
                            <div class="d-flex m-3">
                            <div class="navbar navbar-expand" id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li class="nav-item">
                                        <button id="aboutButton" class="nav-link btn btn-none"
                                            formaction="/supp/about">About</button>
                                    </li>
                                    <li class="nav-item">
                                        <button id="listButton" class="nav-link btn btn-none"
                                            formaction="/supp/wholelist">List</button>
                                    </li>
                                    <li class="nav-item">
                                        <button id="listButton" class="nav-link btn btn-none"
                                            formaction="/recomm/list">Recommendation</button>
                                    </li>
                                    <li class="nav-item">
                                        <button id="reviewButton" class="nav-link btn btn-none"
                                            formaction="/reviews/reviewlist">Reviews</button>
                                    </li>
                                    <sec:authorize access="hasRole('ROLE_ADMIN') or hasRole('ROLE_USER')">
                                        <li class="nav-item">
                                            <button id="contactsButton" class="nav-link btn btn-none"
                                                formaction="/contacts/contactslist">Contacts</button>
                                        </li>
                                    </sec:authorize>
                                </ul>
                            </div>
                        </div>
                       
                        <!-- User management dropdown 여긴 회원관리 -->
                        <div class="d-flex m-3">
                        <div class="collapse navbar-collapse justify-content-center">
                            <div class="dropdown">
                                <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton"
                                    data-bs-toggle="dropdown" aria-expanded="false" style="font-size: 20px;">
                                    회원관리
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <sec:authorize access="isAuthenticated()">
                                        <li class="dropdown-item"><button id="mypageButton" class="dropdown-item"
                                                formaction="/members/mypageForm"
                                                style="font-size: 20px; font-weight: bold;">마이페이지</button>
                                        </li>
                                    </sec:authorize>
                                    <sec:authorize access="isAnonymous()">
                                        <li class="dropdown-item"><button id="loginButton" class="dropdown-item"
                                                formaction="/members/loginForm"
                                                style="font-size: 20px; font-weight: bold;">로그인</button>
                                        </li>
                                        <li class="dropdown-item"><button id="singupButton" class="dropdown-item"
                                                formaction="/members/signupForm"
                                                style="font-size: 20px; font-weight: bold;">회원가입</button>
                                        </li>
                                    </sec:authorize>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <sec:authorize access="isAuthenticated()">
                                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                                            <li class="dropdown-item"><button id="singupButton" class="dropdown-item"
                                                    formaction="/members/memberList" style="font-size: 20px;">회원
                                                    List</button>
                                            </li>
                                        </sec:authorize>
                                        <li class="dropdown-item"><button id="singupButton" class="dropdown-item"
                                                method="post" formaction="/logout"
                                                style="font-size: 20px;">로그아웃</button>
                                        </li>
                                    </sec:authorize>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
               
                </form>
            </div>
                    
                     <!-- 이건 줌인아웃 -->
                    <!-- Screen adjust buttons -->
                    
                    <div class="container-fluid navbar justify-content-center m-5">
                        <div id="zoom-display" class="me-3 text-danger font-weight">100%</div>
                        <button class="me-2 btn btn-outline-secondary btn-lg" onclick="increaseSize()"
                            style="font-size: 15px;">크게</button>
                        <button class="btn btn-outline-secondary btn-lg" onclick="decreaseSize()"
                            style="font-size: 15px;">작게</button>
                    </div>
                
               </nav>
              
        </div>
        
