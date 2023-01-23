<%@ page import="java.util.HashMap, java.util.ArrayList, java.sql.PreparedStatement, java.sql.DriverManager, java.sql.Connection, java.sql.Statement, java.sql.ResultSet, java.sql.SQLException" %> 
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
    crossorigin="anonymous"
  />
  </head>
  <body>
    <%@ include file= "header.jsp" %>
    <div class="text-primary display-6 text-center pt-5">회원 목록 보기</div>
    <hr>
    
    <% if(session.getAttribute("ID")==null || !session.getAttribute("ID").equals("admin")){ %>
      <div class="text-danger display-6 text-center pt-5">관리자만 접근할 수 있습니다.</div>
      <% } else if(session.getAttribute("ID").equals("admin")){ %>
      <div class="container ms-1 p-2 pb-3">
        <a href="/AdminServlet?editUser=t&insert=t&update=f" class="btn btn-default btn-lg btn-success"
          ><span class="glyphicon glyphicon-user"></span>Add New User</a
        >
      </div>
      <% ArrayList<HashMap<String, Object>> userList = (ArrayList<HashMap<String, Object>>)request.getAttribute("getUserList"); %>
        <div class="container-fluid">
        <table class="table table-bordered table-primary table-hover text-center">
          <thead>
            <tr>
              <th></th>
              <th>사용자고유번호</th>
              <th>이름</th>
              <th>아이디</th>
              <th>비밀번호</th>
              <th>전화번호</th>
              <th>생년월일</th>
              <th>이메일</th>
              <th>문자수신여부</th>
              <th>이메일수신여부</th>
              <th>회원정보수정</th>
              <th>회원삭제</th>
            </tr>
          </thead>
          <tbody>
            <% for (int i =0; i<userList.size(); i++){ %>
              <tr>
                <th><%= i+1%></th>
                <td><%= userList.get(i).get("USER_UID")  %></td>
                <td><%= userList.get(i).get("NAME")  %></td>
                <td><%= userList.get(i).get("ID")  %></td>
                <td><%= userList.get(i).get("PASSWORD")  %></td>
                <td><%= userList.get(i).get("PHONE_NUMBER")  %></td>
                <td><%= userList.get(i).get("BIRTHDAY")  %></td>
                <td><%= userList.get(i).get("EMAIL")  %></td>
                <td><%= userList.get(i).get("SMS_AD")  %></td>
                <td><%= userList.get(i).get("EMAIL_AD") %></td>
                <td>
                <div class="container">
                  <a href="/AdminServlet?editUser=t&insert=f&update=t&USER_UID=<%= userList.get(i).get("USER_UID") %>&NAME=<%= userList.get(i).get("NAME") %>&ID=<%= userList.get(i).get("ID") %>" class="btn btn-dark"
                    >Update</a
                  >
                </div>
                </td>
                <td>
                  <div class="container">
                    <a href="/AdminServlet?delete=t&USER_UID=<%= userList.get(i).get("USER_UID") %>" class="btn btn-danger"
                      >Delete</a
                    >
                  </div>
                </td>
                </tr>
                <% } %>
        </tbody>
      </table>
      </div>
      <% }%>
    
    <%@ include file= "footer.jsp" %>
  </body>
</html>
