<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="java.util.HashMap, java.util.ArrayList, com.project.project_nutrients.utils.Paginations" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Nutrient Recommendations Home</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
        <!-- <link href="./../css/main.css" rel="stylesheet" /> -->
      </head>

      <body>
        <!-- header -->
        <%@ include file="/WEB-INF/views/project/header.jsp" %>
          <% HashMap params=(HashMap)request.getAttribute("params"); HashMap
            result=(HashMap)request.getAttribute("result"); Paginations
            paginations=(Paginations)result.get("paginations"); %>

            <div class="container">
              <form>
                <div class=" container content-center p-5">
                  <div class="h">추천 리스트 : <%= paginations.getTotalCount() %>
                  </div>
                  <table class="table table-hover p-2">
                    <thead class="table-light">
                      <tr class="h5 align-middle">
                        <th></th>
                        <th style="font-weight: bold;">이름</th>
                        <th style="font-weight: bold;">링크</th>
                      </tr>
                    </thead>

                    <% ArrayList resultList=(ArrayList)result.get("resultList"); for(int i=0; i < resultList.size();
                      i=i+1){ HashMap record=(HashMap)resultList.get(i); %>


                      <tbody>
                        <tr>
                          <td class="align-middle">
                            <img src='<%= record.get("LOCATION") %>' alt="" class="img-fluid rounded" width="200">
                          </td>
                          <td class="align-middle">
                            <%= record.get("PRODUCT") %>
                          </td>
                          <td class="align-middle">
                            <a href='<%= record.get("LINK") %>'>추천 사이트</a>
                          </td>
                        </tr>
                        <% } %>
                      </tbody>
                  </table>

                  <div class="m-3">
                    <nav aria-label="Page navigation">
                      <ul class="justify-content-center pagination align-middle p-2">
                        <li class="page-item"><button class="page-link" formaction="/recomm/effectflag/<%= params.get("EFFECT_FLAG") %>/<%= paginations.getFirstPage() %>">First</button>
                        </li>
                        <li class="page-item"><button class="page-link" formaction="/recomm/effectflag/<%= params.get("EFFECT_FLAG") %>/<%= paginations.getPreviousPage() %>">Previous</button>
                        </li>
                        <% for(int i=paginations.getBlockStart();i <=paginations.getBlockEnd(); i=i+1) { %>
                          <li class="page-item">
                            <button class="page-link" formaction="/recomm/effectflag/<%= params.get("EFFECT_FLAG") %>/<%= i %>"><%= i %> </button>
                          </li>
                          <% } %>


                            <li class="page-item"><button class="page-link"
                                formaction="/recomm/effectflag/<%= params.get("EFFECT_FLAG") %>/<%= paginations.getNextPage() %>" >Next</button>
                            </li>
                            <li class="page-item"><button class="page-link"
                                formaction="/recomm/effectflag/<%= params.get("EFFECT_FLAG") %>/<%= paginations.getLastPage() %>" >Last</button>
                            </li>
                      </ul>
                    </nav>
                  </div>
                </div>
              </form>
            </div>


                    <div class="m-3">
                      <nav aria-label="Page navigation">
                        <ul class="justify-content-center pagination align-middle p-2">
                          <li class="page-item"><button class="page-link"
                              formaction="/recomm/effectflag/<%= params.get(" EFFECT_FLAG") %>?EFFECT_FLAG=<%=
                                params.get("EFFECT_FLAG") %>&<%= paginations.getFirstPage() %>">First</button>
                          </li>
                          <li class="page-item"><button class="page-link"
                              formaction="/recomm/effectflag/<%= params.get(" EFFECT_FLAG") %>?EFFECT_FLAG=<%=
                                params.get("EFFECT_FLAG") %>&<%= paginations.getPreviousPage() %>">Previous</button>
                          </li>
                          <% for(int i=paginations.getBlockStart();i <=paginations.getBlockEnd(); i=i+1) { %>
                            <li class="page-item">
                              <button class="page-link" formaction="/recomm/effectflag/<%= params.get(" EFFECT_FLAG")
                                %>?EFFECT_FLAG=<%= params.get("EFFECT_FLAG") %>&<%= i %>">
                                    <%= i %> </button>
                            </li>
                            <% } %>


                              <li class="page-item"><button class="page-link"
                                  formaction="/recomm/effectflag/<%= params.get(" EFFECT_FLAG") %>?EFFECT_FLAG=<%=
                                    params.get("EFFECT_FLAG") %>&<%= paginations.getNextPage() %>" >Next</button>
                              </li>
                              <li class="page-item"><button class="page-link"
                                  formaction="/recomm/effectflag/<%= params.get(" EFFECT_FLAG") %>?EFFECT_FLAG=<%=
                                    params.get("EFFECT_FLAG") %>&<%= paginations.getLastPage() %>Last</button>
                              </li>
                        </ul>
                      </nav>
                    </div>

                </div>

            </form>
          </div>


        <!-- Footer -->
        <%@ include file="/WEB-INF/views/project/footer.jsp" %>

      </body>
      </html>