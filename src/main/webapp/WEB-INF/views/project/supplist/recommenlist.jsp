<%@ page import="java.util.HashMap, java.util.ArrayList" %>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="com.google.gson.Gson" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Nutrient Recommendations Home</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
      <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    </head>

    <body>

      <!-- header -->
      <%@ include file="/WEB-INF/views/project/header.jsp" %>
        <!-- Screen adjust functions -->
        <form>
          <div class="container mt-4 d-flex">


            <% String dataArrayJSON = (String) request.getAttribute("dataArray"); %>


            <!-- First card -->

            <div class="card m-2" style="width: 18rem;">
              <img src="/images/liver.png" class="card-img-top" alt="...">

              <input type="checkbox" id="card_checkbox_1" style="display: none;">
              <label for="card_checkbox_1" class="card-link">
                <div class="card-body">
                  <div class="card-title h4"><button type="submit" class="btn btn-outline"
                      formaction="/recomm/effectflag/EFFECT_01">간 기능개선</button>
                  </div>
                  
                </div>
              </label>
            </div>


            <!-- Second card -->

            <div class="card m-2" style="width: 18rem;">
              <img src="/images/recover.png" class="card-img-top" alt="...">

              <input type="checkbox" id="card_checkbox_2" style="display: none;">
              <label for="card_checkbox_2" class="card-link">
                <div class="card-body">
                  <div class="card-title h4"><button type="submit" class="btn btn-outline"
                      formaction="/recomm/effectflag/EFFECT_05"  value="EFFECT_05" name="EFFECT_FLAG">피로회복</button></div>

                </div>
              </label>
            </div>


            <!-- Third card -->

            <div class="card m-2" style="width: 18rem;">
              <img src="/images/eyes.png" class="card-img-top" alt="...">

              <input type="checkbox" id="card_checkbox_3" style="display: none;">
              <label for="card_checkbox_3" class="card-link">
                <div class="card-body">
                  <div class="card-title h4"><button type="submit" class="btn btn-outline"
                      formaction="/recomm/effectflag/EFFECT_09" value="EFFECT_09" name="EFFECT_FLAG">콜레스테롤 개선</button>
                  </div>

                </div>
              </label>
            </div>


            <!-- Fourth card -->

            <div class="card m-2" style="width: 18rem;">
              <img src="/images/blood.png" class="card-img-top" alt="...">

              <input type="checkbox" id="card_checkbox_4" style="display: none;">
              <label for="card_checkbox_4" class="card-link">
                <div class="card-body">
                  <div class="card-title h4"><button type="submit" class="btn btn-outline"
                      formaction="/recomm/effectflag/EFFECT_13"  value="EFFECT_13" name="EFFECT_FLAG">눈 기능 향상</button>
                  </div>
                </div>
              </label>
            </div>
          </div>
          <div>
            <!-- Pie Chart and Line Chart -->
            <div id="lineChart"></div>
        </div>
        </form>



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

            // 데이터를 Google Charts DataTable으로 변환
            // number로 데이터타입을 지정하는 경우 .addRow에 parseInt(가져올item)이렇게 해줘야하는듯

            let lineData = new google.visualization.DataTable();

            lineData.addColumn('string', 'MONTH');
            lineData.addColumn('number', 'LIVER');
            lineData.addColumn('number', 'RECOVERY');
            lineData.addColumn('number', 'CHOLESTEROL');
            lineData.addColumn('number', 'EYES');
            // 데이터 추가
            dataArray.forEach(function (item) {
              lineData.addRow([
                item.MONTH, 
                parseInt(item.LIVER), 
                parseInt(item.RECOVERY), 
                parseInt(item.CHOLESTEROL),
                parseInt(item.EYES)
              ]);
            });
            
            // 차트를 그리기
            let lineOptions = {
                title: 'Line Chart',
                curveType: 'function',
                legend: { position: 'bottom' },
                hAxis: {
                title: 'Month', // X 축 제목 설정
                format: 'MMM' // X 축 값의 형식을 월 이름 축약형으로 지정
              }
            };

            let lineChart = new google.visualization.LineChart(document.querySelector('#lineChart'));
            lineChart.draw(lineData, lineOptions);
          }
          console.log(lineData);
          console.log(lineOptions);
        </script>
        

        <!-- Footer -->
        <%@ include file="/WEB-INF/views/project/footer.jsp" %>

    </body>

    </html>