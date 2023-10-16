<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ page import="java.util.HashMap, java.util.ArrayList" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Nutrient Recommendations Home</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
      <link rel="stylesheet" href="/css/wholelist.css">
      <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    </head>

    <body>
      <!-- header -->
      <%@ include file="/WEB-INF/views/project/header.jsp" %>

        <div class="container">
          <div class="h3 m-3">영양제 정보</div>
          <form>
            <div class="card m-3 p-3">
              <% HashMap params=(HashMap)request.getAttribute("params"); %>
                <% HashMap result=(HashMap)request.getAttribute("result"); %>
                <% String dataArrayJSON = (String) request.getAttribute("dataArray"); %>
                  
                    <% ArrayList resultID=(ArrayList)result.get("resultID"); for(int i=0; i < resultID.size(); i=i+1) {
                      HashMap record=(HashMap)resultID.get(i); %>
                      <div class="container">
                        <div class="d-flex justify-content-center">
                          <img src='<%= record.get("LOCATION") %>' alt='<%= record.get("SUPP_ID") %>'
                            class="square-image">
                        </div>
                        <div class="row mt-3">
                          <table class="mx-4">
                            <tr>
                              <td class="specText">제품명:</td>
                              <td>
                                <%= record.get("PRODUCT") %>
                              </td>
                              <td class="specText">제조사:</td>
                              <td>
                                <%= record.get("MANUFACTURE") %>
                              </td>
                              <td><a class="btn btn-primary" href='<%= record.get("LINK") %>' role="button">구매 사이트</a>
                              </td>
                            </tr>
                            <tr>
                              <td class="specText">복용량:</td>
                              <td>
                                <%= record.get("DOSAGE") %>
                              </td>
                              <td class="specText">복용횟수:</td>
                              <td>
                                <%= record.get("FREQUENCY") %>
                              </td>
                              <sec:authorize access="hasRole('ROLE_ADMIN')">
                                <td class="specText">영양제 코드:</td>
                                <td class="specCode">
                                  <%= record.get("SUPP_ID") %>
                                </td>
                              </sec:authorize>
                            </tr>
                          </table>
                          <% } %>
                        </div>
                        <div class="container">
                          <div class="row fw-bold mt-4">성분:
                            <% ArrayList resultComp=(ArrayList)result.get("resultComp"); for(int i=0; i <
                              resultComp.size(); i=i+1) { HashMap component=(HashMap)resultComp.get(i); %>
                              <span class="fw-bold">
                                <%= component.get("COMPONENT") %>
                              </span>
                              <% } %>
                          </div>

                          <div class="row fw-bold mt-4">효과:
                            <% ArrayList resultEffect=(ArrayList)result.get("resultEffect"); for(int i=0; i <
                              resultEffect.size(); i=i+1) { HashMap effect=(HashMap)resultEffect.get(i); %>
                              <span class="fw-bold" style="color: #00b500;">
                                <%= effect.get("EFFECT") %>
                              </span>
                              <% } %>
                          </div>

                          <div class="row fw-bold mt-4">부작용:
                            <% ArrayList resultBad=(ArrayList)result.get("resultBad"); for(int i=0; i <
                              resultBad.size(); i=i+1) { HashMap bad=(HashMap)resultBad.get(i); %>
                              <span class="fw-bold" style="color: #ff0000;">
                                <%= bad.get("SIDEEFFECT") %>
                              </span>
                              <% } %>
                          </div>

                        </div>
                      </div>

                      <div class="row">
                        <!-- Bar Chart -->
                        <div class="col" id="barChart"></div>

                      </div>

            </div>
          </form>


        </div>
        <!-- JavaScript Code -->
        <script type='text/javascript'>
          // Load the Visualization API and the corechart package
          google.charts.load('current', { 'packages': ['corechart'] });

          // Set a callback to run when the Google Visualization API is loaded
          google.charts.setOnLoadCallback(drawCharts);

          // Function to draw the charts
          function drawCharts() {
            // Data for Bar Chart
            // JavaScript 변수에 데이터 할당
            let dataArray = <%= dataArrayJSON %>;
            console.log(dataArray);
            // 데이터를 Google Charts DataTable으로 변환
            // number로 데이터타입을 지정하는 경우 .addRow에 parseInt(가져올item)이렇게 해줘야하는듯
            let data = new google.visualization.DataTable();
            // DataTable에 열(column) 추가
            data.addColumn('string', 'STAR');
            data.addColumn('number', 'CNT');

            // 데이터 추가
            dataArray.forEach(function (item) {
              data.addRow([item.STAR, parseInt(item.CNT)]);
            });

            // Options for Bar Chart
            let barOptions = {
              title: 'Bar Chart',
              orientation: 'vertical'
            };
            // 차트를 그리기

            let barChart = new google.visualization.BarChart(document.querySelector('#barChart'));
            barChart.draw(data, barOptions);

          }
        </script>

        <!-- Footer -->
        <%@ include file="/WEB-INF/views/project/footer.jsp" %>
    </body>

    </html>