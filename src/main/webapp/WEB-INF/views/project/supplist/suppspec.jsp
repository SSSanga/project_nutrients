<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page import="java.util.HashMap, java.util.ArrayList" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Nutrient Recommendations Home</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    </head>

    <body>
      <!-- header -->
      <%@ include file="/WEB-INF/views/project/header.jsp" %>

        <div class="container">
          <div class="h3 m-3">영양제 정보</div>
          <form>


            <div class="card m-3 p-3">

              <% HashMap params=(HashMap)request.getAttribute("params"); HashMap
                result=(HashMap)request.getAttribute("result"); %>

                <% ArrayList resultID=(ArrayList)result.get("resultID"); for(int i=0; i < resultID.size(); i=i+1) {
                  HashMap record=(HashMap)resultID.get(i); %>
                  <div class="container">
                    <div class="d-flex justify-content-center">
                      <img src='<%= record.get("LOCATION") %>' alt='<%= record.get("SUPP_ID") %>' class="square-image"
                        width="200px" height="100%">
                    </div>
                    <div class="row mt-3">
                      <div class="col">
                        <span class="fw-bold">영양제 코드: </span>
                        <%= record.get("SUPP_ID") %>
                      </div>
                      <div class="col">
                        <span class="fw-bold">제품명: </span>
                        <%= record.get("PRODUCT") %>
                      </div>
                      <div class="col">
                        <span class="fw-bold">제조사: </span>
                        <%= record.get("MANUFACTURE") %>
                      </div>
                      </div>
                      <div class="row mt-3">
                      <div class="col">
                        <span class="fw-bold">복용량: </span>
                        <%= record.get("DOSAGE") %>
                      </div>
                      <div class="col">
                        <span class="fw-bold">복용횟수: </span>
                        <%= record.get("FREQUENCY") %>
                      </div>
                      <div class="col fw-bold">
                        <a class="btn btn-primary" href='<%= record.get("LINK") %>' role="button">추천사이트</a>
                      </div>
                    <% } %>
                  </div>
                      <div class="container">

                        <div class="row fw-bold">효과:
                          <% ArrayList resultEffect=(ArrayList)result.get("resultEffect"); for(int i=0; i <
                            resultEffect.size(); i=i+1) { HashMap effect=(HashMap)resultEffect.get(i); %>

                            <span class="fw-bold">
                              <%= effect.get("EFFECT") %>
                            </span>
                            <% } %>
                        </div>


                        <div class="row fw-bold">성분:
                          <% ArrayList resultComp=(ArrayList)result.get("resultComp"); for(int i=0; i <
                            resultComp.size(); i=i+1) { HashMap component=(HashMap)resultComp.get(i); %>
                            <span class="fw-bold">
                              <%= component.get("COMPONENT") %>
                            </span>
                            <% } %>
                        </div>


                        <div class="row fw-bold">부작용:
                          <% ArrayList resultBad=(ArrayList)result.get("resultBad"); for(int i=0; i < resultBad.size();
                            i=i+1) { HashMap bad=(HashMap)resultBad.get(i); %>

                            <span class="fw-bold">
                              <%= bad.get("SIDEEFFECT") %>
                            </span>
                            <% } %>
                        </div>

                      </div>
                  </div>
          </form>
        </div>
        <!-- Footer -->
        <%@ include file="/WEB-INF/views/project/footer.jsp" %>

    </body>

    </html>