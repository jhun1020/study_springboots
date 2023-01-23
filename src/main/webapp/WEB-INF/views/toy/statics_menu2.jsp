<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="../CSS/statics_menu2.css" />
        <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <%@ include file= "header.jsp" %>

    <div class="div1 row">
<<<<<<< HEAD
      <table border="1" class="main-align col-5">
        <tr>
          <th colspan="2">2021 업체별 이어폰 시장 점유율</th>
        </tr>
        <tr>
          <td>애플</td>
          <td>26%</td>
        </tr>
        <tr>
          <td>삼성</td>
          <td>7%</td>
        </tr>
        <tr>
          <td>UBL</td>
          <td>4%</td>
        </tr>
        <tr>
          <td>Skullcandy</td>
          <td>4%</td>
        </tr>
        <tr>
          <td>QCY</td>
          <td>3%</td>
        </tr>
        <tr>
          <td>boat</td>
          <td>3%</td>
        </tr>
        <tr>
          <td>기타</td>
          <td>53%</td>
        </tr>
      </table>
=======
  <div class="row">
      <div class="col-5 text-center mt-5 container">
        <table class="table table-bordered table-striped-columns">
          <thead>
            <tr>
              <th colspan="2">2021 업체별 이어폰 시장 점유율</th>
            </tr>
            <tr>
              <td>애플</td>
              <td>26%</td>
            </tr>
            <tr>
              <td>삼성</td>
              <td>7%</td>
            </tr>
            <tr>
              <td>UBL</td>
              <td>4%</td>
            </tr>
            <tr>
              <td>Skullcandy</td>
              <td>4%</td>
            </tr>
            <tr>
              <td>QCY</td>
              <td>3%</td>
            </tr>
            <tr>
              <td>boat</td>
              <td>3%</td>
            </tr>
            <tr>
              <td>기타</td>
              <td>53%</td>
            </tr>
          </thead>
        </table>
      </div>
>>>>>>> 516c87dd2e35309e7d6e04cb1bfcad4628cb2c9b
      <nav class="col col-md-2 col-lg-2 navbar bg-primary bg-opacity-50 navbar-primary h-50 fs-5 rounded me-5">
       <div class="navbar-nav">
          <ul style="width : 250px">
            <li>
              <a href="./Statics_menu1Servlet" class="nav-link"
                ><div>유/무선</div> <div>이어폰 점유율</div></a
              >
            </li>
            <li>
              <a href="./Statics_menu2Servlet" class="nav-link"
                ><div>무선이어폰</div> 업체별 점유율</a
              >
            </li>
          </ul>
        </div>
    </nav>
    </div>
    <%@ include file= "footer.jsp" %>
      <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
