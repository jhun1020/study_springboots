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
    <% if(request.getParameter("USER_UID") == null){ %>
      <div class="text-primary display-6 text-center pt-5">신규 회원 설정</div>
    <% } else if(request.getParameter("update").equals("t")){ %>
      <div class="text-primary display-6 text-center pt-5">회원 정보 수정</div>
      <% }%>
    <hr>
    <% ArrayList<HashMap<String, Object>> userList = (ArrayList<HashMap<String, Object>>)request.getAttribute("getUserList"); %>
      <div class="container-fluid">
      <table class="table table-bordered table-primary table-hover">
        <thead>
          <tr>
            <th>사용자고유번호</th>
            <th>이름</th>
            <th>아이디</th>
            <th>비밀번호</th>
            <th>전화번호</th>
            <th>생년월일</th>
            <th>이메일</th>
            <th>문자수신여부</th>
            <th>이메일수신여부</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          <!-- insert -->
          <% if(request.getParameter("USER_UID") == null){ %>
            <form action="" method="post">
            <td>
                <div>
                <input type="text" class="form-control" name="USER_UID" id="" />
                </div>
            </td>
            <td>
                <div>
                <input type="text" class="form-control" name="NAME" id="" />
                </div>
            </td>
            <td>
                <div>
                <input type="text" class="form-control" name="ID" id="" />
                </div>
            </td>
            <td>
                <div>
                <input type="text" class="form-control" name="PASSWORD" id="" />
                </div>
            </td>
            <td>
                <div>
                <input type="text" class="form-control" name="PHONE_NUMBER" id="" />
                </div>
            </td>
            <td>
                <div>
                <input type="text" class="form-control" name="BIRTHDAY" id="" />
                </div>
            </td>
            <td>
                <div>
                <input type="text" class="form-control" name="EMAIL" id="" />
                </div>
            </td>
            <td>
                <div>
                <input type="text" class="form-control" name="SMS_AD" id="" />
                </div>
            </td>
            <td>
                <div>
                <input type="text" class="form-control" name="EMAIL_AD" id="" />
                </div>
            </td>
            <td>
                <button type="submit" class="btn btn-dark container-fluid" value="Insert">Insert</button>
            </td>
          </form>
          <!-- update -->
          <% } else if(request.getParameter("update").equals("t")){ %>
            <form action="" method="post">
              <td>
                  <div>
                    <%= request.getParameter("USER_UID") %>
                  </div>
              </td>
              <td>
                  <div>
                    <%= request.getParameter("NAME") %>
                  </div>
              </td>
              <td>
                  <div>
                    <%= request.getParameter("ID") %>
                  </div>
              </td>
              <td>
                  <div>
                  ******
                  </div>
              </td>
              <td>
                  <div>
                  <input type="text" class="form-control" name="PHONE_NUMBER" id="" />
                  </div>
              </td>
              <td>
                  <div>
                  <input type="text" class="form-control" name="BIRTHDAY" id="" />
                  </div>
              </td>
              <td>
                  <div>
                  <input type="text" class="form-control" name="EMAIL" id="" />
                  </div>
              </td>
              <td>
                  <div>
                  <input type="text" class="form-control" name="SMS_AD" id="" />
                  </div>
              </td>
              <td>
                  <div>
                  <input type="text" class="form-control" name="EMAIL_AD" id="" />
                  </div>
              </td>
              <td>
                  <button type="submit" class="btn btn-dark container-fluid" value="Update">Update</button>
              </td>
            </form>
            <% } %>
            
          </tbody>
        </table>
        <div class="container d-flex justify-content-end align-items-end">
          <a href="/AdminServlet?" class="btn btn-primary" style="text-decoration:none">Prev</a></button></td>
        </div>
        <%@ include file= "footer.jsp" %>
  </body>
</html>
