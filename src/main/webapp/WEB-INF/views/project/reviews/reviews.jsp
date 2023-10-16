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

                    <form class="d-flex" action="" method="">
                        <div class="container content-center">
                            <div class="h1 text-center" style="font-weight: bold;">Review list</div>
                            <div style="margin-top: 80px;"></div>
                            <hr style="border-top: 4px solid;">

                            <% HashMap params=(HashMap)request.getAttribute("params"); String
                                searchStr=(String)params.getOrDefault("search", "" ); HashMap
                                result=(HashMap)request.getAttribute("result"); %>

                                <% Paginations paginations=(Paginations)result.get("paginations"); %>
                                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                                        <div class="card m-3 p-3 justify-content-center" style="font-weight: bold;">
                                            <div>총 레코드 수 :
                                                <%= paginations.getTotalCount() %>
                                            </div>
                                        </div>
                                    </sec:authorize>


                                    <div class="row">
                                        <% ArrayList resultList=(ArrayList)result.get("resultList"); for(int i=0; i <
                                            resultList.size(); i=i+1){ HashMap record=(HashMap)resultList.get(i); String
                                            title=(String)record.get("TITLE"); String shortTitle=title.length()> 25 ?
                                            title.substring(0, 25) + "..." : title;
                                            String content = (String)record.get("CONTENT");
                                            String shortContent = content.length() > 100 ? content.substring(0, 100) +
                                            "..." : content;
                                            %>
                                            <a href='/reviews/reviewselectDetail/<%= record.get("REVIEW_ID") %>'
                                                class="col-md-6 mx-auto btn btn-none btn-sm mt-auto mb-auto ">
                                                <div class="card m-3 p-3" style="max-height: 250px; overflow: hidden;">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col">
                                                                <h5 class="card-title" style="font-weight: bold;">
                                                                    <%= shortTitle %>
                                                                </h5>
                                                            </div>

                                                            <div class="p-3">
                                                                <div>
                                                                    <p class="card-text">
                                                                        <%= shortContent %>
                                                                    </p>
                                                                </div>
                                                                <div><small class="text-muted">
                                                                        <%= record.get("WRITING_DATE").toString().split(" ")[0] %>
                                                                        </small></div>
                                                                    
                                                                   <sec:authorize access=" hasRole('ROLE_ADMIN')">
                                                                            <div class="col-12">
                                                                                <button
                                                                                    class="btn btn-outline-secondary"
                                                                                    formaction='/reviews/reviewdeleteAndSelectSearch/<%= record.get("REVIEW_ID") %>'>삭제</button>
                                                                            </div>
                                                                            </sec:authorize>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                            </a>
                                            <% } %>
                                                <sec:authorize access="hasRole('ROLE_ADMIN') or hasRole('ROLE_USER')">
                                                    <div class="d-flex justify-content-end align-items-end">
                                                        <button type="submit" class="btn btn-outline-secondary"
                                                            formaction="/reviews/reviewwrite">후기 작성</button>
                                                    </div>
                                                </sec:authorize>

                                    </div>
                                    <div class="d-flex justify-content-center mt-4">

                                        <nav aria-label="Page navigation">
                                            <ul class="justify-content-center pagination align-middle p-2">
                                                <li class="page-item"><button class="page-link"
                                                        formaction="/reviews/reviewlist/currentPage=<%= paginations.getFirstPage() %>">First</button>
                                                </li>
                                                <li class="page-item"><button class="page-link"
                                                        formaction="/reviews/reviewlist/currentPage=<%= paginations.getPreviousPage() %>">Previous</button>
                                                </li>
                                                <% for(int i=paginations.getBlockStart(); i <=paginations.getBlockEnd()
                                                    ; i=i+1) { %>
                                                    <li class="page-item">
                                                        <button class="page-link"
                                                            formaction="/reviews/reviewlist/currentPage=<%= i %>">
                                                            <%= i %>
                                                        </button>
                                                    </li>
                                                    <% } %>
                                                        <li class="page-item"><button class="page-link"
                                                                formaction="/reviews/reviewlist/currentPage=<%= paginations.getNextPage() %>">Next</button>
                                                        </li>
                                                        <li class="page-item"><button class="page-link"
                                                                formaction="/reviews/reviewlist/currentPage=<%= paginations.getLastPage() %>">Last</button>
                                                        </li>
                                            </ul>
                                        </nav>
                                    </div>
                        </div>

                    </form>
                    <div style="margin-top: 80px;"></div>
                    <hr style="border-top: 4px;">
                    <!-- Footer -->
                    <%@ include file="/WEB-INF/views/project/footer.jsp" %>



            </body>

            </html>