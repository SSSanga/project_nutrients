<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="java.util.HashMap, java.util.ArrayList, com.project.project_nutrients.utils.Paginations" %>
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

                <form>
                    <div class="container text-center">
                        <h1 class="mb-0">자주하는 질문</h1>
                    </div>
                    <main class="container mt-4">
                        <div class="d-flex justify-content-end align-items-end">
                            <div class="mb-3 me-2">
                                <select id="searchType" class="form-control">
                                    <option>제목</option>
                                    <option>내용</option>
                                </select>
                            </div>

                            <div class="mb-3 me-2">
                                <label for="search" class="form-label">&nbsp;</label>
                                <input type="text" id="search" class="form-control" placeholder="검색어를 입력하세요">
                            </div>
                            <button type="button" class="btn btn-primary mb-3 me-2">검색</button>
                        </div>
                        <div class="d-flex justify-content-start align-items-end">
                        </div>
                        <table class="table mt-4">
                               <thead>
                                <tr>
                                    <th scope="col">번호</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">등록일</th>
                                    <th scope="col">관리자 댓글</th>
                                </tr>
                               </thead>
                            
                            <tbody id="postTable"> 
                            <% HashMap params=(HashMap)request.getAttribute("params"); String
                                searchStr=(String)params.getOrDefault("search", "" ); HashMap
                                result=(HashMap)request.getAttribute("result"); %>

                                <% ArrayList resultList=(ArrayList)result.get("resultList"); for(int i=0; i <
                                    resultList.size(); i=i+1){ HashMap record=(HashMap)resultList.get(i); %>
                                    
                                            <!-- Here is where the posts will go -->
                                            <tr>
                                                <td>
                                                    <%= record.get("INQUIRY_ID") %>
                                                </td>
                                                <!-- <td><%= record.get("CONTENT") %></td> -->
                                                <td>
                                                    <%= record.get("CONTENT") %>
                                                </td>
                                                <td>
                                                    <%= record.get("WRITING_DATE") %>
                                                </td>
                                                <td>
                                                    <div class="d-flex flex-column">
                                                        <div class="mb-2">
                                                            <%= record.get("Response") %>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td><button class= "btn btn-success mt-auto mb-auto" formaction='/contacts/contactsselectDetail/<%= record.get("INQUIRY_ID") %>' value='<%= record.get("INQUIRY_ID") %>' name='INQUIRY_ID'>상세 </button></td>
                                            </tr>  
                                    <% } %>
                                </tbody>
                               
                            </table>


                            <div class="p-5 justify-content-end">
                                <button type="submit" class="btn btn-primary"
                                    formaction="/contacts/contactswrite">문의 작성 GO!</button>
                              </div>
                          
                        <% Paginations paginations=(Paginations)result.get("paginations"); %>
                            <div> 게시글 총수: <%= paginations.getTotalCount() %>
                            </div>
                            <nav aria-label="Page navigation">
                                <ul class="pagination">
                                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                    <% for (int i=paginations.getBlockStart(); i <=paginations.getBlockEnd() ; i=i+1){
                                        %>
                                        <li class="page-item"><a class="page-link"
                                                href="/contacts/contactslist?currentPage=<%= i %>">
                                                <%= i %>
                                            </a></li>
                                        <% } %>
                                            <li class="page-item"><a class="page-link"
                                                    href="/contacts/contactslist?currentPage=<%= paginations.getNextPage() %>">Next</a>
                                            </li>

                                </ul>
                            </nav>
                    </main>
                </form>
                <hr>
                <!-- Footer -->
                <%@ include file="/WEB-INF/views/project/footer.jsp" %>

    
        </body>

        </html>