<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap, java.util.ArrayList, com.project.project_nutrients.utils.Paginations" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Nutrient Recommendations Home</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
      <link href="./../css/main.css" rel="stylesheet" />
    </head>

    <!-- header -->
    <%@ include file="/WEB-INF/views/project/header.jsp" %>
      <!-- Screen adjust functions -->
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

      <body>

          <div class="container">
            <h1>영양제 정보</h1>
            <table class="table table-bordered">
              <tbody>
                <% HashMap params=(HashMap)request.getAttribute("params"); String searchStr=(String)params.getOrDefault("search", ""
                ); HashMap result=(HashMap)request.getAttribute("result"); %>
                <div class="mb-3">
                  <input class="form-control" type="hidden" id="suppId" name="SUPP_ID">
              </div>
                <tr>

                  <td rowspan="4"><img src="<%= result.get("LOCATION") %>" alt="<%= result.get("SUPP_ID") %>" class="square-image" width="200px" height="100%"></td>
                  <td>영양제 코드 <%= result.get("SUPP_ID") %></td>
                  <td>제품명 - <%= result.get("PRODUCT") %></td>
                  <td>제조사 - <%= result.get("MANUFACTURE") %></td>
                  <td>복용량 - <%= result.get("DOSAGE") %></td>
                  <td>복용횟수 - <%= result.get("FREQUENCY") %></td>
                </tr>
                <tr>
                  <td colspan="2" class="wide-td">효과 </td>
                  <td><%= result.get("EFFECT") %></td>
                </tr>
                <tr>
                  <td colspan="2" class="wide-td">성분</td>
                  <td><%= result.get("COMPONENT") %></td>
                </tr>
                <tr>
                  <td colspan="2" class="wide-td">부작용</td>
                  <td><%= result.get("SIDEEFFECT") %></td>
                </tr>
                
              </tbody>
            </table>
          
          </div>

        
        <!-- Footer -->
        <%@ include file="/WEB-INF/views/project/footer.jsp" %>


      </body>

    </html>