<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <%@ page import="java.util.HashMap, java.util.ArrayList, com.project.project_nutrients.utils.Paginations" %>
            <sec:authentication property="principal" var="userDetailsBean" />
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Nutrient Recommendations Home</title>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
                <link href="/css/main.css" rel="stylesheet" />
            </head>

            <body>
                <!-- header -->
                <%@ include file="/WEB-INF/views/project/header.jsp" %>

                    <div class="container text-center ">
                     <form>
                            <h1 class="mb-0">자주하는 질문</h1>
                            <div style="margin-top: 80px;"></div>
                        </div>

                        <main class="container p-3">
                            <div class="d-flex align-items-center mx-2">
                                <select class="form-select mx-2" name="searchType"
                                    style="font-size: 18px; width: 100px; height: 50px; font-weight: bold;">
                                    <option value="CONTENT">내용</option>
                                </select>
                                <input  class="form-control me-2 mt-auto mb-auto" type="search" name="words" value=""
                                    placeholder="Search..." style="font-size: 18px; width: 150px; height: 50px; font-weight: bold;"
                                    aria-label="Search" id="keydownEnter">
                                <button class="btn btn-outline-secondary mt-auto mb-auto font-weight-bold" type="submit"
                                    formaction="/contacts/contactsselectSearch" id="keydownEnter"
                                    style="font-size: 18px; width: 100px; height: 50px; font-weight: bold;">검색</button>
                            </div>
                            <% HashMap params=(HashMap)request.getAttribute("params"); String
                                searchStr=(String)params.getOrDefault("search", "" ); HashMap
                                result=(HashMap)request.getAttribute("result"); %>

                                <% Paginations paginations=(Paginations)result.get("paginations"); %>
                                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                                        <div class="card m-3 p-3 justify-content-center" style="font-weight: bold">
                                            <div>총 문의 수 :
                                                <%= paginations.getTotalCount() %>
                                            </div>
                                        </div>
                                    </sec:authorize>
                                    <div class="d-flex justify-content-center align-items-end m-3">
                                        <table class="table table-hover p-2">
                                            <thead class="table-light">
                                                <tr class="h5 align-middle">
                                                    <th style="font-weight: bold;">번호</th>
                                                    <th style="font-weight: bold;">내용</th>
                                                    <th style="font-weight: bold;">등록일</th>
                                                    <th style="font-weight: bold;">상세</th>
                                                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                                                        <th style="font-weight: bold;">삭제</th>
                                                    </sec:authorize>
                                                </tr>
                                            </thead>

                                            <tbody id="postTable">



                                                <% ArrayList resultList=(ArrayList)result.get("resultList"); for(int
                                                    i=0; i < resultList.size(); i=i+1){ HashMap
                                                    record=(HashMap)resultList.get(i); %>

                                                    <!-- Here is where the posts will go -->
                                                    <tr>
                                                        <td class="align-middle">
                                                            <%= record.get("INQUIRY_ID") %>
                                                        </td>
                                                        <!-- <td><%= record.get("CONTENT") %></td> -->
                                                        <td class="align-middle">
                                                            <%= record.get("CONTENT") %>
                                                        </td>
                                                        <td class="align-middle">
                                                            <%= record.get("WRITING_DATE").toString().split(" ")[0] %>
                                                </td>
                                                <td><button class=" btn btn-outline-secondary mt-auto mb-auto"
                                                                formaction='/contacts/contactsselectDetail/<%= record.get("INQUIRY_ID") %>'
                                                                value='<%= record.get("INQUIRY_ID") %>'
                                                                name='INQUIRY_ID'>상세
                                                                </button>
                                                        </td>
                                                        <sec:authorize access="hasRole('ROLE_ADMIN')">
                                                            <td><button
                                                                    class="btn btn-outline-secondary mt-auto mb-auto"
                                                                    formaction='/contacts/contactsdeleteAndSelectSearch/<%= record.get("INQUIRY_ID") %>'
                                                                    value='<%= record.get("INQUIRY_ID") %>'
                                                                    name='INQUIRY_ID'>삭제
                                                                </button></td>
                                                        </sec:authorize>
                                                    </tr>
                                                    <% } %>
                                            </tbody>

                                        </table>
                                    </div>

                                    <div class="d-flex justify-content-end align-items-end">
                                        <button type="submit" class="btn btn-outline-secondary"
                                            formaction="/contacts/contactswrite">문의 작성
                                        </button>
                                    </div>

                                    <div class="d-flex justify-content-center mt-4">

                                        <nav aria-label="Page navigation">
                                          
                                            <ul class="justify-content-center pagination align-middle p-2">
                                                <li class="page-item"><button class="page-link"
                                                        formaction="/reviews/reviewlist?currentPage=<%= paginations.getPreviousPage() %>">First</button>
                                                </li>
                                                <li class="page-item"><button class="page-link"
                                                        href="/contacts/contactslist?currentPage=<%= paginations.getPreviousPage() %>">Previous</button>
                                                </li>
                                                <% for (int i=paginations.getBlockStart(); i <=paginations.getBlockEnd()
                                                    ; i=i+1){ %>
                                                    <li class="page-item"><button class="page-link"
                                                            formaction="/contacts/contactslist?currentPage=<%= i %>">
                                                            <%= i %>
                                                        </button></li>
                                                    <% } %>
                                                        <li class="page-item"><button class="page-link"
                                                                formaction="/contacts/contactslist?currentPage=<%= paginations.getNextPage() %>">Next</button>
                                                        </li>
                                                        <li class="page-item"><button class="page-link"
                                                                formaction="/reviews/reviewlist?currentPage=<%= paginations.getNextPage() %>">Last</button>
                                                        </li>

                                            </ul>
                                         
                                        </nav>
                                    </div>
                        </main>
                     </form>
                    <div style="margin-top: 80px;"></div>
                    <hr>
                    <!-- Footer -->
                    <%@ include file="/WEB-INF/views/project/footer.jsp" %>


            </body>

            </html>