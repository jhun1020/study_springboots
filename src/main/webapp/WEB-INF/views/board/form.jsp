<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
        <title>Document</title>
        <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <div class="text-center fs-3">board/form</div>

    <div class="container"> 
    <form action="/board/form" method="post">
      <div>
        <label for="title" class>title</label>
        <input type="text " class="form-control" name="title" id="title" />
      </div>
      <div>
        <label for="userName">userName</label>
        <input type="text" class="form-control" name="userName" id="userName" />
      </div>
      <div>
        <label for="content">content</label>
        <input type="text" class="form-control" name="content" id="content" />
      </div>
      <div>
        <label for="date">date</label>
        <input type="date" class="form-control" name="date" id="date" />
      </div>
      <div class="mt-3 ">
        <button class="border-0 bg-primary bg-opacity-25">submit</button>
      </div>
      
       <div class="col-2">
        <form action="/board">
        <button class="border-0 bg-primary bg-opacity-25">list</button>
        </form>
      </div>
    </form>
    </div> 

    
    
        <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
