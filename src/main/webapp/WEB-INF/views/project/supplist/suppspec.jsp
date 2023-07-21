<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap, java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Nutrient Recommendations Home</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
  <link href="./../css/main.css" rel="stylesheet" />
  <%@ include file="/WEB-INF/views/project/header.jsp" %>
</head>

    <body>
      <!-- header -->
      




          <div class="container">
            <form>
            <h1>영양제 정보</h1>
            <table class="table table-bordered">
              <tbody>
                <% HashMap params=(HashMap)request.getAttribute("params"); 
                 HashMap result=(HashMap)request.getAttribute("result"); %>
                 
                 
                <div class="mb-3">
                  <input class="form-control" type="hidden" id="suppId" name="SUPP_ID">
              </div>
              <% ArrayList resultID=(ArrayList)result.get("resultID"); for(int i=0; i < resultID.size();
              i=i+1) { HashMap record=(HashMap)resultID.get(i); %>
              <tr>
                  <td rowspan="4"><img src='<%= record.get("LOCATION") %>'' alt='<%= record.get("SUPP_ID") %>'' class="square-image" width="200px" height="100%"></td>
                  <td>영양제 코드 <%= record.get("SUPP_ID") %></td>
                  <td>제품명 - <%= record.get("PRODUCT") %></td>
                  <td>제조사 - <%= record.get("MANUFACTURE") %></td>
                  <td>복용량 - <%= record.get("DOSAGE") %></td>
                  <td>복용횟수 - <%= record.get("FREQUENCY") %></td>
                  <td><a href='<%= record.get("LINK") %>'>사이트</a></td>
                </tr>
                <% } %>

                <% ArrayList resultEffect=(ArrayList)result.get("resultEffect"); for(int i=0; i < resultEffect.size();
                i=i+1) { HashMap effect=(HashMap)resultEffect.get(i); %>
                <tr>
                  <td colspan="2" class="wide-td">효과 </td>
                  <td><%= effect.get("EFFECT") %></td>
                </tr>
                <% } %>

                <% ArrayList resultComp=(ArrayList)result.get("resultComp"); for(int i=0; i < resultComp.size();
                i=i+1) { HashMap component=(HashMap)resultComp.get(i); %>
                <tr>
                  <td colspan="2" class="wide-td">성분</td>
                  <td><%= component.get("COMPONENT") %></td>
                </tr>
                <% } %>
                
                <% ArrayList resultBad=(ArrayList)result.get("resultBad"); for(int i=0; i < resultBad.size();
                i=i+1) { HashMap bad=(HashMap)resultBad.get(i); %>
                <tr>
                  <td colspan="2" class="wide-td">부작용</td>
                  <td><%= bad.get("SIDEEFFECT") %></td>
                </tr>
                <% } %>
              </tbody>
            </table>
          </form>
          </div>

        <!-- Footer -->
        <%@ include file="/WEB-INF/views/project/footer.jsp" %>


      </body>

    </html>