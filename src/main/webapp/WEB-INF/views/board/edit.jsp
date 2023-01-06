<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <div class="text-center fs-3 m-5">board/edit</div>
    <div class="container m-3">
      <div class="container m-3">
        <form action="/board_our/edit" method="post">
          <div>
            <label for="title">title : </label>
            <input
              type="text"
              name="title"
              id="title"
              class="form-control col-9 mb-3"
            />
          </div>

          <div>content :</div>
          <textarea
            name="content"
            id="content"
            cols="80"
            rows="10"
            class="form-control mb-3"
          ></textarea>

          <div class="row mt-3">
            <div class="col-6">
              <label for="title">userName : </label>
              <input
                type="text"
                name="userName"
                id="userName"
                class="form-control"
              />
            </div>
            <div class="col-6">
              <label for="title">date : </label>
              <input type="date" name="date" id="date" class="form-control mb-5" />
            </div>
          </div>
          <div class="text-center">
          <button class="border-0 bg-warning bg-opacity-25 fs-5 rounded-pill">
            submit
           </button>
           </div>
        </form>
      </div>

      <hr />
  
        <form action="/board_our">
          <button class="border-0 bg-warning bg-opacity-25 fs-5 rounded-pill mt-3">
            list
          </button>
        </form>
      </div>
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html> --%>
