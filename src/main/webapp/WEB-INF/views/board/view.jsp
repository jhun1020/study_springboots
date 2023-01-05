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
     <div class="text-center fs-3 m-5">board/view</div>
    <div class="container m-3 text-center">
      <table class="table">
        <tr>
          <th>title</th>
          <td>타이틀</td>
        </tr>
        <tr>
          <th>content</th>
          <td>내용</td>
        </tr>
        <tr>
          <th>userName</th>
          <td>이정훈</td>
        </tr>
        <tr>
          <th>date</th>
          <td>2023.01.05</td>
        </tr>
      </table>

      <div class="text-center mt-5">
          <form action="/board/edit">
            <button class="border-0 bg-warning bg-opacity-25 fs-5 rounded-pill mb-3">
              edit
            </button>
          </form>
        
        <hr>

        <div class="col-6">
          <form action="/board">
            <button class="border-0 bg-warning bg-opacity-25 fs-5 rounded-pill mt-3">
              list
            </button>
          </form>
        </div>
      </div>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
