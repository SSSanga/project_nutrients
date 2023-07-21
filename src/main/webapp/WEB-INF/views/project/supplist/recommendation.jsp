<%@ page import="java.util.HashMap, java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Nutrient Recommendations Home</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
      <link href="./../css/main.css" rel="stylesheet" />
    </head>
    <body>
      <!-- header -->
      <%@ include file="/WEB-INF/views/project/header.jsp" %>

      <form>
    <div class="container content-center p-5">
      
      <div class="h2">혈중 콜레스테롤 개선 영양제 LIST</div>
      
      
      <table class="table table-striped table-sm">
        <% HashMap params=(HashMap)request.getAttribute("params"); String searchStr=(String)params.getOrDefault("search", ""
          ); HashMap result=(HashMap)request.getAttribute("result"); %>
          <%= result.get("NAME") %>
          <% ArrayList resultList=(ArrayList)result.get("resultList"); 
          for(int i=0; i < resultList.size(); i=i+1){
              HashMap record=(HashMap)resultList.get(i); %>
          <tr>
            <th></th>
            <th class="text-center">이름</th>
            <th>링크</th>
          </tr>
          

          <tr>
            <td><img src='<%= record.get("LOCATION") %>' alt="<%= record.get("PRODUCT") %>" class="square-image" width="100px" height="100%"></td>
            <td><%= record.get("PRODUCT") %></td>
            <td><a href='<%= record.get("LINK") %>'>구매 추천</a></td>
          </tr>
          <% } %>
        </table>
        
      </div>
    </form>

        <!-- Footer -->
        <%@ include file="/WEB-INF/views/project/footer.jsp" %>


      </body>

    </html>


