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
    <%
    String dataArrayJSON = (String) request.getAttribute("dataArray");
    %>
    <body>
      <!-- header -->
      <%@ include file="/WEB-INF/views/project/header.jsp" %>

        <div class="container">
          <div class="h3 m-3">영양제 정보</div>
          <form>
            <div class="card m-3 p-3">

            </div>
          </form>

          <div class="container mt-4">
            <div class="row">
                <!-- Bar Chart -->
                <div class="col" id="barChart"></div>
    
            </div>
            <div class="row">
                <!-- Pie Chart and Line Chart -->
                <div class="col-sm-6" id="pieChart"></div>
                <div class="col-sm-6" id="lineChart"></div>
            </div>
    
            <!-- Google Maps Container -->
            <div class="row">
                <div class="col" id="map"></div>
            </div>
        </div>
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
            let chart = new google.visualization.BarChart(document.getElementById('barChart'));
            chart.draw(data, barOptions);

            // Data for Pie Chart
            let pieData = google.visualization.arrayToDataTable()

            pieData.addColumn('number', 'STAR');
            pieData.addColumn('number', 'CNT');

            dataArray.forEach(function (item) {
              pieData.addRow([item.STAR, item.CNT]);
            });
            // Options for Pie Chart
            let pieOptions = {
              title: 'Pie Chart'
            };

            // Data for Line Chart
            let lineData = new google.visualization.DataTable();
            lineData.addColumn('number', 'STAR');
            lineData.addColumn('number', 'CNT');

            dataArray.forEach(function (item) {
              lineData.addRow([item.STAR, item.CNT]);
            });

            let lineOptions = {
              title: 'Line Chart',
              curveType: 'function',
              legend: { position: 'bottom' }
            };

            let barChart = new google.visualization.BarChart(document.querySelector('#barChart'));
            barChart.draw(barData, barOptions);

            let pieChart = new google.visualization.PieChart(document.querySelector('#pieChart'));
            pieChart.draw(pieData, pieOptions);

            let lineChart = new google.visualization.LineChart(document.querySelector('#lineChart'));
            lineChart.draw(lineData, lineOptions);
          }

          // Coordinates and Location Names
          let locations = [
            { lat: 37.5666791, lng: 126.9782914, name: '서울' },
            { lat: 37.566535, lng: 126.9779692, name: '광화문' },
            { lat: 37.5586867, lng: 126.9782364, name: '명동' },
            { lat: 37.5551483, lng: 126.9707136, name: '남대문 시장' },
            { lat: 37.5617981, lng: 127.0071515, name: '강남역' },
            { lat: 37.5701391, lng: 127.0079479, name: '삼성동' },
            { lat: 37.5296212, lng: 127.0325739, name: '잠실' }
          ];

          // Initialize and Display the Map
          function initMap() {
            let map = new google.maps.Map(document.querySelector('#map'), {
              zoom: 12,
              center: { lat: 37.5666791, lng: 126.9782914 } // Seoul Coordinates
            });

            // Add Markers and Info Windows
            for (let i = 0; i < locations.length; i++) {
              let marker = new google.maps.Marker({
                position: locations[i],
                map: map,
                title: locations[i].name
              });

              let infowindow = new google.maps.InfoWindow({
                content: locations[i].name
              });

              marker.addListener('click', function () {
                infowindow.open(map, this);
              });
            }
          }
        </script>
        <!-- Bootstrap Bundle with Popper.js and Bootstrap JS -->
        <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js'></script>
        <!-- Google Maps API Script -->
        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap" async defer></script>

        <!-- Footer -->
        <%@ include file="/WEB-INF/views/project/footer.jsp" %>
    </body>

    </html>